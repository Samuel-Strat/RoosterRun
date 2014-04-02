if Ducking = true
{
    if Moved = true
    {
        if image_index < 6
        {
            image_index = 6
        }
    }
    else
    {
        image_index = 5
    }
}
else if Jumped = true
{
    image_index = 4
}
else if Moved = true
{
    if image_index >= 4
    {
        image_index = 0
    }
}
else
{
    image_index = 0
}
