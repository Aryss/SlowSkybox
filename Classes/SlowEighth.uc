//=============================================================================
// SlowEighth.
// Slows down the skybox rotation speed to 12.5%
// by Michael "_Lynx" Sokolkov, 2025
//=============================================================================

class SlowEighth expands Mutator;

function bool CheckReplacement(Actor Other, out byte bSuperRelevant)
{
	if ( Other.IsA('SkyZoneInfo') && Other.Physics == PHYS_Rotating ){
        Other.RotationRate.Pitch    = Other.RotationRate.Roll/8;
        Other.RotationRate.Yaw      = Other.RotationRate.Yaw/8;
        Other.RotationRate.Roll    = Other.RotationRate.Roll/8;
    }
		
	return true; 
}

defaultproperties
{
}
