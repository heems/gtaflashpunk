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
        }

		override public function update():void
		{
			
		}
    }
 
}