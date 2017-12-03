package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.ui.FlxSpriteButton;

/**
 * ...
 * @author ninjaMuffin
 */
class Button extends FlxSpriteButton 
{

	public function new(X:Float=0, Y:Float=0, ?Label:FlxSprite, ?OnClick:Void->Void) 
	{
		super(X, Y, Label, OnClick);
		
		makeGraphic(Std.int(FlxG.width * 0.7), Std.int(FlxG.height * 0.20));
		
	}
	
}