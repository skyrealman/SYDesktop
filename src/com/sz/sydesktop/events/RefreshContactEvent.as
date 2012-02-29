package com.sz.sydesktop.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	public class RefreshContactEvent extends CairngormEvent
	{
		public static const EVENT_REFRESH_CONTACT:String = "refreshContact";
		public function RefreshContactEvent()
		{
			super(EVENT_REFRESH_CONTACT);
		}
	}
}