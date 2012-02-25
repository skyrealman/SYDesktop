package com.sz.sydesktop.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.sz.sydesktop.commands.GetAppCommand;
	import com.sz.sydesktop.events.GetAppEvent;
	
	public class AppControl extends FrontController
	{
		public function AppControl(){
			addCommand(GetAppEvent.EVENT_GET_APP_EVENT, GetAppCommand);
		}
	}
}