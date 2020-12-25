PixelGetColor, Water4 , 455, 1074
loop
{
	if Winactive("Path of Exile")
	{
		PixelGetColor, WaterChange4 , 455, 1074
		if  (Water4 == WaterChange4)
			{
				Send 4
				sleep 1000
			}
	}
}
return