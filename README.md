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


