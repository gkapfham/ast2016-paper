require 'csv'

def get_vm_times_and_mutant_data(dbms, schema)
	data = []
	CSV.foreach('virtual-mutation-analysis.dat') do |row|
		if row[0] == dbms && row[1] == schema
			killed = row[10].to_i
			total = row[11].to_i
			time = row[17].to_i
			data << {
              killed: killed,
              total: total,
              time: time
            }
		end
	end
	data
end

def get_mutants(dbms, schema)
	data = []
	run = []
	found_block = false
	committed = false
	CSV.foreach("#{dbms}-avmdefaults.dat") do |row|	
		if row[1] == dbms && row[2] == schema 
			if !found_block
				found_block = true
			end
			if row[4] == 'NORMAL'
				run << {time: row[6].to_i, killed: row[5] == 'true'}
			end		
		else
			data << run if found_block && run.length > 0
			run = []
			found_block = false
		end
	end
	data << run if found_block && run.length > 0
	data
end

def output(file, line)
  puts line
  file.write(line + "\n")
  file.flush
end

#BankAccount
#       BrowserCookies
#       CoffeeOrders
#       CustomerOrder
schemas = 
	%w(
       Employee
       Examination
       Flights
       Inventory
       Iso3166
       JWhoisServer
       MozillaPermissions
       NistWeather
       NistXTS749
       Person
       Products
       StudentResidence)

dbmses = %w(HyperSQL Postgres SQLite)

file = File.open('mutant-selection.dat', 'w')
output(file, "dbms, schema, vm_time, vm_killed, vm_total, vm_score, selection_time, selection_killed, selection_total, selection_score")

dbmses.each do |dbms|
	schemas.each do |schema|
		data = get_vm_times_and_mutant_data(dbms, schema)
		mutants = get_mutants(dbms, schema)

		for i in 0..data.length-1
			vm_run = data[i]
			dbms_mutants = mutants[i]

			vm_time = vm_run[:time]
			vm_killed = vm_run[:killed]
			vm_total = vm_run[:total]

			vm_score = sprintf('%.5f', (vm_killed / vm_total.to_f)) 

			time = 0
			killed = 0
			total = 0

			while time < vm_time && dbms_mutants.length > 0
				mutant_selected_index = rand(dbms_mutants.length)
				mutant_selected = dbms_mutants[mutant_selected_index]
				time += mutant_selected[:time]
				killed += 1 if mutant_selected[:killed]
				total += 1
				dbms_mutants.delete_at(mutant_selected_index)
			end

			score = sprintf('%.5f', (killed / total.to_f)) 

			output(file, "#{dbms}, #{schema}, #{vm_time}, #{vm_killed}, #{vm_total}, #{vm_score}, #{time}, #{killed}, #{total}, #{score}")
		end
	end
end


