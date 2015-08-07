package com.example.nandedinformation;




import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.TextView;

public class MainActivity<imageButton> extends Activity {
		
	 TextView tv;
@SuppressWarnings("unchecked")
@Override
	
	protected void onCreate(Bundle savedInstanceState) {
	imageButton secon;

		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
			tv = (TextView) this.findViewById(R.id.textView1);  
        tv.setSelected(true);  
		
		
		secon=(imageButton) findViewById(R.id.imageButton1);
        ((View) secon).setOnClickListener(new OnClickListener()
		
		{

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent in=new Intent(MainActivity.this,Home.class);
				startActivity(in);
				
		}});

        TextView myText = (TextView) findViewById(R.id.textView1 );

        Animation anim = new AlphaAnimation(0.0f, 1.0f);
        anim.setDuration(35); //You can manage the time of the blink with this parameter
        anim.setStartOffset(10);
        anim.setRepeatMode(Animation.REVERSE);
        anim.setRepeatCount(Animation.INFINITE);
        myText.startAnimation(anim);

    	new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                final Intent mainIntent = new Intent(MainActivity.this, Home.class);
                MainActivity.this.startActivity(mainIntent);
                MainActivity.this.finish();
            }
        }, 5000);


}

@Override
public void onBackPressed() {
    new AlertDialog.Builder(this)
           .setMessage("Are you sure you want to exit?")
           .setCancelable(false)
           .setPositiveButton("Yes", new DialogInterface.OnClickListener() {
               
			public void onClick(DialogInterface dialog, int id) {
            	   MainActivity.this.finish();
               }
           })
           .setNegativeButton("No", null)
           .show();
}
   
}



