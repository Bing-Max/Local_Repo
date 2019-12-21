a = [2,1];
b = [20,75];
x = zeros(1,30);
y = zeros(1,30);
for i = 1:25 
    t = rand;
    p = t*a+(1-t)*b;
    x(1,i) = p(1);
    y(1,i) = p(2);
end                 %得到a,b两点确定得直线

for i = 26:30
    t = rand;
    s = rand;
    x(i) = t*18+2;
    y(i) = s*74+1;
end             %加入outlier

z = ones(1,30);
x = [x;z];
ref = (x*x')\x*y';  %计算预测值

t = [0,10,20];
s = t*ref(1)+ref(2);    %拟合得直线

plot(t,s,'-');
hold on
plot(x(1,:),y,'*');  %待拟合的各个点


