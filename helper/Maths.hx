package helper;

class Maths {
	/**
		A function that mods your number by a value e.g. 5 mod 3 = 2 as it takes away an amount.
		@param x The value you want to mod. Must be an int or a float.
		@param modNum The number which you want to mod x by. Must be an int or a float.
	**/
	public static function mod(x:Dynamic, modNum:Dynamic) {
		var floatX = false;
		var ret:Dynamic = 0;
		if (Std.isOfType(x, Float)) {
			floatX = true;
		} else if (Std.isOfType(x, Int)) {
			floatX = false;
		} else {
			throw "Not a vaild type for x!";
		}
		if (Std.isOfType(modNum, Float)) {} else if (Std.isOfType(modNum, Int)) {} else {
			throw "Not a vaild type for modNum!";
		}
		ret = x - (modNum * Math.floor(x / modNum));
		if (floatX) {
			ret += x - Math.floor(x);
		}
		return ret;
	}

	/**
		Multiples of a number with a length and a starter. Can include 0 if allowed.
		@param num The number to get the multiples from. Must be an int or a float.
		@param length The length of the returned array with multiples. Must be an int. 
		@param includesZero Should it include zero at the start? False by default.
	**/
	public static function multiples(num:Dynamic, length:Int, includesZero:Bool = false) {
		var ret:Array<Dynamic> = [];
		if (Std.isOfType(num, Float)) {} else if (Std.isOfType(num, Int)) {} else {
			throw "Not a vaild type for num!";
		}
		for (i in 0...length) {
			ret.push(Math.round(num * i));
		}
		if (!includesZero) {
			ret.shift();
		}
		return ret;
	}

	/**
		Check to see if a number is prime.
		@param num The number to test to see if it is a prime number. Must be an int.
	**/
	public static function isPrime(num:Int):Bool {
		var ta:Array<Bool> = [];
		var p = true;
		var array = [2, 3, 5, 7];
		for (i in 0...array.length) {
			if (num == array[i])
				continue;
			ta.push(num / array[i] != Math.floor(num / array[i]));
		}
		for (i in 0...ta.length) {
			if (!ta[i] && p)
				p = false;
		}
		return p;
	}
}
