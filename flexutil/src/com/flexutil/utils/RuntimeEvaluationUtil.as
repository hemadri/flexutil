package com.flexutil.utils
{
	import com.flexutil.data.Property;

	public class RuntimeEvaluationUtil
	{
		// ========================================
		// Public methods
		// ========================================
		
		/**
		 * Evaluates the specified value against the specified object instance.
		 * 
		 * If the specified value is a String, it is evaluated as a potential property path in 'dot notation' and the corresponding instance value is returned.
		 * If the specified value is a Function, it is called with the object instance (or evaluated callback field) as a parameter and its result is returned.
		 * Otherwise the value is returned unaltered.
		 * 
		 * @param instance  Target object instance.
		 * @param value     String - potentially specifying a property path in 'dot notation', Function callback or standalone value.
		 * @param callbackField Optional field to evaluate and pass to the callback function.
		 * 
		 * @return The evaluated value.
		 */
		public static function evaluate( instance:*, value:*, callbackField:String = null ):*
		{
			if ( value is String )
			{
				var property:com.flexutil.data.Property = new Property( value as String );
				
				return property.exists( instance ) ? property.getValue( instance ) : value;
			}
			else if ( value is Function )
			{
				var callback:Function = value as Function;
				
				if ( callbackField )
				{
					var callbackProperty:Property = new Property( callbackField );
					
					return callback( callbackProperty.getValue( instance ) );
				}
				else
				{
					return callback( instance );
				}
			}
			else
			{
				return value;
			}
		}
	}
}