#include <neko.h>

value __crypto_scrypt(value passwd, value salt, value N, value r, value p, value retLen)
{
	value ret = alloc_empty_string(val_int(retLen));
	return ret;
}

DEFINE_PRIM(__crypto_scrypt, 6);

