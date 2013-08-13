package
{
	import net.flashpunk.Entity;	
	import net.flashpunk.FP;
     
    public class Item extends Entity
    {
		public var name:String;
		public var dmg:Number;
		         
        public function Item(n:String, d:Number):void
         {
			
			x = 400;
			y = 500;
			name = n;
			dmg = d;	
			x = Math.random() * FP.width;
			y = Math.random() * FP.height;
			
			type = "item";
        }

		override public function update():void
		{
			
		}
    }
 
}