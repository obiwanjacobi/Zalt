#include "minunit.h"

#define mu_assert_success() mu_assert(Succeeded(Error_Get()), "No Success")
#define mu_assert_failure() mu_assert(Failed(Error_Get()), "No Error")