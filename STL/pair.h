/*
 *
 * Copyright (c) 1994
 * Hewlett-Packard Company
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Hewlett-Packard Company makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 *
 *
 * Copyright (c) 1996
 * Silicon Graphics Computer Systems, Inc.
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Silicon Graphics makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 *
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

#ifndef __SGI_STL_PAIR_H
# define __SGI_STL_PAIR_H

# ifndef __SGI_STL_CONFIG_H
#  include <stl_config.h>
# endif

__BEGIN_STL_NAMESPACE

template <class T1, class T2>
struct pair {
    typedef T1 first_type;
    typedef T2 second_type;

    T1 first;
    T2 second;
# if defined (__STL_CONST_CONSTRUCTOR_BUG)
    pair() : first(T1()), second(T2()) {}
# else
    pair() {}
# endif
    pair(const T1& a, const T2& b) : first(a), second(b) {}

# ifdef __STL_MEMBER_TEMPLATES
    template <class U1, class U2>
    pair(const pair<U1, U2>& p) : first(p.first), second(p.second) {}
# else
    // some compilers need that
    pair(const pair<T1,T2>& o) : first(o.first), second(o.second) {}
# endif

    __TRIVIAL_DESTRUCTOR(pair)
};

template <class T1, class T2>
inline bool operator==(const pair<T1, T2>& x, const pair<T1, T2>& y) { 
    return x.first == y.first && x.second == y.second; 
}

template <class T1, class T2>
inline bool operator<(const pair<T1, T2>& x, const pair<T1, T2>& y) { 
    return (x.first < y.first) || (!(y.first < x.first) && x.second < y.second); 
}

template <class T1, class T2>
inline pair<T1, T2> make_pair(const T1& x, const T2& y) {
    return pair<T1, T2>(x, y);
}
__END_STL_NAMESPACE

# if defined ( __STL_CLASS_PARTIAL_SPECIALIZATION )
#  ifndef __TYPE_TRAITS_H
#   include <type_traits.h>
#  endif
__BEGIN_STL_NAMESPACE
template <class T1, class T2>
struct __type_traits< pair<T1,T2> > : 
    public __type_traits_compose<T1,T2> {};
__END_STL_NAMESPACE
# endif

#endif
