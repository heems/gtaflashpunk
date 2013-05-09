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
			for each (var i:Item in Main.items)
				add(i);
        }
		
		public function moveCamera():void {
			FP.camera.x = player.x - FP.width/2;
			FP.camera.y = player.y - FP.height/2;
		}
		
		override public function update():void {
			moveCamera();
			if (Input.check(Key.SPACE))
				getItem();
			super.update();
		}
		
		public function getItem():void {
			for each (var i:Item in Main.items){
				if (player.collideWith(i, player.x, player.y)) {
					remove(i);
					player.inv.push(i);					
				}
			}
					
		}
         
    }
 
}