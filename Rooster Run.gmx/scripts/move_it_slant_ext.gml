repeat(abs(Xext))
{
    var slant;
    slant = 0
    
    if on_ground()
    {
        if !ground_place(x+sign(Xext),y+argument0)
        {
            slant =1
        }
        else if !ground_place(x+sign(Xext),y)
        {
            slant = 0
        }
        else if !ground_place(x+sign(Xext),y-argument0)
        {
            slant = -1
        }
    }
    else
    {
        slant = 0
    }
    
    if !place_meeting(x+sign(Xext),y+(slant*argument0),Block_par)
    {
        x += sign(Xext)
        y += slant*argument0
    }
}
Xext = 0

repeat(abs(Yext))
{
    if Yext > 0
    {
        if !place_meeting(x,y+1,Block_par)
        {
            y += 1
        }
    }
    if Yext < 0
    {
        if !place_meeting(x,y-1,Block_par)
        {
            y -= 1
        }
    }
}
Yext = 0
