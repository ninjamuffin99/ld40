package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	
	private var _phone:Phone;
	
	private var _thumb:FlxSprite;
	
	
	override public function create():Void
	{
		_phone = new Phone(150, 10);
		add(_phone);
		
		_thumb = new FlxSprite(_phone.x + 30, _phone.y + 60);
		_thumb.makeGraphic(40, 64, FlxColor.RED);
		//add(_thumb);
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (FlxG.mouse.overlaps(_phone))
		{
			_thumb.setPosition(FlxG.mouse.screenX - 30, FlxG.mouse.screenY - 20);
		}
		
		//FlxG.mouse.visible = !FlxG.mouse.overlaps(_phone);
		
	}
}