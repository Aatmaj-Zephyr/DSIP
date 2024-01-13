subplot(3,3,1)
x=zeros(1,21)
for i=-10:1:10
    if i>=0
        x(1,1+10+i)=1
    else
        x(1,1+10+i)=0
    end
end

stem(x)
xlabel('time')
ylabel('amplitude')
xt = get(gca, 'XTick');                                
set(gca, 'XTick', xt, 'XTickLabel', xt-10) 
title('unit step')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(3,3,2)
x=zeros(1,21)
for i=-10:1:10
    if i==0
        x(1,1+10+i)=1
    else
        x(1,1+10+i)=0
    end
end

stem(x)
xlabel('time')
ylabel('amplitude')
xt = get(gca, 'XTick');                                 % 'XTick' Values
set(gca, 'XTick', xt, 'XTickLabel', xt-10)  
title('impluse')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(3,3,3)
x=zeros(1,21)
for i=-10:1:10
    if i>=0
        x(1,1+10+i)=i
    else
        x(1,1+10+i)=0
    end
end

stem(x)
xlabel('time')
ylabel('amplitude')
xt = get(gca, 'XTick');                                 % 'XTick' Values
set(gca, 'XTick', xt, 'XTickLabel', xt-10)  
title('ramp')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(3,3,4)

i=-10:1:10
x(1,1+10+i)=exp(i)


plot(x)
xlabel('time')
ylabel('amplitude')
xt = get(gca, 'XTick');                                 % 'XTick' Values
set(gca, 'XTick', xt, 'XTickLabel', xt-10)  
title('exp up')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(3,3,5)

i=-10:1:10
x(1,1+10+i)=exp(-i)


plot(x)
xlabel('time')
ylabel('amplitude')
xt = get(gca, 'XTick');                                 % 'XTick' Values
set(gca, 'XTick', xt, 'XTickLabel', xt-10)  
title('exp down')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(3,3,6)
x=zeros(1,21)
i=-10:1:10    
   
x=sin(i)

plot(x)
xlabel('time')
ylabel('amplitude')
xt = get(gca, 'XTick');                                 % 'XTick' Values
set(gca, 'XTick', xt, 'XTickLabel', xt-10)  
title('sin')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


subplot(3,3,7)
x=zeros(1,21)
i=-10:1:10    
   
x=cos(i)

plot(x)
xlabel('time')
ylabel('amplitude')
xt = get(gca, 'XTick');                                 % 'XTick' Values
set(gca, 'XTick', xt, 'XTickLabel', xt-10)  
title('cos')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
