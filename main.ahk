;自動模式 
F1::
    Gosub, AutoClose
    ;喝水模式選擇 1(2血1魔) 2(1血1魔) 3(1血) 4(全部)
    Gosub, AutoDrink4

    ;自動技能 數字12345
    run, AutoSkill.ahk, , , AutoSkillPID

    ;BV使用
    ;run, AutoBV.ahk, , , AutoBVPID
return

;全部關閉
F2::
    Gosub, AutoClose
return

;背包存東西
F3::
    Gosub, AutoClose
    run, AutoBagSave.ahk, , , AutoBagSaveID
return

+F2::
    Gosub, AutoClose
return

^F2::
    Gosub, AutoClose
return

;自由取出存放物品
F4::
    Gosub, AutoClose
    run, AutoCtrlClick.ahk, , , AutoCtrlClickPID
Return

;點裝備
F5::
    Gosub, AutoClose
    run, AutoClickEquip.ahk, , , AutoClickEquipPID
Return

;大倉庫鑑定
F6::
    Gosub, Autoclose
    run, AutoWhID.ahk, , , AutoWhIDPID
Return
;全部關閉
AutoClose:
    Process, Close, %AutoHp1PID%
    Process, Close, %AutoHp2PID%
    Process, Close, %AutoWater1PID%
    Process, Close, %AutoWater2PID%
    Process, Close, %AutoWater3PID%
    Process, Close, %AutoWater4PID%
    Process, Close, %AutoWater5PID%
    Process, Close, %AutoSkillPID%
    Process, Close, %AutoCtrlClickPID%
    Process, Close, %AutoMpPID%
    Process, Close, %AutoBVPID%
    Process, Close, %AutoClickEquipPID%
    Process, Close, %AutoBagSaveID%
    Process, Close, %AutoWhIDPID%
    sleep 100
    send, ^
    send, {Shift}
return

;設定模式1 雙血水 雙藥劑 1魔力回復
AutoDrink1: 
    run, AutoHp1.ahk, , , AutoHp1PID
    run, AutoHp2.ahk, , , AutoHp2PID 
    run, AutoWater3.ahk, , , AutoWater3PID
    run, AutoWater4.ahk, , , AutoWater4PID
    run, AutoMp.ahk, , , AutoMpPID
Return

;設定模式2 血 3藥劑 1魔力
AutoDrink2:
    run, AutoHp1.ahk, , , AutoHp1PID
    run, AutoWater2.ahk, , , AutoWater2PID
    run, AutoWater3.ahk, , , AutoWater3PID
    run, AutoWater4.ahk, , , AutoWater4PID
    run, AutoMp.ahk, , , AutoMpPID
Return

;設定模式3 血 4藥劑 
AutoDrink3:
    run, AutoHp1.ahk, , , AutoHp1PID
    run, AutoWater2.ahk, , , AutoWater2PID
    run, AutoWater3.ahk, , , AutoWater3PID
    run, AutoWater4.ahk, , , AutoWater4PID
    run, AutoWater5.ahk, , , AutoWater5PID
Return

AutoDrink4:
    run, AutoWater1.ahk, , , AutoWater1PID
    run, AutoWater2.ahk, , , AutoWater2PID
    run, AutoWater3.ahk, , , AutoWater3PID
    run, AutoWater4.ahk, , , AutoWater4PID
    run, AutoWater5.ahk, , , AutoWater5PID
Return
