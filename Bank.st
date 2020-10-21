Object subclass: Bank [
    |accounts|  "Define accounts"

    Bank class [    "Constructor for Bank"
        new [
            ^super new init
        ]
    ]

    init [
        accounts:= Set new      "Instantiate accounts as a Set"
    ]

    addTo: account [
        accounts add: account "Utilize Set add method to add account to accounts Set"
    ]

    accrue: rate [
        accounts do: [ :v |
                v accrue: rate  "Call accrue method for each account in Set accounts with the rate specified"
        ]. 
    ]
        toString [
           |r| r:=''.
            accounts do: [ :v |
                r:= r, v toString, (Character nl asString) "Concat each account's info with a newline after each"
            ].
            ^r
        ]

   


]
   
    
    
    |bank| bank:= Bank new.     "Instantiate Bank Object"
    |c| c:= Customer new: 'Ann'.    "Instantiate Customer Object"
    bank addTo: (CheckingAccount new: 100.00 customer: c number: 01001).    "Provide parameters for checking account"
    bank addTo: (SavingsAccount new: 200.00 customer: c number: 01002).     "Provide parameters for savings account"
    bank accrue: 0.02.      "Accrue interest in accounts - only really affects savings"
    bank toString printNl   "Print bank info"