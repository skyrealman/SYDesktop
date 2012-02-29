package com.sz.sydesktop.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	public class RefreshCalendarEvent extends CairngormEvent
	{
		public static const EVENT_REFRESH_CALENDAR:String = "refreshCalendar";
		
		public var start:String;
		
		public var end:String;
		
		public function RefreshCalendarEvent()
		{
			super(EVENT_REFRESH_CALENDAR);
		}
	}
}