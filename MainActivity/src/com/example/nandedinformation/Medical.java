package com.example.nandedinformation;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class Medical<imageButton> extends Activity {
	@SuppressWarnings("unchecked")
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.medical);
	    
	    Button Phone1 = (Button) findViewById(R.id.call);
        Phone1.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462234026"));
    startActivity(sIntent);
   }
  });
        
        
        Button Phone = (Button) findViewById(R.id.call1);
        Phone.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462252551"));
    startActivity(sIntent);
   }
  });
	
	    imageButton poli;
		poli=(imageButton) findViewById(R.id.imageButton2);
		((View) poli).setOnClickListener(new OnClickListener()
				
				{

					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						Intent in=new Intent(Medical.this,Home.class);
						startActivity(in);
			
				}});

	   	   }


}
