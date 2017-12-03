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
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		
		
		//NOTE: I had to modify the function isOnScreen(), and requirement of the sprite being visible to actually return true. This is as of HaxeFlixel 4.3.0, so maybe in a future Flixel update it'll be official because of ME teehee ;)
		//If in Flash Develop, select isOnScreen, then press F4 to head to the code or whatever. Then delete the bit that says like "sprite.visible" or something like that
		//or just modify the code in anyother way you feel like heheh
		//But anyways this is a super handy optimization that shuts off the draw() if it's not onscreen, HUGE FPS saver!
		this.set_visible(this.isOnScreen());
	}
	
	public function updateText(newText:String = ""):Void
	{
		_text.text = newText;
	}
}