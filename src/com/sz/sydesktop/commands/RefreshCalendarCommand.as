package com.sz.sydesktop.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.sz.sydesktop.business.CalendarDelegate;
	import com.sz.sydesktop.events.RefreshCalendarEvent;
	import com.sz.sydesktop.vo.CalendarVO;
	import com.sz.sydesktop.model.ModelLocator;
	import mx.collections.ArrayList;
	import mx.rpc.IResponder;
	import com.sz.sydesktop.util.Constants;
	public class RefreshCalendarCommand implements ICommand, IResponder
	{
		
		public function execute(event:CairngormEvent):void
		{
			var e:RefreshCalendarEvent = event as RefreshCalendarEvent;

			new CalendarDelegate(this).getCalendar(e.start,e.end);
		}
		
		public function result(data:Object):void
		{
			var calendars:ArrayList = new ArrayList();
			for(var index:String in data){
				var cal:CalendarVO = new CalendarVO();
				cal.label = data[index].affair;
				cal.startTime = Constants.StringReplaceAll(data[index].starttime,"-","/").split(".")[0];
				cal.endTime = Constants.StringReplaceAll(data[index].endtime,"-","/").split(".")[0];
				trace(cal.endTime);
				cal.range = data[index].range;
				cal.content1 = data[index].content1;
				calendars.addItem(cal);
			}
			ModelLocator.getInstance().calendars = calendars;
		}
		
		public function fault(info:Object):void
		{
		}
	}
}