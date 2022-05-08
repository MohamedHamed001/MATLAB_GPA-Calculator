function display_table(table1,table2,table3) %name:Mohamed Ahmed Mahmoud %ID:1190266
fprintf('Wich table would you like to display?\n');
fprintf('1)Table 1\n');
fprintf('2)Table 2\n');
fprintf('3)Table 3\n');
z=input('Choose the number of the desired operation:');
while z<1 || z>3 || z~=fix(z)
    z=input('Please only choose from the numbers in the menu:');
end
if z==1
    clc;
    fprintf('Displaying Table1:\n\n');
    [r,c]=size(table1);
    fprintf('CourseID \t Credit Hours \t Max Grade \n');
    for i=1:r
        fprintf('  %-9g   %5g   %13g\n',table1(i,1),table1(i,2),table1(i,3));
    end
    fprintf('\n\n');
    x=input('press any button  to continue:','s');
    clc;
elseif z==2
    clc;
    fprintf('Displaying Table2:\n\n');
    [r,c]=size(table2);
    fprintf('StudentID \t Old GPA \t Completed Credit Hours \n');
    for i=1:r
        fprintf('  %-9g   %5g   %13g\n',table2(i,1),table2(i,2),table2(i,3));
    end
    fprintf('\n\n');
    x=input('press any button  to continue:','s');
    clc;
elseif z==3
    clc;
    fprintf('Displaying table3:\n\n');
    [r,c]=size(table3);
    fprintf('StudentID \t CourseID \t Coursework grade \t Final Exam Grade \n');
    for i=1:r
        fprintf('  %-9g   %5g   %13g  %15g\n',table3(i,1),table3(i,2),table3(i,3),table3(i,4));
    end
    fprintf('\n\n');
    x=input('press any button  to continue:','s');
    clc;
end