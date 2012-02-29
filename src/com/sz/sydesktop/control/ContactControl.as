package com.sz.sydesktop.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.sz.sydesktop.commands.RefreshContactCommand;
	import com.sz.sydesktop.events.RefreshContactEvent;
	
	public class ContactControl extends FrontController
	{
		public function ContactControl()
		{
			addCommand(RefreshContactEvent.EVENT_REFRESH_CONTACT,RefreshContactCommand);
		}
	}
}