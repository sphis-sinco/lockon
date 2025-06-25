package cartManagement;

#if sys
class CartChecker
{
	public static function readCartFolder()
	{
		if (FileManager.exists('carts/'))
		{
			trace(FileManager.readDirectory('carts/'));
		}
		else
		{
			trace('Cart directory is missing');
		}
	}
}
#end
