File {
Grid = "PN_msh.tdr"

Plot = "PNJunction"
Current = "PNJunction"
Output = "PNJunction"
}

Electrode {
{ Name="anode"   Voltage=0.0 }
{ Name="cathode" Voltage=0.0 }
}

Physics {

Mobility(
DopingDep
HighFieldSat
)

Recombination(
SRH
)
}

Plot {
Potential
ElectricField

eDensity
hDensity

Doping
SpaceCharge

eCurrent
hCurrent
}

Math {
Extrapolate
Iterations = 30
}

Solve {

Coupled {
Poisson
Electron
Hole
}

}

