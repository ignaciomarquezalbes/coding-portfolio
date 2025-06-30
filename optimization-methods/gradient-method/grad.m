function[x,residue]=grad(A,b,tol,x,maxiter)

% Entrada:
    % A=coefficient matrix
    % b=independent term
    % tol=tolerance
    % x=initial value
    % maxiter= maximum number of iterations

%Salida:
    % x= solution
    % residue=residue of the system

exit=fopen('gradopt.sal','w');

d=b-A*x;

for k=1:maxiter;
    
    norm_d=d'*d;
    residue=sqrt(norm_d);
    
    if residue<tol
        fprintf('Convergence after \n');
        fprintf('%i \n',k);
	fprintf('iterations \n');
        fprintf('\n');
        fprintf('Solution:\n');
        fprintf('%e \n',x);
        fprintf('\n');
        fprintf('Residue:\n');
        fprintf('%e \n', residue);
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