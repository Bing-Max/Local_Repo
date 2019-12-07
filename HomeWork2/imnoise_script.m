img = imread('Lena_L.png');     %rgb2gray(imread('Lena.png'))
temp=imnoise(img,'salt & pepper',0.1);
imwrite(uint8(temp),'Lena_no_sa&pe_1.png')
temp=imnoise(img,'salt & pepper',0.3);
imwrite(uint8(temp),'Lena_no_sa&pe_2.png')
temp=imnoise(img,'salt & pepper',0.5);
imwrite(uint8(temp),'Lena_no_sa&pe_3.png')

temp=imnoise(img,'gaussian',0.1);
imwrite(uint8(temp),'Lena_no_gs_1.png')
temp=imnoise(img,'gaussian',0.3);
imwrite(uint8(temp),'Lena_no_gs_2.png')
temp=imnoise(img,'gaussian',0.5);
imwrite(uint8(temp),'Lena_no_gs_3.png')