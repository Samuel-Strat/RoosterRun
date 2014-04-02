//Determine where all we should check for Chars
var
x1
x2
y1
y1
;
if argument0 >= 0
{
    x1 = bbox_left
    x2 = bbox_left+argument0
}
if argument0 <= 0
{
    x1 = bbox_left+argument0
    x2 = bbox_right
}

if argument1 >= 0
{
    y1 = bbox_top-1
    y2 = bbox_bottom+argument1
}
if argument1 <= 0
{
    y1 = bbox_top+argument1
    y2 = bbox_bottom
}

var
idid    //temporarily holds each found Chars ID
after   //holds the ids of all Chars that need moved after
done    //holds the ids of all the chars moved before
i       //inumerator for after
ii;     //inumerator for done
done[0] = noone
ii = 0
after[0] = noone
i = 0

//check for chars
if collision_rectangle(x1,y1,x2,y2,Char_par,0,1)
{

    
    while(collision_rectangle(x1,y1,x2,y2,Char_par,0,1)) //do this for all chars found
    {
        idid = collision_rectangle(x1,y1,x2,y2,Char_par,0,1)// store id for first found char
        //if the char needs moved after it's id is stored in after[] and it is deactivated so it wont be detected again
        if argument1 >= 0 and idid.y < y
        {
            after[i] = idid
            i += 1
            instance_deactivate_object(idid)
        }
        else// if the char needs moved befor it is moved it's id is stored in done[] and it is deactivated so it wont be detected again
        {
            with(idid)
            {
                Xext = argument0
                Yext = argument1
                move_it_slant_ext(argument2)
            }
            instance_deactivate_object(idid)
            done[ii] = idid
            ii += 1
        }
    }
}

//the object is moved
x += argument0
y += argument1

//create the inumerator "n"
var
n;
n = 0

//reactivate all the chars in done[]
if done[0]!= noone
{
    repeat(ii)
    {
        instance_activate_object(done[n])
        n += 1
    }
}

//reactivate all the characters in after[]
if after[0] = noone
{exit}
        
n = 0
repeat(i)
{
    instance_activate_object(after[n])
    with(after[n])
    {
        Xext = argument0
        Yext = argument1
        move_it_slant_ext(argument2)
    }
    n += 1
}


