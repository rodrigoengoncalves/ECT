/// PixelCoordsQueue - A QUEUE ADT for storing pixel coordinates as (u,v)
///
/// This module is part of a programming project for the course
/// AED, DETI / UA.PT
///
/// You may freely use and modify this code, at your own risk,
/// as long as you give proper credit to the original and subsequent authors.
///
/// The AED Team <jmadeira@ua.pt, jmr@ua.pt, ...>
/// 2025

#ifndef _PIXELCOORDS_QUEUE_
#define _PIXELCOORDS_QUEUE_

#include <inttypes.h>

#include "PixelCoords.h"

typedef struct _PixelCoordsQueue Queue;

Queue* QueueCreate(uint32_t size);

void QueueDestroy(Queue** p);

void QueueClear(Queue* q);

uint32_t QueueSize(const Queue* q);

int QueueIsFull(const Queue* q);

int QueueIsEmpty(const Queue* q);

PixelCoords QueuePeek(const Queue* q);

void QueueEnqueue(Queue* q, PixelCoords p);

PixelCoords QueueDequeue(Queue* q);

#endif  // _PIXELCOORDS_QUEUE_
