package com.example.nandedinformation;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

public class Bar<imageButton> extends Activity {
	@SuppressWarnings("unchecked")
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.bars);
	    
	    
	    
	    
	    imageButton poli;
		poli=(imageButton) findViewById(R.id.imageButton2);
		((View) poli).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Bar.this,Home.class);
						startActivity(in);
			
				}});

	    
	   	   }


}
