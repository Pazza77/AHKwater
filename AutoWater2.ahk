PixelGetColor, Water2 , 365, 1074
loop
{
if Winactive("Path of Exile")
	{
		PixelGetColor, WaterChange2 , 365, 1074
		if  (Water2 == WaterChange2)
			{
				Send 2
				sleep 500
			}
	}
}
return