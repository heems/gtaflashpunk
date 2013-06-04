package
{
	import net.flashpunk.FP;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
     
    public class RangedItem extends Item
    {
	
		public var speed:Number;
		
		
         
        public function RangedItem(s:Number, n:String, d:Number, graphic:Graphic):void
        {
			super(n, d);
			speed = s;
			graphic = new Image(graphic);  //clarence fix pls
        }

		override public function update():void
		{
			
		}
    }
 
}