function save_disp_menu1(gpa_tablen) %name:Mohamed Ahmed Mahmoud %ID:1190266
fprintf('Would you like to display the table or save it in an excel file?\n');
fprintf('1) Display the table\n');
fprintf('2) Save the table as an excel file\n');
z=input('Choose the number of the desired operation:');
while z<1 || z>2 || z~=fix(z)
    z=input('Please only choose from the numbers in the menu:');
end
if z==1
    clc;
    fprintf('Displaying CourseGPA table:\n\n');
    [r,c]=size(gpa_tablen);
    fprintf('StudentID \t CourseID \t CourseGPA \t \n');
    for i=1:r
        fprintf('  %-9g%8g  %9g \n',gpa_tablen(i,1),gpa_tablen(i,2),gpa_tablen(i,3));
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
    xlswrite(x,{'Student ID','Course ID','Course GPA'},'Sheet1','A1');
    xlswrite(x,gpa_tablen,j,k);
    fprintf('Table Saved!,Operation succesful\n');
end

end