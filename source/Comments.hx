package;
import flixel.FlxG;

/**
 * ...
 * @author ninjaMuffin
 */
class Comments 
{
	public static var comments:Array<String> = 
	[
		"hey this is alright",
		"woah cool beans",
		"epic epic epci!!",
		"Yo you have some potential",
		"meh",
		"5/5!!!! SO GOOD",
		"wow thsi is similar to my stuff please check my content out!"
	];
	
	private static var names:Array<String> = 
	[
		"Anthony",
		"Amelia",
		"Arnold",
		"Amy"
	];
	
	private static var adjectives:Array<String> =
	[
		"nice",
		"cool",
		"alright",
		"meh",
		"stupid",
		"dumb",
		"silly",
		"retarded",
		"basic"
	];
	
	private static var verbs:Array<String> = 
	[
		"love",
		"enjoy",
		"appreciate",
		"think about",
		"don't like",
		"dislike",
		"do not like",
		"hate",
		"dispise"
	];
	
	public static function commentGen(sentType:Int = 0):String
	{
		var adjective:String = FlxG.random.getObject(adjectives);
		var firstName:String = FlxG.random.getObject(names);
		
		var sentence:String = "";
		
		if (sentType == 0)
		{
			sentence = firstName + ": \nThis is " + adjective;
			if (FlxG.random.bool(20))
			{
				sentence += "!!!";
			}
		}
		else if (sentType == 1)
		{
			sentence = firstName + ": \nHey I really " + FlxG.random.getObject(verbs) + " your work!!";
			//if (FlxG.random.bool(20))
			//{
				//sentence 
			//}
		}
		else if (sentType == 2)
		{
			var adj = FlxG.random.getObject(adjectives);
			sentence = firstName + ":\n" + adj + " " + adj + " "  + adj;
			if (FlxG.random.bool(33))
			{
				sentence += "!!!";
			}
			else if (FlxG.random.bool(33))
			{
				sentence += "...";
			}
		}
		
		if (FlxG.random.bool(1))
		{
			sentence = "SPAMMER" + FlxG.random.int(0, 10000) + "\n FREE GIFTCARD GIVEAWAY!!!\nspam4u.rl/" + FlxG.random.int(1, 400);
			if (FlxG.random.bool(33))
			{
				sentence += "fjs";
			}
			else if (FlxG.random.bool(33))
			{
				sentence += "jfw";
			}
			else
			{
				sentence += "3fds";
			}
		}
		
		
		return sentence;
		
	}
}