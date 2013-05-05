package
{
    import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import flash.events.Event;
	import flash.net.*;
	
     
    public class Main extends Engine
    {
		private var _gameWorld:GameWorld;
		private var items:Vector.<Item>;
		private var xmlLoader:URLLoader;
		private var xml:XML;
		
         
        public function Main():void
        {
			super(800, 600, 60, false);
			_gameWorld = new GameWorld();
			items = new Vector.<Item>();
			xmlLoader = new URLLoader();
			FP.log("works");
        }

		override public function init():void
		{
			FP.world = _gameWorld;
			FP.console.enable();
			var url:URLRequest = new URLRequest("../src/items.xml");
			xmlLoader.load(url);
			xmlLoader.addEventListener(Event.COMPLETE, onXmlLoad);
			FP.log("works");	// doesn't work :(
		}
		
		public function onXmlLoad(e:Event):void {
			xml = new XML(xmlLoader.data);
			trace(xml.items.ranged.item.id);
			FP.log(xml.items.ranged.item.id);
		}
    }
 
}