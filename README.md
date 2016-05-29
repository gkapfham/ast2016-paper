# ast2016-paper

This repository contains the LaTeX source code and additional resources for a research paper that was accepted for
publication at the [Eleventh International Workshop on Automation of Software Test](http://tech.brookes.ac.uk/AST2016/)
(AST 2016). The source code of the paper uses the LaTeX style files provided by the organizers of the workshop and a
wide variety of other packages that are normally standard with a modern LaTeX distribution such a TeXLive 2015.

In addition to furnishing the source code for the AST 2016 paper, this repository also provides the [R
Markdown](http://rmarkdown.rstudio.com/) file that calls all of the appropriate functions in the
[gkapfham/virtualmutationanalysis](http://github.com/gkapfham/virtualmutationanalysis) replication package. Compiling
this R Markdown file will yield all of the summary tables, graphs, and statistical analyses that are presented in the
AST 2016 paper. You can use this generated PDF to check the results presented in the paper and, additionally, perform
your own analyses of our data sets.

You are invited to use this repository as a means for learning more about preparing papers in the field of automated
software testing and as a way to investigate the results and writing in our paper. If you find this repository useful,
could we trouble you to star this repository and then acknowledge it in your own research efforts? If you would like to
learn more about research in the field of testing database applications, then you can checkout my
[gkapfham/research-bibliography](https://github.com/gkapfham/research-bibliography). If you would like to download the
tool used to conduct the experiments presented in the AST 2016 paper, then please visit the
[schemaanalyst-team/schemaanalyst](https://github.com/schemaanalyst-team/schemaanalyst) repository.

Here is a reference for the paper:

> Gregory M. Kapfhammer, Chris J. Wright, and Phil McMinn.
> Virtual Mutation Analysis of Relational Database Schemas.
> 11th International Workshop on Automation of Software Test (AST 2016).

## Installation Instructions

You can type the following command if you want to clone this repository:

```shell
git clone https://github.com/gkapfham/ast2016-paper.git
```

## Compiling the Paper

If you want to compile the paper to a PDF, then you should type the following commands.

```shell
cd ast2016-paper
pdflatex ast2016.tex
bibtex ast2016.aux
pdflatex ast2016.tex
pdflatex ast2016.tex
```

Please note that this has been tested on an Ubuntu 15.04 workstation running a very recent version of LaTeX that was
manually installed using the TeXLive installer.  It is also worth noting that you can also compile the paper using other
LaTeX development tools, such as `latexmk`. If you are unable to compile the paper with your development tools and your
execution environment, then please open a new issue and we will attempt to resolve your concerns.

## Replicating the Analyses

If you want to compile (or, "knit") the `virtual_mutation_analysis.Rmd` file to a PDF, you first need to make sure that
you have `pandoc` installed on your workstation. Next, you must install the `rmarkdown` library in your R development
environment. To install both of these items, please follow instructions customized for your operating system and R
development environment. For your reference, the R Markdown file compiles correctly when using the following version of `pandoc`:

```shell
pandoc 1.12.4.2
Compiled with texmath 0.6.6.1, highlighting-kate 0.5.8.5.
Syntax highlighting is supported for the following languages:
    actionscript, ada, apache, asn1, asp, awk, bash, bibtex, boo, c, changelog,
    clojure, cmake, coffee, coldfusion, commonlisp, cpp, cs, css, curry, d,
    diff, djangotemplate, doxygen, doxygenlua, dtd, eiffel, email, erlang,
    fortran, fsharp, gcc, gnuassembler, go, haskell, haxe, html, ini, isocpp,
    java, javadoc, javascript, json, jsp, julia, latex, lex, literatecurry,
    literatehaskell, lua, makefile, mandoc, markdown, matlab, maxima, metafont,
    mips, modelines, modula2, modula3, monobasic, nasm, noweb, objectivec,
    objectivecpp, ocaml, octave, pascal, perl, php, pike, postscript, prolog,
    pure, python, r, relaxngcompact, restructuredtext, rhtml, roff, ruby, rust,
    scala, scheme, sci, sed, sgml, sql, sqlmysql, sqlpostgresql, tcl, texinfo,
```

Once you have all of the dependencies correctly installed, you can compile the analyses by typing the following command
in the command prompt of your R development environment:

```R
library(rmarkdown)
rmarkdown::render("virtual_mutation_analysis.Rmd")
```

Now, you should be able to view the file called `virtual_mutation_analysis.pdf`. If you are unable to compile the
analysis file with your development tools and your execution environment, then please open a new issue and we will
attempt to resolve your concerns.
