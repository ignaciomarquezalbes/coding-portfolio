function euler_explicit(f,a,eta,h,npas,sol,isol)

fid=1;

xk=a;
yk=eta;

if isol==1
    err=feval(sol,xk)-yk;
    write_head(fid,xk,yk,err)
    
    k=0;
    
    write_step(fid,k,xk,yk,err);
    
    for k=1:npas
    
        yk=yk+h*feval(f,xk,yk);  %computing y^n+1
        xk=xk+h;                 %computing x^n+1
        
        err=feval(sol,xk)-yk;    %computing y(x^n+1)-y^n+1
        
        write_step(fid,k,xk,yk,err);
    end
    return
    
else
    write_head(fid,x,y)
    k=0;
    
    write_step(fid,k,x,y);
    
    for k=1:npas
    
        yk=yk+h*feval(f,xk,yk);  %computing y^n+1
        xk=xk+h;                 %computing x^n+1
        
        write_step(fid,k,xk,yk);
    end
    
return    

end
