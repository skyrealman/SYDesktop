package com.sz.sydesktop.business
{
	import com.adobe.cairngorm.business.Responder;
	import com.adobe.cairngorm.business.ServiceLocator;
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.events.ResultEvent;

	public class AppsDelegate extends BaseDelegate
	{
		public function AppsDelegate( responder:IResponder ) {
			super(responder, "appsService")
		}
		
		public function getApps():void {
			var params:Object = new Object();
			sendRequest(params);
		}
		
	}
}