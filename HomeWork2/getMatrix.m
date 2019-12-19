function [box,out1] = getMatrix(inputArg1)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

img = imread(inputArg1);
out1 = img;
Vsize=size(img);
out2 = [out1(1,:);out1;out1(Vsize(1),:)];
out2 = [out2(:,1) out2 out2(:,Vsize(2))];

box = zeros(Vsize(1)*Vsize(2),9);
    for i = 1: Vsize(1)
        for j = 1:Vsize(2)
            box((i-1)*Vsize(1)+j,1:3)=out2(i,j:j+2);
            box((i-1)*Vsize(1)+j,4:6)=out2(i+1,j:j+2);
            box((i-1)*Vsize(1)+j,7:9)=out2(i+2,j:j+2);
        end
    end
end

