package com.example.nandedinformation;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class Police<imageButton> extends Activity{
	@SuppressWarnings("unchecked")
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.police);
	    
	    imageButton poli;
		poli=(imageButton) findViewById(R.id.imageButton2);
		((View) poli).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Police.this,Home.class);
						startActivity(in);
			
				}});
		
		
		Button Phone = (Button) findViewById(R.id.call);
        Phone.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462261364"));
    startActivity(sIntent);
   }
  });
        
        Button Phone1 = (Button) findViewById(R.id.call1);
        Phone1.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462236510"));
    startActivity(sIntent);
   }
  });

        Button Phone2 = (Button) findViewById(R.id.call2);
        Phone2.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462226373"));
    startActivity(sIntent);
   }
  });
        
        Button Phone3 = (Button) findViewById(R.id.call3);
        Phone3.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462236520"));
    startActivity(sIntent);
   }
  });
        
        Button Phone4 = (Button) findViewById(R.id.call4);
        Phone4.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462236500"));
    startActivity(sIntent);
   }
  });


        
	   }


}
