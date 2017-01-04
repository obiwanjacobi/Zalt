#ifndef __TASK_H__
#define __TASK_H__

/** \file Task.h
 *  The Task implementation is based on macros forming a switch statement. 
 *  It is possible to jump in and out of switch-cases and together
 *  with a _task variable a Task can be 'resumed' at the correct
 *  position.
 *  Keep the logic inside the Task method simple for it can cause compile errors.
 *  Calling functions is no problem.
 *
 *  This code was taken from http://msdn.microsoft.com/en-us/magazine/jj553509.aspx
 *  It seems a lightweight way to implement cooperative multitasking.
 *  You MUST have an "uint16_t _task" (private) variable to store the task state (FSM).
 */

/** MACRO: Declare a 'Task' procedure 'name'.
 *  \return Returns an indication if the task has yielded (false) or simply exited (true).
 */
#define Task_Begin(name)    \
bool_t name()               \
{                           \
    bool_t _yield_ = false; \
    switch (_task)  {       \
        case 0:


/** MACRO: Declare a 'Task' procedure 'name' with parameters.
 *  \return Returns an indication if the task has yielded (false) or simply exited (true).
 */
#define Task_BeginWithParams(name, parameters) \
bool_t name(parameters)             \
{                                   \
    bool_t _yield_ = false;         \
    switch (_task) {                \
        case 0:


/** MACRO: Declares a 'Task' procedure 'Execute'.
 *  Same as Task_Begin(name)
 */
#define Task_Begin    Task_Begin(Execute)


/** MACRO: Declare the end of the 'Task' procedure
 *  Exits the task procedure.
 */
#define Task_End                    \
    }                               \
    _task = 0; return true;         \
}


/** Asynchronously waits for the expression to become true.
 *  The expression is evaluated before the Task procedure is exited.
 */
#define Task_WaitUntil(expression)    \
    _task = __LINE__; case __LINE__:  \
    if (!(expression)) {              \
        return false;                 \
    }


/** MACRO: Exits the Task procedure immediately.
 *  \return Returns true from the Task procedure.
 */
#define Task_Return()       _task = 0; return true;


/** MACRO: Yields from the Task procedure until the expression evaluates to true.
 *  The Task procedure is yielded (exited) first and on reentry is the expression evaluated.
 *  \return Returns false from the Task procedure.
 */
#define Task_YieldUntil(expression)     \
    _yield_ = true;                     \
    _task = __LINE__; case __LINE__:    \
    if (_yield_ || !(expression)) {     \
        return false;                   \
    }


/** MACRO: Yields from the Task procedure.
 *  The Task procedure is yielded (exited) first and on reentry is the procedure resumed.
 *  \return Returns false from the Task procedure.
 */
#define Task_Yield()                    \
    _yield_ = true;                     \
    _task = __LINE__; case __LINE__:    \
    if (_yield_) { return false; }


#endif  //__TASK_H__