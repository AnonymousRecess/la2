Account subclass: CheckingAccount [
    
    CheckingAccount class [     "Constructor for CheckingAccount"
        new: accBalance customer: accCust number: acctNumb [
            ^self new init: accBalance customer: accCust number: acctNumb
        ]
    ]
    init: accBalance customer: accCust number: acctNumb [   "Pass values to Instance Variables"
        balance := accBalance.  
        customer := accCust.
        number := acctNumb
    ]
    accrue: rate [      "No interest to accrue in a CheckingAccount"
        
    ]
]