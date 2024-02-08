%reference x
x=[0 2 2 -1 0];
subplot(3,3,1);
stem(x);
title('X');

%reference y
y=[0 -1 1 2 0];
subplot(3,3,2);
stem(y);
title('Y');

%addition of two signals
z=x+y;
subplot(3,3,3);
stem(z);
title('Z=X+Y');

%subtraction of two signals
z=x-y;
subplot(3,3,4);
stem(z);
title('Z=X-Y');

%multiplication of two signals
z=x.*y;
subplot(3,3,5);
stem(z);
title('Z=X*Y');

%right shift of a signal
z=x;
m = [1:5]
subplot(3,3,6);
stem(m+1,z);
title('advance x by 1');

%left shift of a signal
z=x;
m = [1:5]
subplot(3,3,7);
stem(m-1,z);
title('delay x by 1');

%upsampling of a signal
z=zeros(1,10)
for i=1:10
    if mod(i,2)==0
        z(1,i)=x(1,i/2)
    else
        z(1,i)=0
    end

end
m = [1:10]
subplot(3,3,8);
stem(m,z);
title('up sample x by 2');

%downsampling of a signal

z=zeros(1,3)
for i=1:3
    if i < 5/2
        z(1,i)=x(1,i*2)
    else
        z(1,i)=0
    end

end
m = [1:3]
subplot(3,3,9);
stem(m,z);
title('down sample x by 2');
