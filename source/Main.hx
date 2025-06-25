package;

import cartManagement.CartChecker;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new():Void
	{
		super();
		#if sys
		CartChecker.readCartFolder();
		#end

		addChild(new FlxGame(0, 0, PlayState));
	}
}
