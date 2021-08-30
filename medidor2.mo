model medidor2

  parameter Real f(start=60);
  constant Real PI=3.14159265359;
  Real w=f*2*PI;
  Real d120=2*PI/3;
  
  Modelica.Blocks.Interfaces.RealInput Sa(start = 0.0, unit="A") annotation(
    Placement(visible = true, transformation(origin = {-56, 16}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-60, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Sb(unit="A") annotation(
    Placement(visible = true, transformation(origin = {-56, 16}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-60, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Sc(unit="A") annotation(
    Placement(visible = true, transformation(origin = {-56, 16}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-60, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  
  Real Sa90(unit="A");
  Real Sb90(unit="A");
  Real Sc90(unit="A");
  Real Sz(unit="A");
  Real Sz90(unit="A");
  Real Spa(unit="A");
  Real Spb(unit="A");
  Real Spc(unit="A");
  Real Sna(unit="A");
  Real Snb(unit="A");
  Real Snc(unit="A"); 
  Real Szma(unit="A");  
  Real Szmb(unit="A");  
  Real Szmc(unit="A");  
  
  Real Sppa(unit="A");//se pueden quitar, son solo prueba
  Real Sppb(unit="A");//se pueden quitar, son solo prueba
  Real Sppc(unit="A");//se pueden quitar, son solo prueba
  
  Real Spdo(unit="A");
  Real Spqo(unit="A");
  Real Sndo(unit="A");
  Real Snqo(unit="A");
  Real Szmdo(unit="A");
  Real Szmqo(unit="A");
  
  Modelica.Blocks.Interfaces.RealOutput Mpd annotation(
    Placement(visible = true, transformation(origin = {62, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {88, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput Mpq annotation(
    Placement(visible = true, transformation(origin = {62, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {88, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput Mnd annotation(
    Placement(visible = true, transformation(origin = {62, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {88, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput Mnq annotation(
    Placement(visible = true, transformation(origin = {62, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {88, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput Mhmd annotation(
    Placement(visible = true, transformation(origin = {62, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {88, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput Mhmq annotation(
    Placement(visible = true, transformation(origin = {62, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {88, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
equation
  Sz=(1/3)*(Sa+Sb+Sc);
  Sa90=(1/w)*der(Sa);
  Sb90=(1/w)*der(Sb);
  Sc90=(1/w)*der(Sc);
  Sz90=(1/w)*der(Sz);
  
  Spa=(1/3)*(+1*Sa-0.5*Sb-0.5*Sc)-((3^0.5)/6)*(+0*Sa90-1*Sb90+1*Sc90);
  Spb=(1/3)*(-0.5*Sa+1*Sb-0.5*Sc)-((3^0.5)/6)*(+1*Sa90-0*Sb90-1*Sc90);
  Spc=(1/3)*(-0.5*Sa-0.5*Sb+1*Sc)-((3^0.5)/6)*(-1*Sa90+1*Sb90-0*Sc90);
  
  Sna=(1/3)*(+1*Sa-0.5*Sb-0.5*Sc)+((3^0.5)/6)*(+0*Sa90-1*Sb90+1*Sc90);
  Snb=(1/3)*(-0.5*Sa+1*Sb-0.5*Sc)+((3^0.5)/6)*(+1*Sa90-0*Sb90-1*Sc90);
  Snc=(1/3)*(-0.5*Sa-0.5*Sb+1*Sc)+((3^0.5)/6)*(-1*Sa90+1*Sb90-0*Sc90);
  
  Szma=Sz;
  Szmb=-0.5*Sz-((3^0.5)/2)*Sz90;
  Szmc=-0.5*Sz+((3^0.5)/2)*Sz90;
  
  Sppa=Spa+Sna+Sz;//se pueden quitar, son solo prueba
  Sppb=Spb+Snb+Sz;//se pueden quitar, son solo prueba
  Sppc=Spc+Snc+Sz;//se pueden quitar, son solo prueba
  
  Spdo= (2/3)*( cos(w*time)*Spa + cos(w*time-d120)*Spb + cos(w*time-2*d120)*Spc);
  Spqo= (2/3)*(-sin(w*time)*Spa - sin(w*time-d120)*Spb - sin(w*time-2*d120)*Spc);
  Sndo= (2/3)*( cos(w*time)*Sna + cos(w*time+d120)*Snb + cos(w*time+2*d120)*Snc);
  Snqo= (2/3)*(-sin(w*time)*Sna - sin(w*time+d120)*Snb - sin(w*time+2*d120)*Snc);
  Szmdo=(2/3)*( cos(w*time)*Szma + cos(w*time-d120)*Szmb + cos(w*time-2*d120)*Szmc);
  Szmqo=(2/3)*(-sin(w*time)*Szma - sin(w*time-d120)*Szmb - sin(w*time-2*d120)*Szmc);
  
  Mpd=Spdo;
  Mpq=Spqo;
  Mnd=Sndo;
  Mnq=Snqo;
  Mhmd=Szmdo;
  Mhmq=Szmqo;
  
  
  
    
annotation(
    uses(Modelica(version = "3.2.2")),
    Icon(graphics = {Rectangle(origin = {10, 1}, extent = {{-90, 93}, {90, -93}}), Text(origin = {-16, 61}, extent = {{-18, 9}, {18, -9}}, textString = "Sa"), Text(origin = {-14, 1}, extent = {{-18, 9}, {18, -9}}, textString = "Sb"), Text(origin = {-16, -59}, extent = {{-18, 9}, {18, -9}}, textString = "Sc"), Text(origin = {61, 51}, extent = {{-15, 25}, {13, 9}}, textString = "CR1"), Text(origin = {61, 1}, extent = {{-15, 25}, {13, 9}}, textString = "CR3"), Text(origin = {61, 25}, extent = {{-15, 25}, {13, 9}}, textString = "CR2"), Text(origin = {61, -25}, extent = {{-15, 25}, {13, 9}}, textString = "CR4"), Text(origin = {61, -53}, extent = {{-15, 25}, {13, 9}}, textString = "CR5"), Text(origin = {61, -81}, extent = {{-15, 25}, {13, 9}}, textString = "CR6")}, coordinateSystem(initialScale = 0.1)));
end medidor2;