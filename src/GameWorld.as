package 
{
    import net.flashpunk.World;
	import net.flashpunk.FP;
     
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
        }
		
		public function moveCamera():void {
			FP.camera.x = player.x - FP.width/2;
			FP.camera.y = player.y - FP.height/2;
		}
		
		override public function update():void {
			moveCamera();
			super.update();
		}
         
    }
 
}