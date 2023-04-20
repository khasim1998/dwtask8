%dw 2.0
output application/json
---
Resp: {
    "values": payload."rave-invocation-trigger".*parameters filter ((item, index) ->item."parameter-value" >1000)
}



//Desired output
/*
Resp: {
"Values": [
{
"parameter-name": "per_page",
"parameter-value": "100000"
},
{
"parameter-name": "per_page",
"parameter-value": "1000000"
}
]
}
*/


/* Here iam converting xml payload in to a json as the desired output they are mentioned by using filter i got the desired output*/