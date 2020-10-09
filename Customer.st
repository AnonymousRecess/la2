Object subclass: Customer [
   name

    Customer class [
        new [
            ^super new init
        ]
    ]
    
    init: name [
        name:= name
    ]

    toString: name [
        ^name
    ]

]

custName : = Customer new.

custName init: "Jack".

(custName toString) printNL
