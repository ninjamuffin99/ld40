package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;

/**
 * ...
 * @author ninjaMuffin
 */
class CommentState extends FlxState 
{
	private var comments:FlxText;
	
	private var _camController:FlxObject;
	
	private var commentNum = [];
	
	public static var unreadComments:Int = 0;
	public static var allComments:Array<String> = [];
	
	
	private var maxScroll:Float = 0;
	
	
	override public function create():Void 
	{
		
		comments = new FlxText(10, 10, 0, "Comments", 8);
		add(comments);
		
		_camController = new FlxObject(0, 0, 1, 1);
		_camController.drag.y = 600;
		_camController.maxVelocity.y = 600 + allComments.length;
		add(_camController);
		
		FlxG.camera.follow(_camController);
		
		while (allComments.length >= 1000)
		{
			allComments.pop();
		}
		
		while (unreadComments > 0) 
		{
			allComments.insert(0, "Whatever" + unreadComments);
			unreadComments -= 1;
		}
		
		for (i in 0...allComments.length) 
		{
			var comment:Int = allComments.length;
			commentNum[i] = new ButtonSprite(0, Std.int(((FlxG.height * 0.25) * i + (FlxG.height * 0.2))), null, allComments[i]);
			add(commentNum[i]);
			
			commentNum[i].screenCenter(X);
		}
		
		
		maxScroll = (FlxG.height * 0.25) * allComments.length + (FlxG.height * 0.35);
		if (maxScroll < FlxG.height)
			maxScroll = FlxG.height;
		
		FlxG.camera.setScrollBounds(0, FlxG.width, 0, maxScroll);
		
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
		
		if (_camController.y < FlxG.height / 2)
		{
			_camController.velocity.y = 0;
			_camController.y = FlxG.height / 2;
		}
		if (_camController.y > maxScroll - (FlxG.width / 2))
		{
			_camController.velocity.y = 0;
			_camController.y = maxScroll - (FlxG.width / 2);
		}
		
		_camController.velocity.y -= FlxG.mouse.wheel * 40;
	}
	
	public static function newComment(increase:Int = 1):Void
	{
		unreadComments += increase;
	}
}