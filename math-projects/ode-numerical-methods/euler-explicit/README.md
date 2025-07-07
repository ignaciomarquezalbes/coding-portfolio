# Implicit Euler Method

This folder contains a MATLAB implementation of the Implicit Euler method for numerically solving initial-value problems for ordinary differential equations.

## Method Overview

The Implicit Euler method is a first-order numerical technique used to approximate solutions of equations of the form:

  y'(x) = f(x, y),  
  y(x₀) = y₀.

It estimates the solution by stepping forward using the slope at the next point:

  xₙ₊₁ = xₙ + h,  
  yₙ₊₁ = yₙ + h * f(xₙ₊₁, yₙ₊₁),

where h is the step size  and f is the function defining the ODE. 
In contrast with the Explicit Euler method, this formulation is implicit — the new approximation yₙ₊₁ appears on both sides of the equation. As a result, each step requires solving an algebraic equation. This implementation uses MATLAB's `fsolve` to handle that.

## Code Structure

- `main.m` — Entry point; loads problem data and calls the solver.
- `euler_implicit.m` — Core implementation of the Implicit Euler algorithm.
- `rhs_function.m` — Defines the right-hand side function *f(x, y)* of the problem.
- `solution.m` — (Optional) Exact solution *y(x)*, used for error estimation.
- `problem_data.m` — Specifies parameters such as step size, initial conditions, and interval.
- `write_head.m` — Displays a header for formatted output.
- `write_step.m` — Prints values at each integration step.

> Utility scripts `write_head.m` and `write_step.m` were provided in coursework and are included here (translated to English) to handle formatted console/file output.
