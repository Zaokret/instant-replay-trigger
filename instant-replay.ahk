global F10_StartTime := 0

MaxDelay := 1000

$F10::
{
    global F10_StartTime
    F10_StartTime := A_TickCount
    Send('{F10}')
}

$n::
{
    global F10_StartTime
    ElapsedTime := A_TickCount - F10_StartTime
    if (ElapsedTime <= MaxDelay) {
        Send("!{F10}")  ; Simulate Alt + F10 to trigger Instant Replay Hotkey
        F10_StartTime := 0
    }

    Send("n")
}