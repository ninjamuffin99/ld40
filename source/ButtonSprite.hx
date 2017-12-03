package;

import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;
import flixel.text.FlxText;
import flixel.util.FlxColor;

/**
 * ...
 * @author ninjaMuffin
 */
class ButtonSprite extends FlxSpriteGroup 
{
	
	private var _button:Button;
	private var _buttonOutline:FlxSprite;
	
	private var _text:FlxText;
	

	public function new(X:Int = 0, Y:Int = 0, ?onClick:Void->Void, ?text:String = "") 
	{
		
		super();
		
		this.x = X;
		this.y = Y;
		/*
		_buttonOutline = new FlxSprite( -2, -2);
		_buttonOutline.makeGraphic(Std.int(_button.width + 4), Std.int(_button.height + 4));
		//add(_buttonOutline);
		*/
		_button = new Button(0, 0, null, onClick);
		add(_button);
		
		_text = new FlxText(0, 0, 0, text);
		_text.color = FlxColor.BLACK;
		add(_text);
		
		
	}
	
}