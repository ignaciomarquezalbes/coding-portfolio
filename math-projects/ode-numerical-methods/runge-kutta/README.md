# Runge-Kutta Method

This folder contains a MATLAB implementation of the classical fourth-order Runge-Kutta method for numerically solving initial-value problems for ordinary differential equations.

## Method Overview

The Runge-Kutta method is a higher-order numerical technique used to approximate solutions of equations of the form:

  y'(x) = f(x, y),  
  y(x₀) = y₀.

It improves upon simpler methods (like the Euler methods) by evaluating the slope at multiple points within each step to increase accuracy. Given initial values `x₀`, `y₀`, the next points are computed as:

  xₙ₊₁ = xₙ + h,  
  yₙ₊₁ = yₙ + h·(k₁ + 2k₂ + 2k₃ + k₄)/6,

where:

  k₁ = f(xₙ, yₙ),  
  k₂ = f(xₙ + h/2, yₙ + h·k₁/2),  
  k₃ = f(xₙ + h/2, yₙ + h·k₂/2),  
  k₄ = f(xₙ + h, yₙ + h·k₃).

This process is repeated for a fixed number of steps.

## Code Structure

- `main.m` — Entry point; loads problem data and calls the solver.
- `runge_kutta.m` — Core implementation of the 4th-order Runge-Kutta algorithm.
- `rhs_function.m` — Defines the right-hand side function f(x, y) of the problem.
- `solution.m` — (Optional) Exact solution y(x), used for error estimation.
- `problem_data.m` — Specifies parameters such as step size, number of steps, and initial conditions.
- `step_rk.m` — Computes one step of the Runge-Kutta algorithm using intermediate slopes.
- `write_head.m` — Displays a header for formatted output.
- `write_step.m` — Prints values at each integration step.

> Utility scripts `write_head.m` and `write_step.m` were provided in coursework and are included here (translated to English) to handle formatted console/file output.
