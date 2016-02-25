import haxe.io.Bytes;

class Scrypt {
	public static function scrypt(passwd:Bytes, salt:Bytes, N:Int, r:Int, p:Int, retLen:Int):Bytes
		return __crypto_scrypt(passwd, salt, N, r, p, retLen);

	static var __crypto_scrypt = neko.Lib.load("scrypt", "__crypto_scrypt", 6);
}

