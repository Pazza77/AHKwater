PixelGetColor, Water5 , 500, 1074
loop
{
	if Winactive("Path of Exile")
	{
		PixelGetColor, WaterChange5 , 500, 1074
		if  (Water5 == WaterChange5)
			{
				Send 5
				sleep 1000
			}
	}
}
return