Object subclass: Bank [
    |accounts|

    Bank class [
        new [
            ^super new init
        ]
    ]

    init [
        accounts:= Set new 
    ]

    addTo: account [
        accounts add: account 
    ]

    accrue: rate [
        accounts do: [ :v |
                v accrue: rate
        ]. 
    ]
        toString [
           |r| r:=''.
            accounts do: [ :v |
                r:= r, v toString, (Character nl asString) 
            ].
            ^r
        ]

   


]
   
    
    
    |bank| bank:= Bank new.
    |c| c:= Customer new: 'Ann'.
    bank addTo: (CheckingAccount new: 100.00 customer: c number: 01001).
    bank addTo: (SavingsAccount new: 200.00 customer: c number: 01002).
    bank accrue: 0.02.
    bank toString printNl