f = fopen('lab4.dat','rt+'); % Open .dat file
str1 = fgetl(f); % Transfer data from a file to variables
str2 = fgetl(f);
str3 = fgetl(f);
str4 = fgetl(f);
% Task 1.
sp1 = 0; % Resetting the space counter
for i = 1:length(str1) % Calculating the number of spaces
    if str1(i) == ' '
        sp1 = sp1 + 1;
    end
end
disp(num2str(length(str1) - sp1)); % Output the number of symbols in a first string without spaces
% Task 2.
for i = 1:length(str1) % Find the first space in the line (end of the 1st word)
    if str1(i) == ' '
        sp_first = i;
        break
    end
end
for i = 1:length(str1) % Find the last space in the line (beginning of the last word)
    if str1(i) == ' '
        sp_sec = i;
    end
end
t2 = [str1(sp_sec+1:end) str1(sp_first:sp_sec) str1(1:sp_first-1)]; % Make line with moved words
disp(t2); % Output line with moved words
% Task 3.
t3 = str1;
for i = 1:length(str1) % Rewriting numbers to words
    switch str1(i)
        case '0'
            t3 = strrep(t3, '0', 'ноль');
        case '1'
            t3 = strrep(t3, '1', 'один');
        case '2'
            t3 = strrep(t3, '2', 'два');
        case '3'
            t3 = strrep(t3, '3', 'три');
        case '4'
            t3 = strrep(t3, '4', 'четыре');
        case '5'
            t3 = strrep(t3, '5', 'пять');
        case '6'
            t3 = strrep(t3, '6', 'шесть');
        case '7'
            t3 = strrep(t3, '7', 'семь');
        case '8'
            t3 = strrep(t3, '8', 'восемь');
        case '9'
            t3 = strrep(t3, '9', 'девять');
    end
end
disp(t3); % Output line with numerals
% Task 4.
t4 = []; % Сreate an array for the numbers from the string
sp = strfind(str1, ' '); % Find all spaces in a string
sp_fix = [0 sp length(str1)+1]; % Add "two spaces" at the beginning and at the end for correct code operation
for i = 1:length(sp_fix)-1
    word = str1(sp_fix(i)+1:sp_fix(i+1)-1); % Find a word
    to_num = str2num(word); % Number check
    if isnumeric(to_num) == 1 % Add to array, if there is a number
        t4 = [t4 to_num];
    end
end
disp(t4); % Output an array
% Task 5.
if ~exist('C:/Data_Matlab', 'dir') % Create a folder for the .txt file, if it doesn't exist
    mkdir('C:/Data_Matlab');
end
ft = fopen('C:/Data_Matlab/in1.txt', 'wt+'); % Open (or create) a .txt file
fprintf(ft, str1); % Rewriting strings
fprintf(ft, str2);
fprintf(ft, str3);
fprintf(ft, str4);
% Task 6.
t61 = []; t62 = []; t63 = [];
sp1 = strfind(str2, ' ');
sp_f1 = [0 sp1 length(str2)+1];
for i = 1:length(sp_f1)-1
    word = str2(sp_f1(i)+1:sp_f1(i+1)-1);
    to_num = str2num(word);
    if isnumeric(to_num) == 1
        t61 = [t61 to_num];
    end
end
disp(t61);
sp2 = strfind(str3, ' ');
sp_f2 = [0 sp2 length(str3)+1];
for i = 1:length(sp_f2)-1
    word = str3(sp_f2(i)+1:sp_f2(i+1)-1);
    to_num = str2num(word);
    if isnumeric(to_num) == 1
        t62 = [t62 to_num];
    end
end
disp(t62);
sp3 = strfind(str4, ' ');
sp_f3 = [0 sp3 length(str4)+1];
for i = 1:length(sp_f3)-1
    word = str2(sp_f3(i)+1:sp_f3(i+1)-1);
    to_num = str2num(word);
    if isnumeric(to_num) == 1
        t63 = [t63 to_num];
    end
end
disp(t63);
% Task 7.
File1NameExp = 'var1'; % Show the folder where we save the pictures and HTML-file
PictHigh1 = '200';
DirName1 = ['C:/Data_Matlab/' File1NameExp]; % Specify the height of the image on the html page
if ~exist(DirName1, 'dir')
    mkdir(DirName1);
end
cd(DirName1);
FileHtml=fopen(['lab_4_' File1NameExp '.htm'],'wt'); % Open HTML-file
fprintf(FileHtml, ('<HTML>\n')); % Writing a HTML-file
fprintf(FileHtml, ('<head>\n'));
fprintf(FileHtml, ('<title>Отчет по лабораторной работе \n'));
fprintf(FileHtml, ('</title>\n'));
fprintf(FileHtml, ('<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows">\n'));
fprintf(FileHtml, ('</head>\n'));
fprintf(FileHtml, ('<body>\n'));
fprintf(FileHtml, ('<center><H3>ОТЧЕТ<br>по лабораторной работе</h3></center>\n'));
fprintf(FileHtml, ('<h3>Исходные данные</h3>\n'));
fprintf(FileHtml, (['<br><img src="tasks_lab4.jpg" >' '\n']));
fprintf(FileHtml, (['<br><img src="version1.jpg" >' '\n']));
fprintf(FileHtml, ('<<h3>Результат выполнения программы</h3>\n'));
fprintf(FileHtml, ('<h4>Задания 1-6.</h4>\n'));
fprintf(FileHtml, (['<br><img src="lab4_result.jpg" >' '\n']));
fprintf(FileHtml, ('<h4>Задание 7.</h4>\n'));
h1=figure('Name','Модельное изображение (исходное Image0) im3d');
hold on
grid on
x = (1:0.01:5);
for beta=-5:0.1:5
    y = sin(x);
    plot(x,y);
end
hold off
FileName000=[File1NameExp '_1.jpg'];
saveas(h1,FileName000);
fprintf(FileHtml, (['<a href="' FileName000 '">']));
fprintf(FileHtml, (['<br><img src="' FileName000 '" height="' PictHigh1 '" >' '\n']));
fprintf(FileHtml, ('</a>\n'));
fprintf(FileHtml, ('</body>\n'));
fprintf(FileHtml, ('</HTML>\n'));
fclose(FileHtml); % Close all open files
fclose(f);
fclose(ft);
