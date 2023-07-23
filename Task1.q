/get current time
now: .z.T

/get list of 100 times from current with increament by 2
time_vector:now+ 2000*til 100

1 "Our time vector :                                                                                                                                                                                          ";
time_vector

/pick one random time t from time_vector
t:1?time_vector

1 "Our chosen time :                                                                                                                                                                                          ";
t

/find position of arbitrary taken vector in the list
pos:time_vector?t

/adjust the vector to contain only elements greater or equal to t including t itself
final_time_vector:neg[count[time_vector]-pos] # time_vector

1 "Our final time vector :                                                                                                                                                                                    ";
show final_time_vector

exit 0
