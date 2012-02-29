package com.sz.sydesktop.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.sz.sydesktop.business.CalendarDelegate;
	
	import mx.rpc.IResponder;
	
	public class RefreshCalendarCommand implements ICommand, IResponder
	{
		
		public function execute(event:CairngormEvent):void
		{
			new CalendarDelegate(this).getCalendar(event.start,event.end);
		}
		
		public function result(data:Object):void
		{
			
		}
		
		public function fault(info:Object):void
		{
		}
	}
}