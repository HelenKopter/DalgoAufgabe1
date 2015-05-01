function [List]= playTIMIT()
    % die Idee von playTIMIT ist hier die einzelne Funktion zu kombinieren.
    % Dafür werden die Funktionen vorher einzeln aufgerufen. Am Ende mit
    % 'ismember' alles vergleichen, damit wir nur die überschneidenden
    % Dateien bekommen.
    
    %opendir = uigetdir('C:\','Please select your TIMIT_MIT directory');
    opendir = pwd;
    %opendir=('C:\Users\JanTjorben\Documents\Studium_gesichert_150427\4.Sem\WP_Daten_und-Algorithmen\DalgoAufgabe1\DalgoAufgabe1\TIMIT MIT')
    disp('All inputs have to be written as a string (in apostrophes).')
    speaker = input('Type the speaker ID, or press ENTER to continue: ');
    
    sentence = input('Type the sentence,or press ENTER to continue: ');
    
    word = input('Type the word, or press ENTER to continue: ');
   
    phoneme = input('Type the phoneme, or ENTER to continue: ');
    
    List = master(speaker, sentence, word, phoneme);

    endlist = char(List);
    attachwav= [];
    attach_opendir = [];
    
    for kk = 1:length(List)
        attachwav(kk,:) = ['\' endlist(kk,:) '.wav'];
    end
    if 1==isempty(endlist)
       disp('No matches found.')
    else
    fname = char(attachwav); 
    fname = cellstr(fname);
    fname = strrep(fname,' ','');
    fnameneu = char(fname);
    
    for ll=1: length(fname)
        attach_opendir(ll,:) = [opendir fnameneu(ll,:)];
    end

    pfadcomplette = char(attach_opendir);
    pfadcomplette = cellstr(pfadcomplette);
    
    fig = figure(1);
    set(gcf,'Position',[20 20 900 600])
    set(gcf,'name','TIMIT MIT Search Result')
    
    text1 = uicontrol('style','text',...
                      'string', 'We found some recordings! Just click to the data to play the recordings',...
                      'FontSize', 14, ...
                      'position',[50 520 800 25]);
   
                  
    timit_list = uicontrol('style','listbox',...
                           'string',pfadcomplette,...
                           'callback',@playselectedaudio,...
                           'position',[50 10 800 500]);
    end
end