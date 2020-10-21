Account subclass: SavingsAccount [
    |interest|  "instance variable"

    SavingsAccount class [  "constructor for SavingsAccount"
        new: accBalance customer: accCust number: acctNumb [
            ^self new init: accBalance customer: accCust number: acctNumb
        ]
    ]
    init: accBalance customer: accCust number: acctNumb [   "Set values for Instance Variables"
        balance := accBalance.
        customer := accCust.
        number := acctNumb.
        interest:= 0
    ]
    accrue: rate [      "Accrue interest in savings account"
        interest:= interest + ( balance * rate).
        balance:= balance + (balance * rate)
    ]
]