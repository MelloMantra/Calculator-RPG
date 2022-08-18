"THE GAEEEEEEM"

"TITLE SCREEN {"

    Lbl S
    ClrHome
    Output(4,8,"Game lol")
    Pause
"}"

"START MENU {"

    Lbl M
    ClrHome
    Disp "1: New Game"
    Disp "2: Load Save"
    Disp "3: Quit"
    Repeat Ans
        getKey
    End
    Ans→K
    If K≤3
    Then
        If K≥1
        Then
            Goto N
        End
    End
    Goto M
    Lbl N

    If K=1
    Then
        ClrHome
        UnArchive ∟SAVE
        If 0=dim(∟SAVE)
        Then
            Goto G1
        Else
            Disp "Are you sure you want to continue?"
            Disp "Starting a new save file will overwrite the existing one."
            Input "Y/N: ",Str0
            If Str0="Y"
            Then
                Goto G1
            Else
                Goto M
            End
        End
    End

    If K=2
    Then
        ClrHome
        UnArchive ∟SAVE
        If 0=dim(∟SAVE)
        Then
            Disp "No save to load from!"
            Pause
            Goto M
        Else
            Goto G2
        End
    End

    If K=3
    Then
        Goto FE
    End
"}"

"NEW GAME {"

    Lbl G1
    ClrList ∟SAVE
    Goto ST
"}"

"LOAD SAVE {"
    Lbl G2
    If ∟SAVE(1)=0
    Then
        Goto ST
    End
    If ∟SAVE(1)=1
    Then
        Goto L1
    End
    If ∟SAVE(1)=2
    Then
        Goto L2
    End
    If ∟SAVE(1)=3
    Then
        Goto L3
    End
    If ∟SAVE(1)=4
    Then
        Goto X4
    End
"}"

"SAVE GAME {"
    
    Lbl SV
    L→∟SAVE(1)
    DelVar L
    If I=1
    ∟SAVE()
"}"

"GAME START {"

    Lbl ST
    
    "Intro animation"
    clrHome
    Output(4,8,".")
    rand(5)
    Output(4,8,"o")
    rand(5)
    Ouput(4,8,"O")
    rand(5)
    Output(2,7,"_")
    Output(3,6,"/ \")
    Output(4,6,"\_/")
    
"}"

"EOF {"

    Lbl FE
    Archive ∟SAVE
"}"
