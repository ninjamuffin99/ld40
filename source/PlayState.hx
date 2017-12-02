package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.input.FlxSwipe;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	
	private var _btnCreate:ButtonSprite;
	
	override public function create():Void
	{
		_btnCreate = new ButtonSprite(0, 0, function(){FlxG.log.add("Pressed"); }, "Create");
		add(_btnCreate);
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);		
	}
}