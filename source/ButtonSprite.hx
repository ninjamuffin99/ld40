package;

import flixel.group.FlxSpriteGroup;
import flixel.text.FlxText;

/**
 * ...
 * @author ninjaMuffin
 */
class ButtonSprite extends FlxSpriteGroup 
{
	
	private var _button:Button;
	
	private var _text:FlxText;
	

	public function new(X:Int = 0, Y:Int = 0, ?onClick:Void->Void, ?text:String = "") 
	{
		
		super();
		
		this.x = X;
		this.y = Y;
		
		_button = new Button(0, 0, null, onClick);
		add(_button);
		
		_text = new FlxText(0, 0, 0, text);
		add(_text);
		
		
	}
	
}