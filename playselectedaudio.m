function playselectedaudio(handle,event)
    audio = get(handle, 'string');
    chosen_index = get(handle, 'value');
    chosen_audio = audio{chosen_index}; %pass auf: string ist ein cell-array
    [y,fs]=wavread(chosen_audio); % damit Linux und Apple auch die Datei Abspiel können
    sound(y,fs)
end