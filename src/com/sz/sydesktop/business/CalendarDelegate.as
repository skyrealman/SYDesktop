package com.sz.sydesktop.business
{
	import mx.rpc.IResponder;
	
	public class CalendarDelegate extends BaseDelegate
	{
		
		public function CalendarDelegate(responder:IResponder)
		{
			super(responder, "calendarService");
		}
		
		public function getCalendar(start:String, end:String):void{
			var params:Object = new Object();
			params.start = start;
			params.end =end;
			sendRequest(params);
		}
	}
}