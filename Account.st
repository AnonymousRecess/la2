Object subclass: Account [
    |number|
    |customer|
    |balance|

    Account class [
        new [
            ^super new init
        ]
    ]

    init [
        number:= ''.
        customer:=''.
        balance:=''
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
        ^number asString, ':', customer asString, ':', balance asString
    ]
]