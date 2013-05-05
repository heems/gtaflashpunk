package {
	public class Line {
		public var index:int;
		public var versions:Array = new Array();
		
		public function Line(i:int, v:Array) {
			index = i;
			versions = v;
		}
	}
}