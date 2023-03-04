
---
# Front matter
lang: ru-RU
title: "Отчет по лабораторной работе №4"
subtitle: "Модель гармонических колебаний - вариант 13"
author: "Дорофеева Алёна Тимофеевна НПИбд-01-20"

# Formatting
toc-title: "Содержание"
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
fontsize: 12pt
linestretch: 1.5
papersize: a4paper
documentclass: scrreprt
polyglossia-lang: russian
polyglossia-otherlangs: english
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase
indent: true
pdf-engine: lualatex
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the υalue makes tex try to haυe fewer lines in the paragraph.
  - \interlinepenalty=0 # υalue of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Постройте фазовый портрет гармонического осциллятора и решение уравнения
гармонического осциллятора.

# Задание

1.	Построить решение уравнения гармонического осциллятора без затухания и без действий внешней
силы
2.	Построить решение уравнения колебания гармонического осциллятора c затуханием и без действий внешней
силы.
3.	Построить решение уравнения колебания гармонического осциллятора c затуханием и под действием внешней
силы.


# Выполнение лабораторной работы

## Теоретические сведения


Движение грузика на пружинке, маятника, заряда в электрическом контуре, а также эволюция во времени многих систем в физике, химии, биологии и других науках при определенных предположениях можно описать одним и тем же дифференциальным уравнением, которое в теории колебаний выступает в качестве основной модели. Эта модель называется линейным гармоническим осциллятором.
Уравнение свободных колебаний гармонического осциллятора имеет следующий вид:
$$\ddot{x}+2\gamma\dot{x}+\omega_0^2=0$$

где $x$ - переменная, описывающая состояние системы (смещение грузика, заряд конденсатора и т.д.), $\gamma$ - параметр, характеризующий потери энергии (трение в механической системе, сопротивление в контуре), $\omega_0$ - собственная частота колебаний.
Это уравнение есть линейное однородное дифференциальное  уравнение второго порядка и оно является примером линейной динамической системы.

При отсутствии потерь в системе ( $\gamma=0$ ) получаем уравнение консервативного осциллятора энергия колебания которого сохраняется во времени.
$$\ddot{x}+\omega_0^2x=0$$

Для однозначной разрешимости уравнения второго порядка необходимо задать два начальных условия вида
 
$$
 \begin{cases}
	x(t_0)=x_0
	\\   
	\dot{x(t_0)}=y_0
 \end{cases}
$$

Уравнение второго порядка можно представить в виде системы двух уравнений первого порядка:
$$
 \begin{cases}
	x=y
	\\   
	y=-\omega_0^2x
 \end{cases}
$$

Начальные условия для системы примут вид:
$$
 \begin{cases}
	x(t_0)=x_0
	\\   
	y(t_0)=y_0
 \end{cases}
$$

Независимые	переменные	$x, y$	определяют	пространство,	в	котором «движется» решение. Это фазовое пространство системы, поскольку оно двумерно будем называть его фазовой плоскостью.
Значение фазовых координат $x, y$ в любой момент времени полностью определяет состояние системы. Решению уравнения движения как функции времени отвечает гладкая кривая в фазовой плоскости. Она называется фазовой траекторией. Если множество различных решений (соответствующих различным 
начальным условиям) изобразить на одной фазовой плоскости, возникает общая картина поведения системы. Такую картину, образованную набором фазовых траекторий, называют фазовым портретом.


## Задача

Постройте фазовый портрет гармонического осциллятора и решение уравнения гармонического осциллятора для следующих случаев 

1. Колебания гармонического осциллятора без затуханий и без действий внешней
силы 

$\ddot{x}+6.5x=0$

2. Колебания гармонического осциллятора c затуханием и без действий внешней
силы 

$\ddot{x}+4\dot{x}+5x=0$

3. Колебания гармонического осциллятора c затуханием и под действием внешней
силы 

$\ddot{x}+3\dot{x}+7x=sin({2t})$

На интервале $t \in [ 0;75 ]$, шаг 0.05, $x_0=-1, y_0=0$


1. В системе отсутствуют потери энергии (колебания без затухания)
Получаем уравнение 
$$\ddot{x}+\omega_0^2x=0$$

Переходим к двум дифференциальным уравнениям первого порядка:
$$
 \begin{cases}
	\dot{x}=y
	\\   
	\dot{y}=-\omega_0^2x
 \end{cases}
$$

Код случая 1 на OpenModelica:
```
model lab4
Real x(start=-1);
Real y(start=0);
parameter Real w=6.5;
equation 
	der(x)=y;
	der(y)=-w*x;
end lab4;
```

![График решения для случая 1, OpenModelica](image/graf1.png){ #fig:001 width=70% height=70% }

![Фазовый портрет для случая 1, OpenModelica](image/phase.png){ #fig:002 width=70% height=70% }

Код случая 1 на Julia:
```
using Plots
using DifferentialEquations

x0 = -1
y0 = 0
u0 = [x0; y0]

t0=0
tmax = 75
t = collect(LinRange(t0, tmax, 1000))
tspan = (t0, tmax)

w = 6.5

function f(dy, y, p, t)
    dy[1] = y[2]
    dy[2] = -w*y[1]
end

prob = ODEProblem(f, u0, tspan)
sol = solve(prob, saveat=t)

# plot(sol)
# savefig("lab4_julia_1.png")

plot(sol, vars=(2,1))
savefig("lab4_julia_1_phase.png")
```
![График решения для случая 1, Julia](image/lab4_1.png){ #fig:001 width=70% height=70% }

![Фазовый портрет для случая 1, Julia](image/lab4_1_phase.png){ #fig:002 width=70% height=70% }

2.  В системе присутствуют потери энергии (колебания с затуханием)
Получаем уравнение 
$$\ddot{x}+2\gamma\dot{x}+\omega_0^2x=0$$

Переходим к двум дифференциальным уравнениям первого порядка:
$$
 \begin{cases}
	\dot{x}=y
	\\   
	\dot{y}=-2\gamma y-\omega_0^2x
 \end{cases}
$$

Код случая 2 на OpenModelica:
```
model lab4
Real x(start=-1);
Real y(start=0);

parameter Real w=5;
parameter Real g=4;

equation
  der(x) = y;
  der(y) = -g*y-w*x;
end lab4;
```

![График решения для случая 2, OpenModelica](image/graf2.png){ #fig:001 width=70% height=70% }

![Фазовый портрет для случая 2, OpenModelica](image/phase2.png){ #fig:002 width=70% height=70% }

Код случая 2 на Julia:

```
using Plots
using DifferentialEquations

x0 = -1
y0 = 0
u0 = [x0; y0]

t0=0
tmax = 75
t = collect(LinRange(t0, tmax, 1000))
tspan = (t0, tmax)

w = 5
g = 4

function f(dy, y, p, t)
dy[1] = y[2]
dy[2] = -g*y[2]-w*y[1]
end

prob = ODEProblem(f, u0, tspan)
sol = solve(prob, saveat=t)

# plot(sol)
# savefig("lab4_julia_2.png")

plot(sol, vars=(2,1))
savefig("lab4_julia_2_phase.png")

```
![График решения для случая 2, Julia](image/lab4_2.png){ #fig:001 width=70% height=70% }

![Фазовый портрет для случая 2, Julia](image/lab4_2_phase.png){ #fig:002 width=70% height=70% }

3. На систему действует внешняя сила.
Получаем уравнение 
$$\ddot{x}+2\gamma\dot{x}+\omega_0^2x=F(t)$$

Переходим к двум дифференциальным уравнениям первого порядка:
$$
 \begin{cases}
	\dot{x}=y
	\\   
	\dot{y}=F(t)-2\gamma y-\omega_0^2x
 \end{cases}
$$

Код случая 3 на OpenModelica:
```
model lab4
Real x(start=-1);
Real y(start=0);

parameter Real w=7;
parameter Real g=3;

equation
  der(x)=y;
  der(y)=-g*y-w*x + sin(2*time);
end lab4;
```
![График решения для случая 3, OpenModelica](image/graf3.png){ #fig:001 width=70% height=70% }

![Фазовый портрет для случая 3, OpenModelica](image/phase3.png){ #fig:002 width=70% height=70% }

Код случая 3 на Julia:

```
using Plots
using DifferentialEquations

x0 = -1
y0 = 0
u0 = [x0; y0]

t0=0
tmax = 75
t = collect(LinRange(t0, tmax, 1000))
tspan = (t0, tmax)

w=7
g=3

function P(t)
    return sin(2*t)
end

function f(dy, y, p, t)
    dy[1] = y[2]
    dy[2] = -g*y[2]-w*y[1] + P(t)
end

prob = ODEProblem(f, u0, tspan)
sol = solve(prob, saveat=t)   

# plot(sol)
# savefig("lab4_3.png")

plot(sol, vars=(2,1))
savefig("lab4_3_phase.png")

```
![График решения для случая 2, Julia](image/lab4_3.png){ #fig:001 width=70% height=70% }

![Фазовый портрет для случая 2, Julia](image/lab4_3_phase.png){ #fig:002 width=70% height=70% }

# Выводы
В ходе выполнения лабораторной работы были построены решения уравнения гармонического осциллятора и фазовые портреты гармонических колебаний без затухания, с затуханием и при действии внешней силы.
