clc; clear;
n=1;
table1=[]; table2=[]; table3=[];
while n>=1 && n<=10
    menu;
    n=input('Choose the number of the desired operation:');
    while n<1 || n>10
        fprintf('Please, Choose only a number from the menu');
        n=input('');
    end
    if n==1
        clc;
        row=input('Enter the row you want to add to table 1:');
        table1=add_row1(row,table1);
        clc;
        fprintf('Row added!,Operation was successful\n\n');
    elseif n==2
        clc;
        row=input('Enter the row you want to add to table 2:');
        table2=add_row2(row,table2);
        clc;
        fprintf('Row added!,Operation was successful\n\n');
    elseif n==3
        clc;
        row=input('Enter the row you want to add to table 3:');
        table3=add_row3(row,table3);
        clc;
        fprintf('Row added!,Operation was successful\n\n');
    elseif n==4
        clc;
        [table1,table2,table3]=load_table(table1,table2,table3);
        clc;
        fprintf('Table Loaded!,Operation was successful\n\n');
    elseif n==5
        clc;
        save_table(table1,table2,table3);
        clc;
        fprintf('Table Saved!,Operation was successful\n\n');
    elseif n==6
        clc;
        display_table(table1,table2,table3);
    elseif n==7
        [gpa_tablen]=compute_gpatable2(table1,table3);
        fprintf('Operation was succesful!\n\n');
        clc;
        save_disp_menu1(gpa_tablen);
    elseif n==8
        clc;
        cugpa_table=compute_cgpa2(table1,table2,table3);
        save_disp_menu2(cugpa_table);
    elseif n==9
        clc;
        regcounttable=regstudents(table1,table3);
        save_disp_menu3(regcounttable);
    elseif n==10
        clc;
        fprintf('Exiting Program. . . .\n');
        break
    end
end