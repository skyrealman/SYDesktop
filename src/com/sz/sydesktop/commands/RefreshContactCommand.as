package com.sz.sydesktop.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.sz.sydesktop.business.ContactDelegate;
	import com.sz.sydesktop.model.ModelLocator;
	import com.sz.sydesktop.vo.ContactVO;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.IResponder;
	
	public class RefreshContactCommand implements ICommand, IResponder
	{

		
		public function execute(event:CairngormEvent):void
		{
			new ContactDelegate(this).getContact();
		}
		
		public function result(data:Object):void
		{
			var contacts:ArrayCollection = new ArrayCollection();
			for(var index:String in data){
				var oneContact:ContactVO = new ContactVO();
				oneContact.ad = data[index].ad;
				oneContact.depart = data[index].depart;
				oneContact.emailone = data[index].emailone;
				oneContact.emailtwo = data[index].emailtwo;
				oneContact.job = data[index].job;
				oneContact.name = data[index].name;
				oneContact.postcode = data[index].postcode;
				oneContact.redo = data[index].redo;
				oneContact.teldo = data[index].teldo;
				oneContact.telhome = data[index].telhome;
				oneContact.teloffice = data[index].teloffice;
				oneContact.telwork = data[index].telwork;
				oneContact.id = data[index].id;
				contacts.addItem(oneContact);
			}
			ModelLocator.getInstance().contacts = contacts;
		}
		
		public function fault(info:Object):void
		{
		}
	}
}