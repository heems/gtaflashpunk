package {
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class Player extends Entity {
		[Embed(source = "img/playertemp.png")] private const IMAGE:Class;
		private const HEIGHT:Number = 16;
		private const WIDTH:Number = 16;
		public var inv:Vector.<Item>
		public function Player() {
			graphic = new Image(IMAGE);
			x = 500;
			y = 500;
			setHitbox(WIDTH, HEIGHT);
		}
		
		override public function update():void {
			if (Input.check(Key.A))
				x -= 50 * FP.elapsed;
			else if (Input.check(Key.D))
				x += 50 * FP.elapsed;
			
			if (Input.check(Key.W))
				y -= 50 * FP.elapsed;
			else if (Input.check(Key.S))
				y += 50 * FP.elapsed;
			
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