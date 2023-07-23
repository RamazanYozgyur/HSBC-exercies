# HSBC-exercises.

## Task 1

### Task:  Create a vector of times in ascending order: the vector should have the current time plus increments of 2 seconds. Then pick and arbitrary time t. Find its position in the vector.
Adjust the vector to contain only elements greater or equal to t including t itself.

## HOW TO RUN Task1.q : In linux terminal just  enter " q Task1.q -q " .

You will get vector of times , chosen time t and final vector of times  which contains t and greater times.


## Task 2

### Task : The purpose of this mini project is for you to create a table which holds a timeseries of pricing data with prices and sizes for different fx (foreign exchange) currencies and write a function (API) to calculate the VWAP (volume-weighted average price) for this data. If time permits, you can extend this to also write a TWAP (time-weighted average price) function.

### Description
In this exercise firstly I made table which contains date, Euro size, Euro price  and Dolar size, Dolar  price  and save it to csv file in the folder which you are in. This process is done at the file "Task2_to_csv.q". Next in the file "Task2_VWAP_TWAP.q"  I ask user to enter the path of the csv file which we already save in the previous file. I get this csv file with function f. With this csv file, I ask user to enter day for time range and to enter currency to compute VWAP ad TWAP with the function g. Output will be table form with columns VWAP and TWAP. 
 
1) An input file with data you have created in csv format : This is done in the file "Task_to_csv.q". You can run it wit the code      q Task_to_csv.q -q   on the linux terminal.


2) A function which, given a time range and a list of symbols as inputs, returns the VWAP (TWAP) for each of these symbols as a table : g function in "Task2_VWAP_TWAP.q" does that.


3) A command to start a q process which will load this function : q Task2_VWAP_TWAP.q -q  on the linux terminal


4)Example of how to call the function  : Two functions f and g will be called when you run Task2_VWAP_TWAP.q. You need to enter inputs. For f input is path of csv file. For g function inputs are  number of days and type of currency.


 5)Test(s) to ensure validity of code   : I add video where you can see that I run these files in my machine. 
