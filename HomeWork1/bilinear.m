function figure = bilinear(imgW,imgH)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
img = imread('Lena_L.png');
Temp = zeros(imgH,imgW);
S = size(img);
for x=0:imgH-1
    h=x*(S(1)-1)/(imgH-1);    %Դͼ����к�
    mh=floor(h);
    hf=mod(x*(S(1)-1),(imgH-1));
    for y = 0:imgW-1 
       w=y*(S(2)-1)/(imgW-1); %ԭͼ����к�
       mw=floor(w);
       wf=mod(y*(S(2)-1),(imgW-1));
       if (hf==0 && wf ==0)
            Temp(x+1,y+1)=img(h+1,w+1);
       elseif(hf==0 && wf ~=0)
           Temp(x+1,y+1)=(1-w+mw)*img(h+1,mw+1)+(w-mw)*img(h+1,mw+2); %ͬһ��
       elseif(hf~=0 && wf ==0)
           Temp(x+1,y+1)=(1-h+mh)*img(mh+1,w+1)+(h-mh)*img(mh+2,w+1); %ͬһ��
       else
           Temp(x+1,y+1)=(1-w+mw)*((1-h+mh)*img(mh+1,mw+1)+(h-mh)*img(mh+2,mw+1))+(w-mw)*((1-h+mh)*img(mh+1,mw+2)+(h-mh)*img(mh+2,mw+2));
       end
    end   
end
imwrite(uint8(Temp),'res_4.png');
figure = imread('res_4.png');
end

