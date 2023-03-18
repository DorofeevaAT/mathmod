using Plots
using DifferentialEquations

x0=7
y0=9
u0=[x0;y0]

t0 = 0
tmax = 100
t = collect(LinRange(t0, tmax, 1000))
tspan = (t0, tmax)

a=0.41
b=0.039
c=0.51
d=0.019

function f(dy,y,p,t)
    dy[1]=-a*y[1]+b*y[1]*y[2]
    dy[2]=c*y[2]-d*y[1]*y[2]
end

prob=ODEProblem(f, u0, tspan)
sol=solve(prob, saveat=t)

# plot(sol)
# savefig("1.png")

plot(sol, vars=(1, 2))
savefig("pha1.png")