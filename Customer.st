Object subclass: Customer [
   |n name| "Define instance variables n and name"

    Customer class [    "Constructor for Customer"
        new: n [
            ^self new init: n
        ]
    ]
    
    init: n [   "Pass parameter for name instance variable for constructor"
        name := n
    ]

    toString [
        ^name   "return name"
    ]

]