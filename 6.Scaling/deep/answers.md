# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

why?
1.It will ensure that all data will send to the server.

why not?
1.Data will not evenly distributed among the server.Even some server might not contain data.
2.As data has not evenly distributed some server will read and write more than others.Some server will not used at all.
3.Response may delay as some server is busy more than thay are capable.
4.For a single data researcher need to seach all 3 boats as the data distributed randomly.

## Partitioning by Hour

why?
1.As the data is distributed base on time.If a researcher want get a particular data he/she need to quary a single database.The query time will reduced.
2.We know that boat A will recieve most data so we can perscale it before it hit the limits.
3.Geting a single observation data will be easy as we distributed data on boats based on hours.

why not?
1.Data will not evenly distributed among the boats.
2.Boat A database will use most of the time, where other two (B,C) will used less.
3.As boat A will recieve most data so we have to scale it more time where other databases are sitting idle.

## Partitioning by Hash Value

why?
1.All 3 boats will be used as the generated hashvalue is arbitrary, it guaranteed the proper resource useages.
2.A single data can be access without querying all 3 boats, as all data is distributed in server based on hash values.

why not?
1.Every time we have to convert a time stamp to a hash value.
2.If we want to get all data we have to query all 3 boats, as the data randomly distributed among the server.
