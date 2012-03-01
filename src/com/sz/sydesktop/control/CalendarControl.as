package com.sz.sydesktop.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.sz.sydesktop.commands.RefreshCalendarCommand;
	import com.sz.sydesktop.events.RefreshCalendarEvent;
	public class CalendarControl extends FrontController
	{
		public function CalendarControl()
		{
			addCommand(RefreshCalendarEvent.EVENT_REFRESH_CALENDAR,RefreshCalendarCommand);
		}
	}
}