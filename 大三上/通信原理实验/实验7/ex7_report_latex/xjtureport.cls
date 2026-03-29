
\ProvidesClass{xjtureport}
\LoadClass{ctexrep}
\RequirePackage{xeCJK}
\RequirePackage{CJKnumb}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{array}
\RequirePackage{mathtools}
\RequirePackage{float}
\RequirePackage{indentfirst}
\RequirePackage{zhnumber}
\RequirePackage{booktabs}
\usepackage{amsmath,amssymb,amsfonts}
\usepackage{subcaption}
\usepackage{graphicx}
\usepackage{float}
\usepackage{pdfpages}
    
\makeatletter
\def\@makeschapterhead#1{
	{\parindent \z@ \centering \normalfont
		\interlinepenalty\@M
		\Huge \bfseries #1\par\nobreak\vskip 20\p@ }}
\makeatother

\newcommand{\chapterinline}[1]{%
	\setcounter{section}{0}      % 每次重置 section 编号
	\setcounter{subsection}{0}
	\setcounter{subsubsection}{0}
	\vspace{1em}
	\begin{center}
		\LARGE\bfseries #1         % 居中 + 粗体标题
	\end{center}
	\vspace{0.5em}
}

\ctexset{
  chapter = {
    name   = {实验~,},      % 前缀“实验 ”，后缀留空（逗号后为空）
    number = \arabic{chapter}
  }
}

\linespread{1.2}
\geometry{top=1in,bottom=1in,left=1in,right=1in}
\setcounter{secnumdepth}{3}
\renewcommand\thesection{\CJKnumber{\arabic{section}}、}
\renewcommand\thesubsection{\arabic{subsection}.}
\renewcommand\thesubsubsection{(\arabic{subsubsection})}
\setlist[enumerate,1]{label=(\arabic*)}
\setlist[enumerate,2]{label=\alph*.}

\setCJKmainfont[
  Path = fonts/ ,
  Extension = .ttf ,
  BoldFont = SimHei ,
  ItalicFont = simkai ,
]{SimSun}

\titleformat*{\section}{\large\bfseries}
\titleformat*{\subsection}{\normalsize\bfseries}
\titleformat*{\subsubsection}{\normalsize}
\graphicspath{{figures/}{figure/}{pictures/}%
{picture/}{pic/}{pics/}{image/}{images/}}

\titlespacing{\subsection}{1em}{*4}{*1.5}
\titlespacing{\subsubsection}{1em}{*4}{*1.5}

% 代码格式和颜色定义
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{comment}{rgb}{0.56,0.64,0.68}
\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  xleftmargin=2em,
  xrightmargin=2em,
  showstringspaces=false,
  columns=flexible,
  framerule=1pt,
  rulecolor=\color{gray!35},
  backgroundcolor=\color{gray!5},
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{comment},
  stringstyle=\color{dkgreen},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=2,
}

% 信息
\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\renewcommand\date[1]{\def\@date{#1}}
\newcommand\lab[1]{\def\@lab{#1}}
\newcommand\course[1]{\def\@course{#1}}
\newcommand\instructor[1]{\def\@instructor{#1}}
\newcommand\grades[1]{\def\@grades{#1}}
\newcommand\expname[1]{\def\@expname{#1}}
\newcommand\exptype[1]{\def\@exptype{#1}}
\newcommand\partner[1]{\def\@partner{#1}}
\newcommand\GroupId[1]{\def\@GroupId{#1}}


% 页眉
%\pagestyle{fancy}
%\lhead{实验名称：\@expname}
%\chead{姓名：\@name}
%\rhead{学号：\@stuid}
\pagestyle{fancy}
\fancyhf{}                % 清空页眉页脚
\fancyfoot[C]{\thepage}   % 页码在页脚中间
\renewcommand{\headrulewidth}{0pt}  % 去掉页眉横线
\renewcommand{\footrulewidth}{0pt}  % 去掉页脚横线（可选）




