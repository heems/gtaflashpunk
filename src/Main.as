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
        public function Main():void
        {
			super(800, 600, 60, false);
			items = new Vector.<Item>();
			xmlLoader = new URLLoader();
			_gameWorld = new GameWorld();			
        }

		override public function init():void
		{
			FP.world = _gameWorld;
			FP.console.enable();
			var url:URLRequest = new URLRequest("../src/items.xml");
			xmlLoader.load(url);
			xmlLoader.addEventListener(Event.COMPLETE, onXmlLoad);
		}
		
		public function onXmlLoad(e:Event):void {
			var xmlData:XML = new XML();
			xmlData = new XML(e.target.data);
			var rangedItems:XMLList = xmlData.ranged.item;

			for each (var item:XML in rangedItems) {
				items.push(new RangedItem(item.speed, item.name, item.damage, '/img/gun.png'));
			}
			_gameWorld.updateItems();
		}
    }
 
}