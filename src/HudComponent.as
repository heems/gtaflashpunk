package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;

	public class HudComponent extends Entity
	{	
		private var xRel:Number;
		private var yRel:Number;
		
		public function HudComponent(xRela:Number=0, yRela:Number=0, widtha:Number=0, heighta:Number=0):void
		{
			xRel = xRela;
			yRel = yRela;
			
			x = FP.camera.x + xRel;
			y = FP.camera.y + yRel;
			
			width = widtha;
			height = heighta;
			
			type = "hud";
		}
		
		override public function update():void {
			x = FP.camera.x + xRel;
			y = FP.camera.y + yRel;
		}
		
	}

}