function [findPathID] = findSpeaker(lookForSpeaker)
% function to find filenames of files contenting data recorded by speaker
% (you want to look for)
% Usage: findSpeaker(suchwort)
% Input parameter:
%       suchwort:     ID of speaker you want to look for
% Output parameter:
%       filenames of files contenting data recorded by speaker
%       (you want to look for)
%--------------------------------------------------------------------------
% Example: pathSpeaker = findSpeaker('cpm0');
% 

%index_k=[];                         % Vorallokieren des Indexvektors der Wortposition im Satz
index_r=[];                         % Vorallokieren des Indexvektors der Satzpostion, in dem Wort enthalten
d=fopen('TIMIT MIT/allfilelist.txt');% Oeffnen der Textdatei

if d~=-1                            % Sicherheitsabfrage, ob Textdatei existiert
   data=textscan(d,'%s'); %Zerlegen der Saetze in Woerter 
   
   for rr=1:160                 % Ablaufen jedes inneren Cell-Arrays
       speaker=data{1}(rr);      % Auslesen der DAten aus Cell-Array in Vektor
       speaker=char(speaker);        % Umwandeln Cell-Array-Eintrag in String
       s=regexp(speaker,lookForSpeaker);% Vergleich Suchwort/Wort
            
       if s==6;
       %index_k=[index_k; kk-1]; % Extrahieren der Indizes, wo Suchwort gleich Wort
       index_r=[index_r; rr];     
       rr=rr+1;                 % Heraufsetzten des Matrixindexes               
       else
       rr=rr+1;
       end      
   end
end
%index=[1 index_k];                % Zusammenfasen der Indexvektoren zu einer MAtrix

findPathID = data{1}(index_r);         % Dateinamen aus erster Spalte des uebergeordneten Cell-Arrays anhand des Zeilenindexes auslesen
fclose(d);
end