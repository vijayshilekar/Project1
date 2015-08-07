package com.example.nandedinformation;

import android.app.Activity;
import android.content.Intent;

import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Technicaledu extends Activity {
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.technicaledu);
	    Button Phone1 = (Button) findViewById(R.id.call1);
        Phone1.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462251623"));
    startActivity(sIntent);
   }
  });
        Button Phone2 = (Button) findViewById(R.id.call2);
        Phone2.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462254170"));
    startActivity(sIntent);
   }
  });
        
        Button Phone3 = (Button) findViewById(R.id.call3);
        Phone3.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462253471"));
    startActivity(sIntent);
   }
  });
        Button Phone4 = (Button) findViewById(R.id.call4);
        Phone4.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462254869"));
    startActivity(sIntent);
   }
  });
        Button Phone5 = (Button) findViewById(R.id.call5);
        Phone5.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462251648"));
    startActivity(sIntent);
   }
  });
        Button Phone6 = (Button) findViewById(R.id.call6);
        Phone6.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462242017"));
    startActivity(sIntent);
   }
  });
        Button Phone7 = (Button) findViewById(R.id.call7);
        Phone7.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462253511"));
    startActivity(sIntent);
   }
  });
        Button Phone8 = (Button) findViewById(R.id.call8);
        Phone8.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462234700"));
    startActivity(sIntent);
   }
  });
        Button Phone9 = (Button) findViewById(R.id.call9);
        Phone9.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462-227426"));
    startActivity(sIntent);
   }
  });
}
}
