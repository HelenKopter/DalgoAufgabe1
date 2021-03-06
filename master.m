function[List] = master(speaker, sentence, word, phoneme)
allsenlistwithoutspace;

%%
%--------Abfrage, ob etwas in den Eingabeparametern enthalten--------------
isEmptySpeaker = isempty(speaker);
isEmptySentence  = isempty(sentence);
isEmptyWord = isempty(word);
isEmptyPhoneme = isempty(phoneme);

%%
if isEmptySpeaker == 0 && isEmptySentence == 0 && isEmptyWord == 0 && isEmptyPhoneme == 0

% Suche der Textdateien, in denen das jeweilige Eingabeparameter enthalten ist
    speakerList = findSpeaker(speaker);
    sentenceList = findSentence(sentence);
    wordList = findWord(word);
    phonemeList = findPhoneme(phoneme);
%--------------------------------------------------------------------------
% Vergleich zwischen Textdateinamen untereinander. Ausgabe derer, in denen
% alle Eingabeparameter vorkommen
    wordList1 = wordList(find(ismember(wordList,phonemeList)));
    sentenceList1 = sentenceList(find(ismember(sentenceList,wordList1)));
    List = speakerList(find(ismember(speakerList,sentenceList1)));
   
%__________________________________________________________________________
% Im Folgenden: Dasselbe Vorgehen wie oben, nur mit anderen Kombinationen 
% der Eingabeparameter

elseif isEmptySpeaker == 0 && isEmptySentence == 0 && isEmptyWord == 0 && isEmptyPhoneme == 1
    speakerList = findSpeaker(speaker);
    sentenceList = findSentence(sentence);
    wordList = findWord(word);
%--------------------------------------------------------------------------
    sentenceList = sentenceList(find(ismember(sentenceList,wordList)));
    List = speakerList(find(ismember(speakerList,sentenceList)));

%%
elseif isEmptySpeaker == 0 && isEmptySentence == 0 && isEmptyWord == 1 && isEmptyPhoneme == 0
    speakerList = findSpeaker(speaker);
    sentenceList = findSentence(sentence);
    phonemeList = findPhoneme(phoneme);
%--------------------------------------------------------------------------   
    sentenceList = sentenceList(find(ismember(sentenceList,phonemeList)));
    List = speakerList(find(ismember(speakerList,sentenceList)));

%__________________________________________________________________________    
    
elseif isEmptySpeaker == 0 && isEmptySentence == 0 && isEmptyWord == 1 && isEmptyPhoneme == 1
    speakerList = findSpeaker(speaker);
    sentenceList = findSentence(sentence);
%--------------------------------------------------------------------------    
    List = speakerList(find(ismember(speakerList,sentenceList)));
  
%__________________________________________________________________________

elseif isEmptySpeaker == 0 && isEmptySentence == 1 && isEmptyWord == 0 && isEmptyPhoneme == 0
    speakerList = findSpeaker(speaker);
    wordList = findWord(word);
    phonemeList = findPhoneme(phoneme);
%--------------------------------------------------------------------------    
    wordList = wordList(find(ismember(wordList,phonemeList)));
    List = speakerList(find(ismember(speakerList,wordList)));
    
%__________________________________________________________________________
  
elseif isEmptySpeaker == 0 && isEmptySentence == 1 && isEmptyWord == 0 && isEmptyPhoneme == 1
    speakerList = findSpeaker(speaker);
    wordList = findWord(word);
%--------------------------------------------------------------------------    
    List = speakerList(find(ismember(speakerList,wordList)));
    
%__________________________________________________________________________
   
elseif isEmptySpeaker == 0 && isEmptySentence == 1 && isEmptyWord == 1 && isEmptyPhoneme == 0
    speakerList = findSpeaker(speaker);
    phonemeList = findPhoneme(phoneme);
%--------------------------------------------------------------------------
    List = speakerList(find(ismember(speakerList,phonemeList)));
    
%__________________________________________________________________________

    
elseif isEmptySpeaker == 0 && isEmptySentence == 1 && isEmptyWord == 1 && isEmptyPhoneme == 1
    List = findSpeaker(speaker);
 
%__________________________________________________________________________

elseif isEmptySpeaker == 1 && isEmptySentence == 0 && isEmptyWord == 0 && isEmptyPhoneme == 0
    
    sentenceList = findSentence(sentence);
    wordList = findWord(word);
    phonemeList = findPhoneme(phoneme);
%--------------------------------------------------------------------------    
    wordList = wordList(find(ismember(wordList,phonemeList)));
    List = sentenceList(find(ismember(sentenceList,wordList)));
 
%__________________________________________________________________________
    
elseif isEmptySpeaker == 1 && isEmptySentence == 0 && isEmptyWord == 0 && isEmptyPhoneme == 1
    
    sentenceList = findSentence(sentence);
    wordList = findWord(word);
%--------------------------------------------------------------------------    
    List = sentenceList(find(ismember(sentenceList,wordList)));
    
%__________________________________________________________________________
        
elseif isEmptySpeaker == 1 && isEmptySentence == 0 && isEmptyWord == 1 && isEmptyPhoneme == 0
    
    sentenceList = findSentence(sentence);
    phonemeList = findPhoneme(phoneme);
%--------------------------------------------------------------------------    
    List = sentenceList(find(ismember(sentenceList,phonemeList)));
 
%__________________________________________________________________________    
    
elseif isEmptySpeaker == 1 && isEmptySentence == 0 && isEmptyWord == 1 && isEmptyPhoneme == 1

    List = findSentence(sentence);

%__________________________________________________________________________

   
elseif isEmptySpeaker == 1 && isEmptySentence == 1 && isEmptyWord == 0 && isEmptyPhoneme == 0

    wordList = findWord(word);
    phonemeList = findPhoneme(phoneme);
%--------------------------------------------------------------------------    
    List = wordList(find(ismember(wordList,phonemeList)));

%__________________________________________________________________________
    
    
elseif isEmptySpeaker == 1 && isEmptySentence == 1 && isEmptyWord == 0 && isEmptyPhoneme == 1

    List = findWord(word);
    
%__________________________________________________________________________
   
elseif isEmptySpeaker == 1 && isEmptySentence == 1 && isEmptyWord == 1 && isEmptyPhoneme == 0

    List = findPhoneme(phoneme);

%__________________________________________________________________________

elseif isEmptySpeaker == 1 && isEmptySentence == 1 && isEmptyWord == 1 && isEmptyPhoneme == 1
    disp('Please enter search item.')
%__________________________________________________________________________

end
List = sort(List);

end