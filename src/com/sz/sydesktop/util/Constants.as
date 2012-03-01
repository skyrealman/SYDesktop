package com.sz.sydesktop.util
{
	public  class Constants
	{
		public static var siteURL:String = "http://10.0.0.82:18081/";
		
		public static function get servicesUrl():String {
			return siteURL+"client/";
		}
		
		public static function get autoLoginUrl():String {
			return servicesUrl+"autoLogin.action";
		}
		
		public static function get updateUrl():String {
			return servicesUrl+"sydesktop.xml";
		}
		
		public static function get documentUrl():String {
			return "/portal/dynaform/document/view.action";
		}
		
		public static function StringReplaceAll( source:String, find:String, replacement:String ):String{ 
			return source.split( find ).join( replacement ); 
		}
	}
}