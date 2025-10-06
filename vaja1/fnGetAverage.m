function avg = fnGetAverage(x)
%% Funkcija izracuna povprecje elementov vektorja x
if isempty(x)
    error('Vektor x je prazen!');
end
if ~isvector(x)
    error('Vhod x ni vektor!');
end
if isscalar(x)
    avg = x; % ce je vektor enoelementen, je povprecje enako elementu
    return;
else
    avg = sum(x)/length(x); % povprecje je vsota deljena s stevilom elementov
end