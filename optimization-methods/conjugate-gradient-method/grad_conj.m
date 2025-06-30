function[x,residue]=grad_conj(A,b,x,tol,n)
% Input:
%   A        - Coefficient matrix
%   b        - Right-hand side vector
%   tol      - Tolerance for convergence
%   x        - Initial guess
%   n        - matrix dimension

% Output:
%   x        - Approximate solution
%   residue  - Final residual norm
    
exit=fopen('gradconj.sal','w');

r=A*x-b;
d=-r;

norm_r=r'*r;

for k=1:2*n;
        
    residue=sqrt(norm_r);
    
    if residue<tol
        fprintf('Convergence after %d iterations\n\n', k);
        fprintf('Solution:\n');
        fprintf('%e\n', x);
        fprintf('\nResidue:\n');
        fprintf('%e\n', residue);
        return
    end
    
    v=A*d;
    alpha=norm_r/(d'*v);
    
    z=alpha*d;
    diff=sqrt(z'*z);
    x=x+z;
    
    r=r+alpha*v;
    
    val=norm_r;
    norm_r=r'*r;
    beta=norm_r/val;
    
    d=-r+beta*d;
    
    fprintf(exit,'IT=%i, norma=%e \n', k, val);
    fprintf(exit,'diff=%e \n', diff);
    fprintf(exit,'\n');
end

if residue>tol
    fprintf('No convergence after the maximum number of iterations \n');
    return
end
    