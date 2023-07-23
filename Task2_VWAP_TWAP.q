\ In this file we calculate volume-weighted average price and time-weighted average price.TWAP formula is taking sum all price in a given time range and divide it to number of total rows in a given time range. Firstly we will open our csv file which we saved in the file to_csv.q. After that we will take time range and currency symbols as an input and return volume weighted avrage price for symbol as a table./

Input:{1 x; read0 0}
x:"*"$Input"enter path of csv file: "

f:{[x]  t2:("DFFFF";enlist",") 0: x}

t2:f[` $ x]

show t2

1 "You have the table as above:                                                                                                                                                                               ";

Input:{1 x; read0 0}
d:"I"$Input"Enter number of days to clarify the date range. Remember that in our csv file we have date in 1 month so even if you enter day > 31 it will take mod of it. : "

 
Input:{1 x; read0 0}
s:"S"$Input"Enter the symbol of currency to see its VWAP and its TWAP. Please enter either 'E' for Euro  or 'D' for Dolar. :"

g:{[d;s]  t3: t2 where t2.date< min(t2.date)+(d mod 31); t3: `date xasc t3; show   select VWAP:(t3[;`$"_"sv string (s,`Price)] wavg t3[;`$"_"sv string (s,`Size)]), TWAP:(sum[t3[;`$"_"sv string (s,`Price)]]%(count[t3]) ) from t3 }

g[d;s]


exit 0

