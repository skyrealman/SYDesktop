package com.sz.sydesktop.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	public class RefreshTrackEvent extends CairngormEvent
	{
		public static const EVENT_REFRESH_TRACK:String = "refreshTrack";
		
		public function RefreshTrackEvent()
		{
			super(EVENT_REFRESH_TRACK);
		}
	}
}