%% uvoz podatkov
S = imread('...');
P = imread('...');

S = S(1:nX,1:nY,:);

%% pretvorba v crno beli sliki
Sgrayscale = 0.2989*S(:,:,1) + 0.5870*S(:,:,2) + 0.114*S(:,:,3);
Sbw = fnConvert2BW(Sgrayscale, 170/255);
Pgrayscale = 0.2989*P(:,:,1) + 0.5870*P(:,:,2) + 0.114*P(:,:,3);
Pbw = fnConvert2BW(Pgrayscale, 70/255);

T = (Pbw/2 - Sbw/2 + 0.5).^7;

%% izvoz podatkov
imwrite(T,'imeDatoteke.png')


%% izris podatkov
figure;
subplot(131)
imshow(S)
subplot(132)
imshow(P)
subplot(133)
imshow(T)




