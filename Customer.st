Object subclass: Customer [
   n

    Customer class [
        new [
            ^super new init
        ]
    ]
    
    init: [
        n:= ""
    ]

    setName: name [
        n:=name
    ] 

    toString: n [
        ^n
    ]

]

name custn := Customer new.
nameToSet := "Jack".
(custn setName) : nameToSet.
(custn toString) printNL
