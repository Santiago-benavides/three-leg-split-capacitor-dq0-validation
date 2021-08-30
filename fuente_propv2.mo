model fuente_propv2
  parameter Real f(start = 60);
  constant Real PI = 3.14159265359;
  Real w = f * 2 * PI;
  Real d120 = 2 * PI / 3;
  //parameter Real Spd(start=76.67);
  //parameter Real Spq(start=-0.02);
  //parameter Real Snd(start=11.69);
  //parameter Real Snq(start=-8.64);
  //parameter Real Szmd(start=11.67);
  //parameter Real Szmq(start=8.64);
  Real Sz(start = 0);
  Real Spa(start = 0);
  Real Spb(start = 0);
  Real Spc(start = 0);
  Real Sna(start = 0);
  Real Snb(start = 0);
  Real Snc(start = 0);
  Real Sa(unit = "A");
  Real Sb(unit = "A");
  Real Sc(unit = "A");
  Modelica.Electrical.Analog.Interfaces.PositivePin pa annotation(
    Placement(visible = true, transformation(origin = {-66, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-39, 23}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin pb annotation(
    Placement(visible = true, transformation(origin = {-66, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-39, -23}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin pc annotation(
    Placement(visible = true, transformation(origin = {-66, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-39, -71}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin na annotation(
    Placement(visible = true, transformation(origin = {2, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {47, 23}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin nc annotation(
    Placement(visible = true, transformation(origin = {2, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {47, -71}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin nb annotation(
    Placement(visible = true, transformation(origin = {2, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {47, -23}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.SIunits.Voltage va;
  Modelica.SIunits.Voltage vb;
  Modelica.SIunits.Voltage vc;
  Modelica.Blocks.Interfaces.RealInput Spd annotation(
    Placement(visible = true, transformation(origin = {80, 108}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {78, 86}, extent = {{-14, -14}, {14, 14}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput Spq annotation(
    Placement(visible = true, transformation(origin = {-196, 86}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {48, 86}, extent = {{-14, -14}, {14, 14}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput Snd annotation(
    Placement(visible = true, transformation(origin = {-38, 122}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {18, 86}, extent = {{-14, -14}, {14, 14}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput Snq annotation(
    Placement(visible = true, transformation(origin = {-68, 122}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-12, 86}, extent = {{-14, -14}, {14, 14}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput Szmd annotation(
    Placement(visible = true, transformation(origin = {-96, 120}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-43, 85}, extent = {{-15, -15}, {15, 15}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput Szmq annotation(
    Placement(visible = true, transformation(origin = {-140, 120}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-75, 85}, extent = {{-15, -15}, {15, 15}}, rotation = -90)));
equation
  va = pa.v - na.v;
  vb = pb.v - nb.v;
  vc = pc.v - nc.v;
  0 = pa.i + na.i;
  0 = pb.i + nb.i;
  0 = pc.i + nc.i;
  Sz = (2 / 3) ^ 0.5 * (3 / 2) ^ 0.5 * (cos(w * time) * Szmd - sin(w * time) * Szmq);
  Spa = cos(w * time) * Spd - sin(w * time) * Spq;
  Spb = cos(w * time - d120) * Spd - sin(w * time - d120) * Spq;
  Spc = cos(w * time - 2 * d120) * Spd - sin(w * time - 2 * d120) * Spq;
  Sna = cos(w * time) * Snd - sin(w * time) * Snq;
  Snb = cos(w * time + d120) * Snd - sin(w * time + d120) * Snq;
  Snc = cos(w * time + 2 * d120) * Snd - sin(w * time + 2 * d120) * Snq;
  Sa = Spa + Sna + Sz;
  Sb = Spb + Snb + Sz;
  Sc = Spc + Snc + Sz;
  pa.i = -Sa;
  pb.i = -Sb;
  pc.i = -Sc;
  annotation(
    Icon(graphics = {Ellipse(origin = {19, -79}, extent = {{-35, 29}, {7, -13}}, endAngle = 360), Text(origin = {-12, 33}, extent = {{4, 1}, {30, -23}}, textString = "Ia"), Text(origin = {-12, -5}, extent = {{-4, -7}, {38, -31}}, textString = "Ib"), Text(origin = {16, -81}, extent = {{-22, 23}, {2, -1}}, textString = "Ic"), Ellipse(origin = {19, -33}, extent = {{-35, 29}, {7, -13}}, endAngle = 360), Ellipse(origin = {19, 15}, extent = {{-35, 29}, {7, -13}}, endAngle = 360), Text(origin = {66, 69}, extent = {{4, 1}, {30, -23}}, textString = "CR1"), Text(origin = {36, 69}, extent = {{4, 1}, {30, -23}}, textString = "CR2"), Text(origin = {6, 69}, extent = {{4, 1}, {30, -23}}, textString = "CR3"), Text(origin = {-26, 69}, extent = {{4, 1}, {30, -23}}, textString = "CR4"), Text(origin = {-58, 69}, extent = {{4, 1}, {30, -23}}, textString = "CR5"), Text(origin = {-92, 69}, extent = {{4, 1}, {30, -23}}, textString = "CR6")}, coordinateSystem(initialScale = 0.1)),
    uses(Modelica(version = "3.2.2")));
end fuente_propv2;