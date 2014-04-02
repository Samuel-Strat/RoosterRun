repeat(abs(Xspeed))
{
    var slant;
    slant = 0
    
    if on_ground()
    {
        if !ground_place(x+sign(Xspeed),y+argument0)
        {
            slant =1
        }
        else if !ground_place(x+sign(Xspeed),y)
        {
            slant = 0
        }
        else if !ground_place(x+sign(Xspeed),y-argument0)
        {
            slant = -1
        }
    }
    else
    {
        slant = 0
    }
    
    if !place_meeting(x+sign(Xspeed),y+(slant*argument0),Block_par)
    {
        x += sign(Xspeed)
        y += slant*argument0
    }
}

repeat(abs(Yspeed))
{
    if Yspeed > 0
    {
        if !on_ground()
        {
            y += 1
        }
    }
    if Yspeed < 0
    {
        if !place_meeting(x,y-1,Block_par)
        {
            y -= 1
        }
    }
}
