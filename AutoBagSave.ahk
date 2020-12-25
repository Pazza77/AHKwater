;背包大小設定
Bag_Left_Top_X := 1300
Bag_Left_Top_Y := 615
Bag_Right_Down_X := 1880
Bag_Right_Down_Y := 825

;格子差距設定
Bag_X_Gap := 52.5
Bag_Y_Gap := 52.5

;倉庫設定
WH_Cuerry_X := 760
WH_Cuerry_Y := 115
WH_Cuerry_2Y := 140

;函數初始設定
Click_Bag_X := Bag_Left_Top_X
Click_Bag_Y := Bag_Left_Top_Y

;存大倉
send {Click,%WH_Cuerry_X%,%WH_Cuerry_2Y%}
sleep 500
gosub Bag_Save

return

Bag_Save:
    Click_Bag_X := Bag_Left_Top_X
    Click_Bag_Y := Bag_Left_Top_Y
    if winactive("Path of Exile")
    {
        loop 5
        {
            loop 12
            {
                send ^{Click,%Click_Bag_X%, %Click_Bag_Y%}

                Click_Bag_X := Click_Bag_X + Bag_X_Gap
            }
            Click_Bag_X := Bag_Left_Top_X
            Click_Bag_Y := Click_Bag_Y + Bag_Y_Gap
        }
    }
return

