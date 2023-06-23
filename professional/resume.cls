\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2023/03/16]
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

% \education{from date}{to date}{degree}{institution}{location}{Other information}
% Education information
\newcommand{\education}[6]{
    \vspace{-0.5\baselineskip}%
    \noindent
    \begin{flushleft}
    \ifx\empty#4\empty
        \vspace{-0.3\baselineskip}%
        {\color[HTML]{404040}\textbf{#3}}\hfill #1 - #2\\%
    \else
        {\fontsize{12}{14}\textbf{#4}}\hfill #5\\%
        {\color[HTML]{404040}\textbf{#3}}\hfill #1 - #2\\%
    \fi
    \ifx\empty#6\empty
        \vspace{0\baselineskip}%
    \else
        {\color[HTML]{404040}GPA: #6}\\%
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
        {\color[HTML]{404040}\textbf{#4}}\hfill #1 - #2\\%
    \else
        {\fontsize{12}{14}\textbf{#3}}\hfill #5\\%
        {\color[HTML]{404040}\textbf{#4}}\hfill #1 - #2\\%
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