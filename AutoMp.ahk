;10% MP使用
;MP使用中
MpUsing_X := 502
MpUsing_Y := 1072

;MP魔量設定
MpSet_X := 1780
MpSet_Y := 1030

;Mp基準設定
PixelGetColor, MpCheck, MpSet_X , MpSet_Y
PixelGetColor, Water5 , MpUsing_X, MpUsing_Y

loop
{
    if Winactive("Path of Exile")
    {
        PixelGetColor, MpSet, MpSet_X , MpSet_Y
        if (MpSet != MpCheck)
        {
            PixelGetColor, WaterChange5 , MpUsing_X, MpUsing_Y
            if (Water5 == WaterChange5)
            {
                Send 5
                sleep 500
            }
        }
    }
}
return