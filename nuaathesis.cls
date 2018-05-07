%%
%% This is file `nuaathesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% nuaathesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2017-2017 by Somebody <my@mail.org>
%% TODO: other notice/copyright to be embedded in generated file
%% 
%% texlive/packages
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nuaathesis}
[2017/07/01 v0.02 NUAA Thesis Template]
\def\version{0.02}


\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=nuaa,
  prefix=nuaa@,
  setkeys=\kvsetkeys
}
\newif\ifnuaa@bachelor \nuaa@bachelorfalse
\newif\ifnuaa@master   \nuaa@masterfalse
\newif\ifnuaa@doctor   \nuaa@doctorfalse
\define@key{nuaa}{degree}{
  \expandafter\csname nuaa@#1true\endcsname}
\newif\ifnuaa@lang@cn \nuaa@lang@cnfalse
\newif\ifnuaa@lang@en \nuaa@lang@enfalse
\newif\ifnuaa@lang@ja \nuaa@lang@jafalse
\define@key{nuaa}{lang}{
  \expandafter\csname nuaa@lang@#1true\endcsname}
\newif\ifnuaa@worktype@paper  \nuaa@worktype@paperfalse
\newif\ifnuaa@worktype@design \nuaa@worktype@designfalse
\define@key{nuaa}{type}{
  \expandafter\csname nuaa@worktype@#1true\endcsname}
\DeclareBoolOption[false]{jincheng}
\DeclareBoolOption[false]{blankleft}
\DeclareBoolOption[false]{abstractopenright}
\DeclareBoolOption[false]{bindtrail}
\DeclareBoolOption[false]{msfont}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\kvsetkeys{nuaa}{}
\ProcessKeyvalOptions*
\AtEndOfClass{\input{nuaathesis.cfg}}
\ifnuaa@bachelor\relax\else
  \ifnuaa@master\relax\else
    \ifnuaa@doctor\relax\else
      \ClassError{nuaathesis}{
        Thesis Degree must be specified: \MessageBreak
        degree=[bachelor|master|doctor]}
    \fi
  \fi
\fi
\ifnuaa@bachelor
  \ifnuaa@worktype@paper\relax\else
    \ifnuaa@worktype@design\relax\else
      \ClassError{nuaathesis}{Thesis Type must be specified: \MessageBreak
      type=[paper|design]}
    \fi
  \fi
\else
  \ifnuaa@worktype@design
    \ClassError{nuaathesis}{You should submit paper instead of design}
  \else
    \nuaa@worktype@papertrue
  \fi
\fi
\ifnuaa@lang@cn\relax\else
  \ifnuaa@lang@en\relax\else
    \ifnuaa@lang@ja\relax\else
      \nuaa@lang@cntrue
    \fi
  \fi
\fi
\ifnuaa@jincheng
  \newcommand\nuaa@university{\nuaa@label@nuaajc}
  \newcommand\nuaa@universityLogo{nuaa-jc.jpg}
\else
  \newcommand\nuaa@university{\nuaa@label@nuaa}
  \newcommand\nuaa@universityLogo{nuaa.pdf}
\fi
\newcommand\nuaa@worktypecn{
  \ifnuaa@bachelor
    \ifnuaa@worktype@paper
      \nuaa@label@worktype@paper
    \else
      \nuaa@label@worktype@design
    \fi
  \else
    \ifnuaa@master
      \nuaa@label@worktype@master
    \else
      \nuaa@label@worktype@doctor
    \fi
  \fi
}
\def\nuaaset{\kvsetkeys{nuaa@value}}
\def\nuaasetEn{\kvsetkeys{nuaa@valueEn}}
\def\nuaa@def@term #1{
  \define@key{nuaa}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname #1\endcsname##1{
    \expandafter\gdef\csname nuaa@#1\endcsname{##1}}
  \csname #1\endcsname{}
}
\def\nuaa@parse@keywords#1#2{
  \define@key{nuaa}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname nuaa@#1\endcsname{}
  \expandafter\gdef\csname #1\endcsname##1{
    \@for\reserved@a:=##1\do{
      \expandafter\ifx\csname nuaa@#1\endcsname\@empty\else
        \expandafter\g@addto@macro\csname nuaa@#1\endcsname{%
          \ignorespaces #2}
      \fi
      \expandafter\expandafter\expandafter\g@addto@macro%
        \expandafter\csname nuaa@#1\expandafter\endcsname\expandafter{\reserved@a}}}}
\nuaa@def@term{value@title}
\nuaa@def@term{value@author}
\nuaa@def@term{value@studentid}
\nuaa@def@term{value@college}
\nuaa@def@term{value@major}
\nuaa@def@term{value@classid}
\nuaa@def@term{value@advisors}
\nuaa@def@term{value@applydate}
\nuaa@def@term{value@libraryclassid}
\nuaa@def@term{value@subjectclassid}
\nuaa@def@term{value@thesisid}
\nuaa@def@term{value@majorsubject}
\nuaa@def@term{value@researchfield}
\nuaa@def@term{valueEn@title}
\nuaa@def@term{valueEn@college}
\nuaa@def@term{valueEn@majorsubject}
\nuaa@def@term{valueEn@author}
\nuaa@def@term{valueEn@advisors}
\nuaa@def@term{valueEn@applydate}
\newcommand{\nuaa@@abstract}[1]{\long\gdef\nuaa@abstract{#1}}
\newenvironment{abstract}{\Collect@Body\nuaa@@abstract}{}
\newcommand{\nuaa@@abstractEn}[1]{\long\gdef\nuaa@abstractEn{#1}}
\newenvironment{abstractEn}{\Collect@Body\nuaa@@abstractEn}{}
\nuaa@parse@keywords{keywords}{\nuaa@label@keywordsep}
\nuaa@parse@keywords{keywordsEn}{\nuaa@labelEn@keywordsep}
\ifnuaa@lang@cn
  \newcommand\nuaa@title{\nuaa@value@title}
\else\ifnuaa@lang@en
  \newcommand\nuaa@title{\nuaa@valueEn@title}
\fi\fi
\ifnuaa@bachelor
  \PassOptionsToClass{zihao=-4,linespread=1.625}{ctexbook}
\else
  \PassOptionsToClass{zihao=5,linespread=1.5873}{ctexbook}
\fi
\PassOptionsToClass{a4paper,scheme=chinese,space=auto,UTF8}{ctexbook}
\LoadClass{ctexbook}
\RequirePackage{etoolbox}
\RequirePackage{amsmath,amsthm}
\RequirePackage{indentfirst}
\RequirePackage{multicol}
\RequirePackage{hologo}
\PassOptionsToPackage{no-math}{footspec}
\RequirePackage{fontspec}
\RequirePackage[perpage,bottom]{footmisc}
\RequirePackage{soul}
\RequirePackage{xltxtra}
\ifnuaa@msfont
\setmainfont[Mapping=tex-text]{Times New Roman}
\else
\RequirePackage{newtxtext}
\fi
\RequirePackage{geometry}
\ifnuaa@bachelor \geometry{
  top=2.5cm,
  bottom=2cm,
  left=2cm,
  right=2cm,
  headheight=0.75cm,
  headsep=2bp,
  %footskip=0.8cm,
  includehead,
  includefoot
} \else \geometry{
  top=3.3cm,
  bottom=3.3cm,
  left=3.0cm,
  right=2.6cm,
  headheight=15.6bp,
  headsep=0.15cm,
  footskip=15.6bp
}
\fi
\RequirePackage{fancyhdr}
\newcommand\nuaa@pagenum@decorate[1]{
  \ifnuaa@bachelor
    \if@frontmatter
      #1
    \else
      - #1 -
    \fi
  \else
    #1
  \fi
}
\fancypagestyle{style@empty}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{style@main}{
  \fancyhead{}
  \ifnuaa@bachelor
    \fancyhead[L]{
      \setlength{\unitlength}{1mm}
      \begin{picture}(0,0)
        \put(7.3,1.5){\includegraphics[width=6cm]{\nuaa@universityLogo}}
      \end{picture}
    }
    \fancyhead[R]{\songti\zihao{4}\nuaa@worktypecn \nuaa@label@reportpaper\hspace{1\ccwd}}
  \else
    \fancyhead[C]{
      \songti\zihao{5}
      \ifthenelse{\isodd{\value{page}}}{
        \nuaa@university\nuaa@worktypecn
      }{
        \nuaa@title
      }}
  \fi
  \fancyfoot{}
  \if@twoside
    \fancyfoot[EL]{\footnotesize{\nuaa@pagenum@decorate{\thepage}}}
    \fancyfoot[OR]{\footnotesize{\nuaa@pagenum@decorate{\thepage}}}
  \else
    \fancyfoot[R]{\footnotesize{\nuaa@pagenum@decorate{\thepage}}}
  \fi
  \renewcommand{\headrulewidth}{0.75bp}
  \ifnuaa@bachelor
    \renewcommand{\footrulewidth}{0.75bp}
  \fi
}
\newif\if@frontmatter
\newif\if@backmatter
\renewcommand{\frontmatter}{
  \cleardoublepage
  \@frontmattertrue
  \@backmatterfalse
  \ifnuaa@bachelor\pagenumbering{roman}\else\pagenumbering{Roman}\fi
  \pagestyle{style@main}
  \ctexset{chapter = {
    break = {\clearpage},
    numbering = false
  }}
}
\renewcommand{\mainmatter}{
  \cleardoublepage
  \@frontmatterfalse
  \@backmatterfalse
  \pagenumbering{arabic}
  \pagestyle{style@main}
  \ctexset{chapter = {
    break = {\if@openright\cleardoublepage\else\clearpage\fi},
    numbering = true
  }}
}
\renewcommand{\backmatter}{
  \cleardoublepage
  \@frontmatterfalse
  \@backmattertrue
  \ctexset{chapter/numbering = false,
    section/number = \Alph{section},
    section/name = {,.},
    subsection/number = \CTEXthesection{}\arabic{subsection},}%
  \setcounter{chapter}{0}
}
\RequirePackage[]{tocloft}
\setcounter{secnumdepth}{3}  %% 章节编号深度 (part 对应 -1)
\setcounter{tocdepth}{2}     %% 目录深度 (part 对应 -1)
\setlength{\cftbeforechapskip}{0bp}
\setlength{\cftbeforesecskip}{0bp}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}%% 目录中章后也有点
\tocloftpagestyle{style@main}
\newcommand{\tocfont}{\normalsize}
\renewcommand{\cftchapfont}{\tocfont}
\renewcommand{\cftsecfont}{\tocfont}
\renewcommand{\cftsubsecfont}{\tocfont}
\renewcommand{\cftsubsubsecfont}{\tocfont}
\renewcommand{\cftfigfont}{\tocfont}
\renewcommand{\cfttabfont}{\tocfont}
\renewcommand{\cftchappagefont}{\tocfont}
\renewcommand{\cftsecpagefont}{\tocfont}
\renewcommand{\cftsubsecpagefont}{\tocfont}
\renewcommand{\cftsubsubsecpagefont}{\tocfont}
\renewcommand{\cftfigpagefont}{\tocfont}
\renewcommand{\cfttabpagefont}{\tocfont}
\renewcommand{\@cftmaketoctitle}{}
\renewcommand{\@cftmakeloftitle}{}
\renewcommand{\@cftmakelottitle}{}
\newcommand\nuaatableofcontents{
  \cleardoublepage
  \chapter*{
    \ifnuaa@bachelor
      \linespread{1.5}\fontsize{16bp}{15.6bp}\selectfont
    \fi
    \nuaa@label@tableofcontents}
  \tableofcontents
}
\newcommand\nuaalistoffigurestables{
  \clearpage
  \renewcommand{\cftfigpresnum}{\nuaa@label@figurename}
  \renewcommand{\cfttabpresnum}{\nuaa@label@tablename}
  \newlength{\mylenf}
  \settowidth{\mylenf}{\cftfigpresnum}
  \setlength{\cftfignumwidth}{\dimexpr\mylenf+2em}
  \setlength{\cfttabnumwidth}{\dimexpr\mylenf+2em}

  \chapter*{\nuaa@label@listoffigurestables}
  \listoffigures
  \listoftables
}
\ifnuaa@bachelor \ctexset{
  chapter = {
    pagestyle = style@main,
    format = {\centering\linespread{2.41}\heiti\fontsize{15bp}{15.6bp}\selectfont},
    beforeskip = {23.7bp},  % 15.6*2 + 17 - 24.5(correction) = 35.2bp
    afterskip = {16.5bp},
  },
  section = {
    format = {\linespread{1.5}\heiti\fontsize{14bp}{20.8bp}\selectfont},
    beforeskip = {0bp},
    afterskip = {0bp},
  },
  subsection = {
    format = {\linespread{1.5}\heiti\fontsize{12bp}{15.6bp}\selectfont},
    indent = {0\ccwd},
    beforeskip = {0bp},
    afterskip = {0bp},
  },
  subsubsection = {
    format = {\heiti\fontsize{12bp}{20bp}},
    indent = {0\ccwd},
    beforeskip = {7.8bp},
    afterskip = {7.8bp},
  }
} \else \ctexset{
  chapter = {
    pagestyle = style@main,
    format = {\centering\linespread{1.0}\heiti\fontsize{15bp}{20bp}\selectfont},
    beforeskip = {10.4bp},   % 15.6*1.5 - 13(correction) = 10.4
    afterskip = {23.4bp},
    },
  section = {
    format = {\linespread{1.0}\heiti\fontsize{14bp}{20bp}\selectfont},
    beforeskip = {7.8bp},
    afterskip = {7.8bp},
  },
  subsection = {
    format = {\linespread{1.0}\heiti\fontsize{12bp}{20bp}\selectfont},
    beforeskip = {7.8bp},
    afterskip = {7.8bp},
    indent = {0\ccwd},
  },
  subsubsection = {
    format = {\linespread{1.0}\heiti\fontsize{12bp}{20bp}},
    indent = {0\ccwd},
    beforeskip = {7.8bp},
    afterskip = {7.8bp},
  }
}
\fi
\RequirePackage[numbers,square,comma,super,sort&compress]{natbib}
\AtBeginDocument{
  \pretocmd{\bibliography}{\begingroup\linespread{1.0}\fontsize{10.5bp}{15.6bp}\selectfont}{}{}
  \apptocmd{\bibliography}{\endgroup}{}{}
}
\renewcommand\@biblabel[1]{\linespread{1.0}\fontsize{10.5bp}{15.6bp}\selectfont[#1]}
\renewenvironment{thebibliography}[1]{
  \chapter*{\bibname}
  \list{\@biblabel{\@arabic\c@enumiv}}
  {
    \settowidth\labelwidth{\@biblabel{#1}}
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \setlength{\parsep}{1mm}
    \setlength{\labelsep}{0.5em}
    \setlength{\itemsep}{0.05pc}
    \setlength{\listparindent}{0in}
    \setlength{\itemindent}{0in}
    \setlength{\rightmargin}{0in}
    \@openbib@code
    \usecounter{enumiv}
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}
  }
  \sloppy
  \clubpenalty4000
  \@clubpenalty\clubpenalty
  \widowpenalty4000%
  \sfcode`\.\@m
}{
\def\@noitemerr
{\@latex@warning{Empty `thebibliography' environment}}
\endlist \vskip.2in}
\pretocmd{\bibliography}{
  \clearpage\phantomsection\addcontentsline{toc}{chapter}{\bibname}}{}{}
\bibpunct{[}{]}{,}{s}{}{,}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa%
  \unskip\kern\p@\textsuperscript{\NAT@@open #1\NAT@@close}%
  \if*#3*\else\ (#3)\fi\else #1\fi\endgroup}
\DeclareRobustCommand\inlinecite{\@inlinecite}
\def\@inlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
\let\onlinecite\inlinecite
\newtheoremstyle{break}% name
   {}%      Space above, empty = `usual value'
   {}%      Space below
   {\itshape}% Body font
   {}%         Indent amount (empty = no indent, \parindent = para indent)
   {\bfseries}% Thm head font
   {.}%        Punctuation after thm head
   {\newline}% Space after thm head: \newline = linebreak
   {}%         Thm head spec
\RequirePackage[inline]{enumitem}
\setlist{nosep}
\setlist*{leftmargin=*}
\setlist[1]{labelindent=\parindent} %% Only the level 1
\RequirePackage{graphicx} %% 插图相关
\graphicspath{{fig/}{figure/}{figures/}{logo/}{logos/}{graph/}{graphs}}
\DeclareGraphicsExtensions{.pdf,.eps,.png,.jpg,.jpeg}
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage{makecell}
\RequirePackage{multirow}
\RequirePackage{rotating}
\RequirePackage{diagbox}
\RequirePackage{tabularx}
\RequirePackage[table]{xcolor}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{Y}{>{\centering\arraybackslash}X}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{footnote}
\makesavenoteenv{tabular}
\captionsetup{labelsep=quad}
\captionsetup{justification=centerlast}
\ifnuaa@bachelor
  \DeclareCaptionFont{heiticaption}{
    \linespread{1.5}\heiti\fontsize{10.5bp}{15.6bp}\selectfont}
  \captionsetup{font=heiticaption}
\fi
\RequirePackage{float}
\RequirePackage{newfloat}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{bicaption}
\captionsetup[bi-first]{bi-first}
\captionsetup[bi-second]{bi-second}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[numbered]{bookmark}
\RequirePackage{listings}
\newcommand{\nuaa@dateCn}{
  \zhdigits{\the\year}年\zhnumber{\the\month}月
}
\newcommand{\nuaa@dateEn}{
  \ifcase\the\month
  \or January%
  \or February%
  \or March%
  \or April%
  \or May%
  \or June%
  \or July%
  \or August%
  \or September%
  \or October%
  \or November%
  \or December%
  \fi, \the\year
}
\newcommand\secretize[1]{
  \ifnuaa@bindtrail
    ***
  \else
    #1
  \fi
}
\let\nuaa@cleardoublepage\cleardoublepage
\renewcommand{\cleardoublepage}{
  \clearpage
  {
  \ifnuaa@blankleft\pagestyle{style@empty}\fi
  \nuaa@cleardoublepage
  }
}
\newcommand{\nuaathesis}{%
  \makebox{%
    N\hspace{-0.3ex}\raisebox{-0.5ex}{U}\hspace{-0.3ex}A\mbox{$^{\hspace{-0.5ex}2}$}\hspace{0.3ex}%
    \textsc{Thesis}}}
\newcommand{\oldnuaathesis}{%
  N\raisebox{0.5ex}{U}\hspace{-0.3ex}AA%
  \textsc{Thesis}
}
\newcommand{\seuthesix}{%
  \makebox{S\hspace{-0.3ex}\raisebox{-0.5ex}{E}\hspace{-0.3ex}U\hspace{0.1em}%
  \textsc{Thesix}}
}
\newbox\nuaa@kw
\newcommand{\nuaa@put@kw}[2]{%
  \begingroup
  \setbox\nuaa@kw=\hbox{#1}
  \noindent\hangindent\wd\nuaa@kw\hangafter1
  \box\nuaa@kw#2\par
  \endgroup}
\def\makecover{
  \hypersetup{
    % TODO: language
    pdftitle = {\nuaa@value@title},
    pdfauthor = {\nuaa@value@author},
    pdfsubject = {\nuaa@worktypecn},
    pdfkeywords = {\nuaa@keywords},
    % pdfcreator = {my logo here?}
  }

  \pagestyle{style@empty}
  \pagenumbering{Alph}
  \cleardoublepage

  \phantomsection
  \ifnuaa@bachelor
    \nuaa@make@cover@bachelor
    \relax
  \else
    \nuaa@make@cover@master@cn
    \nuaa@make@cover@master@en
  \fi
}

\def\makedeclare{
  \ifnuaa@bachelor
    \nuaa@make@declare@bachelor
  \else
    \nuaa@make@declare@master
  \fi
}

\def\makeabstract{
  \ifnuaa@bachelor
    \nuaa@make@abstract@bachelor@cn
    \nuaa@make@abstract@bachelor@en
  \else
    \nuaa@make@abstract@master@cn
    \nuaa@make@abstract@master@en
  \fi
}
\newcommand{\nuaa@make@cover@bachelor}{
  \cleardoublepage
  \newgeometry{top=1.0in, bottom=1.0in, left=1.25in, right=1.25in}

  \begingroup
  \linespread{1.0}

  \begin{flushright}
    \heiti\fontsize{14bp}{21bp}\nuaa@label@thesisnum
    \underline{\hspace{60bp}}
    \\ \vspace{42bp}
  \end{flushright}

  \begin{center}
    \textbf{\kaishu\fontsize{22bp}{30bp}\nuaa@university}
    \\ \vspace{30bp}

    \textbf{
      \songti\fontsize{55pt}{32pt}\selectfont
      \xeCJKsetup{CJKglue={\hskip 10pt plus 0.08\baselineskip}}
      \nuaa@worktypecn}
    \\ \vspace{3bp}       % 56bp(origin) + 7bp(correction) - 60bp(merged to below)

    \begingroup
    \heiti\zihao{2}
    \parbox[c][142bp][c]{1.44in}{\center\nuaa@label@title}
    \parbox[c][142bp][c]{4.07in}{\center
      \ifnuaa@lang@cn\relax\else
      \nuaa@valueEn@title \par
      \fi
      \nuaa@value@title}
    \endgroup

    \begingroup
    \renewcommand{\tabcolsep}{0bp}
    \renewcommand{\arraystretch}{2.23}
    \newcommand\nuaa@make@cover@label[1]{
      \makebox[1.31in][c]{\heiti\zihao{-3}\makebox[4\ccwd][s]{##1}}}
    \newcommand\nuaa@make@cover@field[1]{
      \makebox[3.22in][c]{\heiti\zihao{3}\secretize{##1}}}
    \begin{tabular}{cc}
      \nuaa@make@cover@label{\nuaa@label@author} &
      \nuaa@make@cover@field{\nuaa@value@author} \\ \cline{2-2}
      \nuaa@make@cover@label{\nuaa@label@studentid} &
      \nuaa@make@cover@field{\nuaa@value@studentid} \\ \cline{2-2}
      \nuaa@make@cover@label{\ifnuaa@jincheng\nuaa@label@department\else\nuaa@label@college\fi} &
      \nuaa@make@cover@field{\nuaa@value@college} \\ \cline{2-2}
      \nuaa@make@cover@label{\nuaa@label@major} &
      \nuaa@make@cover@field{\nuaa@value@major} \\ \cline{2-2}
      \nuaa@make@cover@label{\nuaa@label@classid} &
      \nuaa@make@cover@field{\nuaa@value@classid} \\ \cline{2-2}
      \nuaa@make@cover@label{\nuaa@label@advisor} &
      \nuaa@make@cover@field{\nuaa@value@advisors} \\ \cline{2-2}
    \end{tabular}
    \endgroup
    \vspace{43bp}

    \heiti\zihao{3}
    \ifdefempty{\nuaa@value@applydate}{\nuaa@dateCn}{\nuaa@value@applydate}
  \end{center}

  \endgroup
  \restoregeometry
}
\newcommand{\nuaa@make@declare@bachelor}{
  \cleardoublepage
  \newgeometry{top=1.0in, bottom=1.0in, left=1.25in, right=1.25in}

  \begin{center}
    \linespread{1.0}\heiti\fontsize{18bp}{31.2bp}\selectfont
    \textbf{\nuaa@university} \par
    \textbf{本科\nuaa@worktypecn 诚信承诺书}
  \end{center}

  \begingroup
    \linespread{1.0}\songti\fontsize{14bp}{31.2bp}\selectfont
    本人郑重声明：所呈交的\nuaa@worktypecn
    （题目：\uline{\nuaa@title} ）
    是本人在导师的指导下独立进行研究所取得的成果。
    尽本人所知，除了\nuaa@worktypecn 中特别加以标注引用的内容外，
    本\nuaa@worktypecn 不包含任何其他个人或集体已经发表或撰写的成果作品。

    \vspace{31.2bp}

    \begin{flushright}
      \setlength{\tabcolsep}{0bp}
      \begin{tabular}{rcr}
      作者签名： & \hspace{7.5em} & \hspace{2em} 年 \hspace{0.5em} 月 \hspace{0.5em} 日 \\
      （学号）： & \hspace{7.5em} & \\
      \end{tabular}
    \end{flushright}

  \endgroup
  \restoregeometry
}
\newcommand{\nuaa@make@abstract@bachelor@cn}{
  \ifnuaa@abstractopenright
    \cleardoublepage
  \else
    \clearpage
  \fi

  \begin{center}
    \vspace*{-4.3pt}\heiti\zihao{2}
    \phantomsection
    \addcontentsline{toc}{chapter}{\nuaa@label@abstractshort}
    \nuaa@value@title
  \end{center}

  \begin{center}
    \heiti\zihao{-3}\vspace{1em}
    \nuaa@label@abstract
  \end{center}

  \begingroup
  \songti\zihao{-4}
  \nuaa@abstract
  \endgroup

  \vspace{3em}

  \nuaa@put@kw{\textbf{\heiti\zihao{-3}\nuaa@label@keywords}}{\nuaa@keywords}
}
\newcommand{\nuaa@make@abstract@bachelor@en}{
  \ifnuaa@abstractopenright
    \cleardoublepage
  \else
    \clearpage
  \fi

  \begin{center}
    \vspace*{-4.3pt}\heiti\zihao{2}
    \phantomsection
    \addcontentsline{toc}{chapter}{\nuaa@labelEn@abstract}
    \nuaa@valueEn@title
  \end{center}

  \begin{center}
    \heiti\zihao{-3}\vspace{18pt}
    \nuaa@labelEn@abstract
    \vspace{10pt}
  \end{center}

  \begingroup
  \songti\zihao{-4}
  \nuaa@abstractEn
  \endgroup

  \vspace{3em}

  \nuaa@put@kw{\textbf{\zihao{-3}\nuaa@labelEn@KeyWords}}{\nuaa@keywordsEn}
}
\newcommand{\nuaa@make@cover@master@cn}{
  \cleardoublepage
  \begingroup
  \linespread{1.0}

  \vspace*{-4.8bp} \vspace{-\parskip}\vspace{-\topskip}

  \begin{multicols}{2}
    \linespread{1}\songti\fontsize{10.5bp}{15.6bp}\selectfont
    \begin{flushleft}
      中图分类号：\nuaa@value@libraryclassid \par
      学科分类号：\nuaa@value@subjectclassid
    \end{flushleft}
    \columnbreak
    \begin{flushright}
      论文编号：\nuaa@value@thesisid
    \end{flushright}
  \end{multicols}

  \vspace{61bp} \vspace{-\parskip}\vspace{-\baselineskip}

  \begin{center}
    \songti\zihao{0}\nuaa@worktypecn
  \end{center}

  \vspace{\stretch{0.25}}

  \begin{center}
    \linespread{1.5}\heiti\zihao{1}\nuaa@value@title
  \end{center}
  \vfill

  \begingroup
    \linespread{1.0}\songti\fontsize{16bp}{31.2bp}\selectfont
    \newcommand\nuaa@make@cover@label[1]{\makebox[5\ccwd][s]{##1}}
    \parbox[t]{2.875in}{
      \setlength{\parindent}{1.125in}
      \nuaa@make@cover@label{\nuaa@label@researchername} \par
      \nuaa@make@cover@label{\nuaa@label@majorsubject} \par
      \nuaa@make@cover@label{\nuaa@label@researchfield} \par
      \nuaa@make@cover@label{\nuaa@label@advisor} \par
    }
    \parbox[t]{3in}{
      \setlength{\parindent}{0bp}
      \nuaa@value@author \par
      \nuaa@value@majorsubject \par
      \nuaa@value@researchfield \par
      \nuaa@value@advisors \par
    }
  \endgroup

  \vspace{61bp}

  \begin{center}
    \includegraphics{nuaa-jianqi.pdf}

    \kaishu\fontsize{18bp}{31.2bp}\selectfont
    \nuaa@label@graduateschool\quad \nuaa@value@college

    \kaishu\fontsize{16bp}{31.2bp}\selectfont
    \ifdefempty{\nuaa@value@applydate}{\nuaa@dateCn}{\nuaa@value@applydate}

  \end{center}

  \endgroup
}
\newcommand{\nuaa@make@cover@master@en}{
  \cleardoublepage

  \begin{center}
    \linespread{1.8}\zihao{4}
    \nuaa@labelEn@nuaa \\
    \nuaa@labelEn@graduateschool \\
    \nuaa@valueEn@college

    \vfill
    \begingroup
      \linespread{1.5}
      \zihao{2}\textbf{\nuaa@valueEn@title} \par
    \endgroup
    \vfill

    \linespread{2.0}\zihao{4}
    A Thesis in \\
    \nuaa@valueEn@majorsubject \\
    by \\
    \nuaa@valueEn@author \bigskip

    Advised by \\
    \nuaa@valueEn@advisors \bigskip

    Submitted in Partial Fulfillment \\
    of the Requirements \\
    for the Degree of \\
    \ifnuaa@master
      \nuaa@labelEn@degreemaster
    \else
      \nuaa@labelEn@degreedoctor
    \fi \bigskip

    \ifdefempty{\nuaa@valueEn@applydate}{\nuaa@dateEn}{\nuaa@valueEn@applydate}
  \end{center}
}
\newcommand{\nuaa@make@declare@master}{
  \cleardoublepage

  \begin{center}
  \linespread{1.0}\songti\fontsize{22bp}{62.4bp}
  \vspace*{25.5bp} \vspace{-\parskip}\vspace{-\baselineskip}
  承诺书 \par
  \end{center}

  \begingroup
  \vspace*{31.4bp} \vspace{-\parskip}\vspace{-\baselineskip}
  \linespread{1.0}\songti\fontsize{16bp}{30bp}\selectfont
  本人声明所呈交的\nuaa@worktypecn 是本人在导师指导下进行的研究工作及取得的研究成果。
  除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，
  也不包含为获得\nuaa@label@nuaa 或其他教育机构的学位或证书而使用过的材料。

  本人授权\nuaa@label@nuaa 可以将学位论文的全部或部分内容编入有关数据库进行检索，
  可以采用影印、缩印或扫描等复制手段保存、汇编学位论文。

  （保密的学位论文在解密后适用本承诺书）

  \endgroup

  \vfill
  \begin{flushright}
  \linespread{1.0}\songti\fontsize{14bp}{25bp}\selectfont
  \makebox[5\ccwd][s]{作者签名：} \underline{\hspace{7em}} \par
  \makebox[5\ccwd][s]{日 \hfill 期：} \underline{\hspace{7em}} \par
  \end{flushright}
  \vfill
}
\newcommand{\nuaa@make@abstract@master@cn}{
  \ifnuaa@abstractopenright
    \cleardoublepage
  \else
    \clearpage
  \fi

  \chapter*{\nuaa@label@abstract}

  \begingroup
    \nuaa@abstract
  \endgroup
  \vspace{2\baselineskip}

  \nuaa@put@kw{\textbf{\songti\nuaa@label@keywords}}{\nuaa@keywords}
}
\newcommand{\nuaa@make@abstract@master@en}{
  \ifnuaa@abstractopenright
    \cleardoublepage
  \else
    \clearpage
  \fi

  \chapter*{\textbf{\nuaa@labelEn@ABSTRACT}}

  \begingroup
    \nuaa@abstractEn
  \endgroup
  \vspace{2\baselineskip}

  \nuaa@put@kw{\textbf{\nuaa@labelEn@keywords}}{\nuaa@keywordsEn}
}
\endinput
%%
%% End of file `nuaathesis.cls'.
