prompt1='enter number of faces to be detected:';
x = input(prompt1);
for N=1:x;
    display('N is :');
    display(N);
    run('AcquireIMG.m');
end;