﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Only function if Helldivers 2 window is focused.
#IfWinActive, HELLDIVERS™ 2

; Bind your hotkeys below.
*Numpad0::
StratReinforce()
return

*Numpad1::
return

*Numpad2::
return

*Numpad3::
return

*Numpad4::
return

*Numpad5::
return

*Numpad6::
return

*Numpad7::
return

*Numpad8::
return

*Numpad9::
return

*NumpadDot::
StratResupply()
return

; Stratagem functions with key sequences.
; Generic Stratagems
StratReinforce() {
    RunKeys(["W", "S", "D", "A", "W"])
}
StratSosBeacon() {
    RunKeys(["W", "S", "D", "A"])
}
StratResupply() {
    RunKeys(["S", "S", "W", "D"])
}
StratUploadData() {
    RunKeys(["A", "D", "W", "W", "W"])
}
StratEagleRearm() {
    RunKeys(["W", "W", "A", "W", "D"])
}
StratSeafArtillery() {
    RunKeys(["D", "W", "W", "S"])
}

; Patriotic Administration Centre
StratMachineGun() {
    RunKeys(["S", "A", "S", "W", "D"])
}
StratAntiMaterielRifle() {
    RunKeys(["S", "A", "D", "W", "S"])
}
StratStalwart() {
    RunKeys([])
}
StratExpendableAntiTank() {
    RunKeys(["S", "S", "A", "W", "D"])
}
StratRecoillessRifle() {
    RunKeys([])
}
StratFlamethrower() {
    RunKeys(["S", "A", "W", "S", "W"])
}
StratAutocannon() {
    RunKeys(["S", "A", "S", "W", "W", "D"])
}
StratRailgun() {
    RunKeys(["S", "D", "S", "W", "A", "D"])
}
StratSpear() {
    RunKeys(["S", "S", "W", "S", "S"])
}

; Orbital Cannon
StratOrbitalGatlingBarrage() {
    RunKeys([])
}
StratOrbitalAirburstStrike() {
    RunKeys(["D", "D", "D"])
}
StratOrbital120mmHeBarrage() {
    RunKeys(["D", "D", "S", "A", "D", "S"])
}
StratOrbital380mmHeBarrage() {
    RunKeys(["D", "S", "W", "W", "A", "S", "S"])
}
StratOrbitalWalkingBarrage() {
    RunKeys([])
}
StratOrbitalLaser() {
    RunKeys(["D", "S", "W", "D", "S"])
}
StratOrbitalRailcannonStrike() {
    RunKeys(["D", "W", "S", "S", "D"])
}

; Hangar
StratEagleStrafingRun() {
    RunKeys(["W", "D", "D"])
}
StratEagleAirstrike() {
    RunKeys(["W", "D", "S", "D"])
}
StratEagleClusterBomb() {
    RunKeys([])
}
StratEagleNapalmStrike() {
    RunKeys(["W", "D", "S", "W"])
}
StratJumpPack() {
    RunKeys(["S", "W", "W", "S", "W"])
}
StratEagleSmokeStrike() {
    RunKeys([])
}
StratEagle110mmRocketPods() {
    RunKeys(["W", "D", "W", "A"])
}
StratEagle500kgBomb() {
    RunKeys(["W", "D", "S", "S", "S"])
}

; Bridge
StratOrbitalPrecisionStrike() {
    RunKeys(["D", "D", "W"])
}
StratOrbitalGasStrike() {
    RunKeys([])
}
StratOrbitalEmsStrike() {
    RunKeys([])
}
StratOrbitalSmokeStrike() {
    RunKeys([])
}
StratHmgEmplacement() {
    RunKeys(["S", "W", "A", "D", "D", "A"])
}
StratShieldGeneratorRelay() {
    RunKeys([])
}
StratTeslaTower() {
    RunKeys(["S", "W", "D", "W", "A", "D"])
}

; Engineering Bay
StratAntiPersonnelMinefield() {
    RunKeys(["S", "A", "W", "D"])
}
StratSupplyPack() {
    RunKeys(["S", "A", "S", "W", "W", "S"])
}
StratGrenadeLauncher() {
    RunKeys(["S", "A", "W", "A", "S"])
}
StratLaserCannon() {
    RunKeys(["S", "A", "S", "W", "A"])
}
StratIncendiaryMines() {
    RunKeys(["S", "A", "A", "S"])
}
StratGuardDogRover() {
    RunKeys(["S", "W", "A", "W", "D", "D"])
}
StratBallisticShieldBackpack() {
    RunKeys([])
}
StratArcThrower() {
    RunKeys([])
}
StratShieldGeneratorPack() {
    RunKeys(["S", "W", "A", "D", "A", "D"])
}

; Robotics Workshop
StratMachineGunSentry() {
    RunKeys(["S", "W", "D", "D", "W"])
}
StratGatlingSentry() {
    RunKeys(["S", "W", "D", "A"])
}
StratMortarSentry() {
    RunKeys(["S", "W", "D", "D", "S"])
}
StratGuardDog() {
    RunKeys(["S", "W", "D", "W", "D", "S"])
}
StratAutocannonSentry() {
    RunKeys(["S", "W", "D", "W", "A", "W"])
}
StratRocketSentry() {
    RunKeys(["S", "W", "D", "D", "A"])
}
StratEmsMortarSentry() {
    RunKeys([])
}

; Run keyList
RunKeys(keyList) {
    Random, initialDelay, 40, 50
    Send {Ctrl Down}
    Sleep, % initialDelay

    For key, value in keyList {
        Random, delay, 40, 50
        Random, pressDuration, 20, 25

        Send, {%value% Down}
        Sleep, % pressDuration
        Send, {%value% Up}
        Sleep, % delay
    }

    Send {Ctrl Up}
}
