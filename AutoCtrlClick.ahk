;自由存放

send, {ctrl down}
loop
{
    if Winactive("Path of Exile")
    {
        Send {Click}
        sleep 50
    }
}
return