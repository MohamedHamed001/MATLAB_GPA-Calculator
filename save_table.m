function save_table(table1,table2,table3)%name:Mohamed Ahmed Mahmoud %ID:1190266
%y is the table you  want to save
%x is the name of the table
%j is the excel sheet
%z is the row or column in excel
fprintf('Which table to do ya want to save?\n');
fprintf('1) Save table 1\n');
fprintf('2) Save table 2\n');
fprintf('3) Save table 3\n');
z=input('Choose the number of the desired table:');
while z<1 || z>3 || z~=fix(z)
    z=input('Please only choose from the numbers in the menu:');
end
if z==1
    x=input('Please enter file name:','s');
    j='sheet1';
    k='A2';
    xlswrite(x,{'Course ID','Credit Hours','Max Grade'},'Sheet1','A1');
    xlswrite(x,table1,j,k);
elseif z==2
    x=input('Please enter file name:','s');
    j='sheet1';
    k='A2';
    xlswrite(x,{'Student ID','Old GPA','Completed Credit Hours'},'Sheet1','A1');
    xlswrite(x,table2,j,k);
elseif z==3
    x=input('Please enter file name:','s');
    j='sheet1';
    k='A2';
    xlswrite(x,{'Student ID','Course ID','Coursework grade','Final exam grade'},'Sheet1','A1');
    xlswrite(x,table3,j,k);

end