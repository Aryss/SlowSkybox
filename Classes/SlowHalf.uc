//=============================================================================
// SlowHalf.
// Slows down the skybox rotation speed by half
// by Michael "_Lynx" Sokolkov, 2025
//=============================================================================

class SlowHalf expands Mutator;

function bool CheckReplacement(Actor Other, out byte bSuperRelevant)
{
	if ( Other.IsA('SkyZoneInfo') && Other.Physics == PHYS_Rotating ){
        Other.RotationRate.Pitch    = Other.RotationRate.Roll/2;
        Other.RotationRate.Yaw      = Other.RotationRate.Yaw/2;
        Other.RotationRate.Roll    = Other.RotationRate.Roll/2;
    }
		
	return true; 
}

defaultproperties
{
}
