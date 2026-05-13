# Курсовая работа по алгоритмам и структурам данных

**Тема:** Алгоритмы сортировки и поиска кратчайшего пути на графах  
**Дисциплина:** Алгоритмы и структуры данных  
**Шаблон:** СГУ (SCWorks.cls)

## Структура проекта

```
.
├── main.tex              # Главный файл
├── SCWorks.cls           # Стилевой файл СГУ
├── references.bib        # Библиография (BibTeX/biblatex)
├── sections/
│   ├── introduction.tex  # Введение
│   ├── sorting.tex       # Сортировка слиянием
│   ├── graphs.tex        # Алгоритм Дейкстры
│   ├── conclusion.tex    # Заключение
│   └── appendix.tex      # Приложения
├── code/
│   ├── merge_sort.py     # Исходный код Python
│   └── dijkstra.cpp      # Исходный код C++
└── images/
    ├── merge_sort_tree.png
    └── dijkstra_graph.png
```

## Сборка

Требуется **XeLaTeX** или **PDFLaTeX** с пакетами:
- `minted` (требует Python + `pygments`: `pip install pygments`)
- `biblatex` + `biber`
- `babel` с поддержкой русского языка

```bash
pdflatex -shell-escape main
biber main
pdflatex -shell-escape main
pdflatex -shell-escape main
```

> Флаг `-shell-escape` обязателен для работы пакета `minted`.
