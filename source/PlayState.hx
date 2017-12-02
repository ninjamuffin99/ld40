package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class PlayState extends FlxState
{
	
	private var _messages:FlxSprite;
	
	override public function create():Void
	{
		_messages = new FlxSprite(0, 0);
		_messages.makeGraphic(64, 64);
		add(_messages);
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}