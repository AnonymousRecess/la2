Object subclass: Customer [
   |n|

    Customer class [
        new [
            ^super new init
        ]
    ]
    
    init [
        n:= ''
    ]

    setName: name [
        n:=name
    ] 

    toString [
        ^n
    ]

]

 
 custn:= Customer new.
 custn setName: 'Jack'.
 (custn toString) printNl