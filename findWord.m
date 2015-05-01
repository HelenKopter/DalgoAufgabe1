function [findPathWord] = findWord(lookForWord)
% function to find filenames of files contenting word 
% Usage: findWord(suchwort)
% Input parameter:
%       suchwort:     word you want to look for
% Output parameter:
%       filenames of files contenting the word you want to look for
%--------------------------------------------------------------------------
% Example: pathWord = findWord('oily');
% 
index_k=[];                         % Vorallokieren des Indexvektors der Wortposition im Satz
index_r=[];                         % Vorallokieren des Indexvektors der Satzpostion, in dem Wort enthalten

d=fopen('TIMIT MIT/allsenlist.txt');% Oeffnen der Textdatei

if d~=-1                            % Sicherheitsabfrage, ob Textdati existiert
   data=textscan(d,'%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s'); %Zerlegen der Saetze in Woerter 
   
   for kk=2:17                      % Ablaufen des uebergeordneten Cell-Arrays, ab zweiter Spalte
       data{kk};
       
       for rr=1:160                 % Ablaufen jedes inneren Cell-Arrays
            word=data{kk}(rr);      % Auslesen der DAten aus Cell-Array in Vektor
            word=char(word);        % Umwandeln Cell-Array-Eintrag in String
            s=strcmp(word,lookForWord);% Vergleich Suchwort/Wort
            
            if s==1
                index_k=[index_k; kk-1]; % Extrahieren der Indizes, wo Suchwort gleich Wort
                index_r=[index_r; rr];     
                rr=rr+1;                 % Heraufsetzten des Matrixindexes               
            else
                rr=rr+1;
            end
            
            
       end
       kk=kk+1;
   end
   
end

index=[index_r index_k];                % Zusammenfasen der Indexvektoren zu einer MAtrix

findPathWord = unique(data{1}(index_r));       % Dateinamen aus erster Spalte des uebergeordneten Cell-Arrays anhand des Zeilenindexes auslesen
fclose(d);
end

