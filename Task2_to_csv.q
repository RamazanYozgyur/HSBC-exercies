/ In this file we will make a table and save it csv file. Note: I made up numbers.
/We start with date column. Let's have date column with lenght 1000. Let's keep /our date within a month.
dt:2023.01.01+ 1000?31
/We choose 2 currencies "Euro, Dolar" and have their price.
E_P:1.2+(1000?100)%100
D_P:0.8+(1000?100)%100
/Next let's have the size of currencies
E_S:(10*1000?10)%10
D_S:(10*1000?10)%10 
t:([] date:dt ; E_Price:E_P;D_Price:D_P;E_Size:E_S;D_Size:D_S)
save `:./t.csv
1 "Your csv file saved to './' with the name t.csv"
exit 0


