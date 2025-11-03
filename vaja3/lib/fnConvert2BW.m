function Abw = fnConvert2BW(A, val)

Abw = floor(im2double(A)./val);

Abw = ceil(Abw/max(max(Abw)));

% figure;
% subplot(211)
% plot(im2double(A))
% subplot(212)
% plot(Abw)