I = imread('C:\Users\ASUS\Desktop\7.D�nem\G�r�nt� ��leme\�dev 1\zebra.jpg');
imshow(I);

[m,n,d] = size(I);

if(d==3)
    I=rgb2gray(I);
end

bitSayisi=input('Bit say�s�n� giriniz (1-8):');

I=double(I);
I_bitSayisi=(I/255)*(2^bitSayisi-1);
I_bitSayisi=round(I_bitSayisi);

Igoster=(I_bitSayisi/(2^bitSayisi-1))*255;
Igoster=round(Igoster);
figure = imshow(uint8(Igoster));