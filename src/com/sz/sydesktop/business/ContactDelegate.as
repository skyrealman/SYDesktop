package com.sz.sydesktop.business
{
	import mx.rpc.IResponder;
	
	public class ContactDelegate extends BaseDelegate
	{
		public function ContactDelegate(responder:IResponder)
		{
			super(responder, "contactService");
		}
		public function getContact():void{
			var params:Object = new Object();
			sendRequest(params);
		}
	}
}