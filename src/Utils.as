/**
 * Created by mkh on 2017/07/25.
 */
package
{

public class Utils
{
    public static function drawRect(object:Object, x:int, y:int, width:int, height:int, color:int = 0x333333, alpha:Number=1):void
    {
        object.graphics.beginFill(color, alpha);
        object.graphics.drawRect(x, y, width, height);
        object.graphics.endFill();
    }

    public static function traceObject(obj:Object, t:String =''):void
    {
        for(var i:String in obj)
        {
            if(obj[i] is Number || obj[i] is String || obj[i] is int || obj[i] is uint || obj[i] is Boolean)
            {
                trace(t,i+':',obj[i])
            }
            else if(obj[i] is Array)
            {
                trace(t,i+':','Array:')
                traceArray(obj[i], t+'\t');
            }
            else
            {
                trace(t,i+':');
                traceObject(obj[i], t+'\t')
            }
        }
    }

    public static function traceArray(list:Array, t:String=''):void
    {
        for(var i:int=0; i<list.length; i++)
        {
            if(list[i] is Array)
            {
                trace(t,i,'Array:');
                traceArray(list[i], t+'\t');
            }
            else if(list[i] is Number || list[i] is String || list[i] is int || list[i] is uint || list[i] is Boolean)
            {
                trace(t, i, list[i]);
            }
            else
            {
                trace(t,'Object:');
                traceObject(list[i], t+'\t')
            }
        }
    }
}
}
