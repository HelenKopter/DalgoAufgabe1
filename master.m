function[speakerList, sentenceList, wordList, phonemeList] = master(speaker, sentence, word, phoneme)

isEmptySpeaker = isempty(speaker);
isEmptySentence  = isempty(sentence);
isEmptyWord = isempty(word);
isEmptyPhoneme = isempty(phoneme);

if isEmptySpeaker == 0 && isEmptySentence == 0 && isEmptyWord == 0 && isEmptyPhoneme == 0
    speakerList = findSpeaker(speaker);
    sentenceList = findSentence(sentence);
    wordList = findWord(word);
    phonemeList = findPhoneme(phoneme);
    
elseif isEmptySpeaker == 0 && isEmptySentence == 0 && isEmptyWord == 0 && isEmptyPhoneme == 1
    speakerList = findSpeaker(speaker);
    sentenceList = findSentence(sentence);
    wordList = findWord(word);
    phonemeList ={};
    
elseif isEmptySpeaker == 0 && isEmptySentence == 0 && isEmptyWord == 1 && isEmptyPhoneme == 0
    speakerList = findSpeaker(speaker);
    sentenceList = findSentence(sentence);
    wordList={};
    phonemeList = findPhoneme(phoneme);
    
elseif isEmptySpeaker == 0 && isEmptySentence == 0 && isEmptyWord == 1 && isEmptyPhoneme == 1
    speakerList = findSpeaker(speaker);
    sentenceList = findSentence(sentence);
    wordList={};
    phonemeList ={};
    
elseif isEmptySpeaker == 0 && isEmptySentence == 1 && isEmptyWord == 0 && isEmptyPhoneme == 0
    speakerList = findSpeaker(speaker);
    sentenceList={};
    wordList = findWord(word);
    phonemeList = findPhoneme(phoneme);
    
elseif isEmptySpeaker == 0 && isEmptySentence == 1 && isEmptyWord == 0 && isEmptyPhoneme == 1
    speakerList = findSpeaker(speaker);
    sentenceList={};
    wordList = findWord(word);
    phonemeList={};
    
elseif isEmptySpeaker == 0 && isEmptySentence == 1 && isEmptyWord == 1 && isEmptyPhoneme == 0
    speakerList = findSpeaker(speaker);
    sentenceList={};
    wordList={};
    phonemeList = findPhoneme(phoneme);
    
elseif isEmptySpeaker == 0 && isEmptySentence == 1 && isEmptyWord == 1 && isEmptyPhoneme == 1
    speakerList = findSpeaker(speaker);
    sentenceList={};
    wordList={};
    phonemeList={};
    
elseif isEmptySpeaker == 1 && isEmptySentence == 0 && isEmptyWord == 0 && isEmptyPhoneme == 0
    speakerList={};
    sentenceList = findSentence(sentence);
    wordList = findWord(word);
    phonemeList = findPhoneme(phoneme);
    
elseif isEmptySpeaker == 1 && isEmptySentence == 0 && isEmptyWord == 0 && isEmptyPhoneme == 1
    speakerList={};
    sentenceList = findSentence(sentence);
    wordList = findWord(word);
    phonemeList={};
        
elseif isEmptySpeaker == 1 && isEmptySentence == 0 && isEmptyWord == 1 && isEmptyPhoneme == 0
    speakerList={};
    sentenceList = findSentence(sentence);
    wordList={};
    phonemeList = findPhoneme(phoneme);
    
elseif isEmptySpeaker == 1 && isEmptySentence == 0 && isEmptyWord == 1 && isEmptyPhoneme == 1
    speakerList={};
    sentenceList = findSentence(sentence);
    wordList={};
    phonemeList={};
    
elseif isEmptySpeaker == 1 && isEmptySentence == 1 && isEmptyWord == 0 && isEmptyPhoneme == 0
    speakerList={};
    sentenceList={};
    wordList = findWord(word);
    phonemeList = findPhoneme(phoneme);
    
elseif isEmptySpeaker == 1 && isEmptySentence == 1 && isEmptyWord == 0 && isEmptyPhoneme == 1
    speakerList={};
    sentenceList={};
    wordList = findWord(word);
    phonemeList={};
    
elseif isEmptySpeaker == 1 && isEmptySentence == 1 && isEmptyWord == 1 && isEmptyPhoneme == 0
    speakerList={};
    sentenceList={};
    wordList={};
    phonemeList = findPhoneme(phoneme);
    
elseif isEmptySpeaker == 1 && isEmptySentence == 1 && isEmptyWord == 1 && isEmptyPhoneme == 1
    disp('Bitte was eingeben')
    speakerList={};
    sentenceList={};
    wordList={};
    phonemeList={};
end


end