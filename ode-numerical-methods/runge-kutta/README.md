# Runge-Kutta Method – Numerical Solution of ODEs

This folder contains a MATLAB implementation of the classical fourth-order Runge-Kutta Method
for numerically solving initial-value problems of ordinary differential equations (ODEs).

**Repository link**: 
[github.com/ignaciomarquezalbes/ode-numerical-methods/tree/main/runge-kutta](https://github.com/ignaciomarquezalbes/ode-numerical-methods/tree/main/runge-kutta)

## Method Overview

The Runge-Kutta Method is a higher-order numerical integration technique used to approximate solutions of equations of the form:

y'(x) = f(x, y),

y(x₀) = y₀.

It improves upon simpler methods (like the Euler methods) by evaluating 
the slope at multiple points within each step to increase accuracy. 
Explicitly, this is done using the following algorithm:

xₙ₊₁ = xₙ + h,

yₙ₊₁ = yₙ + h·(k₁ + 2k₂ + 2k₃ + k₄)/6,

where h is the step size, f is the function defining the ODE and

k₁ = f(xₙ, yₙ), 

k₂ = f(xₙ + h/2, yₙ + h·k₁/2), 

k₃ = f(xₙ + h/2, yₙ + h·k₂/2), 

k₄ = f(xₙ + h, yₙ + h·k₃).

## Folder Structure

- `main.m` — Entry point. Loads problem data and calls the solver.
- `runge_kutta.m` — Implements the 4th-order Runge-Kutta algorithm.
- `rhs_function.m` — Defines the function *f(x, y)* for the ODE.
- `solution.m` — Defines the exact solution *y(x)* for optional error estimation (it must agree with the function in `rhs_function.m`).
- `problem_data.m` — Contains all problem parameters (step size, initial conditions, etc.).
- `step_rk.m` — Computes one step of the RK algorithm using intermediate slopes.
- `write_head.m` — Prints a header for formatted output.
- `write_step.m` — Prints values at each step of the iteration.

> Utility scripts `write_head.m` and `write_step.m` were provided in coursework and are included here (translated to English) to handle formatted console/file output.
