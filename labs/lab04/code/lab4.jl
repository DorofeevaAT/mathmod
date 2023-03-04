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