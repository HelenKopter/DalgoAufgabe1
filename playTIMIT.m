function playTIMIT
    % die Idee von playTIMIT ist hier die einzelne Funktion zu kombinieren.
    % Dafür werden die Funktionen vorher einzeln aufgerufen. Am Ende mit
    % 'ismember' alles vergleichen, damit wir nur die überschneidenden
    % Dateien bekommen.
    opendir = uigetdir('C:\','Please select your TIMIT_MIT directory')
    
    speakersID = input('Type the speaker ID, or press ENTER to continue')
    findPathID=testID(speakersID); 
    lengthid= length(findPathID); 
    
    sentence = input('Type the sentence,or press ENTER to continue')
    % findPathSen = testsent(sentence); % die Funktion funktioniert bei
    % Zeile 22 noch nicht
    % lengthsen= length(findPathSen);
    
    word = input('Type the word, or press ENTER to continue')
    findPathWord =char(testabfrage(word));
    lengthword = length(findPathWord);
    
    phoneme = input('Type the phoneme, or ENTER to continue')
    findPathPhon = char(testPhoneme(phoneme)); 
    lengthphon = length(findPathPhon);
    
    finddir=[] %find directory
    if speakersID = []
        if sentence = []
            if word = []
               pfad = findPathPhon
               finddir = [opendir pfad]
            end
        end
    end
    
    
end