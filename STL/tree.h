/*
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
 * Adaptation:
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
 *
 */

#ifndef __SGI_STL_TREE_H
#define __SGI_STL_TREE_H

/*

Red-black tree class, designed for use in implementing STL
associative containers (set, multiset, map, and multimap). The
insertion and deletion algorithms are based on those in Cormen,
Leiserson, and Rivest, Introduction to Algorithms (MIT Press, 1990),
except that

(1) the header cell is maintained with links not only to the root
but also to the leftmost node of the tree, to enable constant time
begin(), and to the rightmost node of the tree, to enable linear time
performance when used with the generic set algorithms (set_union,
etc.);

(2) when a node being deleted has two children its successor node is
relinked into its place, rather than copied, so that the only
iterators invalidated are those referring to the deleted node.

*/

# if defined (__STL_COMPILE_TEMPLATE_BODY_ONLY)
__BEGIN_STL_NAMESPACE
# else 

# include <stddef.h>
# ifndef __SGI_STL_ALGOBASE_H
#  include <algobase.h>
# endif
# ifndef __SGI_STL_ITERATOR_H
#  include <iterator.h>
# endif
# ifndef __SGI_STL_ALLOC_H
#  include <alloc.h>
# endif

# if defined ( __STL_USE_ABBREVS )
// ugliness is intentional - to reduce conflicts possibility
#  define __rb_tree_node_base       _rbT__NB
#  define __rb_tree_node            _rbT__N
#  define __rb_tree_base_iterator   _rbTB__It
#  define __rb_tree_iterator        _rbT__It
#  define __rb_tree_base            _rbT__B
# endif

__BEGIN_STL_NAMESPACE

typedef bool __rb_tree_color_type;
const __rb_tree_color_type __rb_tree_red = false;
const __rb_tree_color_type __rb_tree_black = true;

struct __rb_tree_node_base
{
  typedef __rb_tree_color_type color_type;
  typedef __rb_tree_node_base* base_ptr;

  color_type color; 
  base_ptr parent;
  base_ptr left;
  base_ptr right;

  static base_ptr minimum(base_ptr x)
  {
    while (x->left != 0) x = x->left;
    return x;
  }

  static base_ptr maximum(base_ptr x)
  {
    while (x->right != 0) x = x->right;
    return x;
  }
};

template <class Value>
struct __rb_tree_node : public __rb_tree_node_base
{
  typedef __rb_tree_node<Value>* link_type;
  Value value_field;
};


struct __rb_tree_base_iterator
# if defined ( __STL_DEBUG )
    : public __safe_base 
# endif
{
  typedef __rb_tree_node_base::base_ptr base_ptr;
  typedef bidirectional_iterator_tag iterator_category;
  typedef ptrdiff_t difference_type;
  base_ptr node;
# if defined ( __STL_DEBUG )
  base_ptr get_iterator() const { return node; }  
  base_ptr owner_node() const {
      const __safe_base* ptr = owner();
      return ptr ? base_ptr(ptr->owner_) : base_ptr(0); 
  }
  __rb_tree_base_iterator() : __safe_base(0) {}
  __rb_tree_base_iterator(const __safe_base* root, base_ptr p) : 
      __safe_base(root), node(p) {}
# endif
  void increment()
  {
    __stl_verbose_assert(valid(), __STL_MSG_INVALID_ITERATOR); 
    __stl_verbose_assert(node!=owner_node(), __STL_MSG_INVALID_ADVANCE); 
    if (node->right != 0) {
      node = node->right;
      while (node->left != 0)
        node = node->left;
    }
    else {
      base_ptr y = node->parent;
      while (node == y->right) {
        node = y;
        y = y->parent;
      }
      if (node->right != y)
        node = y;
    }
  }

  void decrement()
  {
    __stl_verbose_assert(valid(), __STL_MSG_INVALID_ITERATOR); 
    __stl_verbose_assert(node!=owner_node()->left, __STL_MSG_INVALID_ADVANCE); 
    if (node->color == __rb_tree_red &&
        node->parent->parent == node)
      node = node->right;
    else if (node->left != 0) {
      base_ptr y = node->left;
      while (y->right != 0)
        y = y->right;
      node = y;
    }
    else {
      base_ptr y = node->parent;
      while (node == y->left) {
        node = y;
        y = y->parent;
      }
      node = y;
    }
  }
};

template <class Value, class Ref, class Ptr>
struct __rb_tree_iterator : public __rb_tree_base_iterator
{
  typedef Value value_type;
  typedef Value& reference;
  typedef Value* pointer;
  typedef __rb_tree_iterator<Value, Value&, Value*>             iterator;
  typedef __rb_tree_iterator<Value, const Value&, const Value*> const_iterator;
  typedef __rb_tree_iterator<Value, Ref, Ptr>                   self;
  typedef __rb_tree_node<Value>* link_type;

  __rb_tree_iterator() {}
# if defined ( __STL_DEBUG )
  __rb_tree_iterator(const __safe_base* root, link_type x) : __rb_tree_base_iterator(root,x) {}
  __rb_tree_iterator(const iterator& it)  : 
      __rb_tree_base_iterator((const __safe_base*)it.owner_, it.node) {}
# else
  __rb_tree_iterator(link_type x) { node = x; }
  __rb_tree_iterator(const iterator& it) { node = it.node; }
# endif

  reference operator*() const { 
      __stl_verbose_assert(node!=owner_node(), __STL_MSG_NOT_DEREFERENCEABLE); 
      return link_type(node)->value_field; 
  }
#ifndef __SGI_STL_NO_ARROW_OPERATOR
  pointer operator->() const { return &(operator*()); }
#endif /* __SGI_STL_NO_ARROW_OPERATOR */

  self& operator++() { increment(); return *this; }
  self operator++(int) {
    self tmp = *this;
    increment();
    return tmp;
  }
    
  self& operator--() { decrement(); return *this; }
  self operator--(int) {
    self tmp = *this;
    decrement();
    return tmp;
  }
};

inline bool operator==(const __rb_tree_base_iterator& x,
                       const __rb_tree_base_iterator& y) {
  __stl_debug_check(__check_same_owner(x,y));                         
  return x.node == y.node;
}

inline bool operator!=(const __rb_tree_base_iterator& x,
                       const __rb_tree_base_iterator& y) {
  return x.node != y.node;
}

#ifndef __STL_CLASS_PARTIAL_SPECIALIZATION

inline bidirectional_iterator_tag
iterator_category(const __rb_tree_base_iterator&) {
  return bidirectional_iterator_tag();
}

inline __rb_tree_base_iterator::difference_type*
distance_type(const __rb_tree_base_iterator&) {
  return (__rb_tree_base_iterator::difference_type*) 0;
}

template <class Value, class Ref, class Ptr>
inline Value* value_type(const __rb_tree_iterator<Value, Ref, Ptr>&) {
  return (Value*) 0;
}

#endif /* __STL_CLASS_PARTIAL_SPECIALIZATION */

inline void 
__rb_tree_rotate_left(__rb_tree_node_base* x, __rb_tree_node_base*& root)
{
  __rb_tree_node_base* y = x->right;
  x->right = y->left;
  if (y->left !=0)
    y->left->parent = x;
  y->parent = x->parent;

  if (x == root)
    root = y;
  else if (x == x->parent->left)
    x->parent->left = y;
  else
    x->parent->right = y;
  y->left = x;
  x->parent = y;
}

inline void 
__rb_tree_rotate_right(__rb_tree_node_base* x, __rb_tree_node_base*& root)
{
  __rb_tree_node_base* y = x->left;
  x->left = y->right;
  if (y->right != 0)
    y->right->parent = x;
  y->parent = x->parent;

  if (x == root)
    root = y;
  else if (x == x->parent->right)
    x->parent->right = y;
  else
    x->parent->left = y;
  y->right = x;
  x->parent = y;
}

inline void 
__rb_tree_rebalance(__rb_tree_node_base* x, __rb_tree_node_base*& root)
{
  x->color = __rb_tree_red;
  while (x != root && x->parent->color == __rb_tree_red) {
    if (x->parent == x->parent->parent->left) {
      __rb_tree_node_base* y = x->parent->parent->right;
      if (y && y->color == __rb_tree_red) {
        x->parent->color = __rb_tree_black;
        y->color = __rb_tree_black;
        x->parent->parent->color = __rb_tree_red;
        x = x->parent->parent;
      }
      else {
        if (x == x->parent->right) {
          x = x->parent;
          __rb_tree_rotate_left(x, root);
        }
        x->parent->color = __rb_tree_black;
        x->parent->parent->color = __rb_tree_red;
        __rb_tree_rotate_right(x->parent->parent, root);
      }
    }
    else {
      __rb_tree_node_base* y = x->parent->parent->left;
      if (y && y->color == __rb_tree_red) {
        x->parent->color = __rb_tree_black;
        y->color = __rb_tree_black;
        x->parent->parent->color = __rb_tree_red;
        x = x->parent->parent;
      }
      else {
        if (x == x->parent->left) {
          x = x->parent;
          __rb_tree_rotate_right(x, root);
        }
        x->parent->color = __rb_tree_black;
        x->parent->parent->color = __rb_tree_red;
        __rb_tree_rotate_left(x->parent->parent, root);
      }
    }
  }
  root->color = __rb_tree_black;
}

inline __rb_tree_node_base*
__rb_tree_rebalance_for_erase(__rb_tree_node_base* z,
                              __rb_tree_node_base*& root,
                              __rb_tree_node_base*& leftmost,
                              __rb_tree_node_base*& rightmost)
{
  __rb_tree_node_base* y = z;
  __rb_tree_node_base* x = 0;
  __rb_tree_node_base* x_parent = 0;
  if (y->left == 0)             // z has at most one non-null child. y == z.
    x = y->right;               // x might be null.
  else
    if (y->right == 0)          // z has exactly one non-null child.  y == z.
      x = y->left;              // x is not null.
    else {                      // z has two non-null children.  Set y to
      y = y->right;             //   z's successor.  x might be null.
      while (y->left != 0)
        y = y->left;
      x = y->right;
    }
  if (y != z) {                 // relink y in place of z.  y is z's successor
    z->left->parent = y; 
    y->left = z->left;
    if (y != z->right) {
      x_parent = y->parent;
      if (x) x->parent = y->parent;
      y->parent->left = x;      // y must be a left child
      y->right = z->right;
      z->right->parent = y;
    }
    else
      x_parent = y;  
    if (root == z)
      root = y;
    else if (z->parent->left == z)
      z->parent->left = y;
    else 
      z->parent->right = y;
    y->parent = z->parent;
    __STL_NAMESPACE::swap(y->color, z->color);
    y = z;
    // y now points to node to be actually deleted
  }
  else {                        // y == z
    x_parent = y->parent;
    if (x) x->parent = y->parent;   
    if (root == z)
      root = x;
    else 
      if (z->parent->left == z)
        z->parent->left = x;
      else
        z->parent->right = x;
    if (leftmost == z) 
      if (z->right == 0)        // z->left must be null also
        leftmost = z->parent;
    // makes leftmost == header if z == root
      else
        leftmost = __rb_tree_node_base::minimum(x);
    if (rightmost == z)  
      if (z->left == 0)         // z->right must be null also
        rightmost = z->parent;  
    // makes rightmost == header if z == root
      else                      // x == z->left
        rightmost = __rb_tree_node_base::maximum(x);
  }
  if (y->color != __rb_tree_red) { 
    while (x != root && (x == 0 || x->color == __rb_tree_black))
      if (x == x_parent->left) {
        __rb_tree_node_base* w = x_parent->right;
        if (w->color == __rb_tree_red) {
          w->color = __rb_tree_black;
          x_parent->color = __rb_tree_red;
          __rb_tree_rotate_left(x_parent, root);
          w = x_parent->right;
        }
        if ((w->left == 0 || w->left->color == __rb_tree_black) &&
            (w->right == 0 || w->right->color == __rb_tree_black)) {
          w->color = __rb_tree_red;
          x = x_parent;
          x_parent = x_parent->parent;
        } else {
          if (w->right == 0 || w->right->color == __rb_tree_black) {
            if (w->left) w->left->color = __rb_tree_black;
            w->color = __rb_tree_red;
            __rb_tree_rotate_right(w, root);
            w = x_parent->right;
          }
          w->color = x_parent->color;
          x_parent->color = __rb_tree_black;
          if (w->right) w->right->color = __rb_tree_black;
          __rb_tree_rotate_left(x_parent, root);
          break;
        }
      } else {                  // same as above, with right <-> left.
        __rb_tree_node_base* w = x_parent->left;
        if (w->color == __rb_tree_red) {
          w->color = __rb_tree_black;
          x_parent->color = __rb_tree_red;
          __rb_tree_rotate_right(x_parent, root);
          w = x_parent->left;
        }
        if ((w->right == 0 || w->right->color == __rb_tree_black) &&
            (w->left == 0 || w->left->color == __rb_tree_black)) {
          w->color = __rb_tree_red;
          x = x_parent;
          x_parent = x_parent->parent;
        } else {
          if (w->left == 0 || w->left->color == __rb_tree_black) {
            if (w->right) w->right->color = __rb_tree_black;
            w->color = __rb_tree_red;
            __rb_tree_rotate_left(w, root);
            w = x_parent->left;
          }
          w->color = x_parent->color;
          x_parent->color = __rb_tree_black;
          if (w->left) w->left->color = __rb_tree_black;
          __rb_tree_rotate_right(x_parent, root);
          break;
        }
      }
    if (x) x->color = __rb_tree_black;
  }
  return y;
}

template <class Key, class Value, class KeyOfValue, class Compare,
          __DFL_TYPE_PARAM(Alloc,alloc) >
class rb_tree {
protected:
    typedef void* void_pointer;
    typedef __rb_tree_node_base* base_ptr;
    typedef __rb_tree_node<Value> rb_tree_node;
    typedef simple_alloc<rb_tree_node, Alloc> rb_tree_node_allocator;
    typedef __rb_tree_color_type color_type;
public:
    typedef Key key_type;
    typedef Value value_type;
    typedef value_type* pointer;
    typedef const value_type* const_pointer;
    typedef value_type& reference;
    typedef const value_type& const_reference;
    typedef rb_tree_node* link_type;
    typedef size_t size_type;
    typedef ptrdiff_t difference_type;
protected:
    link_type get_node() { return rb_tree_node_allocator::allocate(); }
    void put_node(link_type p) { rb_tree_node_allocator::deallocate(p); }

    link_type __create_node(const value_type& x, __false_type) {
      link_type tmp = get_node();
#         ifdef __STL_USE_EXCEPTIONS
      try {
#         endif /* __STL_USE_EXCEPTIONS */
        construct(&tmp->value_field, x);
//        return tmp;
#         ifdef __STL_USE_EXCEPTIONS
      }
      catch(...) {
        put_node(tmp);
        throw;
      }
#         endif /* __STL_USE_EXCEPTIONS */
      return tmp;
    }

    link_type __create_node(const value_type& x, __true_type) {
      link_type tmp = get_node();
      construct(&tmp->value_field, x);
      return tmp;
    }

    link_type create_node(const value_type& x) {
        typedef typename __type_traits<value_type>::is_POD_type is_POD_type;
        return __create_node(x, 
           is_POD_type());
    }

    link_type clone_node(link_type x) {
      link_type tmp = create_node(x->value_field);
      tmp->color = x->color;
      tmp->left = 0;
      tmp->right = 0;
      return tmp;
    }

    void destroy_node(link_type p) {
      destroy(&p->value_field);
      put_node(p);
    }

protected:
    size_type node_count; // keeps track of size of tree
    link_type header;  
    Compare key_compare;

    link_type& root() const { return (link_type&) header->parent; }
    link_type& leftmost() const { return (link_type&) header->left; }
    link_type& rightmost() const { return (link_type&) header->right; }

    static link_type& left(link_type x) { return (link_type&)(x->left); }
    static link_type& right(link_type x) { return (link_type&)(x->right); }
    static link_type& parent(link_type x) { return (link_type&)(x->parent); }
    static reference value(link_type x) { return x->value_field; }
    static const Key& key(link_type x) { return KeyOfValue()(value(x)); }
    static color_type& color(link_type x) { return (color_type&)(x->color); }

    static link_type& left(base_ptr x) { return (link_type&)(x->left); }
    static link_type& right(base_ptr x) { return (link_type&)(x->right); }
    static link_type& parent(base_ptr x) { return (link_type&)(x->parent); }
    static reference value(base_ptr x) { return ((link_type)x)->value_field; }
    static const Key& key(base_ptr x) { return KeyOfValue()(value(link_type(x)));} 
    static color_type& color(base_ptr x) { return (color_type&)(link_type(x)->color); }

    static link_type minimum(link_type x) { 
        return (link_type)  __rb_tree_node_base::minimum(x);
    }
    static link_type maximum(link_type x) {
        return (link_type) __rb_tree_node_base::maximum(x);
    }
# if defined (__STL_DEBUG)
protected:
    friend class __safe_base;
    mutable __safe_server iter_list;
public:
    void invalidate_all() {iter_list.invalidate_all();}
# endif

public:
    typedef __rb_tree_iterator<value_type, reference, pointer> iterator;
    typedef __rb_tree_iterator<value_type, const_reference, const_pointer> 
            const_iterator;

#if defined ( __STL_CLASS_PARTIAL_SPECIALIZATION ) && \
! defined (__STL_PARTIAL_SPECIALIZATION_BUG)
    typedef reverse_iterator<const_iterator> const_reverse_iterator;
    typedef reverse_iterator<iterator> reverse_iterator;
#else /* __STL_CLASS_PARTIAL_SPECIALIZATION */
# if defined (__STL_MSVC50_COMPATIBILITY)
    typedef reverse_bidirectional_iterator<iterator, value_type, reference,
                                           pointer, difference_type>
        reverse_iterator; 
    typedef reverse_bidirectional_iterator<const_iterator, value_type,
        const_reference, const_pointer, difference_type>
	const_reverse_iterator;
# else
    typedef reverse_bidirectional_iterator<iterator, value_type, reference,
                                           difference_type>
        reverse_iterator; 
    typedef reverse_bidirectional_iterator<const_iterator, value_type,
                                           const_reference, difference_type>
        const_reverse_iterator;
# endif
#endif /* __STL_CLASS_PARTIAL_SPECIALIZATION */ 
private:
    iterator __insert(base_ptr x, base_ptr y, const value_type& v);
    link_type __copy(link_type x, link_type p);
    void __erase(link_type x);
    void init() {
        header = get_node();
        color(header) = __rb_tree_red; // used to distinguish header from 
                                       // root, in iterator.operator++
        root() = 0;
        leftmost() = header;
        rightmost() = header;
        __stl_debug_do(iter_list.safe_init(header));
    }
public:
                                // allocation/deallocation
    rb_tree(const Compare& comp = Compare())
      : node_count(0), key_compare(comp) { init(); }

    rb_tree(const rb_tree<Key, Value, KeyOfValue, Compare, Alloc>& x) 
      : node_count(0), key_compare(x.key_compare) { 
        header = get_node();
        color(header) = __rb_tree_red;
        if (x.root() == 0) {
          root() = 0;
          leftmost() = header;
          rightmost() = header;
        }
        else {
#             ifdef __STL_USE_EXCEPTIONS
          try {
#             endif /* __STL_USE_EXCEPTIONS */
            root() = __copy(x.root(), header);
#             ifdef __STL_USE_EXCEPTIONS
          }
          catch(...) {
            put_node(header);
            throw;
          }
#             endif /* __STL_USE_EXCEPTIONS */
          leftmost() = minimum(root());
          rightmost() = maximum(root());
        }
        node_count = x.node_count;
       __stl_debug_do(iter_list.safe_init(header));
    }
    ~rb_tree() {
        clear();
        put_node(header);
        __stl_debug_do(iter_list.invalidate());
    }
    rb_tree<Key, Value, KeyOfValue, Compare, Alloc>& 
        operator=(const rb_tree<Key, Value, KeyOfValue, Compare, Alloc>& x);

public:    
                                // accessors:
    Compare key_comp() const { return key_compare; }
# if defined (__STL_DEBUG)
    iterator make_iterator(link_type l) { 
        return iterator(&iter_list,l); 
    }
    const_iterator make_const_iterator(link_type l) const { 
        return const_iterator(&iter_list,l); 
    }
    iterator begin() { return make_iterator(leftmost()); }
    const_iterator begin() const { return make_const_iterator(leftmost()); }
    iterator end() { return make_iterator(header); }
    const_iterator end() const { return make_const_iterator(header); }
    void invalidate_iterator(const iterator& it) { 
        __invalidate_iterator(&iter_list,it.get_iterator(),it); 
    }
# else
    iterator make_iterator(link_type l) { 
        return iterator(l); 
    }
    const_iterator make_const_iterator(link_type l) const { 
        return const_iterator(l); 
    }
    iterator begin() { return leftmost(); }
    const_iterator begin() const { return leftmost(); }
    iterator end() { return header; }
    const_iterator end() const { return header; }
# endif
    reverse_iterator rbegin() { return reverse_iterator(end()); }
    const_reverse_iterator rbegin() const { 
        return const_reverse_iterator(end()); 
    }
    reverse_iterator rend() { return reverse_iterator(begin()); }
    const_reverse_iterator rend() const { 
        return const_reverse_iterator(begin());
    } 
    bool empty() const { return node_count == 0; }
    size_type size() const { return node_count; }
    size_type max_size() const { return size_type(-1); }

    void swap(rb_tree<Key, Value, KeyOfValue, Compare, Alloc>& t) {
        __stl_debug_do(iter_list.swap_owners(t.iter_list, true));
        __STL_NAMESPACE::swap(header, t.header);
        __STL_NAMESPACE::swap(node_count, t.node_count);
        __STL_NAMESPACE::swap(key_compare, t.key_compare);
    }
    
public:
                                // insert/erase
    pair<iterator,bool> insert_unique(const value_type& x);
    iterator insert_equal(const value_type& x);

    iterator insert_unique(iterator position, const value_type& x);
    iterator insert_equal(iterator position, const value_type& x);

#ifdef __STL_MEMBER_TEMPLATES  
    template <class InputIterator>
    void insert_unique(InputIterator first, InputIterator last);
    template <class InputIterator>
    void insert_equal(InputIterator first, InputIterator last);
#else /* __STL_MEMBER_TEMPLATES */
    void insert_unique(const_iterator first, const_iterator last);
    void insert_unique(const value_type* first, const value_type* last);
    void insert_equal(const_iterator first, const_iterator last);
    void insert_equal(const value_type* first, const value_type* last);
#endif /* __STL_MEMBER_TEMPLATES */

    void erase(iterator position);
    size_type erase(const key_type& x);
    void erase(iterator first, iterator last);
    void erase(const key_type* first, const key_type* last);
    void clear() {
      if (node_count != 0) {
        __erase(root());
        leftmost() = header;
        root() = 0;
        rightmost() = header;
        node_count = 0;
        __stl_debug_do(invalidate_all());
      }
    }      

public:
                                // set operations:
    iterator find(const key_type& x);
    const_iterator find(const key_type& x) const;
    size_type count(const key_type& x) const;
    iterator lower_bound(const key_type& x);
    const_iterator lower_bound(const key_type& x) const;
    iterator upper_bound(const key_type& x);
    const_iterator upper_bound(const key_type& x) const;
    pair<iterator,iterator> equal_range(const key_type& k);
    pair<const_iterator, const_iterator> equal_range(const key_type& k) const;

public:
                                // Debugging.
  bool __rb_verify() const;
};

# endif /* __STL_COMPILE_TEMPLATE_BODY_ONLY */

// fbp: these defines are for outline methods definitions.
// needed for definitions to be portable. Should not be used in method bodies.
# if defined  ( __STL_NESTED_TYPE_PARAM_BUG )
#  define __iterator__        __rb_tree_iterator<Value, Value&, Value*>
#  define __const_iterator__  __rb_tree_iterator<Value, const Value&, const Value*>
#  define __size_type__       size_t
#  define __link_type__       __rb_tree_node<Value>*
#  define __base_ptr__        __rb_tree_node_base*
#  define __value_type__      Value
#  define __key_type__        Key
# else
#  define __iterator__        rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::iterator
#  define __const_iterator__  rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::const_iterator
#  define __link_type__       rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::link_type
#  define __size_type__       rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::size_type
#  define __base_ptr__        rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::base_ptr
#  define __value_type__      rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::value_type
#  define __key_type__        rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::key_type
# endif

# if ! defined (__STL_COMPILE_TEMPLATE_BODY_ONLY)
template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
inline bool operator==(const rb_tree<Key, Value, KeyOfValue, Compare, Alloc>& x, 
                       const rb_tree<Key, Value, KeyOfValue, Compare, Alloc>& y) {
    return x.size() == y.size() && equal(x.begin(), x.end(), y.begin());
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
inline bool operator<(const rb_tree<Key, Value, KeyOfValue, Compare, Alloc>& x, 
                      const rb_tree<Key, Value, KeyOfValue, Compare, Alloc>& y) {
    return lexicographical_compare(x.begin(), x.end(), y.begin(), y.end());
}
# endif /* __STL_COMPILE_TEMPLATE_BODY_ONLY */

# if defined (__STL_COMPILE_TEMPLATE_BODY_ONLY) || \
   ! defined (__STL_SEPARATE_TEMPLATE_BODY)

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>& 
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::
operator=(const rb_tree<Key, Value, KeyOfValue, Compare, Alloc>& x) {
  if (this != &x) {
                                // Note that Key may be a constant type.
    clear();
    node_count = 0;
    key_compare = x.key_compare;        
    if (x.root() == 0) {
      root() = 0;
      leftmost() = header;
      rightmost() = header;
    }
    else {
      root() = __copy(x.root(), header);
      leftmost() = minimum(root());
      rightmost() = maximum(root());
      node_count = x.node_count;
    }
  }
  return *this;
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
__iterator__
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::
__insert(__base_ptr__ x_, __base_ptr__ y_, const __value_type__& v) {
  link_type x = (link_type) x_;
  link_type y = (link_type) y_;
  link_type z;

  if (y == header || x != 0 || key_compare(KeyOfValue()(v), key(y))) {
    z = create_node(v);
    left(y) = z;                // also makes leftmost() = z when y == header
    if (y == header) {
      root() = z;
      rightmost() = z;
    }
    else if (y == leftmost())
      leftmost() = z;           // maintain leftmost() pointing to min node
  }
  else {
    z = create_node(v);
    right(y) = z;
    if (y == rightmost())
      rightmost() = z;          // maintain rightmost() pointing to max node
  }
  parent(z) = y;
  left(z) = 0;
  right(z) = 0;
  __rb_tree_rebalance(z, header->parent);
  ++node_count;
  return make_iterator(z);
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
__iterator__
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::insert_equal(const __value_type__& v)
{
    link_type y = header;
    link_type x = root();
    while (x != 0) {
        y = x;
        x = key_compare(KeyOfValue()(v), key(x)) ? left(x) : right(x);
    }
    return __insert(x, y, v);
}


template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
pair<__iterator__, bool>
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::insert_unique(const __value_type__& v)
{
    link_type y = header;
    link_type x = root();
    bool comp = true;
    while (x != 0) {
        y = x;
        comp = key_compare(KeyOfValue()(v), key(x));
        x = comp ? left(x) : right(x);
    }
    iterator j = make_iterator(y);   
    if (comp)
        if (j == begin())     
            return pair<iterator,bool>(__insert(x, y, v), true);
        else
            --j;
    if (key_compare(key(j.node), KeyOfValue()(v)))
        return pair<iterator,bool>(__insert(x, y, v), true);
    return pair<iterator,bool>(j, false);
}


template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
__iterator__ 
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::insert_unique(
    __iterator__ position, const __value_type__& v) {
    __stl_debug_check(__check_if_owner(&iter_list,position));
    if (position.node == header->left) // begin()
        if (size() > 0 && key_compare(KeyOfValue()(v), key(position.node)))
            return __insert(position.node, position.node, v);
                                // first argument just needs to be non-null 
        else
            return insert_unique(v).first;
    else if (position.node == header) // end()
        if (key_compare(key(rightmost()), KeyOfValue()(v)))
            return __insert(0, rightmost(), v);
        else
            return insert_unique(v).first;
    else {
        iterator before = position;
        --before;
        if (key_compare(key(before.node), KeyOfValue()(v))
            && key_compare(KeyOfValue()(v), key(position.node)))
            if (right(before.node) == 0)
                return __insert(0, before.node, v); 
            else
                return __insert(position.node, position.node, v);
                                // first argument just needs to be non-null 
        else
            return insert_unique(v).first;
    }
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
__iterator__ 
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::insert_equal(
    __iterator__ position, const __value_type__& v) {
    __stl_debug_check(__check_if_owner(&iter_list,position));
    if (position.node == header->left) // begin()
        if (size() > 0 && key_compare(KeyOfValue()(v), key(position.node)))
            return __insert(position.node, position.node, v);
            // first argument just needs to be non-null 
        else
            return insert_equal(v);
    else if (position.node == header) // end()
        if (!key_compare(KeyOfValue()(v), key(rightmost())))
            return __insert(0, rightmost(), v);
        else
            return insert_equal(v);
    else {
        iterator before = position;
        --before;
        if (!key_compare(KeyOfValue()(v), key(before.node))
            && !key_compare(key(position.node), KeyOfValue()(v)))
            if (right(before.node) == 0)
                return __insert(0, before.node, v); 
            else
                return __insert(position.node, position.node, v);
                // first argument just needs to be non-null 
        else
            return insert_equal(v);
    }
}

#ifdef __STL_MEMBER_TEMPLATES  

template <class K, class V, class KoV, class Cmp, class Al> template<class II>
void rb_tree<K, V, KoV, Cmp, Al>::insert_equal(II first, II last) {
  for ( ; first != last; ++first)
    insert_equal(*first);
}

template <class K, class V, class KoV, class Cmp, class Al> template<class II>
void rb_tree<K, V, KoV, Cmp, Al>::insert_unique(II first, II last) {
  for ( ; first != last; ++first)
    insert_unique(*first);
}

#else /* __STL_MEMBER_TEMPLATES */


template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
void
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::insert_equal(const __value_type__* first, 
                                                              const __value_type__* last) {
    while (first != last) insert_equal(*first++);
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
void
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::insert_equal(__const_iterator__ first,
                        __const_iterator__ last) {
  for ( ; first != last; ++first)
    insert_equal(*first);
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
void 
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::insert_unique(const __value_type__* first, 
                                                               const __value_type__* last) {
  for ( ; first != last; ++first)
    insert_unique(*first);
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
void 
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::insert_unique(__const_iterator__ first,
                                                               __const_iterator__ last) {
  for ( ; first != last; ++first)
    insert_unique(*first);
}

#endif /* __STL_MEMBER_TEMPLATES */
# endif /* __STL_COMPILE_TEMPLATE_BODY_ONLY) || ! __STL_SEPARATE_TEMPLATE_BODY */
         
# if ! defined (__STL_COMPILE_TEMPLATE_BODY_ONLY)
template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
inline void
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::erase(__iterator__ 
                                                       position) {
    __stl_debug_check(__check_if_owner(&iter_list,position));
    __stl_verbose_assert(position.node!=header, __STL_MSG_ERASE_PAST_THE_END);
    __stl_debug_do(invalidate_iterator(position));
  link_type y = (link_type) __rb_tree_rebalance_for_erase(position.node,
                                                          header->parent,
                                                          header->left,
                                                          header->right);
  destroy_node(y);
  --node_count;
}
# endif /* __STL_COMPILE_TEMPLATE_BODY_ONLY */

# if defined (__STL_COMPILE_TEMPLATE_BODY_ONLY) || \
   ! defined (__STL_SEPARATE_TEMPLATE_BODY)
template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
__size_type__
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::erase(const __key_type__& x) {
    pair<iterator,iterator> p = equal_range(x);
    size_type n = 0;
    distance(p.first, p.second, n);
    erase(p.first, p.second);
    return n;
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
__link_type__ 
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::__copy(__link_type__ x, __link_type__ p) {
                                // structural copy.  x and p must be non-null.
  link_type top = clone_node(x);
  top->parent = p;
 
#     ifdef __STL_USE_EXCEPTIONS
  try {
#     endif /* __STL_USE_EXCEPTIONS */
    if (x->right)
      top->right = __copy(right(x), top);
    p = top;
    x = left(x);

    while (x != 0) {
      link_type y = clone_node(x);
      p->left = y;
      y->parent = p;
      if (x->right)
        y->right = __copy(right(x), y);
      p = y;
      x = left(x);
    }
#     ifdef __STL_USE_EXCEPTIONS
  }
  catch(...) {
    __erase(top);
    throw;
  }
#     endif /* __STL_USE_EXCEPTIONS */

  return top;
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
void rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::__erase(__link_type__ x) {
                                // erase without rebalancing
  while (x != 0) {
    __erase(right(x));
    link_type y = left(x);
    destroy_node(x);
    x = y;
  }
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
void
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::erase(__iterator__ first, 
                                                       __iterator__ last) {
    if (first == begin() && last == end())
        clear();
    else
        while (first != last) erase(first++);
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
void rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::erase(const Key* first, 
                                                            const Key* last) {
    while (first != last) erase(*first++);
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
__iterator__ 
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::find(const __key_type__& k) {
   link_type y = header;        // Last node which is not less than k. 
   link_type x = root();        // Current node. 

   while (x != 0) 
     if (!key_compare(key(x), k))
       y = x, x = left(x);
     else
       x = right(x);

   return make_iterator((y == header || key_compare(k, key(y))) ? header : y);
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
__const_iterator__
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::find(const __key_type__& k) const {
   link_type y = header; /* Last node which is not less than k. */
   link_type x = root(); /* Current node. */

   while (x != 0) {
     if (!key_compare(key(x), k))
       y = x, x = left(x);
     else
       x = right(x);
   }
   return make_const_iterator((y == header || key_compare(k, key(y))) ? header : y);
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
__size_type__
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::count(const __key_type__& k) const {
    pair<const_iterator, const_iterator> p = equal_range(k);
    size_type n = 0;
    distance(p.first, p.second, n);
    return n;
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
__iterator__
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::lower_bound(const __key_type__& k) {
   link_type y = header; /* Last node which is not less than k. */
   link_type x = root(); /* Current node. */

   while (x != 0) 
     if (!key_compare(key(x), k))
       y = x, x = left(x);
     else
       x = right(x);

   return make_iterator(y);
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
__const_iterator__
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::lower_bound(const __key_type__& k) const {
   link_type y = header; /* Last node which is not less than k. */
   link_type x = root(); /* Current node. */

   while (x != 0) 
     if (!key_compare(key(x), k))
       y = x, x = left(x);
     else
       x = right(x);

   return make_const_iterator(y);
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
__iterator__
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::upper_bound(const __key_type__& k) {
  link_type y = header; /* Last node which is greater than k. */
  link_type x = root(); /* Current node. */

   while (x != 0) 
     if (key_compare(k, key(x)))
       y = x, x = left(x);
     else
       x = right(x);

   return make_iterator(y);
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
__const_iterator__
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::upper_bound(const __key_type__& k) const {
  link_type y = header; /* Last node which is greater than k. */
  link_type x = root(); /* Current node. */

   while (x != 0) 
     if (key_compare(k, key(x)))
       y = x, x = left(x);
     else
       x = right(x);

   return make_const_iterator(y);
}
# endif /* __STL_COMPILE_TEMPLATE_BODY_ONLY) || ! __STL_SEPARATE_TEMPLATE_BODY */

# if ! defined (__STL_COMPILE_TEMPLATE_BODY_ONLY)
template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
inline pair<__iterator__,__iterator__>
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::equal_range(const __key_type__& k) {
    return pair<iterator, iterator>(lower_bound(k), upper_bound(k));
}

template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
inline pair<__const_iterator__,__const_iterator__>
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::equal_range(const __key_type__& k) const {
    return pair<const_iterator,const_iterator>(lower_bound(k), upper_bound(k));
}

inline int __black_count(__rb_tree_node_base* node, __rb_tree_node_base* root)
{
  if (node == 0)
    return 0;
  else {
    int bc = node->color == __rb_tree_black ? 1 : 0;
    if (node == root)
      return bc;
    else
      return bc + __black_count(node->parent, root);
  }
}
# endif /* __STL_COMPILE_TEMPLATE_BODY_ONLY */

# if defined (__STL_COMPILE_TEMPLATE_BODY_ONLY) || \
   ! defined (__STL_SEPARATE_TEMPLATE_BODY)
template <class Key, class Value, class KeyOfValue, class Compare, class Alloc>
bool 
rb_tree<Key, Value, KeyOfValue, Compare, Alloc>::__rb_verify() const
{
  int len = __black_count(leftmost(), root());
  for (const_iterator it = begin(); it != end(); ++it) {
    link_type x = (link_type) it.node;
    link_type L = left(x);
    link_type R = right(x);

    if (x->color == __rb_tree_red)
      if ((L && L->color == __rb_tree_red) ||
          (R && R->color == __rb_tree_red))
        return false;

    if (L && key_compare(key(x), key(L)))
      return false;
    if (R && key_compare(key(R), key(x)))
      return false;

    if (!L && !R && __black_count(x, root()) != len)
      return false;
  }

  if ( !empty() )
  {
      if (leftmost() != __rb_tree_node_base::minimum(root()))
          return false;
      if (rightmost() != __rb_tree_node_base::maximum(root()))
          return false;
  }
  return true;
}

# endif /* __STL_COMPILE_TEMPLATE_BODY_ONLY) || ! __STL_SEPARATE_TEMPLATE_BODY */

# undef __iterator__        
# undef __const_iterator__  
# undef __size_type__  
# undef __link_type__  
# undef __base_ptr__        
# undef __value_type__
# undef __key_type__  

__END_STL_NAMESPACE

#endif

