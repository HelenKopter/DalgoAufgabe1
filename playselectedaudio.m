function playselectedaudio(handle,event)
    audio = get(handle, 'string');
    chosen_index = get(handle, 'value');
    chosen_audio = audio{chosen_index}; %pass auf: string ist ein cell-array
    [y,fs]=audioread(chosen_audio); 
    sound(y,fs)
end