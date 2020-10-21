Account subclass: SavingsAccount [
    |interest|

    SavingsAccount class [
        new: accBalance customer: accCust number: acctNumb [
            ^self new init: accBalance customer: accCust number: acctNumb
        ]
    ]
    init: accBalance customer: accCust number: acctNumb [
        balance := accBalance.
        customer := accCust.
        number := acctNumb.
        interest:= 0
    ]
    accrue: rate [
        interest:= interest + ( balance * rate).
        balance:= balance + (balance * rate)
    ]
]