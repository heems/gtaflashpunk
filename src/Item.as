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
			name = n;
			dmg = d;	
			x = Math.random() * FP.width;
			y = Math.random() * FP.height;
			
			//for testing
			x = 550;
			y = 550;
			
			type = "item";
        }

		override public function update():void
		{
			
		}
    }
 
}