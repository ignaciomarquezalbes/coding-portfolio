clear all

n=10;
[A,b]=problem_data(n);

tol=1.0e-12;
itermax=1000;
x=zeros(n,1);

[x,residuo]=grad(A,b,tol,x,itermax);