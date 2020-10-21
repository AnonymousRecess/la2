Account subclass: CheckingAccount [
    
    CheckingAccount class [
        new: accBalance customer: accCust number: acctNumb [
            ^self new init: accBalance customer: accCust number: acctNumb
        ]
    ]
    init: accBalance customer: accCust number: acctNumb [
        balance := accBalance.
        customer := accCust.
        number := acctNumb
    ]
    accrue: rate [
        
    ]
]