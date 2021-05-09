#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
#IfWinActive, ahk_exe  FSD-Win64-Shipping.exe




!Esc::
exitapp
    


move_right_because_more_players()
{
    send {d Down}
    sleep 230
    send {d up}
    sleep 230
    ;send a
}

move_left_because_more_players()
{
    send {a Down}
    sleep 230
    send {a up}
    sleep 230
    ;send d
    
}


^L::
move_right_because_more_players()
return

^R::
move_left_because_more_players()
return


pick_up_beer()
{
    send e ;pick it up
    sleep 1000
}

order_leaf_lover()
{
    send e ;order a round
    sleep 500
    click 457, 741 ;Select Leaf lover

    sleep 500
}

drink_beer()
{
    click ; drink it
    sleep 7000 
}

throw_beer()
{
    click ; throw it.  
    sleep 1400
}

; By yourself
^J::
;First Loop
loop 1000  ;It has to be an odd number to end up with a beer already in your hand
{

    /*
    pick it up
    order another round
    drink it

    7 seconds for loyde to make leaf lover
    3.1 seconds to order another one once picked up. 

    6 seconds to drink the beer. 
    
    how long does it take to throw the beer, to get the option to pick it up?
    1.4 seconds
    */


    pick_up_beer()

    order_leaf_lover()

    drink_beer()

    throw_beer()
    

}
return

drink_how_many_rows_of_beer(row_amount_of_beer)
{
    
    

        
        
        loop %row_amount_of_beer%
        {
            
            pick_up_beer()
            drink_beer()
            throw_beer()
            move_right_because_more_players()

        }
        
        loop %row_amount_of_beer%
        {
            move_left_because_more_players()
        }

        ;order_leaf_lover()
    
    return
}
; With others

^1::
drink_how_many_rows_of_beer(1)
return

^2::
drink_how_many_rows_of_beer(2)
Return

^3::
drink_how_many_rows_of_beer(3)
Return

^4::
drink_how_many_rows_of_beer(4)
Return

^5::
drink_how_many_rows_of_beer(5)
Return

^6::
drink_how_many_rows_of_beer(6)
Return

^7::
drink_how_many_rows_of_beer(7)
Return

^8::
drink_how_many_rows_of_beer(8)
Return

^9::
drink_how_many_rows_of_beer(9)
Return