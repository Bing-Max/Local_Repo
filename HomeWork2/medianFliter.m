function out1 = medianFliter(arg1)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
    [box,A] = getMatrix(arg1);
    sizeImg = size(A);
    out1 = zeros(sizeImg(1),sizeImg(2));
    for i = 1: sizeImg(1)
        for j = 1:sizeImg(2)
            out1(i,j) = median(box((i-1)*sizeImg(1)+j,:));
        end
    end
end

