package com.example.nandedinformation;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class School extends Activity {
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.school);
	
	    Button Phone = (Button) findViewById(R.id.call);
        Phone.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462223450"));
    startActivity(sIntent);
   }
  });
        Button Phone2 = (Button) findViewById(R.id.call2);
        Phone2.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462234476"));
    startActivity(sIntent);
   }
  });
        Button Phone3 = (Button) findViewById(R.id.call3);
        Phone3.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462267657"));
    startActivity(sIntent);
   }
  });
        Button Phone4 = (Button) findViewById(R.id.call4);
        Phone4.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462221444"));
    startActivity(sIntent);
   }
  });
        Button Phone5 = (Button) findViewById(R.id.call5);
        Phone5.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462202166"));
    startActivity(sIntent);
   }
  });
        Button Phone6 = (Button) findViewById(R.id.call6);
        Phone6.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462640339"));
    startActivity(sIntent);
   }
  });
        Button Phone7 = (Button) findViewById(R.id.call7);
        Phone7.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462264508"));
    startActivity(sIntent);
   }
  });
        Button Phone8 = (Button) findViewById(R.id.call8);
        Phone8.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462267657"));
    startActivity(sIntent);
   }
  });

        Button Phone9 = (Button) findViewById(R.id.call9);
        Phone9.setOnClickListener(new View.OnClickListener() {
   @Override
   public void onClick(View v) {
    Intent sIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:02462230566"));
    startActivity(sIntent);
   }
  });



}
}
