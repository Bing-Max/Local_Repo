function out1 = athmMeanFliter(arg1)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    [box,A] = getMatrix(arg1);
    sizeImg = size(A);
    out1 = zeros(sizeImg(1),sizeImg(2));
    for i = 1: sizeImg(1)
        for j = 1:sizeImg(2)
            out1(i,j) = floor(sum(box((i-1)*sizeImg(1)+j,:))/9);
        end
    end
end
