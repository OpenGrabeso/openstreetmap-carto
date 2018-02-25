@marked-route-width-z13:                 3.0;
@marked-route-width-z15:                 5.0;

@marked-route-fill: #A02020; /* generic red */
@marked-route-red: #E00000;
@marked-route-green: #00D000;
@marked-route-blue: #0000E0;
@marked-route-yellow: #F0D000;
@marked-route-bike: #E000E0;


#marked-routes[zoom >= 10]{

  [zoom >= 12] {
	line-dasharray: 100,0;
	line-cap: round;
	line-join: round;
	line-opacity: 0.5;
	line-clip:false;
	line-offset: 1.5;
	[zoom >= 15] {
		line-offset: 3.0;
	}
	line-color: @marked-route-fill;
	[route='hiking'][color!='international'],[route='foot'][color!='international']{
		line-opacity: 0.90;
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
		[kind!='major']{
			line-dasharray: 4,4,1,4;
			line-offset: 2.5;
			line-opacity: 0.70;
		}
	}
	[route='bicycle'],[route='mtb']{
		line-color: @marked-route-bike;
		line-dasharray: 4,4;
		line-offset: -2.5;
		line-opacity: 0.75;
		[zoom >= 15] {
			line-offset: -4.0;
		}
	}

	line-width: @marked-route-width-z13;

  }

}