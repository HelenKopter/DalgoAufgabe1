function [List]= playTIMIT()
% function to find and playback filename of files contenting data recorded 
% by combination of speaker,sentence,word and phoneme(you want to look for).
% Usage: playTIMIT()
% Input parameters: will be asked while executing playTIMIT and have to be
% written as a string. (see example) You are allowed to leave some
% parameters empty by pressing ENTER/RETURN. Note: there should be at least
% one parameter filled in.
%       speaker: speaker's ID you are looking for
%       sentence: sentence you are looking for -- forget about apostrophes
%       word: word you are looking for -- include apostrophes
%       phoneme: phoneme you are looking for.

% Output parameter:
%       listbox with filenames of files contenting data recorded, which are
%       true for all input parameter filled in. Click on one name, then the
%       *.wav-data will be automatically.
%--------------------------------------------------------------------------
% Example: Type the speaker ID, or press ENTER to continue: 'cmp0'
%          Type the sentence,or press ENTER to continue: 'dont ask me to
%          carry an oily rag like that' 
%          Type the word, or press ENTER to continue: 'don''t'
%          Type the phoneme, or ENTER to continue: 'sh'
    
    opendir = pwd; %open current directory
    opendir = [opendir '\TIMIT MIT'];
    disp('All inputs have to be written as a string (in apostrophes).')
    % now the inputs are asked
    speaker = input('Type the speaker ID, or press ENTER to continue: ');
    
    sentence = input('Type the sentence,or press ENTER to continue: ');
    
    word = input('Type the word, or press ENTER to continue: ');
   
    phoneme = input('Type the phoneme, or ENTER to continue: ');
    
    
    List = master(speaker, sentence, word, phoneme);        %put in inputs in the master function

    endlist = char(List);
    attachwav= [];
    attach_opendir = [];
    
    for kk = 1:length(List)
        attachwav(kk,:) = ['\' endlist(kk,:) '.wav']; %wav an dateinamen haengen
    end
    if 1==isempty(endlist)
       disp('No matches found.')
    else
    fname = char(attachwav); 
    fname = cellstr(fname);
    fname = strrep(fname,' ',''); % leerzeichen zwischen Dateinamen und *.wav loeschen.
    fnameneu = char(fname);
    
    for ll=1: length(fname)
        attach_opendir(ll,:) = [opendir fnameneu(ll,:)]; % komplette Namen von Pfad bekommen
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