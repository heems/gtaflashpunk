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
			for each (var i:Item in Main.items) {
				FP.log("adding item to world");
				add(i);
				FP.log(i.x + " " + i.y);
			}
        }
		
		public function moveCamera():void {
			FP.camera.x = player.x - FP.width/2;
			FP.camera.y = player.y - FP.height/2;
		}
		
		public function updateItems():void {
			for each (var i:Item in Main.items) {
				FP.log("adding item to world");
				add(i);
				FP.log(i.x + " " + i.y);
			}
		}
		
		override public function update():void {
			moveCamera();
			super.update();
		}
    }
 
}