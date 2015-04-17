fid01 = fopen('MAUDIO.Soundcard.SNR.ohne.txt','r'); 

A=textscan(fid01,'%s %s %s %s'); 
Ma = {}; 
Na = {};
Oa = {};

% for i=10:40 
% B=strrep(A{1,1}{i,1},',',''); 
% B3=str2mat(B); 
% 
% Ma(end+1) = {B}; 
% 
% end 
% B3=str2mat(Ma);
% X=str2num(B3);
% 
% for i=10:60 
% C=strrep(A{1,2}{i,1},',',''); 
% C3=str2mat(C); 
% 
% Na(end+1) = {C}; 
% 
% end 
% C3=str2mat(Na);
% Y1=str2num(C3);
% 
% for i=10:60 
% D=strrep(A{1,3}{i,1},',',''); 
% D3=str2mat(D); 
% 
% Oa(end+1) = {D}; 
% 
% end 
% D3=str2mat(Oa);
% Y2=str2num(D3);

for i=8:519
B=strrep(A{1,1}{i,1},',','');  
Ma(end+1) = {B}; 

C=strrep(A{1,2}{i,1},',',''); 
Na(end+1) = {C};

D=strrep(A{1,3}{i,1},',','');  
Oa(end+1) = {D}; 
end 
B3=str2mat(Ma);
X=str2num(B3);
C3=str2mat(Na);
Y1=str2num(C3);
D3=str2mat(Oa);
Y2=str2num(D3);

semilogx(X,Y1,'r'); hold on
semilogx(X,Y2);
%legend('Y1','Y2')