Object subclass: Bank [
    |accounts|
    |count|

    Bank class [
        new [
            ^super new init
        ]
    ]

    init [
        count:=0
        accounts:= Set new !
    ]

    addTo: account [
        accounts add: account !
    ]

    accrue: rate [
        |i|
        i:= count.
        accounts do: [ :v |
            (i>0)
                ifTrue: [ v accrue: rate ]
        ]. 

        toString: info [
            |r i|
            i = count.
            info do: [ :v |
                (i>0)
                    ifTrue: [ r asString, ':', v asString]
            ].
            ^r
        ]
    ]
]