
F13::                   ;key pressed to activate hotkey
{
    CreateGUI()         ;script that runs when hotkey is pressed
}

F14::                                                       ;key pressed to activate hotkey
{
    UnimplimentedHotkeyNotification(A_ThisHotkey)           ;script that runs when hotkey is pressed
}

F15::                                                       ;key pressed to activate hotkey
{
    UnimplimentedHotkeyNotification(A_ThisHotkey)           ;script that runs when hotkey is pressed
}

F16::                                                       ;key pressed to activate hotkey
{
    UnimplimentedHotkeyNotification(A_ThisHotkey)           ;script that runs when hotkey is pressed
}

F17::                                                       ;key pressed to activate hotkey
{
    UnimplimentedHotkeyNotification(A_ThisHotkey)           ;script that runs when hotkey is pressed
}

F18::                                                       ;key pressed to activate hotkey
{
    UnimplimentedHotkeyNotification(A_ThisHotkey)           ;script that runs when hotkey is pressed
}

F19::                                                       ;key pressed to activate hotkey
{
    UnimplimentedHotkeyNotification(A_ThisHotkey)           ;script that runs when hotkey is pressed
}

F20::                                                       ;key pressed to activate hotkey
{
    UnimplimentedHotkeyNotification(A_ThisHotkey)           ;script that runs when hotkey is pressed
}

F21::                                                       ;key pressed to activate hotkey
{
    UnimplimentedHotkeyNotification(A_ThisHotkey)           ;script that runs when hotkey is pressed
}

F22::                                                       ;key pressed to activate hotkey
{
    UnimplimentedHotkeyNotification(A_ThisHotkey)           ;script that runs when hotkey is pressed
}

F23::                                                       ;key pressed to activate hotkey
{
    UnimplimentedHotkeyNotification(A_ThisHotkey)           ;script that runs when hotkey is pressed
}

F24::                                                       ;key pressed to activate hotkey
{
    UnimplimentedHotkeyNotification(A_ThisHotkey)           ;script that runs when hotkey is pressed
}

;Methods
;creates notification window to notify the user of key which hasnt been implimented
UnimplimentedHotkeyNotification(key)
{
    MsgBox(key " has not yet been given a function", "Key has no function!", (0, 48))       ;creates a message box ui with given text
}

;creates GUI which the user can use to open programs
CreateGUI(*)
{
    myGui := Gui()
    ;creates hypertext
    textWithLink := myGui.Add("Text", "", "Click here to launch default IDE.")
    textWithLink.SetFont("underline cBlue")
    textWithLink.OnEvent("Click", LaunchDefaultIDE )

    ;Alternatively, a Link control can be used:
    myGui.Add("Codelink",, 'Click <a href="www.google.com">here</a> to launch Google.')
    myGui.Show()
}

;launches the program saved as "code" in environment variables
;may also put a path to a program instead
LaunchDefaultIDE(*) {
    Run("code")
}