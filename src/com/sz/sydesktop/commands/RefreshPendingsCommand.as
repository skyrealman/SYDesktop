package com.sz.sydesktop.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.sz.sydesktop.business.AppsDelegate;
	import com.sz.sydesktop.business.PendingsDelegate;
	import com.sz.sydesktop.model.ModelLocator;
	import com.sz.sydesktop.vo.PendingVO;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.IResponder;
	
	public class RefreshPendingsCommand implements ICommand,IResponder
	{
		
		public function execute(event:CairngormEvent):void
		{
			new PendingsDelegate(this).getPendings();
		}
		
		public function result(data:Object):void
		{
			if(data.status == true){
				var pendings:ArrayCollection = new ArrayCollection();
				for(var index:String in data.data){
					var onePending:Object = data.data[index];
					var pendingVO:PendingVO = new PendingVO();
					pendingVO.docid = onePending.docid;
					pendingVO.formid = onePending.formid;
					pendingVO.appid = onePending.appid;
					pendingVO.summary = onePending.summary;
					pendingVO.date = onePending.date;
					pendings.addItem(pendingVO);
				}
				ModelLocator.getInstance().pendings = pendings;
			}
		}
		
		public function fault(info:Object):void
		{
			
		}
		
	}
}