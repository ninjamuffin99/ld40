package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;
import flixel.ui.FlxSpriteButton;
import flixel.util.FlxColor;

/**
 * ...
 * @author ninjaMuffin
 */
class Phone extends FlxSpriteGroup 
{
	private var _phone:FlxSprite;
	
	private var _music:FlxSpriteButton;
	
	
	public function new(X:Int = 0, Y:Int = 0) 
	{
		super();
		
		this.x = X;
		this.y = Y;
		
		_phone = new FlxSprite(0, 0);
		_phone.makeGraphic(Std.int(FlxG.width * 0.4), Std.int(FlxG.height * 0.9));
		add(_phone);
		
		_music = new FlxSpriteButton(_phone.width * 0.15, _phone.height * 0.9, null, function(){FlxG.sound.playMusic("assets/music/771322_Cmon-Girl.mp3"); });
		_music.makeGraphic(16, 16, FlxColor.BLUE);
		add(_music);
	}
	
}