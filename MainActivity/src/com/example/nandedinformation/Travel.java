package com.example.nandedinformation;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.TextView;

public class Travel<imageButton> extends Activity{
	@SuppressWarnings("unchecked")
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.travel);
	    
	   Button b,t,a,tr;
	   imageButton poli;
		poli=(imageButton) findViewById(R.id.imageButton2);
		((View) poli).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Travel.this,Home.class);
						startActivity(in);
			
				}});

	   b=(Button) findViewById(R.id.button1);
		((View) b).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Travel.this,Bus.class);
						startActivity(in);
			
				}});

		 t=(Button) findViewById(R.id.button2);
			((View) t).setOnClickListener(new OnClickListener()
					
					{

						@Override
						public void onClick(View v) {
							// TODO Auto-generated method stub
							Intent in=new Intent(Travel.this,Railway.class);
							startActivity(in);
				
					}});
			 a=(Button) findViewById(R.id.button3);
				((View) a).setOnClickListener(new OnClickListener()
						
						{

							@Override
							public void onClick(View v) {
								// TODO Auto-generated method stub
								Intent in=new Intent(Travel.this,Airport.class);
								startActivity(in);
					
						}});
				 tr=(Button) findViewById(R.id.button4);
					((View) tr).setOnClickListener(new OnClickListener()
							
							{

								@Override
								public void onClick(View v) {
									// TODO Auto-generated method stub
									Intent in=new Intent(Travel.this,Nandedtravels.class);
									startActivity(in);
						
							}});

		
		
			   }


}
