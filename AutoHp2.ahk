;50% 喝水
HpSet_X := 100
HpSet_Y := 960
PixelGetColor, HpSet, HpSet_X, HpSet_Y
loop
{
if Winactive("Path of Exile")
	{
	PixelGetColor, HpChange, HpSet_X, HpSet_Y
	if  (HpSet != HpChange)
		{
			send 2
			sleep 500
		}
	}
}