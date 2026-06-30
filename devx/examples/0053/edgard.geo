stations[] = {57.5,57.5,9.,9.,49.5,49.5,23.5,23.5,47.5,47.5,40.,40.,40.5,40.5,9.,9.,15.,15.};
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
//+
Transfinite Curve {9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 14, 15, 16, 17} = 2 Using Progression 1;
//+
Physical Curve("SHAFT", 18) = {9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 14, 15, 16, 17};
