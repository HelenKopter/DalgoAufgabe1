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
    
    
    
end
   

end