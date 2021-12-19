package helper;

class Web {
	/**
		Returns the player's IP for web APIs. (Can't bypass VPN)
	**/
	static public function getIP() {
		var ip = new haxe.Http("https://api.myip.com");
		ip.onData = function ret(data:String) {
			return haxe.Json.parse(data).ip;
		}
		ip.onError = function err(err:String) {
			trace(err);
			return "Unknown";
		}
		ip.request();
	}
}
