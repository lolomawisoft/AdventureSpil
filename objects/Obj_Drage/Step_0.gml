halfViewWidth = camera_get_view_width(view_camera[0])/2;
halfViewHeight = camera_get_view_height(view_camera[0])/2;
camera_set_view_pos(view_camera[0], x - halfViewWidth, y - halfViewHeight)
//resets move og dmove når hvilken som helst knap er trykket
if keyboard_check(vk_anykey)
{
	move = 4
	dmove = 3
}

//for op ad gående bevægelse og skråt op ad
if keyboard_check(vk_up) && place_free(x, y - collisionspd)
{
	x = x
	y = y - move
	
	if keyboard_check(vk_left) && place_free(x - dcollisionspd, y )
	{	
		x = x - dmove
		
	}
	if keyboard_check(vk_right) && place_free(x + dcollisionspd, y )
	{	
		x = x + dmove
		
	}
}
//for ned ad gående bevægelse og skråt ned ad
if keyboard_check(vk_down) && place_free(x, y + collisionspd)
{
	y = y + move
	x = x
	
	if keyboard_check(vk_left) && place_free(x - dcollisionspd, y )
	{	
		x = x - dmove
		
	}
	if keyboard_check(vk_right) && place_free(x + dcollisionspd, y )
	{	
		x = x + dmove
		
	}
}
if keyboard_check(vk_right) && place_free(x + collisionspd, y)
{
	image_xscale = -0.25
	
	y = y
	x = x + move
}
if keyboard_check(vk_left) && place_free(x - collisionspd, y)
{
	image_xscale = 0.25
	
	y = y
	x = x - move
}