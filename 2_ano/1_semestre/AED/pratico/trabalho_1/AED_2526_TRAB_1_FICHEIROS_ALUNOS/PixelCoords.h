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

#ifndef _PIXELCOORDS_H_
#define _PIXELCOORDS_H_

#include <inttypes.h>

struct _PixelCoords {
  int u;
  int v;
};

typedef struct _PixelCoords PixelCoords;

PixelCoords PixelCoordsCreate(int u, int v);

int PixelCoordsGetU(PixelCoords p);
int PixelCoordsGetV(PixelCoords p);

int PixelCoordsIsEqual(PixelCoords p1, PixelCoords p2);
int PixelCoordsIsDifferent(PixelCoords p1, PixelCoords p2);

void PixelCoordsDisplay(PixelCoords p);

#endif  // _PIXELCOORDS_H_
