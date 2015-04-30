function [ randomSearchItem] = createRandomSearchItem()
%CREATERANDOMSEARCHITEM is a function



%% Speaker

sp=fopen('TIMIT MIT/allfilelist.txt');      % Oeffnen der Textdatei
dataSpeaker = textscan(sp,'%s');            % Einlesen der Textdatei
   
dataSpeaker = dataSpeaker{1};               % Extrahieren der Ordnernamen
dataSpeaker = char(dataSpeaker);            % Umwandeln in Character-String
dataSpeaker = dataSpeaker(:,6:9);           % Extrahieren der Buchstaben 
                                              % des Sprechercodes
                                            
dataSpeaker = unique(dataSpeaker, 'rows');  % Loeschen redundanter Elemente
% .... wie kann ich leeres element einfuegen??


idx=randi(length(dataSpeaker),1);           % Bestimmen eines zufaelligen Indexes 
speaker= dataSpeaker(idx,:);                % Extrahieren der zu dem Zufallsindex 
                                                % gehoerenden Cell-Elemente



%% Sentence

se = fopen('allsenlistwithoutspace.txt');     % Oeffnen der Textdatei
dataSentence = textscan(se,'%s %s');          % Trennen der Ordnernamen 
                                                % und Saetze  
   
dataSentence = dataSentence{2};               % Extrahieren der Saetze
dataSentence = char(dataSentence);            % Umwandeln in Character-String
dataSentence = unique(dataSentence, 'rows');  % Loeschen redundanter Elemente
% dataleer = repmat({''}, [130 68]);
dataSentence = [dataSentence; dataleer];
% .... wie kann ich leeres element einfuegen??
idx=randi(length(dataSentence),1);            % Bestimmen eines zufaelligen Indexes
sentence= dataSentence(idx,:);                % Extrahieren der zu dem Zufallsindex 
                                                % gehoerenden Cell-Elemente

%% Word

w=fopen('TIMIT MIT/allsenlist.txt');            % Oeffnen der Textdatei
dataWords=textscan(w,'%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s');
                                                % Trennen der jeweiligen Woerter im Satz
                                                
words = [];                                     % Vordefinieren 
    for kk=2:17
        words= [words; dataWords{1,kk}(1:end,1)];
                                                % Aneinanderreihen aller Woerter in eine Array
    end

words= unique(words);                           % Loeschen redundanter Elemente


idx=randi(length(words),1);                     % Bestimmen eines zufaelligen Indexes 
words= words(idx,:);                            % Extrahieren der zu dem Zufallsindex
                                                    % gehoerenden Cell-Elemente


%% Phonemes

p=fopen('TIMIT MIT/allphonelist.txt');          % Textdatei oeffnen
dataPhoneme=textscan(p,'%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s'); %Zerlegen der Saetze in Woerter 
                                                % Auftrennen der Saetze in
                                                % Phoneme

phonemes = [];                                  % Vordefinieren
    for kk=2:17
        phonemes= [phonemes; dataPhoneme{1,kk}(1:end,1)];
                                                % Aneinanderhaengen aller Phoneme 
                                                    % in einem Array
    end

phonemes= unique(phonemes);                     % Loeschen redundanter Elemente
idx=randi(length(phonemes),1);                  % Bestimmen eines zufaelligen Indexes 
phonemes= phonemes(idx,:);                      % Extrahieren der zu dem Zufallsindex 
                                                    %gehoerenden Cell-Elemente
 
%%
randomSearchItem = [speaker, sentence, words, phonemes]; 
                                                % Zusammenfassen zu einem
                                                % Ausgabevektor
end

