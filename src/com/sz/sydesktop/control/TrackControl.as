package com.sz.sydesktop.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.sz.sydesktop.events.RefreshTrackEvent;
	import com.sz.sydesktop.commands.RefreshTrackCommand;
	
	public class TrackControl extends FrontController
	{
		public function TrackControl()
		{
			addCommand(RefreshTrackEvent.EVENT_REFRESH_TRACK,RefreshTrackCommand);
		}
	}
}