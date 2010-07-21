package edu.umich.urMus;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class urMus extends Activity
{
	urMusView mView;
	
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        TextView tv=new TextView(this);
        tv.setText( testString() );

//        setContentView(tv);
		mView = new urMusView(getApplication());
		setContentView(mView);
    }

    @Override protected void onPause() {
        super.onPause();
        mView.onPause();
    }
	
    @Override protected void onResume() {
        super.onResume();
        mView.onResume();
    }
	
    public native String testString();
	public static native void init(int width, int height);
	public static native void step();

    static {
        System.loadLibrary("urMus");
    }
}
