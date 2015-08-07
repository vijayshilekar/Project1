package com.example.nandedinformation;

import android.app.Activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

public class Education<imageButton> extends Activity{
	/** Called when the activity is first created. */
	@SuppressWarnings("unchecked")
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.education);
	   
	imageButton travel,clas,edu,edu1,tech,tech1;
	travel=(imageButton) findViewById(R.id.imageButton2);
	((View) travel).setOnClickListener(new OnClickListener()
			
			{

				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					Intent in=new Intent(Education.this,Home.class);
					startActivity(in);
		
			}});

		clas=(imageButton) findViewById(R.id.button1);
	((View) clas).setOnClickListener(new OnClickListener()
			
			{

				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					Intent in=new Intent(Education.this,School.class);
					startActivity(in);
		
			}});
	edu=(imageButton) findViewById(R.id.button3);
	((View) edu).setOnClickListener(new OnClickListener()
			
			{

				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					Intent in=new Intent(Education.this,Higheducation.class);
					startActivity(in);
		
			}});

	edu1=(imageButton) findViewById(R.id.button4);
	((View) edu1).setOnClickListener(new OnClickListener()
			
			{

				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					Intent in=new Intent(Education.this,Medicalinstitutes.class);
					startActivity(in);
		
			}});
	tech=(imageButton) findViewById(R.id.button2);
	((View) tech).setOnClickListener(new OnClickListener()
			
			{

				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					Intent in=new Intent(Education.this,Technicaledu.class);
					startActivity(in);
		
			}});
	tech1=(imageButton) findViewById(R.id.button6);
	((View) tech1).setOnClickListener(new OnClickListener()
			
			{

				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					Intent in=new Intent(Education.this,Srtmun.class);
					startActivity(in);
		
			}});



	}
	

}
