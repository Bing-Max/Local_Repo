function out1 = modf_AlphaFliter(arg1,arg2)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    [box,A] = getMatrix(arg1);
    sizeImg = size(A);
    out1 = zeros(sizeImg(1),sizeImg(2));
    for i = 1: sizeImg(1)
        for j = 1:sizeImg(2)
            temp=sort(box((i-1)*sizeImg(1)+j,:));
            x=sum(temp(arg2+1:10-arg2));
            out1(i,j) = floor(x/(9-2*arg2));
        end
    end
end

