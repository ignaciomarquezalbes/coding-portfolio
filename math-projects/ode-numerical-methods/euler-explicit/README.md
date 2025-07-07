# Explicit Euler Method – Numerical Solution of ODEs

This folder contains a MATLAB implementation of the Explicit Euler method for numerically solving initial-value problems for ordinary differential equations (ODEs).

## Method Overview

The Explicit Euler method is a first-order numerical technique used to approximate solutions of equations of the form:

  y'(x) = f(x, y),  
  y(x₀) = y₀.

It estimates the solution by stepping forward using the slope defined at the current point:

  xₙ₊₁ = xₙ + h,  
  yₙ₊₁ = yₙ + h * f(xₙ, yₙ),

where h is the step size, and f is the function defining the ODE.

## Code Structure

- `main.m` — Entry point; loads problem data and calls the solver.
- `euler_explicit.m` — Core implementation of the Explicit Euler algorithm.
- `rhs_function.m` — Defines the right-hand side function *f(x, y)* of the ODE.
- `solution.m` — (Optional) Exact solution *y(x)*, used for error estimation.
- `problem_data.m` — Specifies parameters such as step size, initial conditions, and interval.
- `write_head.m` — Displays a header for formatted output.
- `write_step.m` — Prints values at each integration step.

> Utility scripts `write_head.m` and `write_step.m` were provided in coursework and are included here (translated to English) to handle formatted console/file output.
