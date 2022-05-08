
function [gpa_tablen,gpa_tablel]=compute_gpatable(table1,table3)
gpa_table(:,[1 2])=table3(:,[1,2]);
[r,c]=size(table3);
for i=1:r
    mg(i)=getmaxgrade(table1,table3(i,2));
end
tg=((table3(:,3)+table3(:,4))');
g=((tg./mg)*100);

for i=1:r
    if g(i)>=97
        gpa_table(i,3)='A';
    elseif g(i)>=93 && g(i)<97
        gpa_table(i,3)='A';
    elseif g(i)>=89 && g(i)<93
        gpa_table(i,3)='A';
    elseif g(i)>=84 && g(i)<89
        gpa_table(i,3)='B';
    elseif g(i)>=80 && g(i)<84
        gpa_table(i,3)='B';
    elseif g(i)>=76 && g(i)<80
        gpa_table(i,3)='B';
    elseif g(i)>=73 && g(i)<76
        gpa_table(i,3)='C';
    elseif g(i)>=70 && g(i)<73
        gpa_table(i,3)='C';
    elseif g(i)>=67 && g(i)<70
        gpa_table(i,3)='C';
    elseif g(i)>=64 && g(i)<67
        gpa_table(i,3)='D';
    elseif g(i)>=60 && g(i)<64
        gpa_table(i,3)='D';
    elseif g(i)<60
        gpa_table(i,3)='F';

    end

end


%table1---> Cource Id,MaxGrade
%table3---Sid,CourseID,final,work

%tableresult

%for loop table3
%read SID,CourseID ,finalexam , work from Table 3

%function to read the maxgrade (table1,courseId)-->Max   find in Table 1 by Cource Id then read MaxGrade if Course Exists let it MAxgrade
%Calculate the Final Result fo