package com.sz.sydesktop.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.sz.sydesktop.business.TrackDelegate;
	import com.sz.sydesktop.vo.TrackVO;
	import com.sz.sydesktop.model.ModelLocator;
	import mx.collections.ArrayCollection;
	import mx.rpc.IResponder;

	public class RefreshTrackCommand implements ICommand,IResponder
	{
		public function execute(event:CairngormEvent):void{
			new TrackDelegate(this).getTrack();
		}
		
		public function result(data:Object):void{
			var tracks:ArrayCollection = new ArrayCollection();
			for(var index:String in data){
				var oneTrack:TrackVO = new TrackVO;
				oneTrack.id = data[index].id;
				oneTrack.isDo = data[index].isdo;
				oneTrack.date = data[index].date.split(" ")[0];
				oneTrack.title = data[index].title;
				oneTrack.describe = data[index].describe;
				oneTrack.person = data[index].person;
				tracks.addItem(oneTrack);
			}
			ModelLocator.getInstance().tracks = tracks;
		}
		
		public function fault(info:Object):void
		{
			
		}
	}
}