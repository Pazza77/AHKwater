;鑑定整個大背包倉庫
;巨大倉庫設定24*24
BigWH_Left_Top_X := 30
BigWH_Left_Top_Y := 145
BigWH_Right_Down_X := 635
BigWH_Right_Down_Y := 755

;倉庫格子差距
BigWH_X_Gap := 26.5
BigWH_Y_Gap := 26.5

;鑑定卷軸位置
Bag_ID_X := 1885
Bag_ID_Y := 780

;起始數據設定
Click_WH_ID_X := BigWH_Left_Top_X
Click_WH_ID_Y := BigWH_Left_Top_Y

;運作開始
;鑑定整個倉庫
if winactive("Path of Exile")
{
    sleep 300
    MouseClick, Right,Bag_ID_X,Bag_ID_Y
    sleep 300
    send {Shift down}
    Gosub, Take_WH_ITEM_X
    send {Shift Up}
}
Return

Take_WH_ITEM_X:
    loop 24
    {
        if winactive("Path of Exile")
        {
            Gosub, Take_WH_ITEM_Y
            Click_WH_ID_X := Click_WH_ID_X + BigWH_X_Gap
        }
    }
Return

Take_WH_ITEM_Y:
    loop 24
    {
        if winactive("Path of Exile")
        {
            MouseClick, Left, %Click_WH_ID_X%, %Click_WH_ID_Y%
            Click_WH_ID_Y := Click_WH_ID_Y + BigWH_Y_Gap
            sleep 50
        }
    }
    ;Y軸回復原始
    Click_WH_ID_Y := BigWH_Left_Top_Y
Return
