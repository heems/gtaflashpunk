package 
{
	
    import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
     
    public class GameWorld extends World 
    {
		private var player:Player;
		private var enemy:Gangster;
		
         
        public function GameWorld() 
        {
            player = new Player();
			add(player);
			enemy = new Gangster();
			add(enemy);
			var hotbar:Hotbar = new Hotbar();
			add(hotbar);
			loadItems();
			drawHotbarItems();
        }
		
		public function loadItems():void {
			for each (var i:Item in Main.items) {
				FP.log("adding item to world");
				trace("adding item to world");
				add(i);
				FP.log(i.x + " " + i.y);
				trace(i.x + " " + i.y);
				player.inv.push(i);
			}
		}
		
		public function moveCamera():void {
			FP.camera.x = player.x - FP.width/2;
			FP.camera.y = player.y - FP.height/2;
		}
		
		override public function update():void {
			moveCamera();
			super.update();
		}
		
		public function drawHotbarItems():void
		{
			var i:int = 0;
			
			for each (var item:Item in player.inv)
			{
				if (i > 9) {
					break;
				}
				
				add(new HotbarItem(item, i));
				
				i++;
			}
		}
    }
 
}