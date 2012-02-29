package com.sz.sydesktop.business
{
	import mx.rpc.IResponder;
	
	public class TrackDelegate extends BaseDelegate
	{
		public function TrackDelegate(responder:IResponder){
			super(responder,"trackService");
		}
		
		public function getTrack():void{
			var params:Object = new Object();
			sendRequest(params);
		}
	}
}