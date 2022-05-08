function regcounttable=regstudents(table1,table3) %name:Mohamed Ahmed Mahmoud %ID:1190266
[r,c]=size(table1);
regcounttable(:,1)=table1(:,1);
for i=1:r
 x=(regcounttable(i,1)==table3(:,2));
regcounttable(i,2)=sum(x);
end
end
