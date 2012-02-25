package com.sz.sydesktop.business{
	import com.adobe.cairngorm.business.ServiceLocator;
	import com.adobe.serialization.json.JSONDecoder;
	import com.adobe.serialization.json.JSONEncoder;
	import com.adobe.utils.DictionaryUtil;
	import com.sz.sydesktop.model.ModelLocator;
	
	import flash.utils.Dictionary;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.Responder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	public class PendingsDelegate extends BaseDelegate {
		
		public function PendingsDelegate( responder:IResponder ) {
			super(responder, "pendingsService");
		}
		
		public function getPendings():void {
			var params:Object = new Object();
			var appids:Array = DictionaryUtil.getKeys(ModelLocator.getInstance().applications);
			params.params = new JSONEncoder(appids).getString();
			sendRequest(params);
		}
		
	}
}