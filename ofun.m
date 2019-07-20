function f=ofun(x)   
 
of=((0.1*x(1)^2)+(6*x(1))+70)+((0.08*x(2)^2)+(6.8*x(2))+40)...
+((0.14*x(3)^2)+3*x(3)+50)+4.74705*(0.03009*x(1)^2-0.719*x(1)+15.264...
+0.02132*x(2)^2-0.655*x(2)+23.55+0.02372*x(3)^2-0.7255*x(3)+26.121);  
   
c0=[];
c0(1)=x(1)+x(2)+x(3)-217.33;

for i=1:length(c0)   
    
    if c0(i)<0
        c(i)=1;
    else 
        c(i)=0;
    end
end

penalty=1000000;

f=of+penalty*sum(c);     % fitness function