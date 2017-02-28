# 99 Bottles

My solution to the 99 bottles problem from Sandi Metz's and Katrina Owen's book 99 Bottles of OOP.

It supports cases, six-packs, and bottles. It can easily be extended to support other container sizes by adding additional classes.

	Bottles.new.verse(89)
	=> "89 bottles of beer on the wall, 89 bottles of beer.\nTake one down and pass it around, 88 bottles of beer on the wall.\n" 

	Bottles.new([SixPacks, SingleBottles]).verse(89)
	=> "14 six-packs and 5 bottles of beer on the wall, 14 six-packs and 5 bottles of beer.\nTake one down and pass it around, 14 six-packs and 4 bottles of beer on the wall.\n" 

	Bottles.new([Cases, SixPacks, SingleBottles]).verse(89)
	=> "3 cases, 2 six-packs, and 5 bottles of beer on the wall, 3 cases, 2 six-packs, and 5 bottles of beer.\nTake one down and pass it around, 3 cases, 2 six-packs, and 4 bottles of beer on the wall.\n" 
