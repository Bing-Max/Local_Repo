function out1 = midFliter(arg1)
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    [box,A] = getMatrix(arg1);
    sizeImg = size(A);
    out1 = zeros(sizeImg(1),sizeImg(2));
    for i = 1: sizeImg(1)
        for j = 1:sizeImg(2)
            x=max(box((i-1)*sizeImg(1)+j,:));
            y=min(box((i-1)*sizeImg(1)+j,:));
            out1(i,j) = floor((x+y)/2);
        end
    end
end

