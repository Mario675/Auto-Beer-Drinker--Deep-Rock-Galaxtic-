#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
#IfWinActive, ahk_exe  FSD-Win64-Shipping.exe


ControlHwnd := ahk_class UnrealWindow




!Esc::
exitapp
    


move_right_because_more_players()
{
    controlsend,, {d Down}, %ControlHwnd%
    sleep 220
    controlsend,, {d up}, %ControlHwnd%
    sleep 220
    ;send a
}

move_left_because_more_players()
{
    controlsend,, {a Down}, %ControlHwnd%
    sleep 220
    controlsend,, {a Up}, %ControlHwnd%
    sleep 220
    ;send d
    
}


^right::
move_right_because_more_players()
return

^left::
move_left_because_more_players()
return

^q::
order_leaf_lover()
return

pick_up_beer()
{
    controlsend,, e, %ControlHwnd% ;pick it up
    sleep 1000
}

Alt_tab(grab_user_or_send_him_back)
{
    if grab_user_or_send_him_back = 0
    {        
        send {Alt Down}
        send {Tab}
        send {Alt Up}
    }

    if grab_user_or_send_him_back = 1
    {
        if !WinActive(%ControlHwnd%)
        {
            send {Alt Down}
            send {Tab}
            send {Alt Up}
        }
    }
}

order_leaf_lover()
{
    controlsend,, e, %ControlHwnd% ;order a round
    sleep 500

    BlockInput, on
    sleep 100
    WinActivate, %ControlHwnd%
    ;Alt_tab(1)
    ;sleep 100

    
    ;ControlClick, x457 y741, %ControlHwnd%;,,,, Pos
    click 457, 741 ;Select Leaf lover
    Alt_tab(0)
    BlockInput, off

    sleep 500
}

drink_beer()
{
    ControlClick,, %ControlHwnd% ; drink it
    sleep 7000 
}

throw_beer()
{
    ControlClick,, %ControlHwnd% ; throw it.  
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