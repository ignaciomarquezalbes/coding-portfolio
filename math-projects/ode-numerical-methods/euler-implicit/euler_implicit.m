function euler_implicit(f,a,eta,h,npas,sol,isol)

%fid=fopen('result','w')
fid=1;

x=a;
y=eta;

if isol==1
    
    err=feval(sol,x)-y;
    write_head(fid,x,y,err)
    k=0;
    write_step(fid,k,x,y,err);
  
    for k=1:npas
    
        ynew=y+h*feval(f,x,y);
        x=x+h;
        
        fimp=@(z) z-y-h*feval(f,x,z);
        
        y=fsolve(fimp,ynew);

        err=feval(sol,x)-y;  
        
        write_step(fid,k,x,y,err);
        
    end
    return
    
else

    write_head(fid,x,y)
    k=0;
    write_step(fid,k,x,y);
     
    for k=1:npas
    
        ynew=y+h*feval(f,x,y);
        x=x+h;
        
        fimp=@(z) z-y-h*feval(f,x,z);
        y=fsolve(fimp,ynew);

        write_step(fid,k,x,y);
        
    end
    return  
end

end
