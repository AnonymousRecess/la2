Account subclass: SavingsAccount [
    |interest|

    SavingsAccount class [
        new: acctNumber number: cust customer: bal balance [
            ^super new init: acctNumber number: cust customer: bal balance "might be self, not super"
        ]
    ]
    init: acctNumber number: cust customer: bal balance [
        interest:= 0.
        balance:= bal.
        customer:= cust.
        number:= acctNumber
    ]
    accrue: rate [
        interest:= interest + ( balance * rate).
        balance:= balance + (balance * rate)
    ]
]