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
		"Cassidy",
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
		"Donald",
		"Dalton",
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
		"Grant",
		"Harry",
		"Harold",
		"Henry",
		"Hilda",
		"Iris",
		"Ivan",
		"Ingrid",
		"Jim",
		"Janice",
		"James",
		"Jamie",
		"Jonas",
		"Jimmy",
		"Johnny",
		"John",
		"Johnathan",
		"Jens",
		"Jenson",
		"Jenny",
		"Jen",
		"Joe",
		"Joseph",
		"Karl",
		"Krystin",
		"Kayla",
		"Kaye-Lyn",
		"Kirsten",
		"Kris",
		"Kate",
		"Katie",
		"Katy",
		"Katherine",
		"Larissa",
		"Lenny",
		"Lenard",
		"Lou",
		"Louis",
		"Lyn",
		"Lynn",
		"Louise",
		"Luis",
		"Levi",
		"Mack",
		"Max",
		"Mary",
		"Martin",
		"Mare",
		"Mike",
		"Micheal",
		"Michael",
		"Michelle",
		"Mark",
		"Marc",
		"Marcus",
		"Markus",
		"Mason",
		"Mikey",
		"Matt",
		"Matthew",
		"Melissa",
		"Nathan",
		"Nate",
		"Natalie",
		"Nick",
		"Nicky",
		"Nigel",
		"Nicholas",
		"Otis",
		"Phil",
		"Phillipe",
		"Poppy",
		"Piper",
		"Peter",
		"Pierre",
		"Pete",
		"Petra",
		"Quentin",
		"Quincy",
		"Ryan",
		"Rob",
		"Robin",
		"Robbie",
		"Ron",
		"Rory",
		"Sebastion",
		"Sebastian",
		"Seb",
		"Sandy",
		"Sandra",
		"Sarah",
		"Saria",
		"Sam",
		"Samantha",
		"Samuel",
		"Tucker",
		"Tristan",
		"Tina",
		"Tom",
		"Tommy",
		"Thomas",
		"Temmie",
		"Tem",
		"Toby",
		"Ullie",
		"Wendy",
		"Will",
		"William",
		"Wade",
		"Xavier",
		"Zach",
		"Zachary",
		"Zeke"
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
		"Blow",
		"Bell",
		"Baggins",
		"Breanne",
		"Brenton",
		"Briscone",
		"Brent",
		"Bren",
		"Burns",
		"Coupe",
		"Cutler",
		"Cruikshank",
		"Chamberlain",
		"Chambers",
		"Carlson",
		"Crosby",
		"Cosby",
		"Dillion",
		"Dill",
		"Fish",
		"Fulp",
		"Guthrie",
		"Grant",
		"Gould",
		"Goldeen",
		"Henry",
		"Heales",
		"Hanson",
		"Holm",
		"Johnson",
		"Jonson",
		"James",
		"Jameson",
		"Jensen",
		"Keller",
		"Kutler",
		"Kardashian",
		"Liam",
		"McMillen",
		"McGladdery",
		"McDonald",
		"McMillan",
		"Monroe",
		"Monkman"
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
		"basic af",
		"neato",
		"sweet",
		"cringy",
		"racist",
		"gay"
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
		"despise",
		"talk about",
		"tweet about"
		"retweet"
	];
	
	private static var hashtag:Array<String> = 
	[
		"#EPIC", 
		"#LOL", 
		"#TRIGGERED", 
		"#OFFENSIVE", 
		"#BUTTHURT", 
		"#LMAO", 
		"#MAGA", 
		"#FAIL",
		"#SAD", 
		"#WIN", 
		"#FUNNY",
		"#XD", 
		"#WTF",
		"#WIN",
		"#EPICFAIL",
		"#DEEZNUTS",
		"#ROASTED",
		"#PRANKED",
		"#GOTTEM",
		"#NOTAWEEB",
		"#HATERSGONNAHATE",
		"#FURRYPRIDE",
		"#GAYPRIDE",
		"#SWAG",
		"#YOLO",
		"#420"
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
				var honest:Array<String> = ["tbh", "honestly", "to be frank", "quite frankly", "quite simply"];
				sentence += " " + FlxG.random.getObject(honest);
			}
			if (FlxG.random.bool(20))
			{
				sentence += "!!!";
			}
		}
		else if (sentType == 1)
		{
			if (FlxG.random.bool(50))
			{
				var intro:Array<String> = ["yo ", "yo,", "hey ", "um ", "uh ", "um, uh "];
				sentence += FlxG.random.getObject(intro);
			}
			sentence += "I ";
			if (FlxG.random.bool(50))
			{
				var adj:Array<String> = ["super ", "really ", "mega ", "uber ", "very much "];
				sentence += FlxG.random.getObject(adj);
			}
			sentence +=  FlxG.random.getObject(verbs) + " your work!!";
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
					var goodStuff:Array<String> = ["!!! I like it!", "!!! I LOVE THIS!", "! GOOD SHIT YO"];
					sentence += FlxG.random.getObject(goodStuff);
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
					if (FlxG.random.bool(25))
					{
						sentence += " I just do not like it";
					}
					else if (FlxG.random.bool(50))
					{
						sentence += " just absolutely the worst";
					}
					else
					{
						sentence += " try harder next time";
					}
					
				}
			}
			
		}
		else if (sentType == 4)
		{
			var sibling:Array<String> = ["younger brother", "younger sister", "older brother", "older sister", "sister", "brother", "cousin", "mom", "son", "daugher", "dad"];
			var guess:Array<String> = ["guess", "suppose", "think", "assume"];
			
			if (FlxG.random.bool(50))
			{
				sentence += "my " + FlxG.random.getObject(sibling) + " ";
				if (FlxG.random.bool(50))
				{
					sentence += "really ";
				}
				sentence += FlxG.random.getObject(verbs) + "s this...";
			}
			else
			{
				sentence += "why does my " + FlxG.random.getObject(sibling) + " ";
				if (FlxG.random.bool(50))
				{
					sentence += "really ";
				}
				sentence += FlxG.random.getObject(verbs) + " this??";
			}
			
			
			if (FlxG.random.bool(25))
			{
				sentence += " I " + FlxG.random.getObject(guess) + " they have some taste...";
			}
			else if (FlxG.random.bool(25))
			{
				sentence += " I " + FlxG.random.getObject(guess) + " that means I " + FlxG.random.getObject(verbs) + " it!!!";
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
		else if (sentType == 5)
		{
			var nameCalled:Array<String> = ["retard", "retardo", "autist", "idiot", "weeb", "incel", "virgin", "wannabe", "nazi", "feminazi", "feminist", "prevert", "perv", "scumbag", "douche", "douchbag", "dickhead", "hero", "god", "legend", "bastard", "beast", "hack", "phoney", "garbage human being", "awful person"];
			var intro:Array<String> = ["you are such a ", "you are a ", "ur a ", "u r a ", "You're a"];
			var mid:Array<String> = ["", "fucking ", "fricken ", "goddamn ", "flipping ", "gosh dang ", "mega ", "unfunny"];
			
			sentence += FlxG.random.getObject(intro) + FlxG.random.getObject(mid) + FlxG.random.getObject(nameCalled);
		}
		else if (sentType == 6)
		{
			
			sentence += FlxG.random.getObject(hashtag);
			while (FlxG.random.bool(50))
			{
				sentence += " " + FlxG.random.getObject(hashtag);
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
		else if (FlxG.random.bool(7))
		{
			sentence += FlxG.random.getObject(hashtag);
			while (FlxG.random.bool(60))
			{
				sentence += " " + FlxG.random.getObject(hashtag);
			}
		}
		
		return sentence;
		
	}
}