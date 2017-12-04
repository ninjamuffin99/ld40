package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.effects.FlxTrailArea;
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
	private var _quality:FlxText;
	private var _info:FlxText;
	
	private var _trail:FlxTrailArea;
	
	
	override public function create():Void
	{
		
		FlxG.camera.fade(FlxColor.BLACK, 0.5, true);
		
		_followers = new FlxText(2, 2, 0, "Online Followers: " + PlayerStats.followers);
		add(_followers);
		
		_quality = new FlxText(FlxG.width / 2, 2, 0, "Creations Quality: " + PlayerStats.quality);
		add(_quality);
		
		_info = new FlxText(0, FlxG.height - 36, FlxG.width, "A randomly generated internet comment experience. \nMade for Ludum Dare 40\nby Cameron Taylor @ninja_muffin99");
		_info.screenCenter(X);
		_info.alignment = FlxTextAlign.CENTER;
		add(_info);
		
		_trail = new FlxTrailArea(0, 0, 0, 0, 0.65);
		_trail.add(_followers);
		_trail.add(_quality);
		add(_trail);
		
		createButtons();
		
		super.create();
	}
	
	private function createButtons():Void
	{
		var offsetY:Int = 25;
		_btnCreate = new ButtonSprite(0, Std.int(FlxG.height * 0.3) - offsetY, function()
		{
			PlayerStats.quality += FlxG.random.float(0, 1);
			PlayerStats.quality = FlxMath.roundDecimal(PlayerStats.quality, 2);
			
			if (FlxG.random.bool(25))
			{
				PlayerStats.followers += FlxG.random.int(0, 2 + Std.int(PlayerStats.followers * FlxG.random.float(0, 1)));
				CommentState.newComment(FlxG.random.int(0, 2 + Std.int(PlayerStats.followers * 0.01)));
			}
		}, "Create");
		_btnCreate.screenCenter(X);
		add(_btnCreate);
		
		_btnPromote = new ButtonSprite(0, Std.int((FlxG.height * 0.30) * 1) - offsetY, function(){PlayerStats.followers += FlxG.random.int(0, 2); }, "Promote Yourself");
		_btnPromote.screenCenter(X);
		//add(_btnPromote);
		
		_btnComments = new ButtonSprite(0, Std.int((FlxG.height * 0.30) * 1.9) - offsetY, function(){FlxG.switchState(new CommentState()); }, "Unread Comments: " + CommentState.unreadComments);
		_btnComments.screenCenter(X);
		add(_btnComments);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		FlxG.watch.addQuick("UnreadComments", CommentState.unreadComments);
		
		_followers.text = "Online Followers: " + PlayerStats.followers;
		_quality.text = "Creations Quality: " + PlayerStats.quality;
		
		_btnComments.updateText("Unread Comments: " + CommentState.unreadComments);
		
	}
}