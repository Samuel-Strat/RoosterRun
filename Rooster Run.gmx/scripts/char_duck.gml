///Ducking
//sets the mask so that you can go through small places

mask_index = Char_Stand_msk

if E_C > 0 or place_meeting(x,y,Block_par)
{
    Ducking = 1
    mask_index = Char_Duck_msk
}
else
{
    Ducking = 0
    mask_index = Char_Stand_msk
}

