DalgoAufgabe1: TIMIT MIT Project
===================

This is a project authored by **Helen Heinermann, Jan-Tjorben Arning, and Felicia Primadita** as a part of the first group assignment on the major: Data and Algorithm (*deutsch: Daten und Algorithmen*) for the summer semester 2015.

###Aim of the project
The project consists of some programs and functions that are useful to 
search for recordings that exist in the database TIMIT MIT according to 4 parameters: phonemes, words, sentences, and speakers. Using the functions, one is also able to combine those 4 parameters. The project consists also a master test, that can be used to check wheater the program is working properly.

###How does the project work?

Our programs compare the search term entries with the entries in the TIMIT MIT database. Basically, the programs access to the .*txt-documents in the TIMIT MIT database, which summarize the speakers ID, phonemes, words and sentences. If there's any match, the result(s) will be the names of all recordings, in which the search term consists. For combination of the search parameters, the result(s) will be the name of all recordings, which are only true for all inserted parameters. The results will be shown on a GUI-listbox and by clicking on the name, the selected data will be played.

The master test is written as a check(in the first line checking master.m), wheather the functions are working properly. The master test generates a random input combination, that then will be returned to the master.m function. If the function is not working, then an error message will be shown in the command window.

###What do I need to be able to execute the program?

To be able to run the datas, you need MATLAB (up to R2013). The programs are adjusted to work properly in Windows. This project is not suitable for Linux or any other operating systems.

Besides, you also need to have the TIMIT MIT database to be available in your directory. The functions/programs should be saved in the TIMIT MIT  directory. 

###Installation instruction

If you need any version of MATLAB, then you can find the software also online here:  [MATLAB](http://de.mathworks.com/products/matlab/whatsnew.html?s_tid=tb_15a).

In case that you don't have TIMIT MIT database, you may download it here: <i class="icon-provider-dropbox"></i> [**Dropbox**](https://www.dropbox.com/sh/yf5r8lc6ye0qput/AADd_rf8l8uF-2gJW81x1faZa?dl=0). This database consists only the recordings and the *.txt-summarization documents, but not the programs from the TIMIT MIT-Project. 

>**NOTE:**
Please make sure that all functions from this project are copied as well directly in the TIMIT MIT database, **not** in any TIMIT MIT subfolders.


###Instruction Manual

 1. Make sure that your TIMIT MIT folder is installed in the directory, you are working in (where the project functions are saved). 
 2. Execute playTIMIT.m im MATLAB.
 3. in the command window, you are now asked to type in your search item.
 4. There are 4 parameters, that will be asked in the command window one after the other with following sequence:  1) speaker, 2)sentence, 3)word and 4) phoneme. 
 5. Type your input in as a string (in apostrophes).
 6. You are able to type in one to four input parameters in desired combination. 
 >**IMPORTANT** : there should be at least one parameter filled in.

###Usage Examples
1. Open MATLAB. Select TIMIT MIT directory as path.

2. Type in the command window: playTIMIT() or playTIMIT.

3. Texts will be appeared always in the following sequence one after another. The first line is:
```Type the speaker ID, or press ENTER to continue:``` 
You have the choices, either to input ONE of 16 speakers available (vmh0, cpm0, aem0, arc0, alk0, adc0, alr0, aeb0, tlg0, bgt0, apb0, bma1, blv0, add0, bcg0, bcg1). Like example: 
```Type the speaker ID, or press ENTER to continue: 'bma1'``` 
If you don't want to input any name, just leave it and go to the next section by clicking <kbd>Return <-- </kbd>.

4. The second line is:
```Type the sentence, or press ENTER to continue:``` 
**IMPORTANT:** Apostrophes are not allowed in the middle of the sentence, but the sentence is insensitive of upper or lower case. 
The following is an example of a **right** answer: 
```Type the sentence, or press ENTER to continue:'Dont ask me to carry an oily rag like that'``` 
A **wrong** answer cause an empty list, for example:
```'don''t ask me to carry an oily rag like that'```
If you don't want to input any sentences, just leave it and go to the next section by clicking <kbd>Return <-- </kbd>.

5. The third line is:
```Type the word, or press ENTER to continue:``` 
In opposition to sentence, **the apostrophes should be included in the string**. Example: 
```Type the word, or press ENTER to continue:'don''t' ``` 
If you don't want to input any words, just leave it and go to the next section by clicking <kbd>Return <-- </kbd>.

6.  The fourth line is:
```Type the phoneme, or press ENTER to continue:```
The answer is basically an easy string. For example: 
```Type the phoneme, or press ENTER to continue:'sh'```

7. By clicking <kbd>Return <-- </kbd> after the fourth line, the name of datas, which is true for all combinations will appear on the command window. Beside that, GUI will appear as well. As you click on one of the names, the recording will be played.



###License

TIMIT MIT Project is free project; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.  See the GNU General Public License for more details: e.g. in the file 'GNU-GPL' that follows with thisTIMIT MIT Project or at http://www.gnu.org/licenses/gpl