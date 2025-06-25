package;

import cartManagement.CartChecker;

class PlayState extends FlxState
{
	override public function create():Void
	{
		#if sys
		if (CartChecker.VALID_CARTS_SERIALS.contains('LOT02-TARG'))
			trace('LOT02-TARG');
		#end

		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
