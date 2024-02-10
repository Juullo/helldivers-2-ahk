#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Only function if Helldivers 2 window is focused.
#IfWinActive, HELLDIVERS™ 2

; Bind your hotkeys below.
*Numpad0::
StratReinforce()
*Numpad1::
StratMachineGun()
*Numpad2::
StratExpendableAntiTank()
*Numpad3::
StratEagleAirstrike()
*Numpad4::
StratMortarSentry()
*Numpad5::
*Numpad6::
*Numpad7::
*Numpad8::
*Numpad9::
*NumpadDot::
StratResupply()

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

; Patriotic Administration Centre
StratMachineGun() {
    RunKeys(["S", "A", "S", "W", "D"])
}
StratAntiMaterielRifle() {
    RunKeys([])
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
    RunKeys([])
}
StratAutocannon() {
    RunKeys([])
}
StratRailgun() {
    RunKeys([])
}
StratSpear() {
    RunKeys([])
}

; Orbital Cannon
StratOrbitalGatlingBarrage() {
    RunKeys([])
}
StratOrbitalAirburstStrike() {
    RunKeys([])
}
StratOrbital120mmHeBarrage() {
    RunKeys([])
}
StratOrbital380mmHeBarrage() {
    RunKeys(["D", "S", "W", "W", "A", "S", "S"])
}
StratOrbitalWalkingBarrage() {
    RunKeys([])
}
StratOrbitalLaser() {
    RunKeys([])
}
StratOrbitalRailcannonStrike() {
    RunKeys([])
}

; Hangar
StratEagleStrafingRun() {
    RunKeys([])
}
StratEagleAirstrike() {
    RunKeys(["W", "D", "S", "D"])
}
StratEagleClusterBomb() {
    RunKeys([])
}
StratEagleNapalmStrike() {
    RunKeys([])
}
StratJumpPack() {
    RunKeys([])
}
StratEagleSmokeStrike() {
    RunKeys([])
}
StratEagle110mmRocketPods() {
    RunKeys([])
}
StratEagle500kgBomb() {
    RunKeys([])
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
    RunKeys([])
}
StratShieldGeneratorRelay() {
    RunKeys([])
}
StratTeslaTower() {
    RunKeys([])
}

; Engineering Bay
StratAntiPersonnelMinefield() {
    RunKeys(["S", "A", "W", "D"])
}
StratSupplyPack() {
    RunKeys([])
}
StratGrenadeLauncher() {
    RunKeys([])
}
StratLaserCannon() {
    RunKeys([])
}
StratIncendiaryMines() {
    RunKeys([])
}
StratGuardDogRover() {
    RunKeys([])
}
StratBallisticShieldBackpack() {
    RunKeys([])
}
StratArcThrower() {
    RunKeys([])
}
StratShieldGeneratorPack() {
    RunKeys([])
}

; Robotics Workshop
StratMachineGunSentry() {
    RunKeys([])
}
StratGatlingSentry() {
    RunKeys(["S", "W", "D", "A"])
}
StratMortarSentry() {
    RunKeys(["S", "W", "D", "D", "S"])
}
StratGuardDog() {
    RunKeys([])
}
StratAutocannonSentry() {
    RunKeys([])
}
StratRocketSentry() {
    RunKeys([])
}
StratEmsMortarSentry() {
    RunKeys([])
}

; Run keyList
RunKeys(keyList) {
    Random, initialDelay, 50, 80
    Send {Ctrl Down}
    Sleep, % initialDelay

    For key, value in keyList {
        Random, delay, 50, 80
        Random, pressDuration, 20, 35

        Send, {%value% Down}
        Sleep, % pressDuration
        Send, {%value% Up}
        Sleep, % delay
    }

    Send {Ctrl Up}
}
