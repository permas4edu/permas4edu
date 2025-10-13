Distances[] = {20.,20.,10.,5.,5.,30.,30.,10.,10.,20.,25.,20.,12.5,12.5,17.,17.,17.,17.,17.,10.,10.,35.,35.,5.,5.,20.,10.,5.,10.,10.,10.,15.,15.,5.,5.,25.,30.,30.,5.,5.,10.,10.,5.};
Point(1)={0.0,0.0,0.0};
// 2. Initialization of variables
lastSum = 0;              // Variable to store the running total
arraySize = #Distances[]; // Get the size of the array
startPointTag = 2;      // Starting tag number for generated points
//meshSize = 0.1;           // Characteristic mesh size for the points

// 3. Loop to calculate cumulative sums and generate points simultaneously
For i In {0 : arraySize - 1}
  
  // Calculate the current cumulative sum
  currentDistance = Distances[i];
  lastSum += currentDistance;

  // Store the result in a new array (optional, but good practice)
  CumulativeSums[i] = lastSum;

  // Define the coordinates for the new point. 
  // We use the cumulative sum as the X-coordinate for a 1D sequence.
  xCoord = CumulativeSums[i];
  
  // Define a unique tag for the new point
  tag = startPointTag + i;

  // 4. Generate the Point entity
  // Syntax: Point(Tag) = {X-coordinate, Y-coordinate, Z-coordinate, Mesh Size};
  Point(tag) = {xCoord, 0.0, 0.0};

  // Print the result to the console for verification
  Printf("Generated Point %g at X=%g (Sum: %g)", tag, xCoord, CumulativeSums[i]);
EndFor
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 7};
//+
Line(7) = {7, 8};
//+
Line(8) = {8, 9};
//+
Line(9) = {9, 10};
//+
Line(10) = {10, 11};
//+
Line(11) = {11, 12};
//+
Line(12) = {12, 13};
//+
Line(13) = {13, 14};
//+
Line(14) = {14, 15};
//+
Line(15) = {15, 16};
//+
Line(16) = {16, 17};
//+
Line(17) = {17, 18};
//+
Line(18) = {18, 19};
//+
Line(19) = {19, 20};
//+
Line(20) = {20, 21};
//+
Line(21) = {21, 22};
//+
Line(22) = {22, 23};
//+
Line(23) = {23, 24};
//+
Line(24) = {24, 25};
//+
Line(25) = {25, 26};
//+
Line(26) = {26, 27};
//+
Line(27) = {27, 28};
//+
Line(28) = {28, 29};
//+
Line(29) = {29, 30};
//+
Line(30) = {30, 31};
//+
Line(31) = {31, 32};
//+
Line(32) = {32, 33};
//+
Line(33) = {33, 34};
//+
Line(34) = {34, 35};
//+
Line(35) = {35, 36};
//+
Line(36) = {36, 37};
//+
Line(37) = {37, 38};
//+
Line(38) = {38, 39};
//+
Line(39) = {39, 40};
//+
Line(40) = {40, 41};
//+
Line(41) = {41, 42};
//+
Line(42) = {42, 43};
Line(43) = {43, 44};
//+
Transfinite Curve {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43} = 2 Using Progression 1;
//+
Physical Curve("SHAFT", 43) = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43};
