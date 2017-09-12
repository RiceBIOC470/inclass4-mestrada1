%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 

% (a). 
filename = 'RandomNumbers.txt';
fid = fopen(filename, 'w');
fprintf(fid, 'Random numbers 1\n');
for i=1:10
    line1=randi(10,1,13);
    fprintf(fid, '%i %i %i %i %i %i %i %i %i %i %i %i %i\n', line1);
end
fprintf(fid, 'Random numbers 2\n');
for i=1:9
    line1=randi(10,1,7);
    fprintf(fid, '%i %i %i %i %i %i %i\n', line1);
end

% (b).
fid=(fopen('RandomNumbers.txt','r'));
line1=fgetl(fid);
line1=[]
line1=fgetl(fid);
line1split = strsplit(line1, ' ');
numberarray = cellfun(@str2num, line1split);


% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 

function result = sumarray10(x)
    result = sum(x)>= 10
end

a=1:5;

sumarray10(a)

result =

  logical

   1

w=[1 3 3 2];

sumarray10(w)

result =

  logical

   0
