package com.example.nandedinformation;

import android.app.Activity;

import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.widget.TextView;

public class Srtmun extends Activity {
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.srtmun);
	    TextView textView =(TextView)findViewById(R.id.textView4);
	    textView.setClickable(true);
	    textView.setMovementMethod(LinkMovementMethod.getInstance());
	   
}
}