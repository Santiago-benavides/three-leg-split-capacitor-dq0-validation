model Simulacion_1
  Modelica.Electrical.Analog.Sources.CosineVoltage Va(V = 169.70562, freqHz = 60) annotation(
    Placement(visible = true, transformation(origin = {-108, 104}, extent = {{-6, -6}, {6, 6}}, rotation = 180)));
  Modelica.Electrical.Analog.Sources.CosineVoltage Vb(V = 169.70562, freqHz = 60, phase = -2.0944) annotation(
    Placement(visible = true, transformation(origin = {-108, 92}, extent = {{-6, -6}, {6, 6}}, rotation = 180)));
  Modelica.Electrical.Analog.Sources.CosineVoltage Vc(V = 169.70562, freqHz = 60, phase = -4.18879) annotation(
    Placement(visible = true, transformation(origin = {-108, 80}, extent = {{-6, -6}, {6, 6}}, rotation = 180)));
  Modelica.Electrical.Analog.Sensors.CurrentSensor Sfa annotation(
    Placement(visible = true, transformation(origin = {-62, 104}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.CurrentSensor Sfb annotation(
    Placement(visible = true, transformation(origin = {-76, 92}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.CurrentSensor Sfc annotation(
    Placement(visible = true, transformation(origin = {-88, 80}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground2 annotation(
    Placement(visible = true, transformation(origin = {-138, 92}, extent = {{-12, -12}, {12, 12}}, rotation = -90)));
  medidor2 MGrid(f = 60) annotation(
    Placement(visible = true, transformation(origin = {-36, 146}, extent = {{-24, -24}, {24, 24}}, rotation = 90)));
  Modelica.Electrical.Analog.Sensors.CurrentSensor Sloadc annotation(
    Placement(visible = true, transformation(origin = {132, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.CurrentSensor Sloadb annotation(
    Placement(visible = true, transformation(origin = {156, 92}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.CurrentSensor Sloada annotation(
    Placement(visible = true, transformation(origin = {182, 104}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  medidor2 MLoad(f = 60) annotation(
    Placement(visible = true, transformation(origin = {158, 34}, extent = {{-42, -42}, {42, 42}}, rotation = -90)));
  Modelica.Blocks.Math.Gain g(k = 1)  annotation(
    Placement(visible = true, transformation(origin = {88, -78}, extent = {{-4, -4}, {4, 4}}, rotation = 180)));
  Modelica.Blocks.Math.Gain g1(k = 1)  annotation(
    Placement(visible = true, transformation(origin = {88, -66}, extent = {{-4, -4}, {4, 4}}, rotation = 180)));
  Modelica.Blocks.Math.Gain g2(k = 1)  annotation(
    Placement(visible = true, transformation(origin = {88, -54}, extent = {{-4, -4}, {4, 4}}, rotation = 180)));
  Modelica.Blocks.Math.Gain g3(k = 1) annotation(
    Placement(visible = true, transformation(origin = {88, -42}, extent = {{-4, -4}, {4, 4}}, rotation = 180)));
  Modelica.Blocks.Math.Gain g4(k = 1) annotation(
    Placement(visible = true, transformation(origin = {88, -30}, extent = {{-4, -4}, {4, 4}}, rotation = 180)));
  Modelica.Blocks.Sources.Constant Resource(k = 11.09) annotation(
    Placement(visible = true, transformation(origin = {-79, -69}, extent = {{-17, -17}, {17, 17}}, rotation = 90)));
  fuente_propv2 DC_AC1(f = 60) annotation(
    Placement(visible = true, transformation(origin = {-17, 19}, extent = {{-47, -47}, {47, 47}}, rotation = 180)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(visible = true, transformation(origin = {252, -90}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R2a(R = 3) annotation(
    Placement(visible = true, transformation(origin = {272, 14}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Inductor L2a(L = 0.005) annotation(
    Placement(visible = true, transformation(origin = {272, 40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor R2b(R = 3) annotation(
    Placement(visible = true, transformation(origin = {252, 14}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Inductor L2b(L = 0.013) annotation(
    Placement(visible = true, transformation(origin = {252, 40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor R2c(R = 4) annotation(
    Placement(visible = true, transformation(origin = {230, 14}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Capacitor C1(C = 0.0015)  annotation(
    Placement(visible = true, transformation(origin = {230, 40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-74, 30}, extent = {{-14, -14}, {14, 14}}, rotation = -90)));
equation
  connect(Vb.n, ground2.p) annotation(
    Line(points = {{-114, 92}, {-126, 92}}, color = {0, 0, 255}));
  connect(Vc.n, ground2.p) annotation(
    Line(points = {{-114, 80}, {-126, 80}, {-126, 92}}, color = {0, 0, 255}));
  connect(Va.p, Sfa.p) annotation(
    Line(points = {{-102, 104}, {-70, 104}}, color = {0, 0, 255}));
  connect(Vb.p, Sfb.p) annotation(
    Line(points = {{-102, 92}, {-84, 92}}, color = {0, 0, 255}));
  connect(Vc.p, Sfc.p) annotation(
    Line(points = {{-102, 80}, {-96, 80}}, color = {0, 0, 255}));
  connect(Va.n, ground2.p) annotation(
    Line(points = {{-114, 104}, {-126, 104}, {-126, 92}}, color = {0, 0, 255}));
  connect(Sfc.i, MGrid.Sc) annotation(
    Line(points = {{-88, 72}, {-22, 72}, {-22, 132}}, color = {0, 0, 127}));
  connect(Sfb.i, MGrid.Sb) annotation(
    Line(points = {{-76, 84}, {-36, 84}, {-36, 132}}, color = {0, 0, 127}));
  connect(Sloadc.i, MLoad.Sc) annotation(
    Line(points = {{132, 70}, {132, 61.5}, {133, 61.5}, {133, 59}}, color = {0, 0, 127}));
  connect(MLoad.Mhmd, g3.u) annotation(
    Line(points = {{143, -3}, {143, -42}, {93, -42}}, color = {0, 0, 127}));
  connect(MLoad.Mnq, g2.u) annotation(
    Line(points = {{155, -3}, {155, -54}, {93, -54}}, color = {0, 0, 127}));
  connect(MLoad.Mnd, g1.u) annotation(
    Line(points = {{166, -3}, {166, -66}, {93, -66}}, color = {0, 0, 127}));
  connect(MLoad.Mpq, g.u) annotation(
    Line(points = {{176, -3}, {176, -78}, {93, -78}}, color = {0, 0, 127}));
  connect(Sfa.i, MGrid.Sa) annotation(
    Line(points = {{-62, 96}, {-50, 96}, {-50, 132}}, color = {0, 0, 127}));
  connect(Sloadc.p, Sfc.n) annotation(
    Line(points = {{122, 80}, {-80, 80}}, color = {0, 0, 255}));
  connect(Sloadb.p, Sfb.n) annotation(
    Line(points = {{146, 92}, {-68, 92}}, color = {0, 0, 255}));
  connect(Sloada.p, Sfa.n) annotation(
    Line(points = {{172, 104}, {-54, 104}}, color = {0, 0, 255}));
  connect(DC_AC1.pa, Sfa.n) annotation(
    Line(points = {{1, 8}, {56, 8}, {56, 104}, {-54, 104}}, color = {0, 0, 255}));
  connect(DC_AC1.pb, Sfb.n) annotation(
    Line(points = {{1, 30}, {38, 30}, {38, 92}, {-68, 92}}, color = {0, 0, 255}));
  connect(DC_AC1.pc, Sfc.n) annotation(
    Line(points = {{1, 52}, {20, 52}, {20, 80}, {-80, 80}}, color = {0, 0, 255}));
  connect(Resource.y, DC_AC1.Spd) annotation(
    Line(points = {{-79, -50}, {-79, -44.6}, {-54, -44.6}, {-54, -21.6}}, color = {0, 0, 127}));
  connect(DC_AC1.Szmd, g3.y) annotation(
    Line(points = {{3, -21}, {3, -42}, {84, -42}}, color = {0, 0, 127}));
  connect(DC_AC1.Snq, g2.y) annotation(
    Line(points = {{-11, -21}, {-11, -54}, {84, -54}}, color = {0, 0, 127}));
  connect(DC_AC1.Snd, g1.y) annotation(
    Line(points = {{-25, -21}, {-25, -66}, {84, -66}}, color = {0, 0, 127}));
  connect(DC_AC1.Spq, g.y) annotation(
    Line(points = {{-40, -21}, {-40, -78}, {84, -78}}, color = {0, 0, 127}));
  connect(L2a.n, R2a.p) annotation(
    Line(points = {{272, 30}, {272, 24}}, color = {0, 0, 255}));
  connect(L2b.n, R2b.p) annotation(
    Line(points = {{252, 30}, {252, 24}}, color = {0, 0, 255}));
  connect(L2b.p, Sloadb.n) annotation(
    Line(points = {{252, 50}, {252, 92}, {166, 92}}, color = {0, 0, 255}));
  connect(L2a.p, Sloada.n) annotation(
    Line(points = {{272, 50}, {272, 104}, {192, 104}}, color = {0, 0, 255}));
  connect(g4.u, MLoad.Mhmq) annotation(
    Line(points = {{93, -30}, {130, -30}, {130, -3}, {131, -3}}, color = {0, 0, 127}));
  connect(MLoad.Sa, Sloada.i) annotation(
    Line(points = {{184, 60}, {182, 60}, {182, 94}, {182, 94}}, color = {0, 0, 127}));
  connect(MLoad.Sb, Sloadb.i) annotation(
    Line(points = {{158, 60}, {156, 60}, {156, 82}, {156, 82}}, color = {0, 0, 127}));
  connect(DC_AC1.Szmq, g4.y) annotation(
    Line(points = {{18, -21}, {18, -30}, {84, -30}}, color = {0, 0, 127}));
  connect(R2c.n, ground1.p) annotation(
    Line(points = {{230, 4}, {230, 4}, {230, -74}, {252, -74}, {252, -76}}, color = {0, 0, 255}));
  connect(R2a.n, ground1.p) annotation(
    Line(points = {{272, 4}, {272, 4}, {272, -74}, {252, -74}, {252, -76}}, color = {0, 0, 255}));
  connect(R2b.n, ground1.p) annotation(
    Line(points = {{252, 4}, {252, 4}, {252, -76}, {252, -76}}, color = {0, 0, 255}));
  connect(C1.n, R2c.p) annotation(
    Line(points = {{230, 30}, {230, 30}, {230, 24}, {230, 24}}, color = {0, 0, 255}));
  connect(Sloadc.n, C1.p) annotation(
    Line(points = {{142, 80}, {230, 80}, {230, 50}, {230, 50}}, color = {0, 0, 255}));
  connect(DC_AC1.nc, ground.p) annotation(
    Line(points = {{-40, 52}, {-60, 52}, {-60, 30}}, color = {0, 0, 255}));
  connect(DC_AC1.na, ground.p) annotation(
    Line(points = {{-40, 8}, {-60, 8}, {-60, 30}}, color = {0, 0, 255}));
  connect(DC_AC1.nb, ground.p) annotation(
    Line(points = {{-40, 30}, {-60, 30}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "3.2.2")),
  Diagram(coordinateSystem(extent = {{-150, -150}, {300, 200}}, initialScale = 0.1), graphics = {Rectangle(origin = {-83, 120}, pattern = LinePattern.Dash, extent = {{-39, 52}, {73, -50}}), Rectangle(origin = {-18.1609, -5.11693}, pattern = LinePattern.Dash, extent = {{-90.481, 68.594}, {88.1609, -96.0314}}), Rectangle(origin = {207, 1}, pattern = LinePattern.Dash, extent = {{-103, 125}, {83, -101}}), Rectangle(origin = {88, -55}, pattern = LinePattern.Dash, extent = {{10, 35}, {-8, -35}}), Text(origin = {-82, 181}, lineThickness = 0.5, extent = {{-20, 3}, {48, -7}}, textString = "1) Main Grid", fontSize = 10), Text(origin = {-50, -103}, lineThickness = 0.5, extent = {{-20, 3}, {72, -13}}, textString = "2) EG", fontSize = 10), Text(origin = {146, 135}, lineThickness = 0.5, extent = {{-20, 3}, {84, -11}}, textString = "4) Load", fontSize = 10), Line(origin = {70.26, 62.16}, points = {{19.1297, -61.1297}, {19.1297, 62.8703}, {-32.8703, 62.8703}}, arrow = {Arrow.Open, Arrow.None}), Text(origin = {38.549, 135.429}, lineThickness = 0.5, extent = {{-12.549, 2.57143}, {51.451, -9.42857}}, textString = "3) MGCC", fontSize = 10)}),
  Icon(coordinateSystem(extent = {{-150, -150}, {300, 200}})),
  version = "");
end Simulacion_1;