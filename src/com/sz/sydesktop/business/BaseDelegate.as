package com.sz.sydesktop.business
{
	import com.adobe.cairngorm.business.ServiceLocator;
	import com.adobe.serialization.json.JSONDecoder;
	import com.sz.sydesktop.model.ModelLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.Responder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;

	public class BaseDelegate
	{
		protected var responder:IResponder;
		private var service:Object;
		
		public function BaseDelegate( responder:IResponder, serviceName:String ) {
			this.responder = responder;
			this.service = ServiceLocator.getInstance().getHTTPService( serviceName );
		}
		
		public function sendRequest( params:Object ):void {
			params.token = ModelLocator.USER_TOKEN;
			var token:AsyncToken = service.send( params );
			var callResponder:Responder = new Responder( onResult, onFault );
			token.addResponder( callResponder );
		}
		
		protected function onResult( e:ResultEvent ):void {
			trace("RESULT");
			var decoder:JSONDecoder = new JSONDecoder(e.result.toString(), true);
			responder.result( decoder.getValue() );
		}
		
		protected function onFault( e:FaultEvent ):void {
			trace("Fault");
		}
	}
}