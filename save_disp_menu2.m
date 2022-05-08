function save_disp_menu2(cugpa_table) %name:Mohamed Ahmed Mahmoud %ID:1190266
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
    fprintf('Displaying CumulativeGPa table:\n\n');
    [r,c]=size(cugpa_table);
    fprintf('StudentID \t OldGPA \t OldCompletedHours \t NewGPA \t TotalCompletedHours \t \n');
    for i=1:r
        fprintf('  %-9g  %5g%15g%16.2g%17g \n',cugpa_table(i,1),cugpa_table(i,2),cugpa_table(i,3),cugpa_table(i,4),cugpa_table(i,5));
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
    xlswrite(x,{'Student ID','Old GPA','Old Completed Credit Hours','New Cumulative GPA','Total Completed Hours'},'Sheet1','A1');
    xlswrite(x,cugpa_table,j,k);
    fprintf('Table Saved!,Operation succesful\n');

end