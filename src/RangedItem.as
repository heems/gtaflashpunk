package
{
	import net.flashpunk.FP;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
     
    public class RangedItem extends Item
    {
	
		public var speed:Number;
		
		[Embed(source = "img/gun.png")] 
		public const IMAGE:Class;
		
        public function RangedItem(s:Number, n:String, d:Number, path:String):void
        {
			super(n, d);
			graphic = new Image(IMAGE);
			speed = s;
			
		}

		override public function update():void
		{
			
		}
    }
 
}