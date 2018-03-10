(Info ****************************************************************************************************)
(G91:   relative)
(G20: 	units to inches)
(G21: 	units to mm)
(G38.2: probe toward workpiece, stop on contact, signor error if failure)
(Fn:	feed rate)
(G1:	linear move)
(M226:	Gcode-initiated pause)

(X-axis ***************************************************************************************************)
(relative, inches, probe half an inch negative x direction)
G91 G20 G38.2 X-.5 F5

(set position to 1/8" positive from origin on x-axis -- WORKS FOR 1/4" BIT ONLY)
G92 X.125

(move to 1/4" positive from origin on x-axis)
G1 X.25 F10

(pause)
M226

(Y-axis ***************************************************************************************************)
(relative, inches, probe half an inch negative y direction)
G91 G20 G38.2 Y-.5 F5

(set position to 1/8" positive from origin on y-axis -- WORKS FOR 1/4" BIT ONLY)
G92 Y.125

(move 1/4" positive from origin on y-axis
G1 Y.25 F10

(pause)
M226

(Z-axis ***************************************************************************************************)
(move to 1" negative from origin on y-axis)
G1 Y-1 F5

(relative, inches, probe half an inch negative z direction)
G91 G20 G38.2 Z-.5 F5

(set units to mm, set position to 15 mm positive from origin on z-axis -- SPECIFIC TO X-CARVE PROBE)
G21 G92 Z15

(set units to inches, set position to 1/4" positive from origin on z-axis)
G20 G1 Z.25 F10
