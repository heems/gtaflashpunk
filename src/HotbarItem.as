package
{
	import net.flashpunk.graphics.Image;
	
	public class HotbarItem extends HudComponent
	{
		
		private var barSlot:Number;
		
		public function HotbarItem(item:Item, i:Number=0):void
		{
			barSlot = i;
			super(144 + i * 50, 550, 50, 50)
			
			graphic = new Image(Assets.PISTOL);
		}
		
	}

}