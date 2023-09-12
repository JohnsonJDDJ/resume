\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2023/03/16]
\LoadClass[11pt,letterpaper]{article}

\RequirePackage[margin=1.5cm]{geometry}
\RequirePackage{newtxtext,newtxmath} % Times New Roman font
\RequirePackage{titlesec}

\RequirePackage[T1]{fontenc}
\RequirePackage{textcomp}
\RequirePackage{titlesec}
\RequirePackage{ifthen}
\RequirePackage{xcolor}

\pagestyle{empty}

\titlespacing{\section}{0px}{0px}{0px}
% Define the formatting for section titles
\titleformat{\section}
  {\normalfont\fontsize{14}{16}\bfseries}% Format for the section title
  {}% Label (none in this case)
  {0em}% Separation between label and title
  {}% Before-code (none in this case)
  []% After-code (none in this case)

% \name{<first_name>}{<last_name>}
% Show name at the top. Last name is bolder.
\newcommand{\name}[2]{%
    \begin{center}
        {\fontsize{20}{22}\selectfont{#1}} % Set font size and line spacing for the first name
        {\fontsize{20}{22}\bfseries{#2}} % Set font size and make the last name bold
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

% \education{from date}{to date}{degree}{institution}{location}{Other information}
% Education information
\newcommand{\education}[6]{
    \vspace{-0.5\baselineskip}%
    \noindent
    \begin{flushleft}
    \ifx\empty#4\empty
        \vspace{-0.3\baselineskip}%
        {\textit{#3}} {\color[HTML]{404040}#6}\hfill #1 - #2\\%
    \else
        {\fontsize{12}{14}\textbf{#4}}\hfill #5\\%
        {\textit{#3}} {\color[HTML]{404040}#6}\hfill #1 - #2\\%
    \fi
    \end{flushleft}
    \vspace{-0.5\baselineskip}%
}

\newcommand{\skills}[2]{
    \vspace{-0.5\baselineskip}%
    \noindent
    \begin{flushleft}
    {\fontsize{10}{12}\textbf{#1}} -- {\fontsize{10}{12}\selectfont{#2}}\\%
    \end{flushleft}
    \vspace{-0.5\baselineskip}
}

% \experience{from date}{to date}{company}{title}{location}
% Professional/Academic/Volunteer experience
\newcommand{\experience}[5]{
    \vspace{-0.5\baselineskip}%
    \noindent
    \begin{flushleft}
    \ifx\empty#3\empty
        \vspace{-0.3\baselineskip}%
        {\textit{#4}}\hfill #1 - #2\\%
    \else
        {\fontsize{12}{14}\textbf{#3}}\hfill #5\\%
        {\textit{#4}}\hfill #1 - #2\\%
    \fi
    \end{flushleft}
}

% \project{from date}{to date}{title}
\newcommand{\project}[3]{
    \vspace{-0.5\baselineskip}%
    \noindent
    \begin{flushleft}
    {\fontsize{12}{14}\textbf{#3}}\hfill #1 - #2\\%
    \end{flushleft}
}

% \itemdetails{<details>}
% Add item details. Can be used for both long and short items.
\newcommand{\itemdetails}[1]{
    \vspace{-1.5\baselineskip}%
    \begin{flushleft}
        {\fontsize{10}{12}\selectfont{#1}}%
    \end{flushleft}
    \vspace{-0.5\baselineskip}
}