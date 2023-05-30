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

#ifndef __SGI_STL_MULTISET_H
#define __SGI_STL_MULTISET_H

# ifndef __SGI_STL_TREE_H
#  include <tree.h>
# endif

__BEGIN_STL_NAMESPACE
#define multiset __WORKAROUND_RENAME(multiset)

template <class Key, __DFL_TMPL_PARAM(Compare,less<Key>), 
                     __DFL_TYPE_PARAM(Alloc,alloc) >
class multiset {
    typedef multiset<Key,Compare,Alloc> self;
public:
  // typedefs:

  typedef Key key_type;
  typedef Key value_type;
  typedef Compare key_compare;
  typedef Compare value_compare;
private:
  typedef rb_tree<key_type, value_type, 
                  identity<value_type>, key_compare, Alloc> rep_type;
public:
  typedef typename rep_type::const_pointer pointer;
  typedef typename rep_type::const_reference reference;
  typedef typename rep_type::const_reference const_reference;
  typedef typename rep_type::const_iterator const_iterator;
  typedef const_iterator iterator;
  typedef typename rep_type::const_reverse_iterator reverse_iterator;
  typedef typename rep_type::const_reverse_iterator const_reverse_iterator;
  typedef typename rep_type::size_type size_type;
  typedef typename rep_type::difference_type difference_type;

private:
  rep_type t;  // red-black tree representing multiset
public:
  // allocation/deallocation

  multiset() : t(Compare()) {}
  explicit multiset(const Compare& comp) : t(comp) {}

#ifdef __STL_MEMBER_TEMPLATES
  template <class InputIterator>
  multiset(InputIterator first, InputIterator last)
    : t(Compare()) { t.insert_equal(first, last); }
  template <class InputIterator>
  multiset(InputIterator first, InputIterator last, const Compare& comp)
    : t(comp) { t.insert_equal(first, last); }
#else
  multiset(const value_type* first, const value_type* last)
    : t(Compare()) { t.insert_equal(first, last); }
  multiset(const value_type* first, const value_type* last,
           const Compare& comp)
    : t(comp) { t.insert_equal(first, last); }

  multiset(const_iterator first, const_iterator last)
    : t(Compare()) { t.insert_equal(first, last); }
  multiset(const_iterator first, const_iterator last, const Compare& comp)
    : t(comp) { t.insert_equal(first, last); }
#endif /* __STL_MEMBER_TEMPLATES */

  multiset(const multiset<Key, Compare, Alloc>& x) : t(x.t) {}
  multiset<Key, Compare, Alloc>&
  operator=(const multiset<Key, Compare, Alloc>& x) {
    t = x.t; 
    return *this;
  }

  // accessors:

  key_compare key_comp() const { return t.key_comp(); }
  value_compare value_comp() const { return t.key_comp(); }
  iterator begin() const { return t.begin(); }
  iterator end() const { return t.end(); }
  reverse_iterator rbegin() const { return t.rbegin(); } 
  reverse_iterator rend() const { return t.rend(); }
  bool empty() const { return t.empty(); }
  size_type size() const { return t.size(); }
  size_type max_size() const { return t.max_size(); }
  void swap(multiset<Key, Compare, Alloc>& x) { t.swap(x.t); }

  // insert/erase
  iterator insert(const value_type& x) { 
    return t.insert_equal(x);
  }
  iterator insert(iterator position, const value_type& x) {
    return t.insert_equal((typename rep_type::iterator&)position, x);
  }

#ifdef __STL_MEMBER_TEMPLATES  
  template <class InputIterator>
  void insert(InputIterator first, InputIterator last) {
    t.insert_equal(first, last);
  }
#else
  void insert(const value_type* first, const value_type* last) {
    t.insert_equal(first, last);
  }
  void insert(const_iterator first, const_iterator last) {
    t.insert_equal(first, last);
  }
#endif /* __STL_MEMBER_TEMPLATES */
  void erase(iterator position) { 
    t.erase((typename rep_type::iterator&)position); 
  }
  size_type erase(const key_type& x) { 
    return t.erase(x); 
  }
  void erase(iterator first, iterator last) { 
    t.erase((typename rep_type::iterator&)first, 
            (typename rep_type::iterator&)last); 
  }
  void clear() { t.clear(); }

  // multiset operations:

  iterator find(const key_type& x) const { return t.find(x); }
  size_type count(const key_type& x) const { return t.count(x); }
  iterator lower_bound(const key_type& x) const {
    return t.lower_bound(x);
  }
  iterator upper_bound(const key_type& x) const {
    return t.upper_bound(x); 
  }
  pair<iterator,iterator> equal_range(const key_type& x) const {
    return t.equal_range(x);
  }
  friend bool operator==(const self&, const self&);
  friend bool operator<(const self&, const self&);
};

// do a cleanup
#  undef multiset
// provide a way to access full funclionality 
#  define __multiset__  __FULL_NAME(multiset)

template <class Key, class Compare, class Alloc>
inline bool operator==(const __multiset__<Key, Compare, Alloc>& x, 
                       const __multiset__<Key, Compare, Alloc>& y) {
  return x.t == y.t;
}

template <class Key, class Compare, class Alloc>
inline bool operator<(const __multiset__<Key, Compare, Alloc>& x, 
                      const __multiset__<Key, Compare, Alloc>& y) {
  return x.t < y.t;
}

# if defined (__STL_CLASS_PARTIAL_SPECIALIZATION )
template <class Key, class Compare, class Alloc>
inline void swap(__multiset__<Key, Compare, Alloc>& a,
                 __multiset__<Key, Compare, Alloc>& b) { a.swap(b); }
# endif

# ifndef __STL_DEFAULT_TYPE_PARAM
// provide a "default" multiset adaptor
template <class Key, class Compare>
class multiset : public __multiset__<Key, Compare, alloc>
{
    typedef multiset<Key,Compare> self;
public:
    typedef __multiset__<Key, Compare, alloc> super;
    __CONTAINER_SUPER_TYPEDEFS
    // copy & assignment from super
    __IMPORT_SUPER_COPY_ASSIGNMENT(multiset)
    explicit multiset() : super(Compare()) {}
    explicit multiset(const Compare& comp) : super(comp) {}
    multiset(const value_type* first, const value_type* last) : 
        super(first, last, Compare()) { }
    multiset(const value_type* first, const value_type* last, 
        const Compare& comp) : super(first, last, comp) { }
    multiset(const_iterator first, const_iterator last) : 
        super(first, last, Compare()) { }
    multiset(const_iterator first, const_iterator last, 
        const Compare& comp) : super(first, last, comp) { }
};

#  if defined (__STL_BASE_MATCH_BUG)   
template <class Key, class Compare>
inline bool operator==(const multiset<Key, Compare>& x, 
                       const multiset<Key, Compare>& y) {
  typedef __multiset__<Key,Compare,alloc> super;
  return (const super&)x == (const super&)y;
}

template <class Key, class Compare>
inline bool operator<(const multiset<Key, Compare>& x, 
                      const multiset<Key, Compare>& y) {
  typedef __multiset__<Key,Compare,alloc> super;
  return (const super&)x < (const super&)y;
}
#  endif

# endif /*  __STL_DEFAULT_TEMPLATE_PARAM */

__END_STL_NAMESPACE

#endif
