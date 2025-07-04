function write_head(fid,x,y,err)
%
% Utility function originally supplied in university coursework            
% (minor edits for clarity and English translation)                        
%                                                                         
% Purpose:                                                                 
% Prints the header for the table that displays the evolution of the      
% independent variable, the dependent variables, and—optionally—the       
% error at each iteration during the numerical solution of an initial-    
% value problem                                                           
%                                                                         
%   |   y'(x) = f(x, y(x))                                                
%   | y(x = x0) = y0                                                      
%                                                                         
% This routine is meant to be called before `escribe_paso.m`.             
%                                                                         
% Input:                                                                   
%   fid  : File identifier. Use 1 for console output.                     
%   x    : Independent variable in the ODE (not used here).               
%   y    : Vector of dependent variables. Only used to determine the number of components.                                         
%   err  : Error vector between exact and numerical solution (not used here).                                              
%                                                                         
% Output:                                                                  
%   Prints a formatted header (to file or screen), adapting its layout    
%   based on the number of components in the dependent-variable vector y. 

n = length(y);

fprintf(fid,'-------------------------------------');
if(n == 2 )
    fprintf(fid,'-------------');
end
if(nargin==4)
    fprintf(fid,'-------------');
    if(n == 2 )
        fprintf(fid,'-------------');
    end
end
fprintf(fid,'\n');
fprintf(fid,'|  Iter.  |     x      |');
if(n > 2 || n == 1)
    fprintf(fid,       '      y     |');
elseif (n == 2)
    fprintf(fid,       '     y_1    |     y_2    |');
end
if(nargin==4)
    if(n > 2 || n == 1)
        fprintf(fid,   '    err     |');
    elseif (n == 2)
        fprintf(fid,   '    err_1   |    err_2   |');
    end
end
fprintf(fid,'\n');
fprintf(fid,'-------------------------------------');
if(n == 2 )
    fprintf(fid,'-------------');
end
if(nargin==4)
    fprintf(fid,'-------------');
    if(n == 2 )
        fprintf(fid,'-------------');
    end
end

fprintf(fid,'\n');

return 
