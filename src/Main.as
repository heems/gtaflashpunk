package
{
import flash.display.Graphics;
import flash.utils.Dictionary;
    import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import flash.events.Event;
	import flash.net.*;
	
     
    public class Main extends Engine
    {
		private var _gameWorld:GameWorld;
		public static var items:Vector.<Item>;
		private var xmlLoader:URLLoader;
		private var xml:XML;
		private var images:Dictionary;
		[Embed(source = 'img/gun.png')] public const gun:Class;
        public function Main():void
        {
			super(800, 600, 60, false);
			_gameWorld = new GameWorld();
			items = new Vector.<Item>();
			xmlLoader = new URLLoader();
			images = new Dictionary();
        }

		override public function init():void
		{
			FP.world = _gameWorld;
			FP.console.enable();
			var url:URLRequest = new URLRequest("../src/items.xml");
			xmlLoader.load(url);
			xmlLoader.addEventListener(Event.COMPLETE, onXmlLoad);
			images['gun'] = gun;
		}
		
		public function onXmlLoad(e:Event):void {
			xml = new XML(xmlLoader.data);
			//FP.log(xml.ranged.item.@id);
			//FP.log(xml.ranged.item.name);
			var rangedItems:XMLList = xml.ranged.item;
			//FP.log(rangedItems);

			for each (var item:XML in rangedItems) {
				//FP.log(item.image);
				FP.log(images[item.name]);
				items.push(new RangedItem(item.fire_speed, item.name, item.damage, images[item.name]));
			}
		}
    }
 
}