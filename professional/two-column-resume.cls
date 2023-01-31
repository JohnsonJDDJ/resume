\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{two-column-resume}[2017/09/14]
\LoadClass[11pt,letterpaper]{article}

\RequirePackage[margin=1.5cm]{geometry}
\RequirePackage[nosfdefault]{raleway}
\RequirePackage[default]{droidsans}
\RequirePackage[T1]{fontenc}
\RequirePackage{textcomp}
\RequirePackage{titlesec}
\RequirePackage{ifthen}
\RequirePackage{xcolor}

\pagestyle{empty}

\titlespacing{\section}{0px}{0px}{0px}
\titleformat{\section}{\fontsize{14}{16}\usefont{T1}{Raleway-TLF}{l}{n}}{}{0pt}{}

% \name{<first_name>}{<last_name>}
% Show name at the top. Last name is bolder.
\newcommand{\name}[2]{
    \begin{center}
        \fontsize{20}{22}\usefont{T1}{Raleway-TLF}{m}{n} #1%
        ~%
        \fontseries{sb}\selectfont #2%
    \end{center}
}

% \contact{<line>}
% Show contact after name.
\newcommand{\contact}[1]{
	\vspace{-1.5\baselineskip}
    \begin{center}
        \fontsize{10}{12}\selectfont #1%
    \end{center}
}

% \headerline
% Draw a line that separates header and body.
\newcommand{\headerline}{\vspace{-1\baselineskip}\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}\\}

% \longitem{<title>}{<title_short_descriptions>}{<place>}{<time>}
% Add a new long item. Title short description will be hidden if empty.
\newcommand{\longitem}[4]{
    \begin{flushleft}
        {\fontsize{12}{14}\textbf{#1}}
        #2\\%
        {\color[HTML]{404040}#3 | #4}%
        \vspace{0.25\baselineskip}
    \end{flushleft}
}

% \shortitem{<item>}
% Add a short item. Short description
\newcommand{\shortitem}[2]{
    \begin{flushleft}
        {\fontsize{12}{14}\textbf{#1}}  {\color[HTML]{404040}#2}%
        \vspace{0.25\baselineskip}
    \end{flushleft}
}

% \itemdetails{<details>}
% Add item details. Can be used for both long and short items.
\newcommand{\itemdetails}[1]{
    \vspace{-2.0\baselineskip}
    \begin{flushleft}
        {\fontsize{10}{12}\selectfont{#1}}%
    \end{flushleft}
}
