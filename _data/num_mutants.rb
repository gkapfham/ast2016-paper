require 'csv'

def get_num_mutants(schema, dbms) 
  CSV.foreach('virtual-mutation-analysis.dat') do |row|
    if row[0] == dbms && row[1] == schema
      return row[11].to_i
    end
  end
end

schemas = 
  %w(
    CoffeeOrders
    Employee
    Inventory
    Iso3166
    JWhoisServer
    MozillaPermissions
    NistWeather
    Person
    Products
  )

dbmses = %w(HyperSQL Postgres SQLite)

num_h = 0
num_p = 0
num_s = 0

line = ''
schemas.each do |schema|
  line = schema
  dbmses.each do |dbms|
    num_mutants = get_num_mutants(schema, dbms)

    num_h += num_mutants if dbms == 'HyperSQL'
    num_p += num_mutants if dbms == 'Postgres'
    num_s += num_mutants if dbms == 'SQLite'

    line += ' & ' + num_mutants.to_s
  end
  line += "\\\\"      
  puts line
end

puts "\\midrule \n"
puts "Total & #{num_h} & #{num_p} & #{num_s} \\\\"
