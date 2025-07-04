function write_step(fid,k,x,y,err)

% Utility function originally supplied in university coursework            
% (minor edits for clarity and English translation)                        
%                                                                                                                                          
% This function prints the evolution of the independent variable, the dependent         
% variables, and—optionally—the approximation error at each iteration     
% of the numerical solution of an initial-value problem                   
%                                                                         
%   |   y'(x) = f(x, y(x))                                                
%   | y(x = x0) = y0                                                      
%                                                                         
% Input:
%   fid  : File identifier.  Use 1 for console output.                    
%   k    : Current step/iteration index (integer).                        
%   x    : Current value of the independent variable.                     
%   y    : Vector of dependent-variable values at step k.                 
%   err  : (Optional) Vector of errors between exact and numerical solutions at step k.                                          
%                                                                         
% Output:
%   Writes—either to screen or to the file referenced by fid—the step     
%   number, the independent variable, the dependent variables, and, if    
%   requested, the error.  Uses a compact or extended print format        
%   depending on the length of y.                                         


n = length(y);

fprintf(fid,'| %5i   | %10.3e | %10.3e |',k,x,y(1));
if(n == 2)
    fprintf(fid,' %10.3e |',y(2));
end
if(nargin==5)
  fprintf(fid,' %10.3e |',err(1));
    if(n == 2)
        fprintf(fid,' %10.3e |',err(2));
    end  
end

if(n>2)
    for i=2:n;
        fprintf(fid,'\n');
        fprintf(fid,'|         |            ');
        fprintf(fid,'| %10.3e |',y(i)); 
        if(nargin==5)
            fprintf(fid,' %10.3e |',err(i));
        end
    end
end
    
fprintf(fid,'\n');
fprintf(fid,'-------------------------------------');
if(n == 2 )
    fprintf(fid,'-------------');
end
if(nargin==5)
    fprintf(fid,'-------------');
    if(n == 2 )
        fprintf(fid,'-------------');
    end
end
fprintf(fid,'\n');

return 
