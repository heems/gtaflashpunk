package
{
	import net.flashpunk.FP;
     
    public class RangedItem extends Item
    {
	
		public var speed:Number;
		private const IMAGE:Class;
		
         
        public function RangedItem(s:Number, n:String, d:Number, path:String):void
        {
			super(n, d);
			speed = s;
			//[Embed(source = path)] IMAGE;  clarence fix pls
        }

		override public function update():void
		{
			
		}
    }
 
}