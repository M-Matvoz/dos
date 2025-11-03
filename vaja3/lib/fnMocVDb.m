function [SdB, adB] = fnMocVDb(A)

SdB = 20*log10(A);

adB = SdB - max(SdB);

