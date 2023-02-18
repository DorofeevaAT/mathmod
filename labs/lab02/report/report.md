---
## Front matter
title: "Отчет по лабораторной работе №2"
subtitle: "Задача о погоне"
author: "Дорофеева Алёна Тимофеевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Решить задачу о погоне в двух случаях, используя ЯП Julia. Построить графики движения.

# Задание

Вариант №13:

На море в тумане катер береговой охраны преследует лодку браконьеров.
Через определенный промежуток времени туман рассеивается, и лодка
обнаруживается на расстоянии 7,1 км от катера. Затем лодка снова скрывается в
тумане и уходит прямолинейно в неизвестном направлении. Известно, что скорость
катера в 2,4 раза больше скорости браконьерской лодки.

1. Запишите уравнение, описывающее движение катера, с начальными
условиями для двух случаев (в зависимости от расположения катера
относительно лодки в начальный момент времени).
2. Постройте траекторию движения катера и лодки для двух случаев.
3. Найдите точку пересечения траектории катера и лодки

# Теоретическое введение

Здесь описываются теоретические аспекты, связанные с выполнением работы.

Например, в табл. @tbl:std-dir приведено краткое описание стандартных каталогов Unix.

# Выполнение лабораторной работы

1. Установка Julia 


2. Решение задачи 

Известно, что скорость катера в 2.4 раза больше скорости лодки.
$$
V_Л=2.4V_К
$$

Лодка движется по прямой, а катер - по спирали, чтобы найти в итоге точку пересечения (встречи) и охрана смогла поймать браконьеров. 
Для успешного перехвата лодка должна преодолеть расстояние(разницу) (a-r0) по прямой и только после этого начать движение по спирали. 
Существует время t, которое тратит лодка на преодоление расстояния r0, также этовремя, которое тратит катер на преодоление расстояния (a-r0).
$$
t=r_0/V_К=(a-r_0)/V_Л=(a-r_0)/2.4V_К
$$

Из предыдущей формулы следует:
$$
r_0/V_К = (a -r_0)/2.4V_К
$$

Преобразовав, получим начальную точку, с которой стартует катер и начинает движение по спирали (случай 1):

$$
r_0 = a/3.4
$$

После того, как охрана преодолеет разницу в расстоянии и по прошествии времени t лодка и катер будут на одинаком расстоянии от точки до начала координат. Теперь охрана будет двигаться по спирали, увеличивая ее радиус на Δr за время Δt. 

Тогда скорость катера: тангенсальная V_t (охрана движется по касательной в сторону браконьеров) и радиальная V_r (охрана будет двигаться по спирали, увеличивая ее радиус на Δr за время Δt).

Чтобы катер всегда находился на одном расстоянии от начала координат (как и лодка) V_t должна быть равна V_r.

$$
V_r = V_t
$$

За время Δt охрана проходит свою траекторию по радиусу Δr.

$$
lim(Δt→0)rΔ0/Δt = V_К
$$

Из этого следует:

$$
dr/dt = V_r
$$

Существует угол ΔTheta - между радиальной и тангенсальной скоростями охраны. 

$$
lim(Δt→0)rΔ0/Δt = V_t
$$

Из предыдущей формулы следует:

$$
r * d0/dt = V_t
$$

Применим теорему Пифагора:

$$
V_К^2 = V_r^2+V_t^2→ (2.4V_К)^2 = V_Л^2 + V_t^2 → 4.76V_Л = V_t^2
$$

$$
V_t=\sqrt(4.76)V_Л
$$

$$
dr/dt=V_Л
$$

$$
r*d0/dt = \sqrt(4.76)V_Л
$$

Получим уравнение с разделяющимися переменными 

$$
dr/r = d0/\sqrt(4.76)
$$

Следует 
$$
r = (\theta) = Ce^\theta/\sqrt(4.76)
$$

$$
C = r_0 = a/3.4
$$

Итоговое уравнение

$$
r(\theta) = (a/3.4)e^(\theta/\sqrt(4.76))
$$

3. Код программы на Julia

### 

    using Plots

    "Условия"

    const a = 7.1
    const speed = 2.4

    "случай 1"

    const r_01 = a/3.4
    const C_01 = a/3.4

    theta_1 = range(0,2pi,1000)

    function r1(theta_1)
        return C_01*exp(theta_1/sqrt(4.76))
    end

    R_1 = r1.(theta_1)


    "случай 2"

    const r_02 = -a/1.4
    const C_02 = a/(1.4*exp(-pi/sqrt(4.76)))

    theta_2 = range(-pi,pi,1000)

    function r2(theta_2)
        return C_02*exp(theta_2/sqrt(4.76))
    end

    R_2 = r2.(theta_2)

    plt_1 = plot(
        proj = :polar,
        aspect_ratio=:equal,
        dpi=300,
        title="Задача о погоне (случай 1)",
        legend=true
    )

    plot!(
        plt_1,
        theta_1,
        R_1,
        xlabel = "Theta",
        ylabel = "r(t)",
        color=:red,
        label="Катер охраны"
    )

    plot!(
        plt_1,
        [0.0, theta_1[300]],
        [0,20],
        xlabel = "Theta",
        ylabel = "r(t)",
        color=:blue,
        label="Лодка браконьеров"
    )

    scatter!(
    plt_1,
    [theta_1[300]],
    [R_1[300]],
    label="Точка пересечения",
    ms=1.5
    )

    savefig(plt_1, "lab21.png")

    plt_2 = plot(
        proj = :polar,
        aspect_ratio=:equal,
        dpi=300,
        title="Задача о погоне (случай 2)",
        legend=true
    )

    plot!(
        plt_2,
        theta_2,
        R_2,
        xlabel = "0",
        ylabel = "r(t)",
        color=:red,
        label="Катер охраны"
    )

    plot!(
        plt_2,
        [0.0, theta_2[300]],
        [0,20],
        xlabel = "0",
        ylabel = "r(t)",
        color=:blue,
        label="Лодка браконьеров"
    )

    scatter!(
    plt_2,
    [theta_2[300]],
    [R_2[300]],
    label="Точка пересечения",
    ms=1.5
    )

    savefig(plt_2, "lab22.png")

###
График движения - случай 1 (рис. 1).

![рис. 1](image/lab21.jpg)

# Выводы

Изучила ЯП Julia и смогла решить задачу о погоне. Смоделировала графики движения для двух случаев. 

# Список литературы{.unnumbered}

::: {#refs}
:::
