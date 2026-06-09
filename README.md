# TCAD-PN-Junction-Sentaurus
2D Silicon PN Junction simulation using Synopsys Sentaurus TCAD with doping, mesh refinement, and device physics analysis.
This project demonstrates the complete simulation flow of a silicon PN junction using Synopsys Sentaurus TCAD.

## Device Parameters

| Parameter         | Value                    |
| ----------------- | ------------------------ |
| Material          | Silicon                  |
| Device Type       | Abrupt PN Junction       |
| Length            | 2 μm                     |
| Height            | 1 μm                     |
| P-type Doping     | 1×10¹⁷ cm⁻³ (Boron)      |
| N-type Doping     | 1×10¹⁷ cm⁻³ (Phosphorus) |
| Junction Location | x = 1 μm                 |

## Simulation Flow

Structure Creation (SDE)
↓
Doping Assignment
↓
Contact Definition
↓
Mesh Refinement
↓
Device Simulation (SDevice)
↓
Result Visualization (SVisual)

## Results

The following quantities were analyzed:

* Net Doping Profile
* Electron Concentration
* Hole Concentration
* Space Charge Density
* Electric Field Distribution
* Electrostatic Potential

These results help explain the formation of the depletion region and the equilibrium behavior of the PN junction.

