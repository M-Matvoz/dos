function y = fnGetFrequencies(f, fs, N, topN, groupThreshold)
% fnGetFrequencies - Funkcija za pridobivanje frekvenc iz amplitudnega spektra
% f: Amplitudni spekter
% fs: Frekvenca vzorcenja
% N: Število frekvenc v spektru
% topN: Število vrhunskih frekvenc za vrnitev
% groupThreshold: minimum frequency gap (Hz) za ločevanje skupin

% Ensure topN is not larger than spectrum length
topN = min(max(0, round(topN)), length(f));

% Get frequency step from sampling rate and signal length
freqStep = fs / N;

% Get top N frequency bin indices by amplitude
[~, idx] = sort(abs(f), 'descend');
topIdx = idx(1:topN);
topFreqs = (topIdx - 1) * freqStep;

% Sort frequencies by value so nearby frequencies are adjacent for grouping
topFreqsSorted = sort(topFreqs);

% Group frequencies by proximity (using sorted frequencies)
groups = cell(1, topN);
groupCount = 0;

if topN > 0
    startIdx = 1;
    for i = 2:topN
        if abs(topFreqsSorted(i) - topFreqsSorted(i-1)) >= groupThreshold
            groupCount = groupCount + 1;
            groups{groupCount} = topFreqsSorted(startIdx:i-1);
            startIdx = i;
        end
    end
    % add last group
    groupCount = groupCount + 1;
    groups{groupCount} = topFreqsSorted(startIdx:topN);
end

% trim unused preallocated cells
groups = groups(1:groupCount);

y = groups;
end