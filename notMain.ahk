;#Warn  ; Enable warnings to assist with detecting common errors.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; ***********************************
; *** DEFINE YOUR STRATAGEMS HERE ***
; ***********************************

Numpad0::REINFORCE()
Numpad9::RESUPPLY()

t::TEST()


RandomSleep() {
    Random, rand, 50.0, 250.0
    Sleep rand
}

TEST() {
    RandomSleep()
	SendInput, {LControl Down}
	RandomSleep()
    SendInput, {LControl Up}
	return
}


RESUPPLY() {
	SendInput, {LControl Down}
	RandomSleep()
	SendInput, {Blind}{d Down}
	RandomSleep()
	SendInput, {Blind}{d Up}
	RandomSleep()
	SendInput, {Blind}{d Down} 
	RandomSleep()
	SendInput, {Blind}{d Up}
	RandomSleep()
	SendInput, {Blind}{w Down}
	RandomSleep()
	SendInput, {Blind}{w Up}
	RandomSleep()
	SendInput, {Blind}{d Down}
	RandomSleep()
	SendInput, {Blind}{d Up}
	RandomSleep()
	SendInput, {LControl Up}
	return
}


REINFORCE() {
    SendInput, {LControl Down}
    RandomSleep()
    SendInput, {Blind}{w Down}
    RandomSleep()
    SendInput, {Blind}{w Up}
    RandomSleep()
    SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
    SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
    SendInput, {Blind}{a Down}
    RandomSleep()
    SendInput, {Blind}{a Up}
    RandomSleep()
    SendInput, {Blind}{w Down}
    RandomSleep()
    SendInput, {Blind}{w Up}
    RandomSleep()
    SendInput, {LControl Up}
    return
}


OrbitalPrecisionStrike() {
    SendInput, {LControl Down}
    RandomSleep()
    SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
    SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
    SendInput, {Blind}{w Down}
    RandomSleep()
    SendInput, {Blind}{w Up}
    RandomSleep()
    SendInput, {LControl Up}
    return
}


Orbital120MMHEBarrage() {
    SendInput, {LControl Down}
    RandomSleep()
    SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
	SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
    SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
    SendInput, {Blind}{a Down}
    RandomSleep()
    SendInput, {Blind}{a Up}
    RandomSleep()
    SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
    SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
    SendInput, {LControl Up}
    return
}


EagleRearm() {
    SendInput, {LControl Down}
    RandomSleep()
    SendInput, {Blind}{w Down}
    RandomSleep()
    SendInput, {Blind}{w Up}
    RandomSleep()
    SendInput, {Blind}{w Down}
    RandomSleep()
    SendInput, {Blind}{w Up}
    RandomSleep()
    SendInput, {Blind}{a Down}
    RandomSleep()
    SendInput, {Blind}{a Up}
    RandomSleep()
    SendInput, {Blind}{w Down}
    RandomSleep()
    SendInput, {Blind}{w Up}
    RandomSleep()
    SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
    SendInput, {LControl Up}
    return
}


GatlingSentry() {
    SendInput, {LControl Down}
    RandomSleep()
    SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
    SendInput, {Blind}{w Down}
    RandomSleep()
    SendInput, {Blind}{w Up}
    RandomSleep()
    SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
    SendInput, {Blind}{a Down}
    RandomSleep()
    SendInput, {Blind}{a Up}
    RandomSleep()
    SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
    SendInput, {LControl Up}
    return
}

Stalwart() {
    SendInput, {LControl Down}
    RandomSleep()
    SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
	SendInput, {Blind}{a Down}
    RandomSleep()
    SendInput, {Blind}{a Up}
    RandomSleep()
	SendInput, {Blind}{d Down}
    RandomSleep()
    SendInput, {Blind}{d Up}
    RandomSleep()
	SendInput, {Blind}{w Down}
    RandomSleep()
    SendInput, {Blind}{w Up}
    RandomSleep()
	SendInput, {Blind}{w Down}
    RandomSleep()
    SendInput, {Blind}{w Up}
    RandomSleep()
	SendInput, {Blind}{a Down}
    RandomSleep()
    SendInput, {Blind}{a Up}
    RandomSleep()
    SendInput, {LControl Up}
    return
}