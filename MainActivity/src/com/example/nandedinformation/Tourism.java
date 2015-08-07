package com.example.nandedinformation;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class Tourism<imageButton> extends Activity{
	@SuppressWarnings("unchecked")
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.tourism);
	    
	    Button guru,m,k,d,s,y,b,u,h;
	    imageButton poli;
		poli=(imageButton) findViewById(R.id.imageButton2);
		((View) poli).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Tourism.this,Home.class);
						startActivity(in);
			
				}});

	    		guru=(Button) findViewById(R.id.button1);
		((View) guru).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Tourism.this,Gurudwara.class);
						startActivity(in);
			
				}});
		
	k=(Button) findViewById(R.id.button2);
		((View) k).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Tourism.this,Kaleshware.class);
						startActivity(in);
			
				}});

		m=(Button) findViewById(R.id.button3);
		((View) m).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Tourism.this,Mahur.class);
						startActivity(in);
			
				}});

		d=(Button) findViewById(R.id.button4);
		((View) d).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Tourism.this,Dam.class);
						startActivity(in);
			
				}});

		s=(Button) findViewById(R.id.button5);
		((View) s).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Tourism.this,Sahastra.class);
						startActivity(in);
			
				}});
		y=(Button) findViewById(R.id.button6);
		((View) y).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Tourism.this,Malegaon.class);
						startActivity(in);
			
				}});
		b=(Button) findViewById(R.id.button7);
		((View) b).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Tourism.this,Biloli.class);
						startActivity(in);
			
				}});
		u=(Button) findViewById(R.id.button8);
		((View) u).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Tourism.this,Unkeshwar.class);
						startActivity(in);
			
				}});

		h=(Button) findViewById(R.id.button9);
		((View) h).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Tourism.this,Hottal.class);
						startActivity(in);
			
				}});

	   }


}
