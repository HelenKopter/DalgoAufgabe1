clear  all;
close all;
clc;


speaker='cpm0';
sentence='Dont ask me to carry an oily rag like that';
word='she';
phoneme='sh';

[a,b,c,d] = master(speaker, sentence, word, phoneme)