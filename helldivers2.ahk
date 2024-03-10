#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Only function if Helldivers 2 window is focused.
#IfWinActive, HELLDIVERS™ 2

global MODE := 'wasd' ; 'arrow'|'wasd'

; Bind your hotkeys below.
*Numpad0::
Reinforce()
return

*NumpadDot::
Resupply()
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

; Run keyList
RunKeys(keyList) {
    Random, initialDelay, 40, 50
    Send {Ctrl Down}
    Sleep, % initialDelay

    For key, value in keyList {
        Random, delay, 50, 250
        Random, pressDuration, 50, 100

        Send, {Blind} {%value% Down}
        Sleep, % pressDuration
        Send, {Blind} {%value% Up}
        Sleep, % delay
    }

    Send {Ctrl Up}
}

; Generic agems
Reinforce() {
    global mode
    switch mode
    {
        case "arrow":
            RunKeys("Up", "Down", "Right", "Left", "Up")
            break
        default:
            RunKeys("W", "S", "D", "A", "W")
            break
    }
}

Resupply() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Down", "Down", "Up", "Right"])
        default:        RunKeys(["S", "S", "W", "D"])
    }
}

SosBeacon() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Up", "Down", "Right", "Left"])
        default:        RunKeys(["W", "S", "D", "A"])
    }
}

UploadData() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Left", "Right", "Up", "Up", "Up"])
        default:        RunKeys(["A", "D", "W", "W", "W"])
    }
}

EagleRearm() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Up", "Up", "Left", "Up", "Right"])
        default:        RunKeys(["W", "W", "A", "W", "D"])
    }
}

SeafArtillery() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Right", "Up", "Up", "Down"])
        default:        RunKeys(["D", "W", "W", "S"])
    }
}

; Patriotic Adminiion Centre
MachineGun() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Down", "Left", "Down", "Up", "Right"])
        default:        RunKeys(["S", "A", "S", "W", "D"])
    }
}

AntiMaterielRifle() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Down", "Left", "Right", "Up", "Down"])
        default:        RunKeys(["S", "A", "D", "W", "S"])
    }
}

Stalwart() {
    RunKeys([])
}

ExpendableAntiTank() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Down", "Down", "Left", "Up", "Right"])
        default:        RunKeys(["S", "S", "A", "W", "D"])
    }
}

RecoillessRifle() {
    RunKeys([])
}

Flamethrower() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Down", "Left", "Up", "Down", "Up"])
        default:        RunKeys(["S", "A", "W", "S", "W"])
    }
}

Autocannon() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Down", "Left", "Down", "Up", "Up", "Right"])
        default:        RunKeys(["S", "A", "S", "W", "W", "D"])
    }
}

Railgun() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Down", "Right", "Down", "Up", "Left", "Right"])
        default:        RunKeys(["S", "D", "S", "W", "A", "D"])
    }
}

Spear() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Down", "Down", "Up", "Down", "Down"])
        default:        RunKeys(["S", "S", "W", "S", "S"])
    }
}

; Orbital Cannon
OrbitalGatlingBarrage() {
    RunKeys([])
}

OrbitalAirburstStrike() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Right", "Right", "Right"])
        default:        RunKeys(["D", "D", "D"])
    }
}

Orbital120mmHeBarrage() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Right", "Right", "Down", "Left", "Right", "Down"])
        default:        RunKeys(["D", "D", "S", "A", "D", "S"])
    }
}

Orbital380mmHeBarrage() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Right", "Down", "Up", "Up", "Left", "S", "S"])
        default:        RunKeys(["D", "S", "W", "W", "A", "S", "S"])
    }
}

OrbitalWalkingBarrage() {
    RunKeys([])
}

OrbitalLaser() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Right", "Down", "Up", "Right", "Down"])
        default:        RunKeys(["D", "S", "W", "D", "S"])
    }
}

OrbitalRailcannonStrike() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Right", "Up", "Down", "Down", "Right"])
        default:        RunKeys(["D", "W", "S", "S", "D"])
    }
}

; Hangar
EagleStrafingRun() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Up", "Right", "Right"])
        default:        RunKeys(["W", "D", "D"])
    }
}

EagleAirstrike() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Up", "Right", "Down", "Right"])
        default:        RunKeys(["W", "D", "S", "D"])
    }
}

EagleClusterBomb() {
    RunKeys([])
}

EagleNapalmStrike() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Up", "Right", "Down", "Up"])
        default:        RunKeys(["W", "D", "S", "W"])
    }
}

JumpPack() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Down", "Up", "Up", "Down", "Up"])
        default:        RunKeys(["S", "W", "W", "S", "W"])
    }
}

EagleSmokeStrike() {
    RunKeys([])
}

Eagle110mmRocketPods() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Up", "Right", "Up", "Left"])
        default:        RunKeys(["W", "D", "W", "A"])
    }
}

Eagle500kgBomb() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Up", "Right", "Down", "Down", "Down"])
        default:        RunKeys(["W", "D", "S", "S", "S"])
    }
}

; Bridge
OrbitalPrecisionStrike() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["Right", "Right", "Up"])
        default:        RunKeys(["D", "D", "W"])
    }
}

OrbitalGasStrike() {
    RunKeys([])
}

OrbitalEmsStrike() {
    RunKeys([])
}

OrbitalSmokeStrike() {
    RunKeys([])
}

HmgEmplacement() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "W", "A", "D", "D", "A"])
        default:        RunKeys(["S", "W", "A", "D", "D", "A"])
    }
}

ShieldGeneratorRelay() {
    RunKeys([])
}

TeslaTower() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "W", "D", "W", "A", "D"])
        default:        RunKeys(["S", "W", "D", "W", "A", "D"])
    }
}

; Engineering Bay
AntiPersonnelMinefield() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "A", "W", "D"])
        default:        RunKeys(["S", "A", "W", "D"])
    }
}

SupplyPack() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "A", "S", "W", "W", "S"])
        default:        RunKeys(["S", "A", "S", "W", "W", "S"])
    }
}

GrenadeLauncher() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "A", "W", "A", "S"])
        default:        RunKeys(["S", "A", "W", "A", "S"])
    }
}

LaserCannon() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "A", "S", "W", "A"])
        default:        RunKeys(["S", "A", "S", "W", "A"])
    }
}

IncendiaryMines() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "A", "A", "S"])
        default:        RunKeys(["S", "A", "A", "S"])
    }
}

GuardDogRover() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "W", "A", "W", "D", "D"])
        default:        RunKeys(["S", "W", "A", "W", "D", "D"])
    }
}

BallisticShieldBackpack() {
    RunKeys([])
}

ArcThrower() {
    RunKeys([])
}

ShieldGeneratorPack() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "W", "A", "D", "A", "D"])
        default:        RunKeys(["S", "W", "A", "D", "A", "D"])
    }
}

; Robotics Workshop
MachineGunSentry() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "W", "D", "D", "W"])
        default:        RunKeys(["S", "W", "D", "D", "W"])
    }
}

GatlingSentry() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "W", "D", "A"])
        default:        RunKeys(["S", "W", "D", "A"])
    }
}

MortarSentry() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "W", "D", "D", "S"])
        default:        RunKeys(["S", "W", "D", "D", "S"])
    }
}

GuardDog() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "W", "D", "W", "D", "S"])
        default:        RunKeys(["S", "W", "D", "W", "D", "S"])
    }
}

AutocannonSentry() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "W", "D", "W", "A", "W"])
        default:        RunKeys(["S", "W", "D", "W", "A", "W"])
    }
}

RocketSentry() {
    global mode
    switch mode
    {
        case "arrow":   RunKeys(["S", "W", "D", "D", "A"])
        default:        RunKeys(["S", "W", "D", "D", "A"])
    }
}

EmsMortarSentry() {
    RunKeys([])
}
