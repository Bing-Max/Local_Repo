a = [2,1];
b = [20,75];
x = zeros(1,30);
y = zeros(1,30);
for i = 1:25 
    t = rand;
    p = t*a+(1-t)*b;
    x(1,i) = p(1);
    y(1,i) = p(2);
end                 %�õ�a,b����ȷ����ֱ��

for i = 26:30
    t = rand;
    s = rand;
    x(i) = t*18+2;
    y(i) = s*74+1;
end             %����outlier

z = ones(1,30);
x = [x;z];
ref = (x*x')\x*y';  %����Ԥ��ֵ

t = [0,10,20];
s = t*ref(1)+ref(2);    %��ϵ�ֱ��

plot(t,s,'-');
hold on
plot(x(1,:),y,'*');  %����ϵĸ�����


