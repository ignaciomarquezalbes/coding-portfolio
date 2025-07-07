# Numerical Methods for Solving Ordinary Differential Equations

This folder contains MATLAB implementations of several classical numerical methods for solving initial-value problems (IVPs) for ordinary differential equations (ODEs).

## Methods Included

Each subfolder contains a standalone implementation of one numerical method, along with a sample ODE problem and supporting scripts for running and analyzing the method.

### [Euler's Explicit Method](./euler-explicit)

A simple, first-order method that estimates the solution using the slope at the current point.

### [Euler's Implicit Method](./euler-implicit)

A first-order implicit method that uses the slope at the next point, requiring the solution of an algebraic equation at each step.

### [Runge-Kutta Method (4th Order)](./runge-kutta)

A widely used higher-order method that improves accuracy by evaluating intermediate slopes.
