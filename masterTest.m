clear  all;
close all;
clc;
%% manually testing 
speaker='cpm0';
sentence='';
word='';
phoneme='sh';
 
filePathsManually = master(speaker, sentence, word, phoneme); % Funktion testen
assert( exist('filePathsManually', 'var') == 1)

%% create random search item
exampleSearchItem =createRandomSearchItem;          % externe Funktion erzeugt zufällige
                                                    % Kombination an Suchbegriffen 

%% master.m should give back list of filenames as variable, if file exists

filePaths = master(exampleSearchItem{1}, exampleSearchItem{2},exampleSearchItem{3}, exampleSearchItem{4});
assert( exist('filePaths', 'var') == 1)

