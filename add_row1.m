function table1 = add_row1 (row,table1) %name:Mohamed Ahmed Mahmoud %ID:1190266
row=check(row,1,3);
table1(end+1,:)=row;
end