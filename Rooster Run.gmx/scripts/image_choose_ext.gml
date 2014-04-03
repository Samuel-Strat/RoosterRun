/*
A0 = End of standing
A1 = End of Walking
A2 = End of Jumping
*/

if Jumped = true
{
    image_index = loop_1d(image_index,argument1+1,argument2)
}
else if Moved = true
{
    image_index = loop_1d(image_index,argument0+1,argument1)
}
else
{
    image_index = loop_1d(image_index,0,argument0)
}
