package {
	public class Dialog {
		public var partner:String;
		public var index:int;
		public var lines:Array = new Array();
		
		public function Dialog(p:String, i:int, l:Array) {
			partner = p;
			index = i;
			lines = l;
		}
	}
}