using Plots
using DifferentialEquations

a=0.77
b=0.00017
N=667

n=6

tmax= 10
tspan = (0, tmax)
t = collect(LinRange(0, tmax, 500))

function f(dy, y, p, t)
    dy[1] = (a+b*y[1])*(N-y[1])
end

prob = ODEProblem(f, [n], tspan)
sol = solve(prob, saveat=t)

plot(sol)
savefig("21.png")

a=0.000017
b=0.57
N=667

n=6

tmax = 0.5
tspan = (0, tmax)
t = collect(LinRange(0, tmax, 10))

function f(dy, y, p, t)
    dy[1] = (a+b*y[1])*(N-y[1])
end

prob = ODEProblem(f, [n], tspan)
sol = solve(prob, saveat=t)

plot(sol)
savefig("22.png")

a=0.7
b=0.5
N=667

n=6

tmax= 0.5
tspan = (0, tmax)
t = collect(LinRange(0, tmax, 500))

function f(dy, y, p, t)
    dy[1]=(a*sin(2*t)+b*cos(4*t)*y[1])*(N-y[1])
end

prob = ODEProblem(f, [n], tspan)
sol = solve(prob, saveat=t)

plot(sol)
savefig("23.png")