function runge_kutta(f,a,eta,h,npas,sol,isol)

fid=1;

x=a;
y=eta;

if isol==1
    err=feval(sol,x)-y;
    write_head(fid,x,y,err)
    
    k=0;
    
    write_step(fid,k,x,y,err);
    
    for k=1:npas
        
        [x,y]=rk_step(f,h,x,y);
        
        err=feval(sol,x)-y; 
        
        write_step(fid,k,x,y,err);
    end
    return
    
else
    write_head(fid,x,y)
    
    k=0;
    
    write_step(fid,k,x,y);
    
    for k=1:npas
        
        [x,y]=rk_step(f,h,x,y);
        
        write_step(fid,k,x,y);
    end
    return
    
end
