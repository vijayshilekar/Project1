package com.example.nandedinformation;

import android.app.Activity;
import android.os.Bundle;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.TextView;

public class Home<Textview> extends Activity {
	TextView tv;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.home);

        tv = (TextView) this.findViewById(R.id.textView1);  
        tv.setSelected(true);
        


        Button second,edu,map,medi,touri,travel,enter,bank,poli,rest,atm,atm1,cafe,caf,ca;
    	
        

		second=(Button) findViewById(R.id.button1);
        second.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,second.class);
				startActivity(in);
	
		}});

edu=(Button) findViewById(R.id.button2);
edu.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,Education.class);
				startActivity(in);
	
		}});

map=(Button) findViewById(R.id.button3);
map.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,Map.class);
				startActivity(in);
	
		}});

medi=(Button) findViewById(R.id.button4);
medi.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,Medical.class);
				startActivity(in);
	
		}});
touri=(Button) findViewById(R.id.button5);
touri.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,Tourism.class);
				startActivity(in);
	
		}});

travel=(Button) findViewById(R.id.button6);
travel.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,Travel.class);
				startActivity(in);
	
		}});

enter=(Button) findViewById(R.id.button7);
enter.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,Entertainment.class);
				startActivity(in);
	
		}});

bank=(Button) findViewById(R.id.button8);
bank.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,Bank.class);
				startActivity(in);
	
		}});

poli=(Button) findViewById(R.id.button9);
poli.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,Police.class);
				startActivity(in);
	
		}});
rest=(Button) findViewById(R.id.button10);
rest.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,Restaurant.class);
				startActivity(in);
	
		}});
atm=(Button) findViewById(R.id.button14);
atm.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,Atm.class);
				startActivity(in);
	
		}});
atm1=(Button) findViewById(R.id.button15);
atm1.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,Postoffices.class);
				startActivity(in);
	
		}});

cafe=(Button) findViewById(R.id.button13);
cafe.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,Cafes.class);
				startActivity(in);
	
		}});

caf=(Button) findViewById(R.id.button11);
caf.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,Bar.class);
				startActivity(in);
	
		}});
ca=(Button) findViewById(R.id.button12);
ca.setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(Home.this,Gas.class);
				startActivity(in);
	
		}});




}


}
