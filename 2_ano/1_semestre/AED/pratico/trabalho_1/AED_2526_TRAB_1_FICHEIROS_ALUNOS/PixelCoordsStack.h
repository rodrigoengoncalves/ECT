/// PixelCoordsStack - A STACK ADT for storing pixel coordinates as (u,v)
///
/// This module is part of a programming project for the course
/// AED, DETI / UA.PT
///
/// You may freely use and modify this code, at your own risk,
/// as long as you give proper credit to the original and subsequent authors.
///
/// The AED Team <jmadeira@ua.pt, jmr@ua.pt, ...>
/// 2025

#ifndef _PIXELCOORDS_STACK_
#define _PIXELCOORDS_STACK_

#include <inttypes.h>

#include "PixelCoords.h"

typedef struct _PixelCoordsStack Stack;

Stack* StackCreate(uint32_t size);

void StackDestroy(Stack** p);

void StackClear(Stack* s);

uint32_t StackSize(const Stack* s);

int StackIsFull(const Stack* s);

int StackIsEmpty(const Stack* s);

PixelCoords StackPeek(const Stack* s);

void StackPush(Stack* s, PixelCoords p);

PixelCoords StackPop(Stack* s);

#endif  // _PIXELCOORDS_STACK_
