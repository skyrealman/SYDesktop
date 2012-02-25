package com.sz.sydesktop.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.sz.sydesktop.commands.RefreshPendingsCommand;
	import com.sz.sydesktop.events.RefreshPendingsEvent;
	
	public class PendingControl extends FrontController
	{
		public function PendingControl()
		{
			addCommand(RefreshPendingsEvent.EVENT_REFRESH_PENDING, RefreshPendingsCommand);
		}
	}
}