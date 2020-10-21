Object subclass: Account [
    |number|
    |customer|
    |balance|

    Account class [
        new: b customer: c number: n [
            ^super new init: b customer: c number: n
        ]
    ]

    init: b customer: c number: n [
        number:= n.
        customer:=c.
        balance:=b
    ]

    accrue: rate [
        ^self subclassResponsibility
    ]
    balance [
        ^balance
    ]

    deposit: amount [
        balance:= balance + amount
    ]
    
    withdraw: amount [
        balance:= balance - amount
    ]
    
    toString [
        ^number asString, ':', customer toString, ':', balance asString
    ]
]