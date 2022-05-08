function [cgpa,hours]=get_cgpa(studentid,gpa_table) %name:Mohamed Ahmed Mahmoud %ID:1190266
%to get current semester gpa and current semester hours for each students
cgpa=0;
hours=0;
[r,c]=size(gpa_table);
for i=1:r
    if studentid==gpa_table(i,1)
        cgpa=cgpa+(gpa_table(i,3)*gpa_table(i,4));
        hours=hours+gpa_table(i,4);
    end
end