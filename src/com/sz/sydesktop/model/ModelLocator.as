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
		
		public static const USER_TOKEN:String = "11df-dcc6-64fcf96a-8a70-5b9af8e9e0ca@0784d2a5-3ebc-4f17-8c2a-ed013079066f";
		
		/*
		*	Variables
		*/
		
		public static var WORK:Boolean = false;
		
		public var applications:Dictionary;
		public var pendings:ArrayCollection;
	}
}

class SingletonEnforcer {}
