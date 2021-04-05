#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

^Esc::
Exit


^J::

;First Loop
loop 3  ;It has to be an odd number to end up with a beer already in your hand
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

    
    send e ;pick it up
    sleep 1000
    
    send e ;order a round
    sleep 500
    click 457, 741 ;Select Leaf lover

    sleep 500

    click ; drink it
    
    sleep 7000 

    click ; throw it.  
    sleep 1400
    

}



;Second loop


return