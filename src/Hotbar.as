package
{
	import net.flashpunk.graphics.Image;
	
	public class Hotbar extends HudComponent
	{
		
		public function Hotbar():void
		{
			super(144, 550, 100, 100);
			
			graphic = new Image(Assets.HOTBAR);
		}
		
	}

}