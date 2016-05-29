# ast2016-paper

This repository contains the LaTeX source code and additional resources for a research paper that was accepted for
publication at the [Eleventh International Workshop on Automation of Software Test](http://tech.brookes.ac.uk/AST2016/)
(AST 2016). In particular, this repository contains an R package that was implemented with the
[devtools](http://github.com/hadley/devtools) package development framework.  The source code of the paper uses the
LaTeX style files provided by the organizers of the workshop and a wide variety of other packages that are normally
standard with a modern LaTeX distribution such a TeXLive 2015.

You are invited to use this repository as a means for learning more about preparing papers in the field of automated
software testing and as a way to investigate the results and writing in our paper. If you find this example useful,
could I trouble you to star this repository and then acknowledge it in your own research efforts? If you would like to
learn more about my research program, then you can checkout my
[gkapfham/research-bibliography](https://github.com/gkapfham/research-bibliography).

Here is a reference for the paper:

> Gregory M. Kapfhammer, Chris J. Wright, and Phil McMinn.
> Hitchhikers Need Free Vehicles! Shared Repositories for Statistical Analysis in SBST.
> 9th International Workshop on Search-Based Software Testing (SBST 2016).

## Installation Instructions

You can type the following command if you want to clone this repository:

```shell
git clone https://github.com/gkapfham/sbst2016-paper.git
```

If you want to compile the paper to a PDF, then you should type the following commands.

```shell
cd sbst2016-paper
pdflatex sbst2016.tex
bibtex sbst2016.aux
pdflatex sbst2016.tex
pdflatex sbst2016.tex
```

Please note that this has been tested on an Ubuntu 15.04 workstation running a very recent version of LaTeX that was
manually installed using the TeXLive installer.  It is also worth noting that you can also compile the paper using other
LaTeX development tools, such as `latexmk`. If you are unable to compile the paper with your development tools and your
execution environment, then please open a new issue and I will attempt to resolve your concerns.

## Troubleshooting

If you are struggling to get this paper to compile correctly, then please observe that it uses the "Font Awesome"
package that should be distributed with most recent versions of LaTeX. You can check to see if you have this package
installed by typing the following command in a terminal window:

```shell
fc-list | grep fontawesome
```

If Font Awesome is installed correctly, then you should see output that looks like the following:

```shell
/usr/local/texlive/2015/texmf-dist/fonts/opentype/public/fontawesome/FontAwesome.otf: FontAwesome:style=Regular
```

If you do not see output of this nature, then that suggests that Font Awesome is not installed correctly and thus this
paper will not compile for you. It is also possible that the paper will not compile correctly unless you
specifically use the `xelatex` or `lualatex` compilers on the command line. If you are still having trouble compiling
the paper, please consult the following [StackOverflow
discussion](http://tex.stackexchange.com/questions/193900/how-to-use-fontawesome-package-in-moderncv). Again, if
problems still persist, then please open a new issue and I will help to resolve your challenges!
