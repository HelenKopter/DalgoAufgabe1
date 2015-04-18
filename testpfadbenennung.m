gh = {'sa1';'sa2';'sx26'}
hh = char(gh);

opendir = uigetdir('C:\', 'Please search your TIMIT MIT folder')
opendir = char(opendir);

pfad= [];

for kk = 1:length(gh)
    pfad(kk,:) = [opendir '\' hh(kk,:)];
end

fname = char(pfad) %fname beinhaltet leider noch Leerzeichen :(

% for ll=1:length(gh)
%     getaudio(ll)=uigetfile('fname(1,:).wav');
%     playaudio=play(getaudio(ll));
% end
