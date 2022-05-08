function cGpa_table=compute_cgpa(table1,table2,table3);
cGpa_table(:,[1 2 3])=table2(:,[1 2 3]);
[r,c]=size(table3);
[gpa_tablen]=compute_gpatable2(table1,table3);
for i=1:r
    opoints=(table2(:,2)).*(table2(:,3));
    ch(i)=gethours(table1,gpa_tablen(i,2));
end
disp(ch);