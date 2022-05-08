function cugpa_table=compute_cgpa2(table1,table2,table3) %name:Mohamed Ahmed Mahmoud %ID:1190266
cugpa_table(:,[1:3])=table2(:,[1:3]);
[gpa_table]=compute_gpatable3(table1,table3);
[r,c]=size(table2);
for i=1:r
[cgpa,hours]=get_cgpa(table2(i,1),gpa_table);
cugpa(i)=((table2(i,2)*table2(i,3))+cgpa)/(hours+table2(i,3));
newhours(i)=(hours+table2(i,3));
cugpa_table(i,4)=cugpa(i);
cugpa_table(i,5)=newhours(i);
end

