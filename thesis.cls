\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2015/07/22 Style for my theses]

\newif\if@print
\DeclareOption{print}{\@printtrue}
\DeclareOption{digital}{\@printfalse}

\ProcessOptions\relax


% General
\LoadClassWithOptions{scrreprt}

% Language
\usepackage[ngerman,english]{babel} % all languages being used, with main language last in list

% Geometry
\usepackage[onehalfspacing]{setspace}
\usepackage[a4paper,width=150mm,top=30mm,bottom=30mm]{geometry}

% Links
\usepackage{color,xcolor}
\usepackage{hyperref}
\if@print % switch link coloring off for printing
	\hypersetup{colorlinks=false}
\else
	\hypersetup{colorlinks=true}
\fi
\definecolor{uhd}{RGB}{196,19,47} % the red UHD brand color
\hypersetup{
	allcolors=uhd
}
\AtBeginDocument{
	\hypersetup{ % set pdf metadata
	    pdfauthor={\@author},
		pdftitle={\@title}
	}
}

% Math utility to load before font selection
\usepackage{amsmath,amssymb}
\usepackage{commath}
\usepackage{mathtools}

% Fonts
%\usepackage{fontspec,xunicode}
\usepackage{mathspec} % also loads fontspec
\setmainfont{Palatino}
\setsansfont{Optima}
%\setmainfont{Nlf}
%\setsansfont{Nlf}
\setmonofont[Scale=MatchLowercase]{Menlo}
%\setmathrm{Nlf}
\newfontfamily\handwritten{Nlf}
%\setmathsfont(Digits,Latin,Greek){Nlf}

% Titles
%\usepackage[uppercase]{titlesec}
%\titleformat{\chapter}[hang]{\handwritten\Huge}{\thechapter}{10pt}{\uppercase}
%\titleformat{\section}[hang]{\handwritten\LARGE}{\thesection}{10pt}{\uppercase}
\usepackage{titlesec}
%\renewcommand\thechapter{\Roman{chapter}}
%\titleformat{\chapter}[display]{\normalfont\sffamily\huge\bfseries}{\chaptertitlename\ \thechapter}{20pt}{\Huge}
\titleformat{\paragraph}[block]{\center\bfseries}{\thetitle}{}{}

% Units
\usepackage[separate-uncertainty]{siunitx}

% Tables
\usepackage{array} % for math mode in tables
\usepackage{booktabs} % for hline rules

% Quotations
\usepackage{epigraph}
\setlength{\epigraphwidth}{.8\textwidth}
\setlength{\epigraphrule}{0pt}

% Page Layout
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\if@print
	\fancyhead[LE]{
	    \textit{\nouppercase{\leftmark}}
	}
	\fancyhead[RO]{
		\textit{\nouppercase{\rightmark}}
	}
	\fancyfoot[RO,LE]{
		\thepage
	}
\else
	\fancyhead[L]{
	    \textit{\nouppercase{\leftmark}}
	}
	\fancyfoot[C]{
		\thepage
	}
\fi
\renewcommand{\headrulewidth}{0.2pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{%
	\fancyhf{}
	\if@print
		\fancyfoot[RO,LE]{
			\thepage
		}
	\else
		\fancyfoot[C]{
			\thepage
		}
	\fi
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
}

% Type optimization
\usepackage{microtype}

% Bibliography
\usepackage[style=numeric-comp,backend=biber,maxnames=10,maxcitenames=2]{biblatex}
%\nocite{*} % print all references, even those not used

% Appendix
\usepackage[toc,page]{appendix}


\endinput
