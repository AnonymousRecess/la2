Account subclass: CheckingAccount [
    
    CheckingAccount class [
        new: acctNumber number: cust customer: bal balance [
            ^super new init: acctNumber number: cust customer: bal balance
        ]
    ]
    init: acctNumber number: cust customer: bal balance [
        balance:= bal.
        customer:= cust.
        number:= acctNumber
    ]
    accrue: rate [
        
    ]
]