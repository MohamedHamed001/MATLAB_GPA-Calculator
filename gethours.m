function hours=gethours(table1,courseid) %name:Mohamed Ahmed Mahmoud %ID:1190266
[r,c]=size(table1);
for i=1:r
if courseid==table1(i,1)
hours=table1(i,2);
end
end