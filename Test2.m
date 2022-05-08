clear
clc
n=1;
table1=[]; table2=[]; table3=[];
while n>=1 && n<=10
    fprintf('Please choose an operation from the menu:\n\n');
    fprintf('1) Add a row to table 1\n');
    fprintf('2) Add a row to table 2\n');
    fprintf('3) Add a row to table 3\n');
    fprintf('4) Load one of the tables\n');
    fprintf('5) Save one of the tables\n');
    fprintf('6) Display one of the tables\n');
    fprintf('7) Compute a table for the Course GPA (Table contains the studentID , courseID and CourseGPA) \n');
    fprintf('8) Compute a table for the new cumulative GPA(Table contains the studentID , OldGpa , Previously completed hours , new Cumulative GPA and Total completed hours)\n');
    fprintf('9) Compute a table for the registered students count\n');
    fprintf('10) Exit the program \n\n');
    n=input('Choose the number of the desired operation:');
    while n<1 || n>10
        fprintf('Please, Choose only a number from the menu');
        n=input('');
    end
    if n==1
        clc;
        row=input('Enter the row you want to add:');
        table1=add_row1(row,table1);
        clc;
        fprintf('Operation was successful!\n\n');

    elseif n==2
        clc;
        row=input('Enter the row you want to add:');
        table2=add_row2(row,table2);
        clc;
        fprintf('Operation was successful!\n\n');
    elseif n==3
        clc;
        row=input('Enter the row you want to add:');
        table3=add_row3(row,table3);
        clc;
        fprintf('Operation was successful!\n\n');
    elseif n==4
        clc;
        fprintf('Which table to do ya want to load?\n');
        fprintf('1) Load table 1\n');
        fprintf('2) Load table 2\n');
        fprintf('3) Load table 3\n');
        z=input('Choose the number of the desired table:');
        while z<1 || z>3 || z~=fix(z)
            z=input('Please only choose from the numbers in the menu:');
        end
        if z==1
            table1=load_table;
        elseif z==2
            table2=load_table;
        elseif z==3
            table3=load_table;
        end
        clc;
        fprintf('operation was successful!\n\n');
    elseif n==5
        clc;
        fprintf('Which table to do ya want to save?\n');
        fprintf('1) Save table 1\n');
        fprintf('2) Save table 2\n');
        fprintf('3) Save table 3\n');
        z=input('Choose the number of the desired table:');

        while z<1 || z>3 || z~=fix(z)
            z=input('Please only choose from the numbers in the menu:');
        end
        if z==1
            if isempty(table1)==1
                fprintf('Table1 is empty, Would you like to load it or create your one?\n');
                fprintf('1)Load Table\n');
                fprintf('2)Create Table\n');
                a=input('Choose the number of the desired operation:');
                while a<1 || a>2 || a~=fix(z)
                    a=input('Please only choose from the numbers in the menu:');
                end
                if a==1
                    clc;
                    z=1;

                    if z==1
                        table1=load_table;
                    end
                    clc;
                    fprintf('operation was successful!\n\n');
                end
                if a==2
                    clc;
                    row=input('Enter the row you want to add:');
                    table1=add_row1(row,table1);
                    clc;
                    fprintf('Operation was successful!\n\n');

                end
            else
                x=input('Please enter file name:','s');
                j='sheet1';
                k='A2';
                xlswrite(x,{'Course ID','Credit Hours','Max Grade'},'Sheet1','A1');
                save_table(table1,x,j,k);
            end
        elseif z==2
            if isempty(table2)==1
                fprintf('Table1 is empty, Would you like to load it or create your one?');
                fprintf('1)Load Table');
                fprintf('2)Create Table');
                a=input('Choose the number of the desired operation:');
                while a<1 || a>2 || a~=fix(z)
                    a=input('Please only choose from the numbers in the menu:');
                end
                if a==1
                    clc;
                    z=2;

                    if z==2
                        table2=load_table;
                    end
                    clc;
                    fprintf('operation was successful!\n\n');
                end
                if a==2
                    clc;
                    row=input('Enter the row you want to add:');
                    table2=add_row2(row,table2);
                    clc;
                    fprintf('Operation was successful!\n\n');
                end
            else
                x=input('Please enter file name:','s');
                j='sheet1';
                k='A2';
                xlswrite(x,{'Student ID','Old GPA','Completed Credit Hours'},'Sheet1','A1');
                save_table(table2,x,j,k);
            end
        elseif z==3
            if isempty(table3)==1
                fprintf('Table1 is empty, Would you like to load it or create your one?');
                fprintf('1)Load Table');
                fprintf('2)Create Table');
                a=input('Choose the number of the desired operation:');
                while a<1 || a>2 || a~=fix(z)
                    a=input('Please only choose from the numbers in the menu:');
                end
                if a==1
                    clc;
                    z=3;

                    if z==3
                        table3=load_table;
                    end
                    clc;
                    fprintf('operation was successful!\n\n');
                end
                if a==2
                    clc;
                    row=input('Enter the row you want to add:');
                    table3=add_row3(row,table3);
                    clc;
                    fprintf('Operation was successful!\n\n');
                end
            else

                x=input('Please enter file name:','s');
                j='sheet1';
                k='A2';
                xlswrite(x,{'Student ID','Course ID','Coursework grade','Final exam grade'},'Sheet1','A1');
                save_table(table3,x,j,k);
            end
            clc;
            fprintf('operation was successful!\n\n');
        end

    elseif n==6
        clc;
        fprintf('Which table to do ya want to display?\n');
        fprintf('1) display table 1\n');
        fprintf('2) display table 2\n');
        fprintf('3) display table 3\n');
        z=input('Choose the number of the desired table:');
        while z<1 || z>3 || z~=fix(z)
            z=input('Please only choose from the numbers in the menu:');
        end
        clc;

        fprintf('Table number %d:\n',z);
        display_table(z,table1,table2,table3);
        fprintf('operation was successful!\n\n');
    elseif n==7
        if isempty(table3)==1
            fprintf('Table3 is empty, Would you like to load it or create your one?');
            fprintf('1)Load Table');
            fprintf('2)Create Table');
            a=input('Choose the number of the desired operation:');
            while a<1 || a>2 || a~=fix(z)
                a=input('Please only choose from the numbers in the menu:');
            end
            if a==1
                clc;
                z=3;

                if z==3
                    table3=load_table;
                end
                clc;
                fprintf('operation was successful!\n\n');
            end
            if a==2
                clc;
                row=input('Enter the row you want to add:');
                table3=add_row3(row,table3);
                clc;
                fprintf('Operation was successful!\n\n');
            end
        elseif isempty(table1)==1
            fprintf('Table1 is empty, Would you like to load it or create your one?');
            fprintf('1)Load Table');
            fprintf('2)Create Table');
            a=input('Choose the number of the desired operation:');
            while a<1 || a>2 || a~=fix(z)
                a=input('Please only choose from the numbers in the menu:');
            end
            if a==1
                clc;
                z=1;

                if z==1
                    table1=load_table;
                end
                clc;
                fprintf('operation was successful!\n\n');
            end
            if a==2
                clc;
                row=input('Enter the row you want to add:');
                table1=add_row1(row,table1);
                clc;
                fprintf('Operation was successful!\n\n');
            end
        else
            [gpa_tablen]=compute_gpatable2(table1,table3);
            fprintf('Operation was succesful!\n\n');
            fprintf('Would you like to display the table or save it in an excel file?\n');
            fprintf('1) Display the table\n');
            fprintf('2) Save the table as an excel file\n');
            z=input('Choose the number of the desired operation:');
            while z<1 || z>2 || z~=fix(z)
                z=input('Please only choose from the numbers in the menu:');
            end
            if z==1
                [r,c]=size(table3);
                for i=1:r
                    fprintf('%g    %g   %g\n',gpa_tablen(i,1),gpa_tablen(i,2),gpa_tablen(i,3));
                end
            end
            if z==2
                x=input('Please enter file name:','s');
                j='sheet1';
                k='A2';
                xlswrite(x,{'Student ID','Course ID','Course GPA'},'Sheet1','A1');
                save_table(gpa_tablen,x,j,k);

            end
            fprintf('\nOperation was succesful!\n\n');
        end
        elseif n==8
                   if isempty(table3)==1
            fprintf('Table3 is empty, Would you like to load it or create your one?');
            fprintf('1)Load Table');
            fprintf('2)Create Table');
            a=input('Choose the number of the desired operation:');
            while a<1 || a>2 || a~=fix(z)
                a=input('Please only choose from the numbers in the menu:');
            end
            if a==1
                clc;
                z=3;

                if z==3
                    table3=load_table;
                end
                clc;
                fprintf('operation was successful!\n\n');
            end
            if a==2
                clc;
                row=input('Enter the row you want to add:');
                table3=add_row3(row,table3);
                clc;
                fprintf('Operation was successful!\n\n');
            end
        elseif isempty(table1)==1
            fprintf('Table1 is empty, Would you like to load it or create your one?');
            fprintf('1)Load Table');
            fprintf('2)Create Table');
            a=input('Choose the number of the desired operation:');
            while a<1 || a>2 || a~=fix(z)
                a=input('Please only choose from the numbers in the menu:');
            end
            if a==1
                clc;
                z=1;

                if z==1
                    table1=load_table;
                end
                clc;
                fprintf('operation was successful!\n\n');
            end
            if a==2
                clc;
                row=input('Enter the row you want to add:');
                table1=add_row1(row,table1);
                clc;
                fprintf('Operation was successful!\n\n');
            end
                   else
            cugpa_table=compute_cgpa2(table1,table2,table3);
            fprintf('Operation was succesful!\n\n');
            fprintf('Would you like to display the table or save it in an excel file?\n');
            fprintf('1) Display the table\n');
            fprintf('2) Save the table as an excel file\n');
            z=input('Choose the number of the desired operation:');
            while z<1 || z>2 || z~=fix(z)
                z=input('Please only choose from the numbers in the menu:');
            end
            if z==1
                [r,c]=size(cugpa_table);
                for i=1:r
                    fprintf('%0.2f \t %0.2f \t %0.2f \t %0.2f \t %0.2f \n',cugpa_table(i,1),cugpa_table(i,2),cugpa_table(i,3),cugpa_table(i,4),cugpa_table(i,5));
                end
            end
            if z==2
                x=input('Please enter file name:','s');
                j='sheet1';
                k='A2';
                xlswrite(x,{'Student ID','Old GPA','Old Completed Credit Hours','New Cumulative GPA','Total Completed Hours'},'Sheet1','A1');
                save_table(cugpa_table,x,j,k);

            end
            fprintf('\nOperation was succesful!\n\n');
                   end
        elseif n==9
        elseif n==10
            clc;

            fprintf('Exiting Program. . . . GoodBye! \n');
            break
        end
    end
