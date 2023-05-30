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

#ifndef __SGI_STL_AUTO_PTR_H
# define __SGI_STL_AUTO_PTR_H

#include <stl_config.h>

__BEGIN_STL_NAMESPACE

// 20.4.5 Template class auto_ptr

// Warning : to be sure, you should only use new() to initialize auto_ptr contents,
// since it uses explicit delete() to destroy its contents.

template <class X>
class auto_ptr {
public:
    typedef X element_type;
    explicit auto_ptr(X* p=0) __STL_THROWS(()) : ptr_(p), owner_(p!=0)  {}
#  if defined __STL_MEMBER_TEMPLATES
    template<class Y>
#  else
   typedef X Y;
#  endif
    auto_ptr(const auto_ptr<Y>& r) __STL_THROWS(()) : ptr_(r.get()), owner_(r.owner_) {
        r.release();
    }
#  if defined __STL_MEMBER_TEMPLATES
    template<class Y>
#  endif
    auto_ptr<X>& operator=(const auto_ptr<Y>& r)  __STL_THROWS(()) {
        if ((void*)&r != (void*)this) {
            reset();
            owner_ = r.owner_; 
            ptr_ = r.release();
        }
        return *this;
    }
    ~auto_ptr()                         { reset(); }
    X& operator*()  const  __STL_THROWS(()) { 
#  ifdef __AUTO_PTR_NON_OWNER_ASSERT
		assert(owner_);
#  endif
        return *ptr_; }
    X* operator->() const  __STL_THROWS(()) { 
#  ifdef __AUTO_PTR_NON_OWNER_ASSERT
		assert(owner_);
#  endif
        return ptr_; 
    }
    X* get()        const  __STL_THROWS(()) { return ptr_; }
    X* release()    const  __STL_THROWS(()) { 
#  if defined __STL_MUTABLE
        owner_ = false; 
#  else
        __CONST_CAST(auto_ptr<X>*,this)->owner_ = false;
#  endif
        return ptr_; 
    }

private:
#ifdef __STL_FORCED_INLINE_INSTANTIATION_BUG
	static void __delete( X* );
	
    void reset() { if (owner_) __delete( ptr_ ); owner_=0; }
#else
    void reset() { if (owner_) delete ptr_; owner_=0; }
#endif
    typedef element_type* pointer_type;
    pointer_type ptr_;
    mutable bool owner_;
#  if defined __STL_FRIEND_TEMPLATES
    template<class Y> friend class auto_ptr;
#  endif
};

#ifdef __STL_FORCED_INLINE_INSTANTIATION_BUG
// dwa 11/4/97 - this trick is needed with MWERKS to allow
// declarations of the form:
//
// class X;
// class Y { 		// Y owns an X. ~Y() needs X's definition,
//   ~Y();			// but clients of Y should not
//   auto_ptr<X> x;
// };               
template <class X> void auto_ptr<X>::__delete( X* p )
{
	delete p;
}
#endif


__END_STL_NAMESPACE

#endif
