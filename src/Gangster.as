package {
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class Gangster extends Entity {
		[Embed(source = "img/blacktemp.png")] private const IMAGE:Class;
		private const HEIGHT:Number = 16;
		private const WIDTH:Number = 16;
		public function Gangster() {
			graphic = new Image(IMAGE);
			x = 250;
			y = 250;
		}
		
		override public function update():void {
			
			checkBounds();
			
			
		}
		
		public function checkBounds():void {
			if (x > FP.width - WIDTH)
				x = FP.width - WIDTH;
			else if ( x < 0)
				x = 0;
			if ( y > FP.height - HEIGHT)
				y = FP.height - HEIGHT;
			else if (y < 0)
				y = 0;
		}
	}
}