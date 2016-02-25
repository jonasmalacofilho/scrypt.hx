import Scrypt.*;
import utest.*;
import utest.ui.*;

class Test {
	function bytes(s) return haxe.io.Bytes.ofString(s);

	public function test_000_basic()
	{
		Assert.equals(
			"77d6576238657b203b19ca42c18a0497f16b4844e3074ae8dfdffa3fede21442fcd0069ded0948f8326a753a0fc81f17e8d3e0fb2e0d3628cf35e20c38d18906",
			scrypt(bytes(""), bytes(""), 16, 1, 1, 64).toHex());
		Assert.equals(
			"fdbabe1c9d3472007856e7190d01e9fe7c6ad7cbc8237830e77376634b3731622eaf30d92e22a3886ff109279d9830dac727afb94a83ee6d8360cbdfa2cc0640",
			scrypt(bytes("password"), bytes("NaCl"), 1024, 8, 16, 64).toHex());
		Assert.equals(
			"7023bdcb3afd7348461c06cd81fd38ebfda8fbba904f8e3ea9b543f6545da1f2d5432955613f0fcf62d49705242a9af9e61e85dc0d651e40dfcf017b45575887",
			scrypt(bytes("pleaseletmein"), bytes("SodiumChloride"), 16384, 8, 1, 64).toHex());
		Assert.equals(
			"2101cb9b6a511aaeaddbbe09cf70f881ec568d574a2ffd4dabe5ee9820adaa478e56fd8f4ba5d09ffa1c6d927c40f4c337304049e8a952fbcbf45c6fa77a41a4",
			scrypt(bytes("pleaseletmein"), bytes("SodiumChloride"), 1048576, 8, 1, 64).toHex());
	}

	function new() {}

	static function main()
	{
		var runner = new Runner();

		runner.addCase(new Test());

		Report.create(runner);
		runner.run();
	}
}

