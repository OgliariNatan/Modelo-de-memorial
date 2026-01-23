\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{relatorio}[2024/01 Classe para Relatórios ABNT com Cabeçalho e Rodapé]

% Baseado na classe article
\LoadClass[12pt, a4paper]{article}

% ==================================================
% PACOTES ESSENCIAIS
% ==================================================
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[brazil]{babel}
\RequirePackage{times}

% Margens ABNT: 3cm superior, 2cm direita, 2cm inferior, 3cm esquerda
\RequirePackage[top=3cm, right=2cm, bottom=2cm, left=3cm, headheight=30pt]{geometry}

% Espaçamento 1.5
\RequirePackage{setspace}
\onehalfspacing

% Parágrafos
\RequirePackage{indentfirst}
\setlength{\parindent}{1.25cm}
\setlength{\parskip}{0pt}

% ==================================================
% SEÇÕES
% ==================================================
\RequirePackage{titlesec}
\titleformat{\section}{\normalfont\fontsize{12}{15}\bfseries\uppercase}{\thesection}{1em}{}
\titleformat{\subsection}{\normalfont\fontsize{12}{15}\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\normalfont\fontsize{12}{15}\bfseries\itshape}{\thesubsubsection}{1em}{}

% ==================================================
% CITAÇÕES E REFERÊNCIAS ABNT
% ==================================================
\RequirePackage[alf, abnt-emphasize=bf, bibjustif]{abntex2cite}

% ==================================================
% FIGURAS E TABELAS
% ==================================================
\RequirePackage{graphicx}
\RequirePackage{caption}
\captionsetup{font=small, labelfont=bf, justification=centering}

% ==================================================
% LISTAGENS DE CÓDIGO
% ==================================================
\RequirePackage{listings}
\RequirePackage{xcolor}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{estilo-codigo}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}

\lstset{style=estilo-codigo}

% ==================================================
% HYPERLINKS
% ==================================================
\RequirePackage[hidelinks]{hyperref}

% ==================================================
% CABEÇALHO E RODAPÉ
% ==================================================
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}

% Comandos personalizados para informações
\newcommand{\instituicao}[1]{\def\@instituicao{#1}}
\newcommand{\curso}[1]{\def\@curso{#1}}
\newcommand{\disciplina}[1]{\def\@disciplina{#1}}
\newcommand{\professor}[1]{\def\@professor{#1}}
\newcommand{\aluno}[1]{\def\@aluno{#1}}
\newcommand{\titulo}[1]{\def\@titulo{#1}}

% Configuração do estilo de página
\pagestyle{fancy}
\fancyhf{} % Limpa cabeçalho e rodapé

% Cabeçalho
\fancyhead[L]{%
    \small
    \textbf{\@instituicao} \\
    \@curso \\
    \@disciplina
}
\fancyhead[R]{%
    \small
    \@professor \\
    \@aluno
}

% Rodapé
\fancyfoot[L]{\small \@titulo}
\fancyfoot[C]{\small \today}
\fancyfoot[R]{\small Página \thepage\ de \pageref{LastPage}}

% Linhas de separação
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

% Aplicar estilo fancy em todas as páginas
\AtBeginDocument{\thispagestyle{fancy}}