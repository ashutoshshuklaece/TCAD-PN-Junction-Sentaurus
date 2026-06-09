Title "Untitled"

Controls {
}

IOControls {
	outputFile = "/home/vjti-5/ASH/PN/PN"
	EnableSections
}

Definitions {
	Constant "ConstantProfileDefinition_p" {
		Species = "BoronActiveConcentration"
		Value = 1e+17
	}
	Constant "ConstantProfileDefinition_n" {
		Species = "PhosphorusActiveConcentration"
		Value = 1e+17
	}
	Refinement "RefDef.all" {
		MaxElementSize = ( 0.05 0.05 )
		MinElementSize = ( 0.05 0.05 )
	}
	Refinement "JunctionRef" {
		MaxElementSize = ( 0.005 0.005 )
		MinElementSize = ( 0.001 0.001 )
	}
}

Placements {
	Constant "ConstantProfilePlacement_p" {
		Reference = "ConstantProfileDefinition_p"
		EvaluateWindow {
			Element = region ["region_5"]
		}
	}
	Constant "ConstantProfilePlacement_n" {
		Reference = "ConstantProfileDefinition_n"
		EvaluateWindow {
			Element = region ["region_6"]
		}
	}
	Refinement "RefPlace.all" {
		Reference = "RefDef.all"
		RefineWindow = region ["region_5"]
	}
	Refinement "RefPlace.all2" {
		Reference = "RefDef.all"
		RefineWindow = region ["region_6"]
	}
	Refinement "JunctionPlacement" {
		Reference = "JunctionRef"
		RefineWindow = Rectangle [(0.9 0) (1.1 1)]
	}
}

