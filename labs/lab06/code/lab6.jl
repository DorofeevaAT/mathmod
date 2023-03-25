using Plots
using DifferentialEquations

a = 0.01
b = 0.005

S = 18862
I = 119
R = 19

tspan = (0, 250)
t = collect(LinRange(0, 250, 1000))
u0 = [S; I; R]

function f(dy, y, p, t)
    dy[1]=0
    dy[2]=-b*y[2]
    dy[3]=b*y[2]
end

prob=ODEProblem(f,u0,tspan)
sol=solve(prob, saveat=t)

plot(sol, yaxis=:log)
savefig("21.png")

tspan = (0, 100)
t = collect(LinRange(0, 100, 1000))

function f(dy, y, p, t)
    dy[1]=-a*y[1]
    dy[2]=a-y[1]-b*y[2]
    dy[3]=b*y[2]
end

prob=ODEProblem(f,u0,tspan)
sol=solve(prob, saveat=t)

plot(sol)
savefig("22.png")