/*
 * Copyright (c) 1997
 * Moscow Center for SPARC Technology
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Moscow Center for SPARC Technology makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 *
 */

// this file is used only by compilers supporting separate compilation
// of templates. The trick is to ignore parts of the header defining 
// non-inline methods on regular compilation, revealing them only for compilation 
// of .cpp file initiated by the compiler

# ifndef __SGI_STL_CONFIG_H
#  include <stl_config.h>
# endif
# if defined (__STL_SEPARATE_TEMPLATE_BODY )
// Just in case compiler did not include it implicitly
#  ifndef __SGI_STL_HASHTABLE_H
#   include <hashtable.h>
#  endif
#  undef __SGI_STL_HASHTABLE_H
#  define __STL_COMPILE_TEMPLATE_BODY_ONLY
#  include <hashtable.h>
#  undef __STL_COMPILE_TEMPLATE_BODY_ONLY
# endif /* __STL_SEPARATE_TEMPLATE_BODY */
