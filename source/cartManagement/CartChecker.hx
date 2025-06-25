package cartManagement;

#if sys
class CartChecker
{
	public static function readCartFolder()
	{
                trace(FileManager.readDirectory('carts/'));
	}
}
#end
