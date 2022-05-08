function table2 = add_row2 (row,table2) %name:Mohamed Ahmed Mahmoud %ID:1190266
row=check(row,1,3);
table2(end+1,:)=row;
end