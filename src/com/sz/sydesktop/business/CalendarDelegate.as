package com.sz.sydesktop.business
{
	import mx.rpc.IResponder;
	
	public class CalendarDelegate extends BaseDelegate
	{
		
		public function CalendarDelegate(responder:IResponder)
		{
			super(responder, "calendarService");
		}
		
		public function getCalendar(String start, String end):void{
			var params:Object = new Object();
			params.start = start;
			params.end =end;
			sendRequest(params);
		}
	}
}