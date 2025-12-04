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

#include "PixelCoordsStack.h"

#include <assert.h>
#include <inttypes.h>
#include <stdlib.h>

#include "PixelCoords.h"

struct _PixelCoordsStack {
  uint32_t max_size;  // maximum stack size
  uint32_t cur_size;  // current stack size
  PixelCoords* data;  // the stack data (stored in an array)
};

Stack* StackCreate(uint32_t size) {
  assert(size > 1);
  Stack* s = malloc(sizeof(Stack));
  if (s == NULL) abort();

  s->max_size = size;
  s->cur_size = 0;

  s->data = malloc(size * sizeof(PixelCoords));
  if (s->data == NULL) {
    free(s);
    abort();
  }
  return s;
}

void StackDestroy(Stack** p) {
  assert(*p != NULL);
  Stack* s = *p;
  free(s->data);
  free(s);
  *p = NULL;
}

void StackClear(Stack* s) { s->cur_size = 0; }

uint32_t StackSize(const Stack* s) { return s->cur_size; }

int StackIsFull(const Stack* s) { return (s->cur_size == s->max_size); }

int StackIsEmpty(const Stack* s) { return (s->cur_size == 0); }

PixelCoords StackPeek(const Stack* s) {
  assert(s->cur_size > 0);
  return s->data[s->cur_size - 1];
}

void StackPush(Stack* s, PixelCoords p) {
  assert(s->cur_size <= s->max_size);

  // Is the stack full?
  if (s->cur_size == s->max_size) {
    s->max_size *= 2;
    s->data = (PixelCoords*)realloc(s->data, s->max_size * sizeof(PixelCoords));
    if (s->data == NULL) {
      free(s);
      abort();
    }
  }

  s->data[s->cur_size++] = p;
}

PixelCoords StackPop(Stack* s) {
  assert(s->cur_size > 0);
  return s->data[--(s->cur_size)];
}
