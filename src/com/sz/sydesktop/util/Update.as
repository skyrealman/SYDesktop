package com.sz.sydesktop.util
{
	﻿  import air.update.ApplicationUpdater;
	import air.update.ApplicationUpdaterUI;
	import air.update.events.DownloadErrorEvent;
	import air.update.events.StatusUpdateEvent;
	import air.update.events.UpdateEvent;
	
	import com.sz.sydesktop.util.Constants;
	
	import flash.events.ErrorEvent;
	import flash.events.Event;

	﻿  
	﻿  public class Update
	﻿  {
		﻿  ﻿  public static var visible:Boolean = false;
		﻿  ﻿  public static var updater:ApplicationUpdaterUI = new ApplicationUpdaterUI;

		﻿  ﻿  public function Update()
		﻿  ﻿  {
		﻿  ﻿  }

		﻿  ﻿  public static function check():void
		﻿  ﻿  {
				updater.updateURL = Constants.updateUrl;
			﻿  ﻿  ﻿updater.isCheckForUpdateVisible = visible;
			﻿  ﻿  ﻿updater.isUnexpectedErrorVisible = visible;
			﻿  ﻿  ﻿updater.addEventListener(UpdateEvent.INITIALIZED, initializedHandler); // Once initialized, run onUpdate
			﻿  ﻿  ﻿updater.addEventListener(ErrorEvent.ERROR, errorHandler); // If something goes wrong, run onError
			﻿  ﻿  ﻿updater.initialize(); // Initialize the update framework
		﻿  ﻿  }

		﻿  ﻿  public static function errorHandler(event:ErrorEvent):void
		﻿  ﻿  {
				//Alert.show("自动更新出错","更新出错");
		﻿  ﻿  }

		﻿  ﻿  public static function initializedHandler(event:UpdateEvent):void
		﻿  ﻿  {
			﻿  ﻿  ﻿updater.checkNow();
		﻿  ﻿  }
	﻿  }
}