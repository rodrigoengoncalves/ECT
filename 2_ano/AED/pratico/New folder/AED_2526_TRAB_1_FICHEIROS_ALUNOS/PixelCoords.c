/// PixelCoords - A simple ADT for storing pixel coordinates as (u,v)
///
/// This module is part of a programming project for the course
/// AED, DETI / UA.PT
///
/// You may freely use and modify this code, at your own risk,
/// as long as you give proper credit to the original and subsequent authors.
///
/// The AED Team <jmadeira@ua.pt, jmr@ua.pt, ...>
/// 2025

#include "PixelCoords.h"

#include <inttypes.h>
#include <stdio.h>

PixelCoords PixelCoordsCreate(int u, int v) {
  PixelCoords p;
  p.u = u;
  p.v = v;

  return p;
}

int PixelCoordsGetU(PixelCoords p) { return p.u; }

int PixelCoordsGetV(PixelCoords p) { return p.v; }

int PixelCoordsIsEqual(PixelCoords p1, PixelCoords p2) {
  return (p1.u == p2.u) && (p1.v == p2.v);
}

int PixelCoordsIsDifferent(PixelCoords p1, PixelCoords p2) {
  return (p1.u != p2.u) || (p1.v != p2.v);
}

void PixelCoordsDisplay(PixelCoords p) {
  printf("(%3d, %3d)\n", p.u, p.v);
}

