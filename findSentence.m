function [findPathSen] = findSentence(lookForSentence)
% function to find filenames of files contenting the sentence you were
% looking for
% Usage: findSentence(suchsatz)
% Input parameter:
%       suchsatz: sentence you want to look for
% Output parameter:
%       filenames of files contenting sentence
%--------------------------------------------------------------------------
% As "suchsatz" please input your sentence,
% but ignore the apostrophes and points. 
%--------------------------------------------------------------------------
% Example: pathSentence = findSentence('Dont ask me to carry an oily rag like that');
% 



lookForSentence= strrep(lookForSentence,' ','');  % Replace sentence to be without space
lookForSentence= lower(lookForSentence);          % sentence should be written in lowercase
%suchsatz= strrep(suchsatz,'"', '');% Wenn mit " eingegeben wird, wird der
                                    %" an dieser Stelle herausgefiltert
%index_k=[];                         % Vorallokieren des Indexvektors der Wortposition im Satz
index_r=[];                         % Vorallokieren des Indexvektors der Satzpostion, in dem Wort enthalten

d=fopen('allsenlistwithoutspace.txt');% Oeffnen der Textdatei
%data=textscan(d,'%s %s');

if d~=-1                            % Sicherheitsabfrage, ob Textdati existiert
   data=textscan(d,'%s %s');        % Zerlegen der Saetze in Woerter 
   compare=strrep(data{1,2},'''','');
       
       for rr=1:length(data{1,2})                 % Ablaufen jedes inneren Cell-Arrays
            sentence=compare(rr);       % Auslesen der DAten aus Cell-Array in Vektor
            sentence=char(sentence);        % Umwandeln Cell-Array-Eintrag in String
            s=regexp(lookForSentence,sentence);% Vergleich Suchwort/Wort
            
            if s==1
                %index_k=[index_k; kk-1]; % Extrahieren der Indizes, wo Suchwort gleich Wort
                index_r=[index_r; rr];     
                rr=rr+1;                 % Heraufsetzten des Matrixindexes               
            else
                rr=rr+1;
            end
           
       end
   
end

%index=[index_r index_k];                % Zusammenfasen der Indexvektoren zu einer MAtrix

findPathSen = data{1}(index_r);         % Dateinamen aus erster Spalte des uebergeordneten Cell-Arrays anhand des Zeilenindexes auslesen
fclose(d);
end