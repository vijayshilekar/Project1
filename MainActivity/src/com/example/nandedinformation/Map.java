package com.example.nandedinformation;



import android.os.Bundle;

import android.widget.Toast;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapActivity;
import com.google.android.maps.MapView;
import com.google.android.maps.MyLocationOverlay;

public class Map extends MapActivity  {
	
	 static final LatLng TutorialsPoint = new LatLng(19 , 77);
	   private GoogleMap googleMap;
	   

	private MapView mapView;
	private MyLocationOverlay myLocationOverlay;
	
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        // main.xml contains a MapView
        setContentView(R.layout.map); 
        
        // extract MapView from layout
		mapView = (MapView) findViewById(R.id.mapview);
		mapView.setBuiltInZoomControls(true);

		// create an overlay that shows our current location
		myLocationOverlay = new FixedMyLocationOverlay(this, mapView);
		
		// add this overlay to the MapView and refresh it
		mapView.getOverlays().add(myLocationOverlay);
		mapView.postInvalidate();
		
		// call convenience method that zooms map on our location
		zoomToMyLocation();
    }
    
    @Override
	protected void onResume() {
		super.onResume();
		// when our activity resumes, we want to register for location updates
		myLocationOverlay.enableMyLocation();
	}

	@Override
	protected void onPause() {
		super.onPause();
		// when our activity pauses, we want to remove listening for location updates
		myLocationOverlay.disableMyLocation();
	}
	
	/**
	 * This method zooms to the user's location with a zoom level of 10.
	 */
	private void zoomToMyLocation() {
		GeoPoint myLocationGeoPoint = myLocationOverlay.getMyLocation();
		if(myLocationGeoPoint != null) {
			mapView.getController().animateTo(myLocationGeoPoint);
			mapView.getController().setZoom(10);
		}
		else {
			Toast.makeText(this, "Cannot determine location", Toast.LENGTH_SHORT).show();
		}
	}

	@Override
	protected boolean isRouteDisplayed() {
		return false;
	}
}