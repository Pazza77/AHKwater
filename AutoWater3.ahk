PixelGetColor, Water3 , 410, 1074
loop
{
if Winactive("Path of Exile")
	{
		PixelGetColor, WaterChange3 , 410, 1074
		if  (Water3 == WaterChange3)
			{
				Send 3
				sleep 1000
			}
	}
}
return