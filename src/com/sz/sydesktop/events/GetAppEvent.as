package com.sz.sydesktop.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	public class GetAppEvent extends CairngormEvent
	{
		public static const EVENT_GET_APP_EVENT:String = "getApps";
		
		public function GetAppEvent()
		{
			super(EVENT_GET_APP_EVENT);
		}
	}
}