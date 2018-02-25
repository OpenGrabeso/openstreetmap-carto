@marked-route-width-z13:                 2.5;
@marked-route-width-z15:                 5.0;

@marked-route-fill: #c00000; /* generic red */


#marked-routes[zoom >= 10]{

  [zoom >= 13] {
	line-color: @marked-route-fill;
	line-dasharray: 100,0;
	line-cap: round;
	line-join: round;
	line-opacity: 0.5;
	line-clip:false;
	line-offset: 2.5;
	[zoom >= 15] {
		line-offset: 5.0;
	}

	line-width: @marked-route-width-z13;

  }

}