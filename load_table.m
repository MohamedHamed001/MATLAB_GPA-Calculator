%name:Mohamed Ahmed Mahmoud %ID:1190266
function [table1,table2,table3]=load_table(table1,table2,table3)
fprintf('Which table to do ya want to load?\n');
fprintf('1) Load table 1\n');
fprintf('2) Load table 2\n');
fprintf('3) Load table 3\n');
table_num=input('Choose the number of the desired table:');
while table_num<1 || table_num>3 || table_num~=fix(table_num)
    table_num=input('Please only choose from the numbers in the menu:');
end
name=input('Enter table name you want to load:','s');
if table_num==1
    table1=xlsread(name);
elseif table_num==2
    table2=xlsread(name);
elseif table_num==3
    table3=xlsread(name);
end