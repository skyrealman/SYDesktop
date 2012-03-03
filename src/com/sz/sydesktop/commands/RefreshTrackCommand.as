package com.sz.sydesktop.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.sz.sydesktop.business.TrackDelegate;
	import com.sz.sydesktop.model.ModelLocator;
	import com.sz.sydesktop.vo.TrackChildVO;
	import com.sz.sydesktop.vo.TrackVO;
	
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
				oneTrack.num = data[index].num;
				oneTrack.datedone = data[index].datedone.split(" ")[0];
				oneTrack.dateenter = data[index].dateenter.split(" ")[0];
				oneTrack.depart = data[index].depart;
				oneTrack.feedbackdepart = data[index].feedbackdepart;
				oneTrack.identify = data[index].identify;
				oneTrack.leadview = data[index].leadview;
				oneTrack.nextor = data[index].nextor;
				oneTrack.secretary = data[index].secretary;
				oneTrack.isDo = data[index].isdo;
				oneTrack.date = data[index].date.split(" ")[0];
				oneTrack.item = data[index].item;
				oneTrack.describe = data[index].describe;
				oneTrack.person = data[index].person;
				oneTrack.modality = data[index].modality;

				var childs:ArrayCollection = new ArrayCollection();
				for(var index1:String in data[index].childs){
					var childVO:TrackChildVO = new TrackChildVO();
					childVO.id = (data[index].childs)[index1].id;
					childVO.follow = (data[index].childs)[index1].follow;
					childs.addItem(childVO);
				}
				oneTrack.childs = childs;
				tracks.addItem(oneTrack);
			}
			ModelLocator.getInstance().tracks = tracks;
		}
		
		public function fault(info:Object):void
		{
			
		}
	}
}