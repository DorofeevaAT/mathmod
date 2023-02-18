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