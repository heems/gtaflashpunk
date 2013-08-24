package
{
	import net.flashpunk.FP;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
     
    public class RangedItem extends Item
    {
	
		public var speed:Number;
		
        public function RangedItem(s:Number, n:String, d:Number, path:String):void
        {
			super(n, d);
			speed = s;
			graphic = new Image(Assets.PISTOL);
		}
         


		override public function update():void
		{
			
		}
    }
 
}