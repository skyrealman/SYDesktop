package com.sz.sydesktop.vo
{
	import mx.collections.ArrayCollection;

	public class TrackVO
	{
		public var id:String;
		
		public var isDo:String; //是否办结
		
		public var nextor:String //是否归档
		
		public var person:String; //办理人
		
		public var date:String; //下达时间
		
		public var item:String; //批示要点
		
		public var describe:String; //办理要求
		
		public var num:String //编号
		
		public var depart:String //办理部门
		
		public var modality:String //下达方式
		
		public var dateenter:String //登记时间
		
		public var datedone:String //完成时限
		
		public var identify:String //办结情况
		
		public var leadview:String //领导反馈意见
		
		public var feedbackdepart:String //反馈处室(单位)
		
		public var secretary:String //反馈秘书
		
		public var childs:ArrayCollection = new ArrayCollection(); //事件跟踪
		
		public static const formid:String = "11e1-61d9-b6f5e099-8a93-79136fb78ee6";
	}
}