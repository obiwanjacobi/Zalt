#include "Thread.h"

static Thread CurrentThread;

void Thread_Init()
{
	CurrentThread.Id = 1;
}

Thread* Thread_GetCurrent()
{
	return &CurrentThread;
}