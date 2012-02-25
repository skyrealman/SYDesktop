package com.sz.sydesktop.util
{
	import flash.data.EncryptedLocalStore;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.filters.ColorMatrixFilter;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.AsyncToken;
	import mx.rpc.CallResponder;
	import mx.rpc.events.ResultEvent;

	public class Utillity
	{
		
		public static function saveToken(token:String):void
		{
			var byteData:ByteArray = new ByteArray();
			byteData.writeUTFBytes(token);
			EncryptedLocalStore.setItem("token", byteData);
			byteData.clear();
		}
		
		public static function readToken():String
		{
			var byteData:ByteArray = EncryptedLocalStore.getItem("token");
			if(byteData != null)
				return byteData.readUTFBytes(byteData.length);
			return null;
		}
		
	}
}