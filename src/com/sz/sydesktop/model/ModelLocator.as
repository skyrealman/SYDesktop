package com.sz.sydesktop.model {
	
	import com.adobe.cairngorm.CairngormError;
	import com.adobe.cairngorm.CairngormMessageCodes;
	import com.adobe.cairngorm.model.IModelLocator;
	
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;
    
    [Bindable]
	public final class ModelLocator implements IModelLocator {

		private static var instance:ModelLocator;

		public function ModelLocator(access:SingletonEnforcer) {
			
			if (access == null) {
			    throw new CairngormError( CairngormMessageCodes.SINGLETON_EXCEPTION, "ModelLocator" );
			}
			
			instance = this;
		}
		 
		public static function getInstance() : ModelLocator {
			
			if (instance == null) {
				instance = new ModelLocator( new SingletonEnforcer() );
			}
			return instance;
			
		}
		
		public static var USER_TOKEN:String = "11df-dcd7-59983278-8a70-5b9af8e9e0ca@de491612-5c59-4720-8af4-ef3b2c58a15a";
		
		/*
		*	Variables
		*/
		
		public static var WORK:Boolean = false;
		
		public var applications:Dictionary;
		public var pendings:ArrayCollection;
		public var tracks:ArrayCollection;
		public var contacts:ArrayCollection;
		public var calendars:ArrayCollection;
	}
}

class SingletonEnforcer {}
