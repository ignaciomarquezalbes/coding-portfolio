function[x,residue]=grad(A,b,tol,x,maxiter)

% Input:
%   A        - Coefficient matrix
%   b        - Right-hand side vector
%   tol      - Tolerance for convergence
%   x        - Initial guess
%   maxiter  - Maximum number of iterations

% Output:
%   x        - Approximate solution
%   residue  - Final residual norm

exit=fopen('grad.sal','w');

d=b-A*x;

for k=1:maxiter;
    
    norm_d=d'*d;
    residue=sqrt(norm_d);
    
    if residue<tol
        fprintf('Convergence after %d iterations\n\n', k);
        fprintf('Solution:\n');
        fprintf('%e\n', x);
        fprintf('\nResidue:\n');
        fprintf('%e\n', residue);
        return
    end
    
    v=A*d;
    alpha=norm_d/(d'*v);
    
    x=x+alpha*d;
    
    d=d-alpha*v;
    
    fprintf(exit,'IT=%i, norm=%e \n', k, norm_d);
    fprintf(exit,'\n');
end

if residue>tol
    fprintf('No convergence after the maximum number of iterations \n');
    return
end
