Object subclass: Account [
    |number|    "Number for the Account"
    |customer|  "Customer for Account"
    |balance|   "Balance in Account"

    Account class [     "Constructor for Account"
        new: b customer: c number: n [
            ^super new init: b customer: c number: n
        ]
    ]

    init: b customer: c number: n [
        number:= n.     "Initialize object with paramaters"
        customer:=c.
        balance:=b
    ]

    accrue: rate [
        ^self subclassResponsibility    "Abstract Method - need subClass to define"
    ]
    balance [
        ^balance    "Return Account Balance"
    ]

    deposit: amount [
        balance:= balance + amount  "Method for Depositing"
    ]
    
    withdraw: amount [
        balance:= balance - amount  "Method for Withdrawing"
    ]
    
    toString [
        ^number asString, ':', customer toString, ':', balance asString "Interpret elements as strings and concat"
    ]
]