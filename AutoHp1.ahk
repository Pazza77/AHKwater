;80%喝水
HPSet_X := 110
HPSet_Y := 910
PixelGetColor, HpSet, HPSet_X, HPSet_Y
loop
{
    if Winactive("Path of Exile")
    {
        PixelGetColor, HpChange, HPSet_X, HPSet_Y
        if (HpSet != HpChange)
        {
            send 1
            sleep 500
        }
    }
}
Return