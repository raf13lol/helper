package helper;

class Web {
	/**
		Gets the player's IP. (Only use for web APIs!) Doesn't work if a VPN is on.
	**/
	public static function getIP() {
		var ip = new haxe.Http("http://ip-api.com/json");
		ip.onData = function(data) {
			var ip = haxe.Json.parse(data);
			return ip.query;
		}
		ip.onError = function(err) {
			trace(err);
			return "Unknown";
		}
		ip.request();
	}
}
