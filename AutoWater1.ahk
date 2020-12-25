PixelGetColor, Water1 , 317, 1074
loop
{
if Winactive("Path of Exile")
	{
		PixelGetColor, WaterChange1 , 317, 1074
		if  (Water1 == WaterChange1)
			{
				Send 1
				sleep 500
			}
	}
}
return