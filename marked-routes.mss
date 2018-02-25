@marked-route-width-z13:                 2.5;
@marked-route-width-z15:                 5.0;

@marked-route-fill: #c00000; /* generic red */
@marked-route-red: #FF0000;
@marked-route-green: #00FF00;
@marked-route-blue: #0000FF;
@marked-route-yellow: #FFFF00;
@marked-route-bike: #FF00FF;


#marked-routes[zoom >= 10]{

  [zoom >= 13] {
	line-dasharray: 100,0;
	line-cap: round;
	line-join: round;
	line-opacity: 0.5;
	line-clip:false;
	line-offset: 1.5;
	line-color: @marked-route-fill;
	[route='hiking'],[route='foot']{
		line-opacity: 0.75;
		[color='red'] {
			line-color: @marked-route-red;
		}
		[color='green'] {
			line-color: @marked-route-green;
		}
		[color='blue'] {
			line-color: @marked-route-blue;
		}
		[color='yellow'] {
			line-color: @marked-route-yellow;
		}
	}
	[route='bicycle'],[route='mtb']{
		line-color: @marked-route-bike;
		line-dasharray: 5,5;
	}
	[zoom >= 15] {
		line-offset: 3.0;
	}

	line-width: @marked-route-width-z13;

  }

}