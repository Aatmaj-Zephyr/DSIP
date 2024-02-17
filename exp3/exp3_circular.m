%input
% Prompt the user to enter the number of elements in the array
numElements = input('Enter the number of elements in x: ');

% Initialize an empty array
i1 = zeros(1, numElements);

% Prompt the user to enter the number of elements in the array
numElements1 = input('Enter the number of elements in y: ');

% Initialize an empty array
i2 = zeros(1, numElements1);

% Loop to get user input for each element
for i = 1:numElements
    prompt = ['Enter element x ', num2str(i), ': '];
    i1(i) = input(prompt);
end

% Loop to get user input for each element
for i = 1:numElements1
    prompt = ['Enter element y', num2str(i), ': '];
    i2(i) = input(prompt);
end

%i1=[2 1 2 -1];
%i2=[1 2 3 4];


start1=1


start2=1

if(numElements1<numElements)
 i2 = [zeros(numElements-numElements1),i2]
elseif(numElements1>numElements)
    i1 = [zeros(numElements1-numElements),i1]
end



start = - (start1 + start2 - 2);
flen = size(i1,2);
len = flen ; %n1+n2+n2 / 2
X = zeros(1,len*2+1);
for i=1:size(i1,2)
    X(1,i+len-start1+1) = i1(i);
end
X
Y = zeros(1,len*2+1);
for i=1:size(i2,2)
    Y(1,i+len-start2+1) = i2(i);
end
Y

Y=flip(Y);
Y
A = zeros(flen,len*2+1);
Temp = Y;

%add repeated array to end
Temp = [Temp(1-start:len+start+1),Temp(len-(size(i2,2)-start2)+1:len-(size(i2,2)-start2)+size(i2,2))];
Temp = [Temp,zeros(1,size(Y,2)-size(Temp,2))]


A(1,:) = Temp .*X;
for i=2:flen
    Temp = [0,Temp(1:size(Temp,2)-1)]
    A(i,:) = Temp .*X;
end
A
A = sum(A, 2);
A
