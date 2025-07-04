clear all

n=10;
[A,b]=problem_data(n);

tol=1.0e-12;
x=zeros(n,1);

[x,residue]=grad_conj(A,b,x,tol,n);