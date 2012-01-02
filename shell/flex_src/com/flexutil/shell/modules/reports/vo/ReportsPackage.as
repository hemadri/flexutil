package com.flexutil.shell.modules.reports.vo
{
	import mx.collections.ArrayCollection;

	[Bindable]
	[RemoteClass(alias="com.flexutil.shell.entity.reports.ReportsPackage")]
	public class ReportsPackage
	{
		public var menuOperation:String;
		public var reportCategory:String;
		
		public var teams:ArrayCollection;
		public var wellList:ArrayCollection;
		public var wellType:ArrayCollection;
		public var years:ArrayCollection;
		public var url:String;
		
	}
}