package com.sz.sydesktop.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.sz.sydesktop.business.AppsDelegate;
	import com.sz.sydesktop.events.RefreshCalendarEvent;
	import com.sz.sydesktop.events.RefreshContactEvent;
	import com.sz.sydesktop.events.RefreshPendingsEvent;
	import com.sz.sydesktop.events.RefreshTrackEvent;
	import com.sz.sydesktop.model.ModelLocator;
	
	import flash.events.TimerEvent;
	import flash.utils.Dictionary;
	import flash.utils.Timer;
	
	import mx.rpc.IResponder;
	
	public class GetAppCommand implements ICommand, IResponder
	{
		
		
		public function execute(event:CairngormEvent):void
		{
			var delegate:AppsDelegate = new AppsDelegate(this);
			delegate.getApps();
		}
		
		public function result(data:Object):void
		{
			var apps:Dictionary = new Dictionary();
			if(data.status == true){
				for(var index:String in data.data)
					apps[data.data[index].appid] = data.data[index];
				ModelLocator.getInstance().applications = apps;
				if(ModelLocator.WORK == false){
					ModelLocator.WORK = true;
					new RefreshPendingsEvent().dispatch();
				}
			}else{
				ModelLocator.WORK = false;
			}
		}
		
		public function fault(info:Object):void
		{
		}
	}
}