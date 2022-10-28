\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{BredelebeamerKareem}[15/9/2022, v1.0]

\PassOptionsToPackage{svgnames}{xcolor}
\LoadClass[compress,8pt,aspectratio=169]{beamer}




% \usepackage[frenchb]{babel}
\usepackage[french]{babel}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{helvet}
\usepackage{pdfpages}
\usepackage{graphicx}% http://ctan.org/pkg/graphicx
\usepackage[footnotesize,hang]{caption} % réduire la taille des légendes des images
% \usepackage{hyperref}
\usepackage{tikz}
\usepackage{environ}
\usepackage{keyval}
\usepackage{ifthen}




\usepackage{chancery}
\usepackage[T1]{fontenc}
\usetikzlibrary{calc}


%%%% Les Framacouleurs

\definecolor{Framableu}{RGB}{12,91,122}
\definecolor{Framableulight}{RGB}{18,144,176}
\definecolor{Framavert}{RGB}{142,156,72}
\definecolor{Framavertlight}{RGB}{227,235,199}
\definecolor{Framarouge}{RGB}{204,45,24}
\definecolor{Framarougelight}{RGB}{249,189,187}
\definecolor{Framaviolet}{RGB}{106,86,135}
\definecolor{Framavioletlight}{RGB}{211,197,232}
\definecolor{Framaorange}{RGB}{235,114,57}
\definecolor{Framaorangelight}{RGB}{235,209,197}
\definecolor{Framajaune}{RGB}{196,168,27}
\definecolor{Framajaunelight}{RGB}{255,235,181}
\definecolor{Framamarron}{RGB}{161,136,127}
\definecolor{Framamarronlight}{RGB}{215,204,200}
\definecolor{Framagris}{RGB}{97,97,97}
\definecolor{Framagrislight}{RGB}{245,245,245}



%%%%%%%%%%%% Tableaux
\usepackage{tcolorbox}
\usepackage{tabularx}
\usepackage{array}
\usepackage{colortbl}
\tcbuselibrary{skins}


%%%% Merci : http://tex.stackexchange.com/questions/112343/beautiful-table-samples


% \newcolumntype{Y}{>{\raggedleft\arraybackslash}X}

\tcbset{tabrouge/.style={enhanced,arc=0em,fonttitle=\bfseries,fontupper=\normalsize\sffamily,
colback=Framarougelight!100!white,colframe=Framarouge!70!black,colbacktitle=Framarouge!100!white,
coltitle=white,center title}}

\tcbset{taborange/.style={enhanced,arc=0em,fonttitle=\bfseries,fontupper=\normalsize\sffamily,
colback=Framaorangelight!100!white,colframe=Framaorange!70!black,colbacktitle=Framaorange!100!white,
coltitle=white,center title}}

\tcbset{tabvert/.style={enhanced,arc=0em,fonttitle=\bfseries,fontupper=\normalsize\sffamily,
colback=Framavertlight!100!white,colframe=Framavert!70!black,colbacktitle=Framavert!100!white,
coltitle=white,center title}}

\tcbset{tabbleu/.style={enhanced,arc=0em,fonttitle=\bfseries,fontupper=\normalsize\sffamily,
colback=Framableulight!100!white,colframe=Framableu!70!black,colbacktitle=Framableu!100!white,
coltitle=white,center title}}

\tcbset{tabjaune/.style={enhanced,arc=0em,fonttitle=\bfseries,fontupper=\normalsize\sffamily,
colback=Framajaunelight!100!white,colframe=Framajaune!70!black,colbacktitle=Framajaune!100!white,
coltitle=white,center title}}

\tcbset{tabgris/.style={enhanced,arc=0em,fonttitle=\bfseries,fontupper=\normalsize\sffamily,
colback=Framagrislight!100!white,colframe=Framagris!70!black,colbacktitle=Framagris!100!white,
coltitle=white,center title}}

\tcbset{tabmarron/.style={enhanced,arc=0em,fonttitle=\bfseries,fontupper=\normalsize\sffamily,
colback=Framamarronlight!100!white,colframe=Framamarron!70!black,colbacktitle=Framamarron!100!white,
coltitle=white,center title}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%









\beamerboxesdeclarecolorscheme{orange}{Framaorange}{Framaorangelight}



\usecolortheme[named=Framableu]{structure}

\useinnertheme{rectangles}
\useoutertheme[subsection=false]{miniframes}
\setbeamertemplate{navigation symbols}{}

\definecolor{sectionColor}{RGB}{15,105,153}%{30,81,98} % noir
\definecolor{subsectionColor}{RGB}{36,129,179}%{41,110,133} % Framagris
\definecolor{sectionTextColor}{RGB}{255,255,255} % blanc
\definecolor{subsectionTextColor}{RGB}{255,255,255} % blanc
\definecolor{leftFootlineColor}{RGB}{15,105,153}% noir
\definecolor{middleFootlineColor}{RGB}{36,129,179} % Framagris
\definecolor{rightFootlineColor}{RGB}{15,105,153}% noir
\definecolor{authorColor}{RGB}{255,255,255}% blanc
\definecolor{footlineTitleColor}{RGB}{255,255,255}% blanc
\definecolor{instituteColor}{RGB}{0,0,0}% noir
\definecolor{dateColor}{RGB}{255,255,255}% blanc
\definecolor{pageColor}{RGB}{255,255,255}% blanc
\definecolor{titleColor}{RGB}{34,139,184} % {61,96,167} % {16,8,75} % {51,139,168} % Framableu
\definecolor{titleTextColor}{RGB}{255,255,255} % blanc
\definecolor{frameTitleColor}{RGB}{224,237,246}
\definecolor{frameTitleTextColor}{RGB}{34,139,184}
\definecolor{bodyColor}{RGB}{255,255,255} % blanc
\definecolor{normalTextColor}{RGB}{0,0,0} % noir
\definecolor{exampleTextColor}{RGB}{82,99,42} %Framavertfoncé
\definecolor{alertTextColor}{RGB}{204,45,24} % Framarouge

\definecolor{chipColor}{RGB}{15,105,153} % Framableu
\definecolor{chipTextColor}{RGB}{255,255,255} % blanc
\definecolor{normalBlockColor}{RGB}{224,237,246} % Framableulight pour arriere plan du block
\definecolor{normalTitleBlockColor}{RGB}{15,105,153} % Framableu
\definecolor{normalBlockTextColor}{RGB}{0,0,0} % noir
\definecolor{normalBlockTitleTextColor}{RGB}{255,255,255} % blanc
\definecolor{exampleBlockColor}{RGB}{227,235,199} %Framavertlight pour arriere plan du block
\definecolor{exampleTitleBlockColor}{RGB}{142,156,72} % Framavert
\definecolor{exampleBlockTextColor}{RGB}{0,0,0} % noir
\definecolor{exampleBlockTitleTextColor}{RGB}{255,255,255} % blanc
\definecolor{alertBlockColor}{RGB}{249,189,187} % Framarougelight pour arriere plan du block
\definecolor{alertTitleBlockColor}{RGB}{204,45,24} % Framarouge
\definecolor{alertBlockTextColor}{RGB}{0,0,0} % noir
\definecolor{alertBlockTitleTextColor}{RGB}{255,255,255} % blanc
% \definecolor{contributionColor}{RGB}{59,161,214}%{16,8,75}%{51,139,168} % Framableu
% \definecolor{contributionTextColor}{RGB}{255,255,255} % blanc



\setbeamertemplate{blocks}[rectangle]

\setbeamercolor{section in head/foot}{bg=sectionColor, fg=sectionTextColor}
\setbeamercolor{subsection in head/foot}{bg=subsectionColor, fg=subsectionTextColor}
\setbeamercolor*{block title}{fg=normalBlockTitleTextColor,bg=normalTitleBlockColor}
\setbeamercolor*{block body}{fg=normalBlockTextColor,bg=normalBlockColor}
\setbeamercolor*{block title alerted}{fg=alertBlockTitleTextColor,bg=alertTitleBlockColor}
\setbeamercolor*{block body alerted}{fg=alertBlockTextColor,bg=alertBlockColor}
\setbeamercolor*{block title example}{fg=exampleBlockTitleTextColor,bg=exampleTitleBlockColor}
\setbeamercolor*{block body example}{fg=exampleBlockTextColor,bg=exampleBlockColor}
\setbeamerfont{block title}{size={}}
\setbeamercolor{titlelike}{fg=titleTextColor,bg=titleColor}
\setbeamercolor{frametitle}{fg=frameTitleTextColor,bg=frameTitleColor}
\setbeamercolor*{normal text}{fg=normalTextColor,bg=bodyColor}
\setbeamercolor*{example text}{fg=exampleTextColor}
\setbeamercolor*{alerted text}{fg=alertTextColor}
\setbeamercolor{itemize item}{fg=titleColor!70}
\setbeamercolor{enumerate item}{fg=titleColor!70}
\setbeamercolor{description item}{fg=titleColor!70}
\setbeamercolor{contribution}{bg=titleColor, fg=titleTextColor}
\setbeamercolor{circle}{fg=frameTitleColor,bg=frameTitleTextColor}

\useinnertheme{default}
\setbeamercolor{item projected}{bg=chipColor,fg=chipTextColor}
\beamer@compresstrue
\defbeamertemplate*{headline}{smoothbars theme}
{%
\begin{beamercolorbox}[ht=2.125ex,dp=3.150ex]{section in head/foot}
\insertnavigation{\paperwidth}
\end{beamercolorbox}%

\begin{beamercolorbox}[ht=2.125ex,dp=1.125ex,%
leftskip=.3cm,rightskip=.3cm plus1fil]{subsection in head/foot}
\usebeamerfont{subsection in head/foot}\insertsubsectionhead
\end{beamercolorbox}%
}
\setbeamercolor{author in head/foot}{bg=leftFootlineColor, fg=authorColor}
\setbeamercolor{title in head/foot}{bg=middleFootlineColor, fg=footlineTitleColor}
\setbeamercolor{institute in head/foot}{fg=instituteColor}
\setbeamercolor{date in head/foot}{bg=rightFootlineColor, fg=dateColor}
\defbeamertemplate*{footline}{infolines theme}
{
% \leavevmode%
% \hbox{%
% \begin{beamercolorbox}[wd=.25\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
% \usebeamerfont{author in head/foot}\insertshortauthor
% \end{beamercolorbox}%
% \begin{beamercolorbox}[wd=.5\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}%
% \usebeamerfont{title in head/foot}\insertshorttitle
% \end{beamercolorbox}%
% \begin{beamercolorbox}[wd=.25\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
% \usebeamerfont{date in head/foot}\insertframenumber{} / \inserttotalframenumber\hspace*{2ex}
% \end{beamercolorbox}
% }%
% \vskip0pt%
}
\mode
<all>

%utilise la couleur Beamer : "example text" pour la couleur du texte
\newcommand{\exemple}[1]{{\color{example text.fg} #1}}

% emphase
\renewcommand{\emph}[1]{\textcolor{titleColor}{\textbf{#1}}}


\usepackage{etoolbox}
\AtBeginEnvironment{exampleblock}{%
  \setbeamercolor{itemize item}{fg=exampleTitleBlockColor!70}
}
\AtBeginEnvironment{alertblock}{%
  \setbeamercolor{itemize item}{fg=alertTitleBlockColor!70}
}
\AtBeginEnvironment{block}{%
  \setbeamercolor{itemize item}{fg=normalTitleBlockColor!70}
}


% \usefonttheme[onlymath]{serif}

\newcommand*{\vcenteredhbox}[1]{\begingroup\setbox0=\hbox{#1}\parbox{\wd0}{\box0}\endgroup}
	
\newcommand\Wider[2][3em]{%
	\makebox[\linewidth][c]{%
		\begin{minipage}{\dimexpr\textwidth+#1\relax}
			\raggedright#2
		\end{minipage}%
	}%
}

\pgfdeclareimage[width=\paperwidth]{mybackground}{./figs/logo/backgroundTitlePage.png}
\defbeamertemplate*{background canvas}{kareem}{%
  \ifbeamercolorempty[bg]{background canvas}{}{\color{bg}\vrule width\paperwidth height\paperheight}% copied beamer default here
}
\defbeamertemplate*{background canvas}{image}[1]{%
    \def\imageOpacity{#1}\ifx\imageOpacity\@empty\def\opacity{1}\else\def\opacity{\imageOpacity}\fi
    \begin{tikzpicture}
        \useasboundingbox (0,0) rectangle (\the\paperwidth, \the\paperheight); 
        \pgftext[at=\pgfpoint{0cm}{0cm}, left, base]{\pgfsetfillopacity{\opacity}\pgfuseimage{mybackground}}; 
    \end{tikzpicture}}

\defbeamertemplate*{frametitle}{kareem}[1]{% 
\noindent\drawCircleCounter}

\BeforeBeginEnvironment{frame}{%
\setbeamertemplate{background canvas}[kareem]%
\setbeamertemplate{frametitle}[kareem]{false}
\setcounter{footnote}{0}
}

\makeatletter
\define@key{beamerframe}{image}[1]{%
  \setbeamercovered{invisible}%
  \setbeamertemplate{background canvas}[image]{#1}%
}
\define@key{beamerframe}{nocounter}[false]{%
  \setbeamertemplate{frametitle}[kareem]{#1}%
}
\makeatother%


\setbeamertemplate{caption}[numbered]



\newcommand{\advisor}[1]{\def\insertadvisor{#1}}

% \setbeamercolor{author}{bg=titleColor!0}


\defbeamertemplate*{title page}{kareem}[1][]
{
\begin{tikzpicture}[overlay,remember picture,every node/.style={anchor=center},shift=(current page.north west)]
\begin{scope}[x={(current page.north east)},y={(current page.south west)}]
\node at (0.5,0.57) {
    \begin{beamercolorbox}[wd=0.5\paperwidth,sep=0.5em,center,rounded=true,shadow=true,#1]{author}
          \usebeamerfont{author}\textbf{\fontsize{13}{40}\selectfont\insertauthor}
    \end{beamercolorbox}
};
\node at (0.5, 0.7) {
    \ifx\insertadvisor\@empty%
      \else%
        \begin{beamercolorbox}[wd=0.5\paperwidth,sep=0.5em,center,rounded=true,shadow=true,#1]{author}
              \usebeamerfont{author} \fontsize{8}{9}Advisor\\\fontsize{11}{10}\selectfont\textbf{\insertadvisor}
        \end{beamercolorbox}
    \fi
};
\node at (0.5, 0.85) {
    \begin{beamercolorbox}[sep=0.5em,center,#1]{institute}
      \usebeamerfont{institute}\fontsize{8}{8}\selectfont\insertinstitute
    \end{beamercolorbox}
};
\node at (0.5,0.95) {
    \begin{beamercolorbox}[sep=1em,center,#1]{date}
      \usebeamerfont{date}\insertdate
    \end{beamercolorbox}
};
\node[anchor=south west] at (0,1) {
\vcenteredhbox{\includegraphics[width=0.25\linewidth]{logo/PSU_logo.png}}
};
\node[anchor=south east] at (1,0.99) {
\vcenteredhbox{\includegraphics[width=0.25\linewidth]{logo/IPAL_logo.png}}
};
\node at (0.5,0.37) {
    \begin{beamercolorbox}[wd=0.8\paperwidth,sep=0.5em,center,rounded=true,shadow=true,#1]{title}
      {\Huge\fontfamily{ptm}\selectfont\inserttitle}\par%
      \ifx\insertsubtitle\@empty%
      \else%
        \vskip1em%
        {\usebeamerfont{subtitle}\normalsize\usebeamercolor[fg]{subtitle}\insertsubtitle}%
      \fi%     
    \end{beamercolorbox}%
};
\end{scope}
\end{tikzpicture}
}

\setbeamertemplate{title page}[kareem]


\newcommand{\titleFrame}[4]{%
{
\setbeamertemplate{background} 
{
    \includegraphics[width=\paperwidth,height=\paperheight]{logo/background#1.png}
}
\begin{frame}[plain,noframenumbering]{}
\def\contribNumber{#2}
\begin{center}
    \Huge \emph{\textbf{\fontfamily{ptm}\selectfont\ifx\contribNumber\empty\else #1 #2 \fi}}\\\medskip
\end{center}
\hfill
\begin{beamercolorbox}[wd=\paperwidth,sep=1em,center]{contribution}
\Large \textbf{\fontfamily{ptm}\selectfont #3}
\end{beamercolorbox}
\hfill{}
\medskip\medskip\medskip
#4
\end{frame}
}
}


\newcommand{\ThankYou}[1]{
\begin{frame}[noframenumbering,image=#1]{}
\begin{tikzpicture}[overlay,remember picture,every node/.style={anchor=center},shift=(current page.north west)]
\begin{scope}[x={(current page.north east)},y={(current page.south west)}]
\node at (0.5,0.25) {\centering\huge\textcolor{titleColor}{\textbf{\fontfamily{ptm}\selectfont\insertshorttitle}}};
\node at (0.5,0.5) {
\begin{beamercolorbox}[wd=\paperwidth,sep=1em,center]{contribution}
\textbf{\rmfamily \fontsize{30}{48}\selectfont Thank You!}
\end{beamercolorbox}};
\node at (0.5,0.7) {
\vcenteredhbox{\includegraphics[width=0.26\linewidth]{logo/PSU_logo.png}} \hspace{+5pt}
\vcenteredhbox{\includegraphics[width=0.205\linewidth]{logo/IPAL_logo.png}}
};
\node at (0.5,0.8) {\url{https://kareem-metwaly.github.io}};
\end{scope}
\end{tikzpicture}
\end{frame}
}

\newcommand{\colorBGFrame}[3]{%
{
\setbeamercolor{background canvas}{bg=#1}
\begin{frame}[noframenumbering,image=0]{#2}
#3
\end{frame}
}
}

\makeatletter

\newlength{\beamer@height}
\usebeamerfont{frametitle} %use the frame title font
\setlength{\beamer@height}{2.5\baselineskip}


%----------------------------------------------------------------------------------------------------------------------------------

% radius of the logo

\newlength{\beamer@logoradius}
\setlength{\beamer@logoradius}{0.95\beamer@height/2}

%----------------------------------------------------------------------------------------------------------------------------------

% width of the border

\newlength{\beamer@borderwidth}
\setlength{\beamer@borderwidth}{1.5mm}  % as small is the thickness of the border the whole circle goes up
 
%----------------------------------------------------------------------------------------------------------------------------------

% inner radius of border of the logo frame

\newlength{\beamer@logoinnerradius}
\setlength{\beamer@logoinnerradius}{0.85\beamer@logoradius} 

%----------------------------------------------------------------------------------------------------------------------------------

% radius of the outer border of the logo frame

\newlength{\beamer@logoouterradius}
\setlength{\beamer@logoouterradius}{\beamer@logoinnerradius+\beamer@borderwidth}

%----------------------------------------------------------------------------------------------------------------------------------

% radius of the counters

\newlength{\beamer@counterradius}
\setlength{\beamer@counterradius}{\beamer@logoinnerradius/5+\beamer@logoouterradius/5}


\newlength{\beamer@arcradius}
\setlength{\beamer@arcradius}{\beamer@logoinnerradius/2+\beamer@logoouterradius/2}


% macros used in the theme 
%% coordinate the fancy header background

\newcommand{\drawCircleCounter}[0]
{
    \begin{tikzpicture}[overlay]

        \coordinate (UL) at (0,0); %upper left corner of the slide
        \coordinate (HLR) at (\paperwidth,-0.9\beamer@height); %lower right of the header

        \coordinate (ULL) at (0,-0.95\beamer@height); % upper left corner of the line 
        \coordinate (LLR) at (\paperwidth,-1\beamer@height); % lower right corner of the line 

        \coordinate (ULF) at (0,-5.90\beamer@height); % upper left corner of the footline 
        \coordinate (LFR) at (\paperwidth,-6.08\beamer@height); % lower right corner of the footline 

        \coordinate (logopos) at ([shift={(-2.75\beamer@logoouterradius-\beamer@borderwidth,+1\beamer@height)}] HLR); % coordinate of the logo and the circ position


%%draw the background of the header, the circle and the logo

     {
        \usebeamercolor{circle}
        
        \draw[draw=none,fill=frametitle.bg] ([shift={(-1.9\beamer@logoouterradius,0.3\beamer@height)}] UL) rectangle ([shift={(-1.7\beamer@logoouterradius,0.7\beamer@height)}] HLR); % background rectangle line below the background rectangle
        
        \node[anchor=west] at ([shift={(-1.7\beamer@logoouterradius,+0.01\beamer@height)}] UL) {{\usebeamercolor[fg]{frametitle}\usebeamerfont{frametitle}\insertframetitle\par}}; 

%% place the current frame number

        \node[fill=normal text.bg,draw=circle.fg,thick,circle,opacity=1] at ([shift={(-4\beamer@counterradius,0.5\beamer@counterradius)}]logopos) {{\usebeamercolor[fg]{normal text}\scriptsize \insertframenumber/\inserttotalframenumber}};

%% draw the outer circle

        \fill[fill=circle.fg] (logopos) circle (\beamer@logoouterradius);


%% draw the inner circle

        \fill[fill=normal text.bg] (logopos) circle (\beamer@logoinnerradius);


%% place the logo in the circle

        \node at (logopos) {\includegraphics[width=1.3\beamer@logoradius]{logo/psu.pdf}};


%% calculate end position

        \pgfmathsetmacro{\progress}{360*\insertframenumber/\inserttotalframenumber}; %%% 220 covers the entire circle, while 360 it goes twice 
%		\node[anchor=west] at ([shift={(-1.7\beamer@logoouterradius,-\beamer@height)}] UL) {{\usebeamercolor[fg]{frametitle}\usebeamerfont{frametitle}\progress\par}}; 
%		\node[anchor=west] at ([shift={(-1.7\beamer@logoouterradius,-2\beamer@height)}] UL) {{\usebeamercolor[fg]{frametitle}\usebeamerfont{frametitle}\progressT\par}}; 


%% draw the arc
        
        \draw[color=circle.bg,line width=0.2*\beamer@borderwidth] ([xshift=\beamer@arcradius] logopos)  arc[radius=\beamer@arcradius, start angle=0, end angle=\progress];
        \fill[fill=circle.bg] ([shift={(\progress:\beamer@arcradius)}] logopos) circle (0.25\beamer@borderwidth);
    }
    \end{tikzpicture}
}


\mode<all>
\makeatother



\newcounter{multipleslide}

\makeatletter%
\newcommand{\multipleframe}{%
    \setcounter{multipleslide}{\value{framenumber}}
    \patchcmd{\beamer@@tmpl@footline}% <cmd>
    {\insertframenumber}% <search>
    {\themultipleslide}% <replace>
    {}% <success>
    {}% <failure>
}
\newcommand{\subframe}{%
    \patchcmd{\beamer@@tmpl@footline}% <cmd>
    {\themultipleslide}% <search>
    {\insertframenumber}% <replace>
    {}% <success>
    {}% <failure>
    \setcounter{framenumber}{\value{multipleslide}}%
}
\newcommand{\restoreframe}{%
	\stepcounter{multipleslide}    
    \patchcmd{\beamer@@tmpl@footline}% <cmd>
    {\themultipleslide}% <search>
    {\insertframenumber}% <replace>
    {}% <success>
    {}% <failure>
    \setcounter{framenumber}{\value{multipleslide}}%
}



\newenvironment{canvas}[1][]{
\def\canvasgrid{#1}
\begin{tikzpicture}[overlay,remember picture,shift=(current page.center)]
\begin{scope}[x={(current page.east)}, y={(current page.north)}]
\pgfmathsetmacro{\startCanvas}{1/2+1/8+1/16+1/128+1/256+1/1024}
\coordinate (UL) at (-1,\startCanvas); %upper left corner of the canvas
\coordinate (UR) at (1,\startCanvas); %upper left corner of the canvas
\coordinate (LL) at (-1,-1); %lower left corner of the canvas
\coordinate (LR) at (1,-1); %lower right corner of the canvas
\coordinate (CC) at (0,-0.15); %Center of the canvas
}{%
\ifthenelse{\equal{\canvasgrid}{grid}}{%
 \def\xMin{-1}%
 \def\xMax{1}%
 \def\yMin{-1}%
 \def\yMax{\startCanvas}%
 \draw[step=1/16,gray,very thin] (LL) grid (UR);

 \foreach\step [evaluate=\step as \coord using (\step/4 - 1)] in {0,...,8} {
 \draw [thin,gray] (\coord,\yMin) -- (\coord,\yMax) node [above] at (\coord,\yMin) {$\coord$};
 \draw [thin,gray] (\xMin,\coord) -- (\xMax,\coord) node [right] at (\xMin,\coord) {$\coord$};
 \node [circle,draw,text=orange] at (\coord,\yMin) {};
 \node [circle,draw,text=orange] at (\xMin,\coord) {};
 }
 \draw[gray] (UL) -- (LR);
 \draw[gray] (UR) -- (LL);
 \draw[draw=gray] (0,0) circle (4cm and 2cm);
 \draw[draw=gray] (CC) circle (4cm and 2cm);
 }{\node at (CC) {\canvasgrid};}
\end{scope}\end{tikzpicture}}
\makeatother%


\newenvironment<>{varblock}[2][0.9\textwidth]{%
    \setlength{\textwidth}{#1}%
    \setlength{\linewidth}{\textwidth}% required to itemize respect the width of block
  \begin{actionenv}#3%
    \def\insertblocktitle{#2}%
    \par%
    \usebeamertemplate{block begin}}
  {\par%
  \usebeamertemplate{block end}%
  \end{actionenv}}
  


