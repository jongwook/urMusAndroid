package edu.umich.urMus;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class urMus extends Activity
{
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        TextView tv=new TextView(this);
        tv.setText( testString() );

        setContentView(tv);
    }

    public native String testString();

    static {
        System.loadLibrary("urMus");
    }
}
