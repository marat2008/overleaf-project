% SCWorks.cls — Шаблон СГУ для курсовых работ
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SCWorks}[2024/01/01 SGU Course Work Template]

\LoadClass[14pt,a4paper]{extreport}

% Кодировка и язык
\RequirePackage[T2A]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[russian,english]{babel}

% Поля страницы
\RequirePackage[
  left=30mm,
  right=15mm,
  top=20mm,
  bottom=20mm
]{geometry}

% Межстрочный интервал
\RequirePackage{setspace}
\onehalfspacing

% Абзацный отступ
\RequirePackage{indentfirst}
\setlength{\parindent}{1.25cm}

% Математика
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}

% Графика
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage[labelsep=endash]{caption}

% Таблицы
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{longtable}

% Код (minted)
\RequirePackage{minted}
\RequirePackage{xcolor}

% Гиперссылки
\RequirePackage[
  colorlinks=true,
  linkcolor=black,
  citecolor=black,
  urlcolor=blue,
  unicode
]{hyperref}

% Библиография
\RequirePackage[
  style=gost-numeric,
  sorting=none,
  backend=biber
]{biblatex}

% Заголовки разделов
\RequirePackage{titlesec}
\titleformat{\chapter}[block]
  {\normalfont\Large\bfseries\centering}
  {\thechapter}{1em}{}
\titleformat{\section}[block]
  {\normalfont\large\bfseries}
  {\thesection}{1em}{}
\titleformat{\subsection}[block]
  {\normalfont\normalsize\bfseries}
  {\thesubsection}{1em}{}

% Нумерация страниц
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}

% Список литературы
\RequirePackage{enumitem}

% Счётчики
\RequirePackage{totcount}

% Команды для титульной страницы
\newcommand{\university}[1]{\def\@university{#1}}
\newcommand{\faculty}[1]{\def\@faculty{#1}}
\newcommand{\department}[1]{\def\@department{#1}}
\newcommand{\worktype}[1]{\def\@worktype{#1}}
\newcommand{\discipline}[1]{\def\@discipline{#1}}
\newcommand{\worktitle}[1]{\def\@worktitle{#1}}
\newcommand{\student}[1]{\def\@student{#1}}
\newcommand{\group}[1]{\def\@group{#1}}
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\newcommand{\workyear}[1]{\def\@workyear{#1}}

\newcommand{\maketitlepage}{%
  \begin{titlepage}
    \begin{center}
      \textbf{\@university} \\[0.5em]
      \@faculty \\[0.5em]
      \@department \\[3em]

      \textbf{\Large \@worktype} \\[0.5em]
      по дисциплине: \@discipline \\[1em]
      \textbf{\Large \@worktitle} \\[4em]

      \begin{flushright}
        Выполнил(а): \\
        студент(ка) группы \@group \\
        \@student \\[2em]
        Проверил(а): \\
        \@supervisor \\
      \end{flushright}

      \vfill
      \@workyear
    \end{center}
  \end{titlepage}
}
