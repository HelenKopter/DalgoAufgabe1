clear  all;
close all;
clc;

%% manually testing
speaker='cpm0';
sentence='';
word='';
phoneme='sh';

list = master(speaker, sentence, word, phoneme); % Funktion testen

%% master.m should give back list of filenames
filePaths = master('','','','');
assert( exist('list') == 1, 'No list created');
% assert( f.Fs == 44100, 'Wrong Sample Rate')
% assert( f.Channels == 1, 'Wrong number of channels')
% 
% 
% 
% %% write should write data
% f = AudioFile('test.wav', 44100);
% data = [0.5 0.5; 0.25 0.25];
% f.write(data);
% assert( all(all(f.read() == data)), 'Read data is different from written data')
% 
% % Overwriting AudioFileTest.m
% % 
% % assert ist dabei eine Funktion, die ein Stück Code ausführt, und einen Fehler erzeugt, wenn der Code nicht true ist.
% % 
% % assert( 1 == 1 ) läuft also fehlerlos durch, assert( 1 == 2 ) erzeugt aber einen Fehler. assert( 1 == 2, 'Fehlermeldung') erzeugt einen Fehler mit einer spezifischen Fehlermeldung.
% % 
% % Das Test-Skript sollte "Test" im Dateinamen enthalten und mit Blockkommentaren ("%%") in unter-Tests unterteilt werden. Um alle Tests in einer Datei auszuführen, kann der Befehl runtests filename.m verwendet werden:
% 
% 
% 
% 
% 
% 

