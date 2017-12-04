package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.util.FlxColor;

class MenuState extends FlxState
{
	private var _title:FlxText;
	private var _subText:FlxText;
	
	override public function create():Void
	{
		FlxG.mouse.load(AssetPaths.cursor__png, 2);
		FlxG.camera.fade(FlxColor.BLACK, 3, true);
		
		_title = new FlxText(Std.int(FlxG.width * 0.06), Std.int(FlxG.height * 0.30), 0, "IN-\nFAMOUS", 32);
		add(_title);
		
		_subText = new FlxText(_title.x + (32 * 4.5) + 12, _title.y + 52, 0, "An Internet Fame Simulator\nPress Anything To Begin", 8);
		add(_subText);
		
		FlxG.sound.playMusic(AssetPaths.ClairdeLune__mp3);
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		
		if (FlxG.keys.justReleased.ANY || FlxG.mouse.justReleased)
		{
			FlxG.camera.fade(FlxColor.BLACK, 1, false, function(){FlxG.switchState(new PlayState()); });
		}
		
	}
}