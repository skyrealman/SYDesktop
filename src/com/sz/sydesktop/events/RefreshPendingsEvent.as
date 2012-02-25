package com.sz.sydesktop.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	public class RefreshPendingsEvent extends CairngormEvent
	{
		public static const EVENT_REFRESH_PENDING:String = "refreshPendings";
		
		public function RefreshPendingsEvent()
		{
			super(EVENT_REFRESH_PENDING);
		}
	}
}