function out1 = geomMeanFliter(arg1)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    [box,A] = getMatrix(arg1);
    sizeImg = size(A);
    out1 = zeros(sizeImg(1),sizeImg(2));
    for i = 1: sizeImg(1)
        for j = 1:sizeImg(2)
            x = prod(box((i-1)*sizeImg(1)+j,:));
            out1(i,j) = floor(x^(1/9));
        end
    end
end

