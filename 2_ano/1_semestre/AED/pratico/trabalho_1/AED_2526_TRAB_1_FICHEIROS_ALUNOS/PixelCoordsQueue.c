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

#include "PixelCoordsQueue.h"

#include <assert.h>
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "PixelCoords.h"

struct _PixelCoordsQueue {
  uint32_t max_size;  // maximum Queue size
  uint32_t cur_size;  // current Queue size
  uint32_t head;
  uint32_t tail;
  PixelCoords* data;  // the data (PixelCoords instances stored in an array)
};

// PRIVATE auxiliary function

static uint32_t increment_index(const Queue* q, uint32_t i) {
  return (i + 1 < q->max_size) ? i + 1 : 0;
}

// PUBLIC functions

Queue* QueueCreate(uint32_t size) {
  assert(size > 1);
  Queue* q = malloc(sizeof(Queue));
  if (q == NULL) abort();

  q->max_size = size;
  q->cur_size = 0;

  q->head = 1;  // cur_size = tail - head + 1
  q->tail = 0;

  q->data = malloc(size * sizeof(PixelCoords));
  if (q->data == NULL) {
    free(q);
    abort();
  }
  return q;
}

void QueueDestroy(Queue** p) {
  assert(*p != NULL);
  Queue* q = *p;
  free(q->data);
  free(q);
  *p = NULL;
}

void QueueClear(Queue* q) {
  q->cur_size = 0;
  q->head = 1;  // cur_size = tail - head + 1
  q->tail = 0;
}

uint32_t QueueSize(const Queue* q) { return q->cur_size; }

int QueueIsFull(const Queue* q) { return (q->cur_size == q->max_size); }

int QueueIsEmpty(const Queue* q) { return (q->cur_size == 0); }

PixelCoords QueuePeek(const Queue* q) {
  assert(q->cur_size > 0);
  return q->data[q->head];
}

void QueueEnqueue(Queue* q, PixelCoords p) {
  assert(q->cur_size <= q->max_size);

  // Is the queue full?
  if (q->cur_size == q->max_size) {
    PixelCoords* old = q->data;  // The current queue array that is full

    q->max_size *= 10;
    q->data = (PixelCoords*)malloc(q->max_size * sizeof(PixelCoords));
    if (q->data == NULL) {
      free(q);
      free(old);
      abort();
    }

    // Copying to the new queue array
    // 1st block of queue elements
    uint32_t size_block_1 = q->cur_size - q->head;
    // Using pointer arithmetic
    memcpy(q->data, (old + q->head), size_block_1 * sizeof(PixelCoords));
    if (size_block_1 != q->cur_size) {
      // 2nd block of queue elements
      uint32_t size_block_2 = q->cur_size - size_block_1;
      // Using pointer arithmetic
      memcpy((q->data + size_block_1), old, size_block_2 * sizeof(PixelCoords));
    }

    // Freeing the old array
    free(old);

    // Resetting the head and tail indices
    q->head = 0;
    q->tail = q->cur_size - 1;
  }

  q->tail = increment_index(q, q->tail);
  q->data[q->tail] = p;
  q->cur_size++;
}

PixelCoords QueueDequeue(Queue* q) {
  assert(q->cur_size > 0);
  int old_head = q->head;
  q->head = increment_index(q, q->head);
  q->cur_size--;
  return q->data[old_head];
}
