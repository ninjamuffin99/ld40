package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;

/**
 * ...
 * @author ninjaMuffin
 */
class CommentState extends FlxState 
{
	private var comments:FlxText;
	
	public static var unreadComments:Int = 0;
	
	override public function create():Void 
	{
		
		comments = new FlxText(10, 10, 0, "Insert Comment here", 8);
		add(comments);
		
		unreadComments = 0;
		
		super.create();
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		
		if (FlxG.keys.justPressed.SPACE)
		{
			FlxG.switchState(new PlayState());
		}
		FlxG.camera.y += FlxG.mouse.wheel * 1.75;
	}
	
	public static function newComment(increase:Int = 1):Void
	{
		unreadComments += increase;
	}
}