package com.flexutil.shell.modules.reports.vo
{
	import mx.collections.ArrayCollection;

	[Bindable]
	[RemoteClass(alias="com.flexutil.shell.entity.reports.ReportSelectionVO")]
	public class ReportSelectionVO
	{
		public var team:String;
		public var division:String;

		
		public var wellId:String;
		public var deepeningNo:String;
		
		public var shift:String;
		public var wellType:String;
		
		public var year:String;
		public var month:String;
		public var status:String // can use from basevo
		
		public var reportDate:Date;
		public var startDate:Date;
		public var endDate:Date;
		
		public var wellList:ArrayCollection;
		public var url:String;
		
		public var epANum:Number;
	}
}