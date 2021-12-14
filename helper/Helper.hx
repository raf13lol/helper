package helper;

class Helper {
	/**
		A function that mods your number by a value e.g. 5 mod 3 = 2 as it takes away an amount.
		@param x The value you want to mod. Must be a int or a float.
		@param modNum The number which you want to mod x by. Must be a int or a float.
	**/
	public static function mod(x:Dynamic, modNum:Dynamic) {
		var floatX = false;
		var ret:Dynamic;
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
}
