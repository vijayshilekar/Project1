package com.example.nandedinformation;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Higheducation extends Activity {
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.higheducation);
	    Button Phone1 = (Button) findViewById(R.id.call1);
        Phone1.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462269161"));
    startActivity(sIntent);
   }
  });
        Button Phone2 = (Button) findViewById(R.id.call2);
        Phone2.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462229967"));
    startActivity(sIntent);
   }
  });
        Button Phone3 = (Button) findViewById(R.id.call3);
        Phone3.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:09960388804"));
    startActivity(sIntent);
   }
  });
        Button Phone4 = (Button) findViewById(R.id.call4);
        Phone4.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462267657"));
    startActivity(sIntent);
   }
  });
}
}
