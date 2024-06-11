<!--==================================================================================-->
<!--==                     Trail Attributes                                         ==-->
<!--==================================================================================-->

trailData : String, required Path in binary format (TRL file).
type : Character string, optional [without accent or space] - Defines the full name of the category to which the marker belongs.
texture : String, required Image serving as texture for the path (PNG file with transparency).
color : Hexadecimal value, optional [default: FFFFFFFF ] Apply a color on the marker in the HEX form « 00112233 »:
00 = Opacity.
11 = Red color.
22 = Green color.
33 = Blue color.
alpha : Decimal number, optional [default: 1.0 ] Opacity of the icon displayed.
trailScale : Decimal number, optional - Scaling of the texture scale.
fadeNear : Decimal number, optional [in inches] Defines the distance from which the marker will be completely visible. If less than 0, the marker does not disappear at any distance.
fadeFar : Decimal number, optional [in inches] Sets the distance at which the marker will start to appear when approaching. If less than 0, the marker does not disappear at any distance.
animSpeed : Integer, required
Sets the speed of texture animation along the trail.
Positive = Move the texture in the direction of the trail.
Negative = Move the texture in the opposite direction of the trail.