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

#ifndef STACK_H
#define STACK_H

# ifndef __SGI_STL_FUNCTION_H
#  include <function.h>
# endif
# ifndef __SGI_STL_HEAP_H
#  include <heap.h>
# endif
# ifndef __SGI_STL_VECTOR_H
#  include <vector.h>
# endif
# ifndef __SGI_STL_DEQUE_H
#  include <deque.h>
# endif

__BEGIN_STL_NAMESPACE

#ifndef __STL_LIMITED_DEFAULT_TEMPLATES
template <class T, class Sequence = deque<T> >
#else
template <class T, class Sequence>
#endif
class stack {
  friend inline bool operator==(const stack<T, Sequence>& x,
                                const stack<T, Sequence>& y);
  friend inline bool operator<(const stack<T, Sequence>& x,
                               const stack<T, Sequence>& y);
public:
    typedef typename Sequence::value_type value_type;
    typedef typename Sequence::size_type size_type;
protected:
    Sequence c;
public:
    bool empty() const { return c.empty(); }
    size_type size() const { return c.size(); }
    value_type& top() { return c.back(); }
    const value_type& top() const { return c.back(); }
    void push(const value_type& x) { c.push_back(x); }
    void pop() { c.pop_back(); }
};

template <class T, class Sequence>
inline
bool operator==(const stack<T, Sequence>& x, const stack<T, Sequence>& y) {
    return x.c == y.c;
}

template <class T, class Sequence>
inline
bool operator<(const stack<T, Sequence>& x, const stack<T, Sequence>& y) {
    return x.c < y.c;
}

#ifndef __STL_LIMITED_DEFAULT_TEMPLATES
template <class T, class Sequence = deque<T> >
#else
template <class T, class Sequence>
#endif
class queue {
friend inline bool operator==(const queue<T, Sequence>& x, const queue<T, Sequence>& y);
friend inline bool operator<(const queue<T, Sequence>& x, const queue<T, Sequence>& y);
public:
    typedef typename Sequence::value_type value_type;
    typedef typename Sequence::size_type size_type;
protected:
    Sequence c;
public:
    bool empty() const { return c.empty(); }
    size_type size() const { return c.size(); }
    value_type& front() { return c.front(); }
    const value_type& front() const { return c.front(); }
    value_type& back() { return c.back(); }
    const value_type& back() const { return c.back(); }
    void push(const value_type& x) { c.push_back(x); }
    void pop() { c.pop_front(); }
};

template <class T, class Sequence>
inline
bool operator==(const queue<T, Sequence>& x, const queue<T, Sequence>& y) {
    return x.c == y.c;
}

template <class T, class Sequence>
inline
bool operator<(const queue<T, Sequence>& x, const queue<T, Sequence>& y) {
    return x.c < y.c;
}

#if defined ( __STL_DEFAULT_TEMPLATE_PARAM ) && !defined ( __STL_TEMPLATE_PARAM_SUBTYPE_BUG )
template <class T, class Sequence = vector<T>, 
          class Compare = less<typename Sequence::value_type> >
#else
template <class T, class Sequence, class Compare>
#endif
class  priority_queue {
public:
    typedef typename Sequence::value_type value_type;
    typedef typename Sequence::size_type size_type;
protected:
    Sequence c;
    Compare comp;
public:
    priority_queue() :  c(), comp(Compare()) {}
    explicit priority_queue(const Compare& x) :  c(), comp(x) {}

#ifdef __STL_MEMBER_TEMPLATES
    template <class InputIterator>
    priority_queue(InputIterator first, InputIterator last, const Compare& x)
      : c(first, last), comp(x) { make_heap(c.begin(), c.end(), comp); }
    template <class InputIterator>
    priority_queue(InputIterator first, InputIterator last) 
      : c(first, last) { make_heap(c.begin(), c.end(), comp); }
#else /* __STL_MEMBER_TEMPLATES */
    priority_queue(const value_type* first, const value_type* last, 
                   const Compare& x) : c(first, last), comp(x) {
        make_heap(c.begin(), c.end(), comp);
    }
    priority_queue(const value_type* first, const value_type* last) 
      : c(first, last) { make_heap(c.begin(), c.end(), comp); }
#endif /* __STL_MEMBER_TEMPLATES */

    bool empty() const { return c.empty(); }
    size_type size() const { return c.size(); }
    const value_type& top() const { return c.front(); }
    void push(const value_type& x) {
#         ifdef __STL_USE_EXCEPTIONS
      try {
#         endif /* __STL_USE_EXCEPTIONS */
        c.push_back(x); 
        push_heap(c.begin(), c.end(), comp);
#         ifdef __STL_USE_EXCEPTIONS
      }
      catch(...) {
        c.clear();
        throw;
      }
#         endif /* __STL_USE_EXCEPTIONS */
    }
    void pop() {
#         ifdef __STL_USE_EXCEPTIONS
      try {
#         endif /* __STL_USE_EXCEPTIONS */
        pop_heap(c.begin(), c.end(), comp);
        c.pop_back();
#         ifdef __STL_USE_EXCEPTIONS
      }
      catch(...) {
        c.clear();
        throw;
      }
#         endif /* __STL_USE_EXCEPTIONS */
    }
};

// no equality is provided

#if defined  (__STL_DEFAULT_TEMPLATE_PARAM)
#  define simple_stack stack
#  define simple_queue queue
#  define simple_priority_queue priority_queue
# else
// provide ways to access short funclionality

// provide a "default" stack adaptor
template <class T>
class simple_stack : public stack<T, vector<T> > 
{
public:
    simple_stack() {}
    ~simple_stack() {}
};

// provide a "default" queue adaptor
template <class T>
class simple_queue : public queue<T, deque<T> > 
{
public:
    simple_queue() {}
    ~simple_queue() {}
};

// provide a "simple" priority queue adaptor
template <class T>
class simple_priority_queue : public priority_queue<T, deque<T> , less<T> > 
{
    typedef priority_queue<T, deque<T> , less<T> > super;
public:
    typedef typename super::value_type value_type;
    typedef typename super::size_type size_type;
    simple_priority_queue() : priority_queue() {}
    simple_priority_queue(const value_type* first, const value_type* last) : 
         priority_queue(first,last){}
};

#endif /* __STL_DEFAULT_TEMPLATE_PARAM */

__END_STL_NAMESPACE

#endif
