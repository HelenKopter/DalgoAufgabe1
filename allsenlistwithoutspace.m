function allsenlistwithoutspace
d=fopen('allsenlist.txt');                  %oeffnen der Datei
data=textscan(d,'%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s');
                                            %einlesen der Datei in data
fclose(d);                                  %schlieﬂen der Datei
leerzeichen=repmat({' '},[160 1]);          %erstellen eines Leerzeichen Cells
umbruch=repmat({sprintf('\n')},[ 160 1]);   %erstellen der Zeilenumbrueche
array=[data{1} leerzeichen data{2} data{3} data{4} data{5} ...
    data{6} data{7} data{8} data{9} data{10} ...
    data{11} data{12} data{13} data{14} data{15} ...
    data{16} data{17} umbruch];             %zusammen fuegen der einzellnen Cellen         
x=fopen('allsenlistwithoutspace.txt','wt+');%oeffnen der zubeschreibenen Datei
for kk=1:160                                %ablaufen der Zeilen
    for rr=1:19                             %ablaufrn der Spalten
        fprintf(x,array{kk,rr});            %schrieben in die .txt datei zeile spalte Wort
    end
end
fclose(x);                                  %schlieﬂen der Datei
end
