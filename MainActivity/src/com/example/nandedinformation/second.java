package com.example.nandedinformation;
import android.app.Activity;

import android.content.Intent;


import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

public class second<imageButton> extends Activity {
	/** Called when the activity is first created. */
	@SuppressWarnings("unchecked")
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.second);
	    imageButton travel,b,b1,b2;
		travel=(imageButton) findViewById(R.id.imageButton2);
		((View) travel).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(second.this,MainActivity.class);
						startActivity(in);
			
				}});
		
		b=(imageButton) findViewById(R.id.button1);
		((View) b).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(second.this,Offices.class);
						startActivity(in);
			
				}});
		b1=(imageButton) findViewById(R.id.button3);
		((View) b1).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(second.this,Goveducation.class);
						startActivity(in);
			
				}});
		b2=(imageButton) findViewById(R.id.button4);
		((View) b2).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(second.this,Govmedicall.class);
						startActivity(in);
			
				}});

	   }
}
