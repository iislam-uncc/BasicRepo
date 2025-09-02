% Matrices and Vectors

x = 1:10;  % vector or horizontal array
x_transpose = x';
x_linspace = linspace(20,50,20); % linspace will create evenly spaced values based on the first and last number

% Manual array and vectors

y = [12 50 -8 100];

% Matrix

A = [1 3; 2 -10; 88 99];
B = A+2;
C = A*3;
D = A*A';

% Element wise operation

a = linspace(0,100,101);
b = a.^2;

C = ones(3,1); % ones matrix (row, column)
D = zeros(2,1); % zeros matrix (row, column)
E = eye(3); % identity matrix (row, column)

% Grabbing an element of a matrix

F = [5 3 4.2; 8 9 0];
F(2,2);  % accessing 9 which is in second row second column
F(1,3); % accessing first row third column
F(end);  % grabs last value of the matrix

% Change value of a matrix index 

G = [1 2 3; 4 5 6];
G(1,1) = 100;  % changing value of the first row first column

% Grab entire rows and columns of a matrix

F(1,:) % grab entire 1st row
F(:,1) %grab entire 1st column
F(1,1:2) %grab 1st row but only the 1st two elements


% Equations

% What is the maximum value of the following equation on the range 0<x<5: y
% = -(x-3)^2+10 , What is the mim=nimum of the function, At what x-value
% does the maximum y value occur, what is y(20.7)

% Define the function for the equation
f = @(x) -((x - 3).^2) + 10; % anonymous function

x = linspace(0,5,200);

y = f(x);
%plot(x,y,'*');

[maxY,I] = max(y);
xatmaxY = x(I);
minY = min(y);

y_at_20_7 = f(20.7);

%% 9/2/2025

x = linspace(-10,10);

f = @(x) (-(x-3).^2)+10;
y = f(x);

% how does the curve change if 15 is given instead of 10 and if (x-3) is
% changed to (x-5)

% setting to keep the figure background white
s = settings;
s.matlab.appearance.figure.GraphicsTheme.TemporaryValue = "light";

%solution
f1 = (-(x-3).^2) + 10;
f2 = (-(x-3).^2) + 15;
f3 = (-(x-5).^2) + 10;

figure(1);
fig.Theme = "light";
plot(x,f1,x,f2,'--',x,f3,':');
grid on;
xlabel('x');
ylabel('f');
title('x vs f comparison - Example A');
legend('f1','f2','f3');

% set limits to x and y axis of the plot
xlim([-5 5]);
ylim([-200 100]);

%%
% Example B

x = linspace(0,10,10000);
y = sin(x);
%plot(x,y);

% values greater than 0.8
target_val = 0.8;
values_greater_than = y(y>target_val); 

[r,c] = size(values_greater_than);
[r1,c1] = size(x);
percentage = (c/c1)*100;

%% Logic and loops

clc, clearvars

random_values = randi(5,1,10);
tic
num_3 = sum(random_values==3); %count the number of 3s

% display wow if more than 20% of the random numbers are 3

percentage_3 = num_3 / length(random_values);

if percentage_3 > 0.2
    disp('Wow! More than 20% of the values are 3! That is Amazing!!')

else
    disp('Oh No! Less than 20% of the values are 3! That is not good!')

end

time_if = toc

%% for loop

tic
num_3 = 0;
for index = 1:length(random_values)
    ind_val = random_values(index);
    
   
    if ind_val == 3
        num_3 = num_3 + 1;
    end
  
end
percentage = length(num_3)/length(random_values);
if percentage > 0.2
    disp('Wow! More than 20% of the values are 3! That is Amazing!!')

else
    disp('Oh No! Less than 20% of the values are 3! That is not good!')

end

time_for = toc

%% Functions


function[arg1] = some sort of line








