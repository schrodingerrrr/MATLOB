% Task 1.1. All graphs in one window
x = -5:0.0001:5;
y1 = sin(x).*x;
y2 = sin(x)+cos(x);
y3 = x.^2+log10(x);
plot(x, y1, '-r', x, y2, '-g', x, y3, '-b');
legend('y = sin(x) * x', 'y = sin(x) + cos(x)', 'y = x^2 + lg(x)');
axis square;
grid on;
m = 1;
while not(m == 0)
    m = input('Type 0');
end
clf;

% Task 1.2. Each graph in its window
x1 = -5:0.0001:5;
x2 = -5:0.0001:5;
x3 = -5:0.0001:5;
plot(x1, y1, '-r');
title('y = sin(x) * x');
legend('y = sin(x) * x');
axis square;
grid on;
m = 1;
while not(m == 0)
    m = input('Type 0');
end
clf;
plot(x2, y2, '-g');
title('y = sin(x) + cos(x)');
legend('y = sin(x) + cos(x)');
axis square;
grid on;
m = 1;
while not(m == 0)
    m = input('Type 0');
end
clf;
plot(x3, y3, '-b');
title('y = x^2 + lg(x)');
legend('y = x^2 + lg(x)');
axis square;
grid on;
m = 1;
while not(m == 0)
    m = input('Type 0');
end
clf;

% Task 2.
x = 0; x1 = 0; x2 = -10:0.01:-1; x3 = -1:0.01:10;
y = 0; y1 = 0; y2 = 0; y3 = 0;
for i = 1:11
    x(i)= -11+i;
end
for i = 1:11
    x1(i) = -1+i;
end
y = (abs(x)./(1 + x.^2)) .* exp(-2.*x); y1 = sqrt(1 + x1.^2);
y2 = (abs(x2)./(1 + x2.^2)) .* exp(-2.*x2); y3 = sqrt(1 + x3.^2);
plot(x2, y2, '-g', x3, y3, '-g', x, y, '-sm', x1, y1, '-sm');
legend('Matlab vector func','','For i to n func','');
axis square;
grid on;
xlim([-5, 5]);
xlabel('X axis');
ylabel('Y axis');