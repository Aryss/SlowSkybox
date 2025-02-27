//=============================================================================
// SlowQuarter.
// Slows down the skybox rotation speed by half
// by Michael "_Lynx" Sokolkov, 2025
//=============================================================================

class SlowQuarter expands Mutator;

function bool CheckReplacement(Actor Other, out byte bSuperRelevant)
{
	if ( Other.IsA('SkyZoneInfo') && Other.Physics == PHYS_Rotating ){
        Other.RotationRate.Pitch    = Other.RotationRate.Roll/4;
        Other.RotationRate.Yaw      = Other.RotationRate.Yaw/4;
        Other.RotationRate.Roll    = Other.RotationRate.Roll/4;
    }
		
	return true; 
}

defaultproperties
{
}
