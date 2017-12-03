package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.input.FlxSwipe;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	
	private var _btnCreate:ButtonSprite;
	private var _btnPromote:ButtonSprite;
	private var _btnComments:ButtonSprite;
	
	private var _followers:FlxText;
	
	
	override public function create():Void
	{
		
		_followers = new FlxText(2, 2, 0, "Online Followers: " + PlayerStats.followers);
		add(_followers);
		
		createButtons();
		
		super.create();
	}
	
	private function createButtons():Void
	{
		var offsetY:Int = 25;
		_btnCreate = new ButtonSprite(0, Std.int(FlxG.height * 0.25) - offsetY, function()
		{
			if (FlxG.random.bool(20))
			{
				PlayerStats.followers += FlxG.random.int(0, 2); 
				CommentState.newComment(FlxG.random.int(0, 2));
			}
		}, "Create");
		_btnCreate.screenCenter(X);
		add(_btnCreate);
		
		_btnPromote = new ButtonSprite(0, Std.int((FlxG.height * 0.25) * 2) - offsetY, function(){PlayerStats.followers += FlxG.random.int(0, 2); }, "Promote Yourself");
		_btnPromote.screenCenter(X);
		add(_btnPromote);
		
		_btnComments = new ButtonSprite(0, Std.int((FlxG.height * 0.25) * 3) - offsetY, function(){FlxG.switchState(new CommentState()); }, "Check Comments");
		_btnComments.screenCenter(X);
		add(_btnComments);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		FlxG.watch.addQuick("UnreadComments", CommentState.unreadComments);
		
		_followers.text = "Online Followers: " + PlayerStats.followers;
	}
}