keyRight = keyboard_check(ord("D"));
keyLeft = keyboard_check(ord("A"));
keyJump = keyboard_check_pressed(vk_space);

var move_side = (keyRight - keyLeft);

hsp = move_side * spd;
vsp = vsp + grv;

if (keyJump && grounded) {vsp -= jumpSpeed}

if place_meeting(x+hsp,y,oWall)
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

if place_meeting(x,y+vsp,oWall)
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	 vsp = 0;
	 grounded = true;
} else {grounded = false;}

x += hsp;
y += vsp;

