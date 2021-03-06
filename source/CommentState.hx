package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxSpriteButton;
import flixel.util.FlxColor;

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
	
	private var backArrow:FlxSpriteButton;
	
	
	override public function create():Void 
	{
		FlxG.camera.fade(FlxColor.BLACK, 0.5, true);
		
		backArrow = new FlxSpriteButton(FlxG.width * 0.04, FlxG.height * 0.9, null, function(){FlxG.switchState(new PlayState()); });
		backArrow.loadGraphic(AssetPaths.arrow__png, true, 16, 16);
		backArrow.scrollFactor.y = 0;
		add(backArrow);
		
		
		comments = new FlxText(10, 10, 0, "Comments - " + unreadComments + " unread comments\nArrow keys or mouse wheel to scroll", 8);
		add(comments);
		
		_camController = new FlxObject(0, 0, 1, 1);
		_camController.drag.y = 600;
		_camController.maxVelocity.y = 800;
		add(_camController);
		
		FlxG.camera.follow(_camController);
		
		
		if (unreadComments > 1800)
		{
			unreadComments = 1800;
		}
		
		while (unreadComments > 0) 
		{
			allComments.insert(0, Comments.commentGen(FlxG.random.int(0, 6)));
			unreadComments -= 1;
		}
		
		//thing to limit the amount of objects that call updates, my benchmarks have been that 6000 comments would drop performance to 20-30 FPS on my PC lol god damn that's kinda impressive
		//LOL 2000 comments still run alright at 50-60 FPS
		//3000 seem to run at 37-45 FPS COOL BEANS BABY, not gonna use this however, I'll still limit shit just incase, ACTUALLY I'll make it so user can decide the "cache limit" or some other fancy term in the settings. 
		
		while (allComments.length >= 1800)
		{
			allComments.pop();
		}
		
		
		//NOTE: Replace this with a cool FlxAsyncLoop thing in the morning real quick and also add a cool loading bar
		
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
			if (FlxG.keys.pressed.CONTROL)
			{
				_camController.y -= FlxG.height * 0.6;
				_camController.velocity.y -= 240;
			}
			else
			{
				_camController.y += FlxG.height * 0.6;
				_camController.velocity.y += 240;
			}
			
		}
		
		
		if (FlxG.keys.justPressed.DOWN)
		{
			_camController.velocity.y += 150;
		}
		if (FlxG.keys.justPressed.UP)
		{
			_camController.velocity.y -= 150;
		}
		
		if (FlxG.keys.pressed.DOWN || FlxG.keys.pressed.UP)
		{
			if (FlxG.keys.pressed.DOWN)
			{
				_camController.velocity.y += 25;
			}
			
			if (FlxG.keys.pressed.UP)
			{
				_camController.velocity.y -= 25;
			}
			
		}
		
		
		if (FlxG.keys.justPressed.BACKSPACE)
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