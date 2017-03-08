% CONVERT .fig FILE TO .jpg FILE
figs = openfig(figureName);
for K = 1 : length(figs)
prompt3='Enter name for jpg file:';
filename=input(prompt3,'s');
%    filename = 'figure0.jpg';
   saveas(figs(K), filename);
end

run('FaceDetection.m');
run('NoseDetection.m');
run('MouthDetection.m');
run('EyeDetection.m');
