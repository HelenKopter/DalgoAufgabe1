gh = {'sa1';'sa2';'sx26'}
hh = char(gh);

opendir = uigetdir('C:\', 'Please search your TIMIT MIT folder')
opendir = char(opendir);

pfad= [];

for kk = 1:length(gh)
    pfad(kk,:) = ['\' hh(kk,:) '.wav'];
end

fname = char(pfad); 
fname = cellstr(fname);
fname = strrep(fname,' ','');
fnameneu = char(fname);

pfadcomplette= [];
for ll=1: length(fname)
    pfadcomplette(ll,:) = [opendir fnameneu(ll,:)];
end

pfad1 = char(pfadcomplette);
pfad1 = cellstr(pfad1);

timit_text = uicontrol('style','listbox',...
                       'string',pfad1,...
                       'callback',@playselectedaudio,...
                       'position',[100 200 300 100]);
% timit_text.String = pfad1;

% for ll=1:length(fname)
%    timit_text.String = {{timit_text.String} {fname{ll}}}; 
% end

chosen_audiox = pfad1{timit_text.Value};
[y,fs]= audioread(chosen_audiox);
play_button = uicontrol('style','pushbutton',...
                        'string','Play',...
                        'callback','sound(y,fs)',...
                        'position', [400 200 50 50]);

% audio = pfad1{1};
% [y,fs] = audioread(audio);
% sound(y,fs)
% 
