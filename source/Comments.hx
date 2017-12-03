package;
import flixel.FlxG;
import haxe.io.StringInput;

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
		"Alex",
		"Alexander",
		"Anthony",
		"Aaron",
		"Aron",
		"Amelia",
		"Arnold",
		"Alahnna",
		"Alanna",
		"Alana",
		"Amy", 
		"Almir",
		"Andy",
		"Andrew",
		"Adam",
		"Anders",
		"Blake",
		"Brandon",
		"Brendon",
		"Brandy",
		"Brenda",
		"Billy",
		"Bradley",
		"Brooke",
		"Brooklyn",
		"Brian",
		"Bryan",
		"Burnadette",
		"Burt",
		"Burnie",
		"Bob",
		"Cameron",
		"Carson",
		"Carly",
		"Cari",
		"Carl",
		"Carlton",
		"Clayton",
		"Curtis",
		"Carli",
		"Dave",
		"David",
		"Davey",
		"Donna",
		"Duncan",
		"Dustin",
		"Dusty",
		"Drake",
		"Don",
		"Donny",
		"Edmund",
		"Erin",
		"Ed",
		"Edd",
		"Eddy",
		"Eric",
		"Erik",
		"Erick",
		"Edward",
		"Ethan",
		"Ellie",
		"Elaine",
		"Edith",
		"Elsa",
		"Eva",
		"Eve",
		"Fred",
		"Filipe",
		"Faith",
		"Gunther",
		"Garry",
		"Grant"
	];
	
	private static var surnames:Array<String> =
	[
		"Arnott",
		"Arnold",
		"Arb",
		"Allwood",
		"Bosky",
		"Boyce",
		"Bob",
		"Bell",
		"Baggins",
		"Breanne",
		"Brenton",
		"Briscone",
		"Brent",
		"Bren",
		"Coupe",
		"Chamberlain",
		"Chambers",
		"Carlson",
		"Crosby",
		"Cosby"
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
		var lastName:String = FlxG.random.getObject(surnames);
		
		var sentence:String = firstName + " " + lastName + ": \n";
		
		if (sentType == 0)
		{
			sentence += "This is " + adjective;
			if (FlxG.random.bool(20))
			{
				sentence += "!!!";
			}
		}
		else if (sentType == 1)
		{
			sentence += "Hey I really " + FlxG.random.getObject(verbs) + " your work!!";
			//if (FlxG.random.bool(20))
			//{
				//sentence 
			//}
		}
		else if (sentType == 2)
		{
			if (FlxG.random.bool(50))
			{
				var adj = FlxG.random.getObject(adjectives);
				sentence += adj + " " + adj + " "  + adj;
			}
			else
			{
				sentence += FlxG.random.getObject(adjectives) + ", " + FlxG.random.getObject(adjectives) + ", and " + FlxG.random.getObject(adjectives) + " ";
				
				if (FlxG.random.bool(50))
				{
					var sameTime:Array<String> = ["all at the same time", "all at once", "simutaneously", "and it makes it soo good", "and it makes it so bad", "and it works against itself", "too much for me to handle"];
					
					sentence += FlxG.random.getObject(sameTime);
					
				}
				
			}
			
			if (FlxG.random.bool(33))
			{
				sentence += "!!!";
			}
			else if (FlxG.random.bool(33))
			{
				sentence += "...";
			}
			else if (FlxG.random.bool(33))
			{
				sentence += "... lol";
			}
			else if (FlxG.random.bool(33))
			{
				sentence += "... lol jk";
			}
			
		}
		else if (sentType == 3)
		{
			var rating:Int = FlxG.random.int(0, 5);
			sentence += rating + "/5";
			if (FlxG.random.bool(50))
			{
				if (rating >= 4)
				{
					sentence += "!!! I like it!";
				}
				else if (rating == 3)
				{
					if (FlxG.random.bool(50))
					{
						sentence += " meh...";
					}
					else
					{
						sentence += " it's just sorta ok...";
					}
					
				}
				else
				{
					if (FlxG.random.bool(50))
					{
						sentence += " I just do not like it";
					}
					else
					{
						sentence += " just absolutely the worst";
					}
					
				}
			}
			
		}
		else if (sentType == 4)
		{
			var sibling:Array<String> = ["younger brother", "younger sister", "older brother", "older sister", "sister", "brother", "cousin", "sibling", "mom", "son", "daugher", "dad"];
			var guess:Array<String> = ["guess", "suppose", "think"];
			
			sentence += "my " + FlxG.random.getObject(sibling) + " really " + FlxG.random.getObject(verbs) + "s this...";
			if (FlxG.random.bool(25))
			{
				sentence += " I " + FlxG.random.getObject(guess) + " they have some taste...";
			}
			else if (FlxG.random.bool(25))
			{
				sentence += "so I " + FlxG.random.getObject(guess) + " that means I " + FlxG.random.getObject(verbs) + " it!!!";
			}
			
			if (FlxG.random.bool(25))
			{
				sentence += " LMAO";
			}
			else if (FlxG.random.bool(10))
			{
				sentence += " WTF";
			}
			if (FlxG.random.bool(25))
			{
				sentence += " LOL";
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