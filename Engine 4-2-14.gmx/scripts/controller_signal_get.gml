var
vv;

if keyboard_check(argument0)
{
    vv = 1
}
if keyboard_check_pressed(argument0)
{
    vv = 2
}
if !keyboard_check(argument0)
{
    vv = 0
}
if keyboard_check_released(argument0)
{
    vv = -1
}
return vv;
