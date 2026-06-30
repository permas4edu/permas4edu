stations[] = {0.0263, 0.025, 0.011, 0.026, 0.026, 0.014, 0.006, 0.011, 0.002, 0.003, 0.0047, 0.0074, 0.0019, 0.0031, 0.01, 0.0189, 0.02, 0.0224, 0.0124, 0.0158, 0.02, 0.02, 0.02, 0.0093, 0.015, 0.0423, 0.03, 0.0294, 0.0356, 0.0452, 0.01, 0.0068, 0.0068};
// Starting coordinate (e.g., at X = 0)
current_position = 0.0;

// Create the initial starting point at X = 0 (optional)
Point(0) = {current_position, 0, 0};

// Loop through all elements of the array
// #stations[] returns the total number of elements (33 in this case)
For i In {0 : #stations[]-1}
  
  // Calculate the cumulative sum by adding the current distance
  current_position += stations[i];
  
  // Create the point along the X-axis
  // The point ID starts at 1 (i+1) and increments with each iteration
  Point(i+1) = {current_position, 0, 0};
  // Connect the previous point (i) with the new point (i+1)
  // This creates Line(0) between Point(0) and Point(1), Line(1) between Point(1) and Point(2), etc.
  Line(i) = {i, i+1};
EndFor//+
Transfinite Curve {7, 15, 14, 13, 12, 11, 10, 9, 8, 16, 6, 5, 4, 3, 2, 1, 0, 24, 32, 31, 30, 29, 28, 27, 26, 25, 23, 22, 21, 20, 19, 18, 17} = 2 Using Progression 1;
//+
Physical Curve("SHAFT", 33) = {7, 15, 14, 13, 12, 11, 10, 9, 8, 16, 6, 5, 4, 3, 2, 1, 0, 24, 32, 31, 30, 29, 28, 27, 26, 25, 23, 22, 21, 20, 19, 18, 17};
