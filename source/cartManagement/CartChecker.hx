package cartManagement;

#if sys
class CartChecker
{
	public static var cartsFolder:String = './carts';

	public static var VALID_CARTS:Array<String> = [''];
	public static var VALID_CARTS_SERIALS:Array<String> = [''];

	public static function readCartFolder()
	{
		VALID_CARTS = [''];
		VALID_CARTS_SERIALS = [''];

		trace(FileManager.readDirectory('./'));
		if (FileManager.exists(cartsFolder))
		{
			var carts = FileManager.readDirectory(cartsFolder);
			trace(carts);

			for (cart in carts)
			{
				var metaLocation = cartsFolder + '/' + cart + '/meta.json';
				trace(metaLocation);

				if (FileManager.exists(metaLocation))
				{
					var metaJson:Cart = FileManager.getJSON(metaLocation);
					trace(metaJson);

					if (!VALID_CARTS_SERIALS.contains(metaJson.serial))
					{
						trace('Valid cart');
						VALID_CARTS.push(cart);
						VALID_CARTS_SERIALS.push(metaJson.serial);
					}
					else
					{
						trace('Duplicated serial');
					}
				}
			}
		}
		else
		{
			trace(cartsFolder + ' directory is missing');
		}
	}
}
#end
