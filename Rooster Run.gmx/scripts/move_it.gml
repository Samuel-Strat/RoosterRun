repeat(abs(Xspeed))
{
    if !place_meeting(x+sign(Xspeed),y,Block_par)
    {
        x += sign(Xspeed)
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
