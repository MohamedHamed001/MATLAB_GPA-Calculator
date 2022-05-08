function save_disp_menu3(regcounttable) %name:Mohamed Ahmed Mahmoud %ID:1190266
fprintf('Operation was succesful!\n\n');
fprintf('Would you like to display the table or save it in an excel file?\n');
fprintf('1) Display the table\n');
fprintf('2) Save the table as an excel file\n');
z=input('Choose the number of the desired operation:');
while z<1 || z>2 || z~=fix(z)
    z=input('Please only choose from the numbers in the menu:');
end
if z==1
    clc;
    fprintf('Displaying Registered Students table:\n\n');
    [r,c]=size(regcounttable);
    fprintf('CourseID \t NumberOfRegisteredStudents \n');
    for i=1:r
        fprintf('  %-9g  %15g\n',regcounttable(i,1),regcounttable(i,2));
    end
    fprintf('\n\n');
    x=input('press any button  to continue:','s');
    clc;
end
if z==2
    clc;
    x=input('Please enter file name:','s');
    j='sheet1';
    k='A2';
    xlswrite(x,{'CourseID','Number of registered Students'},'Sheet1','A1');
    xlswrite(x,regcounttable,j,k);
    fprintf('Table Saved!,Operation succesful\n');

end