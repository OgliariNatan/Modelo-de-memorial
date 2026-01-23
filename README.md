# Modelo de memorando personalizado

Modelo simplificado de memorando técnico com **cabeçalho e rodapé automáticos** em todas as páginas, formatado segundo normas ABNT.

## 📁 Estrutura

```
relatorio-latex/
├── main.tex              # Arquivo único com todo o conteúdo
├── classes/
│   └── relatorio.cls     # Classe com cabeçalho/rodapé automático
├── img/                  # Imagens
├── cod/                  # Códigos-fonte
│   └── exemplo.py
├── referencias.bib       # Referências bibliográficas
└── README.md
```

## 🎯 Características

✅ **Texto em arquivo único** - Todo conteúdo em `main.tex`  
✅ **Cabeçalho automático** - Repetido em todas as páginas  
✅ **Rodapé automático** - Com nome, data e numeração  
✅ **Formatação ABNT completa**  
✅ **Referências automáticas**

## 📋 Cabeçalho (em todas as páginas)

```
┌───────┌──────────────────────────────────────────┐
│       | ENGENHEIRO DE SOFTWARE                   │
│  LOGO | TÉCNICO EM ELETROELETRÔNICA              │
│       | NATAN OGLIARI                            │
├───────├──────────────────────────────────────────┤
```

## 📋 Rodapé (em todas as páginas)

```
├─────────────────────────────────────────────────┤
│ AUTOR    23 de janeiro de 2026       Pág. 1 de 5│
└─────────────────────────────────────────────────┘
```

## 🚀 Como Usar

### 1. Edite as informações no `main.tex`

```latex
\superior{ENGENHEIRO DE SOFTWARE }
\curso{TÉCNICO EM ELETROELETRÔNICA }
\nome{Nome}
\titulo{Título do Relatório}
```

### 2. Escreva o conteúdo

Todo o texto fica em `main.tex` - seções, parágrafos, figuras, tabelas, códigos.

### 3. Compile

```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

## ✏️ Personalizações

### Adicionar Figuras

```latex
\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.6\textwidth]{img/figura.png}
    \caption{Descrição da figura}
    \label{fig:minha-figura}
\end{figure}
```

### Adicionar Tabelas

```latex
\begin{table}[htbp]
    \centering
    \caption{Título da tabela}
    \label{tab:minha-tabela}
    \begin{tabular}{lcc}
        \hline
        Coluna 1 & Coluna 2 & Coluna 3 \\
        \hline
        Dado 1 & Dado 2 & Dado 3 \\
        \hline
    \end{tabular}
\end{table}
```

### Incluir Códigos

```latex
% De arquivo externo
\lstinputlisting[language=Python, caption=Descrição, label=cod:codigo]{cod/arquivo.py}

% Inline
\begin{lstlisting}[language=Python, caption=Código inline]
def exemplo():
    return "Hello World"
\end{lstlisting}
```

### Citações

```latex
% Autor no texto
\citeonline{knuth1984texbook} afirma que...

% Citação entre parênteses
Conforme literatura (\cite{lamport1994latex}).
```

## 📊 Formatação ABNT

- ✅ Margens: 3cm (superior/esquerda), 2cm (inferior/direita)
- ✅ Fonte: Times New Roman 12pt
- ✅ Espaçamento: 1,5 linhas
- ✅ Recuo de parágrafo: 1,25cm
- ✅ Cabeçalho e rodapé com linhas de separação
- ✅ Numeração: "Pág. X de Y"
- ✅ Referências: NBR 6023:2018

## 🔧 Requisitos

- LaTeX completo (TeX Live, MiKTeX ou MacTeX)
- Pacote `abntex2cite`
- Pacote `fancyhdr`
- Pacote `lastpage`

## 📄 Licença

Uso livre.

---

**Última atualização:** Janeiro/2026
