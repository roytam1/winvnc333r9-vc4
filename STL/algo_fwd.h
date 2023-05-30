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
// forward declarations of algorithms from algo.h
// used by compilers supporting separate compilation of templates
#ifndef __SGI_STL_ALGO_FWD_H
# define  __SGI_STL_ALGO_FWD_H

// if included automatically
# ifndef __SGI_STL_ALGO_H
# include <algo.h>
# endif

__BEGIN_STL_NAMESPACE
template <class InputIterator, class Function>
Function for_each(InputIterator first, InputIterator last, Function f);
template <class InputIterator, class T>
InputIterator find(InputIterator first, InputIterator last, const T& value);
template <class InputIterator, class Predicate>
InputIterator find_if(InputIterator first, InputIterator last, Predicate pred);
template <class ForwardIterator>
ForwardIterator adjacent_find(ForwardIterator first, ForwardIterator last);
template <class ForwardIterator, class BinaryPredicate>
ForwardIterator adjacent_find(ForwardIterator first, ForwardIterator last,
                              BinaryPredicate binary_pred);
template <class InputIterator, class T, class Size>
void count(InputIterator first, InputIterator last, const T& value,
           Size& n);
template <class InputIterator, class Predicate, class Size>
void count_if(InputIterator first, InputIterator last, Predicate pred,
	      Size& n);
#ifdef __STL_CLASS_PARTIAL_SPECIALIZATION
template <class InputIterator, class T>
typename iterator_traits<InputIterator>::difference_type
count(InputIterator first, InputIterator last, const T& value);
template <class InputIterator, class Predicate>
typename iterator_traits<InputIterator>::difference_type
count_if(InputIterator first, InputIterator last, Predicate pred);
#endif /* __STL_CLASS_PARTIAL_SPECIALIZATION */
template <class ForwardIterator1, class ForwardIterator2, class Distance1,
          class Distance2>
ForwardIterator1 __search(ForwardIterator1 first1, ForwardIterator1 last1,
                          ForwardIterator2 first2, ForwardIterator2 last2,
                          Distance1*, Distance2*);

template <class ForwardIterator1, class ForwardIterator2,
          class BinaryPredicate, class Distance1, class Distance2>
ForwardIterator1 __search(ForwardIterator1 first1, ForwardIterator1 last1,
                          ForwardIterator2 first2, ForwardIterator2 last2,
                          BinaryPredicate binary_pred, Distance1*, Distance2*);

template <class ForwardIterator, class Integer, class T>
ForwardIterator search_n(ForwardIterator first, ForwardIterator last,
                         Integer count, const T& value);

template <class ForwardIterator, class Integer, class T, class BinaryPredicate>
ForwardIterator search_n(ForwardIterator first, ForwardIterator last,
                         Integer count, const T& value,
                         BinaryPredicate binary_pred);

template <class ForwardIterator1, class ForwardIterator2>
ForwardIterator2 swap_ranges(ForwardIterator1 first1, ForwardIterator1 last1,
                             ForwardIterator2 first2);
template <class InputIterator, class OutputIterator, class UnaryOperation>
OutputIterator transform(InputIterator first, InputIterator last,
			 OutputIterator result, UnaryOperation op);
template <class InputIterator1, class InputIterator2, class OutputIterator,
	  class BinaryOperation>
OutputIterator transform(InputIterator1 first1, InputIterator1 last1,
                         InputIterator2 first2, OutputIterator result,
                         BinaryOperation binary_op);
template <class ForwardIterator, class T>
void replace(ForwardIterator first, ForwardIterator last, const T& old_value,
	     const T& new_value);
template <class ForwardIterator, class Predicate, class T>
void replace_if(ForwardIterator first, ForwardIterator last, Predicate pred,
		const T& new_value);
template <class InputIterator, class OutputIterator, class T>
OutputIterator replace_copy(InputIterator first, InputIterator last,
			    OutputIterator result, const T& old_value,
			    const T& new_value);
template <class Iterator, class OutputIterator, class Predicate, class T>
OutputIterator replace_copy_if(Iterator first, Iterator last,
			       OutputIterator result, Predicate pred,
			       const T& new_value);
template <class ForwardIterator, class Generator>
void generate(ForwardIterator first, ForwardIterator last, Generator gen);
template <class OutputIterator, class Size, class Generator>
OutputIterator generate_n(OutputIterator first, Size n, Generator gen);
template <class InputIterator, class OutputIterator, class T>
OutputIterator remove_copy(InputIterator first, InputIterator last,
                           OutputIterator result, const T& value);
template <class InputIterator, class OutputIterator, class Predicate>
OutputIterator remove_copy_if(InputIterator first, InputIterator last,
                              OutputIterator result, Predicate pred);
template <class ForwardIterator, class T>
ForwardIterator remove(ForwardIterator first, ForwardIterator last,
		       const T& value);
template <class ForwardIterator, class Predicate>
ForwardIterator remove_if(ForwardIterator first, ForwardIterator last,
			  Predicate pred);
template <class InputIterator, class ForwardIterator>
ForwardIterator __unique_copy(InputIterator first, InputIterator last,
			      ForwardIterator result, forward_iterator_tag);
template <class InputIterator, class OutputIterator, class T>
OutputIterator __unique_copy(InputIterator first, InputIterator last,
			     OutputIterator result, T*);
template <class InputIterator, class ForwardIterator, class BinaryPredicate>
ForwardIterator __unique_copy(InputIterator first, InputIterator last,
			      ForwardIterator result, 
			      BinaryPredicate binary_pred,
			      forward_iterator_tag);
template <class InputIterator, class OutputIterator, class BinaryPredicate, class T>
OutputIterator __unique_copy(InputIterator first, InputIterator last,
			     OutputIterator result,
			     BinaryPredicate binary_pred, T*);
template <class ForwardIterator>
ForwardIterator unique(ForwardIterator first, ForwardIterator last);
template <class ForwardIterator, class BinaryPredicate>
ForwardIterator unique(ForwardIterator first, ForwardIterator last,
                       BinaryPredicate binary_pred);
template <class BidirectionalIterator>
void __reverse(BidirectionalIterator first, BidirectionalIterator last, 
	       bidirectional_iterator_tag);
template <class RandomAccessIterator>
void __reverse(RandomAccessIterator first, RandomAccessIterator last,
               random_access_iterator_tag);
template <class BidirectionalIterator, class OutputIterator>
OutputIterator reverse_copy(BidirectionalIterator first,
                            BidirectionalIterator last,
                            OutputIterator result);
template <class ForwardIterator, class Distance>
void __rotate(ForwardIterator first, ForwardIterator middle,
              ForwardIterator last, Distance*, forward_iterator_tag);
template <class BidirectionalIterator, class Distance>
void __rotate(BidirectionalIterator first, BidirectionalIterator middle,
	      BidirectionalIterator last, Distance*,
	      bidirectional_iterator_tag);
template <class EuclideanRingElement>
EuclideanRingElement __gcd(EuclideanRingElement m, EuclideanRingElement n);
template <class RandomAccessIterator, class Distance, class T>
void __rotate_cycle(RandomAccessIterator first, RandomAccessIterator last,
		    RandomAccessIterator initial, Distance shift, T*);
template <class RandomAccessIterator, class Distance>
void __rotate(RandomAccessIterator first, RandomAccessIterator middle,
	      RandomAccessIterator last, Distance*,
	      random_access_iterator_tag);
template <class ForwardIterator, class OutputIterator>
OutputIterator rotate_copy(ForwardIterator first, ForwardIterator middle,
                           ForwardIterator last, OutputIterator result);
template <class RandomAccessIterator, class Distance>
void __random_shuffle(RandomAccessIterator first, RandomAccessIterator last,
		      Distance*);
template <class RandomAccessIterator, class RandomNumberGenerator>
void random_shuffle(RandomAccessIterator first, RandomAccessIterator last,
                    RandomNumberGenerator& rand);
template <class ForwardIterator, class OutputIterator, class Distance>
OutputIterator random_sample_n(ForwardIterator first, ForwardIterator last,
                               OutputIterator out, const Distance n);
template <class ForwardIterator, class OutputIterator, class Distance,
          class RandomNumberGenerator>
OutputIterator random_sample_n(ForwardIterator first, ForwardIterator last,
                               OutputIterator out, const Distance n,
                               RandomNumberGenerator& rand);
template <class InputIterator, class RandomAccessIterator, class Distance>
RandomAccessIterator __random_sample(InputIterator first, InputIterator last,
                                     RandomAccessIterator out,
                                     const Distance n);
template <class InputIterator, class RandomAccessIterator,
          class RandomNumberGenerator, class Distance>
RandomAccessIterator __random_sample(InputIterator first, InputIterator last,
                                     RandomAccessIterator out,
                                     RandomNumberGenerator& rand,
                                     const Distance n);
template <class BidirectionalIterator, class Predicate>
BidirectionalIterator partition(BidirectionalIterator first,
                                BidirectionalIterator last, Predicate pred);
template <class ForwardIterator, class Predicate, class Distance>
ForwardIterator __inplace_stable_partition(ForwardIterator first,
					   ForwardIterator last,
					   Predicate pred, Distance len);
template <class ForwardIterator, class Pointer, class Predicate, 
          class Distance>
ForwardIterator __stable_partition_adaptive(ForwardIterator first,
                                            ForwardIterator last,
                                            Predicate pred, Distance len,
                                            Pointer buffer,
                                            Distance buffer_size);
template <class RandomAccessIterator, class T>
RandomAccessIterator __unguarded_partition(RandomAccessIterator first, 
					   RandomAccessIterator last, 
					   T pivot);
template <class RandomAccessIterator, class T, class Compare>
RandomAccessIterator __unguarded_partition(RandomAccessIterator first, 
					   RandomAccessIterator last, 
					   T pivot, Compare comp);
template <class RandomAccessIterator, class T>
void __unguarded_linear_insert(RandomAccessIterator last, T value);
template <class RandomAccessIterator, class T, class Compare>
void __unguarded_linear_insert(RandomAccessIterator last, T value, 
			       Compare comp);
template <class RandomAccessIterator>
void __insertion_sort(RandomAccessIterator first, RandomAccessIterator last);
template <class RandomAccessIterator, class Compare>
void __insertion_sort(RandomAccessIterator first,
		      RandomAccessIterator last, Compare comp);
template <class RandomAccessIterator, class T>
void __unguarded_insertion_sort_aux(RandomAccessIterator first, 
				    RandomAccessIterator last, T*);
/* made inline 
template <class RandomAccessIterator, class T, class Compare>
void __unguarded_insertion_sort_aux(RandomAccessIterator first, 
				    RandomAccessIterator last,
				    T*, Compare comp);
                                    */
template <class RandomAccessIterator>
void __final_insertion_sort(RandomAccessIterator first, 
			    RandomAccessIterator last);
template <class RandomAccessIterator, class Compare>
void __final_insertion_sort(RandomAccessIterator first, 
			    RandomAccessIterator last, Compare comp);
template <class RandomAccessIterator, class T, class Size>
void __introsort_loop(RandomAccessIterator first,
                      RandomAccessIterator last, T*,
                      Size depth_limit);
template <class RandomAccessIterator, class T, class Size, class Compare>
void __introsort_loop(RandomAccessIterator first,
 		      RandomAccessIterator last, T*,
		      Size depth_limit, Compare comp);
template <class Size>
Size __lg(Size n);

template <class RandomAccessIterator>
void __inplace_stable_sort(RandomAccessIterator first,
			   RandomAccessIterator last);
template <class RandomAccessIterator, class Compare>
void __inplace_stable_sort(RandomAccessIterator first,
			   RandomAccessIterator last, Compare comp);
/*
template <class RandomAccessIterator1, class RandomAccessIterator2,
	  class Distance>
void __merge_sort_loop(RandomAccessIterator1 first,
		       RandomAccessIterator1 last, 
		       RandomAccessIterator2 result, Distance step_size);
template <class RandomAccessIterator1, class RandomAccessIterator2,
	  class Distance, class Compare>
void __merge_sort_loop(RandomAccessIterator1 first,
		       RandomAccessIterator1 last, 
		       RandomAccessIterator2 result, Distance step_size,
		       Compare comp);
template <class RandomAccessIterator, class Distance>
void __chunk_insertion_sort(RandomAccessIterator first, 
                            RandomAccessIterator last, Distance chunk_size);
template <class RandomAccessIterator, class Distance, class Compare>
void __chunk_insertion_sort(RandomAccessIterator first, 
                            RandomAccessIterator last,
                            Distance chunk_size, Compare comp);
*/
/*
template <class RandomAccessIterator, class Pointer, class Distance>
void __merge_sort_with_buffer(RandomAccessIterator first, 
                              RandomAccessIterator last,
                              Pointer buffer, Distance*);
template <class RandomAccessIterator, class Pointer, class Distance,
          class Compare>
void __merge_sort_with_buffer(RandomAccessIterator first, 
                              RandomAccessIterator last, Pointer buffer,
                              Distance*, Compare comp);
                              */
template <class RandomAccessIterator, class Pointer, class Distance>
void __stable_sort_adaptive(RandomAccessIterator first, 
			    RandomAccessIterator last, Pointer buffer,
			    Distance buffer_size);
template <class RandomAccessIterator, class Pointer, class Distance, 
          class Compare>
void __stable_sort_adaptive(RandomAccessIterator first, 
                            RandomAccessIterator last, Pointer buffer,
                            Distance buffer_size, Compare comp);
template <class RandomAccessIterator, class T, class Compare>
void __partial_sort(RandomAccessIterator first, RandomAccessIterator middle,
		    RandomAccessIterator last, T*, Compare comp);
template <class RandomAccessIterator, class T>
void __partial_sort(RandomAccessIterator first, RandomAccessIterator middle,
		    RandomAccessIterator last, T*);
template <class InputIterator, class RandomAccessIterator, class Distance,
          class T>
RandomAccessIterator __partial_sort_copy(InputIterator first,
					 InputIterator last,
					 RandomAccessIterator result_first,
					 RandomAccessIterator result_last, 
					 Distance*, T*);
template <class InputIterator, class RandomAccessIterator, class Compare,
          class Distance, class T>
RandomAccessIterator __partial_sort_copy(InputIterator first,
					 InputIterator last,
					 RandomAccessIterator result_first,
					 RandomAccessIterator result_last,
					 Compare comp, Distance*, T*);

template <class RandomAccessIterator, class T>
void __nth_element(RandomAccessIterator first, RandomAccessIterator nth,
		   RandomAccessIterator last, T*);
template <class RandomAccessIterator, class T, class Compare>
void __nth_element(RandomAccessIterator first, RandomAccessIterator nth,
		   RandomAccessIterator last, T*, Compare comp);
template <class ForwardIterator, class T, class Distance>
ForwardIterator __lower_bound(ForwardIterator first, ForwardIterator last,
			      const T& value, Distance*,
			      forward_iterator_tag);
template <class RandomAccessIterator, class T, class Distance>
RandomAccessIterator __lower_bound(RandomAccessIterator first,
				   RandomAccessIterator last, const T& value,
				   Distance*, random_access_iterator_tag);
template <class ForwardIterator, class T, class Compare, class Distance>
ForwardIterator __lower_bound(ForwardIterator first, ForwardIterator last,
			      const T& value, Compare comp, Distance*,
			      forward_iterator_tag);
template <class RandomAccessIterator, class T, class Compare, class Distance>
RandomAccessIterator __lower_bound(RandomAccessIterator first,
				   RandomAccessIterator last,
				   const T& value, Compare comp, Distance*,
				   random_access_iterator_tag);
template <class ForwardIterator, class T, class Distance>
ForwardIterator __upper_bound(ForwardIterator first, ForwardIterator last,
			      const T& value, Distance*,
			      forward_iterator_tag);
template <class RandomAccessIterator, class T, class Distance>
RandomAccessIterator __upper_bound(RandomAccessIterator first,
				   RandomAccessIterator last, const T& value,
				   Distance*, random_access_iterator_tag);
template <class ForwardIterator, class T, class Compare, class Distance>
ForwardIterator __upper_bound(ForwardIterator first, ForwardIterator last,
			      const T& value, Compare comp, Distance*,
			      forward_iterator_tag);
template <class RandomAccessIterator, class T, class Compare, class Distance>
RandomAccessIterator __upper_bound(RandomAccessIterator first,
				   RandomAccessIterator last,
				   const T& value, Compare comp, Distance*,
				   random_access_iterator_tag);
template <class ForwardIterator, class T, class Distance>
pair<ForwardIterator, ForwardIterator>
__equal_range(ForwardIterator first, ForwardIterator last, const T& value,
	      Distance*, forward_iterator_tag);
template <class RandomAccessIterator, class T, class Distance>
pair<RandomAccessIterator, RandomAccessIterator>
__equal_range(RandomAccessIterator first, RandomAccessIterator last,
	      const T& value, Distance*, random_access_iterator_tag);
template <class ForwardIterator, class T, class Compare, class Distance>
pair<ForwardIterator, ForwardIterator>
__equal_range(ForwardIterator first, ForwardIterator last, const T& value,
	      Compare comp, Distance*, forward_iterator_tag);
template <class RandomAccessIterator, class T, class Compare, class Distance>
pair<RandomAccessIterator, RandomAccessIterator>
__equal_range(RandomAccessIterator first, RandomAccessIterator last,
	      const T& value, Compare comp, Distance*,
	      random_access_iterator_tag);
template <class ForwardIterator, class T>
bool binary_search(ForwardIterator first, ForwardIterator last,
		   const T& value);
template <class ForwardIterator, class T, class Compare>
bool binary_search(ForwardIterator first, ForwardIterator last, const T& value,
		   Compare comp);
template <class InputIterator1, class InputIterator2, class OutputIterator>
OutputIterator merge(InputIterator1 first1, InputIterator1 last1,
                     InputIterator2 first2, InputIterator2 last2,
                     OutputIterator result);
template <class InputIterator1, class InputIterator2, class OutputIterator,
          class Compare>
OutputIterator merge(InputIterator1 first1, InputIterator1 last1,
                     InputIterator2 first2, InputIterator2 last2,
                     OutputIterator result, Compare comp);
template <class BidirectionalIterator, class Distance>
void __merge_without_buffer(BidirectionalIterator first,
			    BidirectionalIterator middle,
			    BidirectionalIterator last,
			    Distance len1, Distance len2);
template <class BidirectionalIterator, class Distance, class Compare>
void __merge_without_buffer(BidirectionalIterator first,
			    BidirectionalIterator middle,
			    BidirectionalIterator last,
			    Distance len1, Distance len2, Compare comp);
template <class BidirectionalIterator1, class BidirectionalIterator2,
	  class Distance>
BidirectionalIterator1 __rotate_adaptive(BidirectionalIterator1 first,
					 BidirectionalIterator1 middle,
					 BidirectionalIterator1 last,
					 Distance len1, Distance len2,
					 BidirectionalIterator2 buffer,
					 Distance buffer_size);
template <class BidirectionalIterator1, class BidirectionalIterator2,
	  class BidirectionalIterator3>
BidirectionalIterator3 __merge_backward(BidirectionalIterator1 first1,
					BidirectionalIterator1 last1,
					BidirectionalIterator2 first2,
					BidirectionalIterator2 last2,
					BidirectionalIterator3 result);
template <class BidirectionalIterator1, class BidirectionalIterator2,
	  class BidirectionalIterator3, class Compare>
BidirectionalIterator3 __merge_backward(BidirectionalIterator1 first1,
					BidirectionalIterator1 last1,
					BidirectionalIterator2 first2,
					BidirectionalIterator2 last2,
					BidirectionalIterator3 result,
					Compare comp);
template <class BidirectionalIterator, class Distance, class Pointer>
void __merge_adaptive(BidirectionalIterator first, 
		      BidirectionalIterator middle, 
		      BidirectionalIterator last, Distance len1, Distance len2,
		      Pointer buffer, Distance buffer_size);
template <class BidirectionalIterator, class Distance, class Pointer,
	  class Compare>
void __merge_adaptive(BidirectionalIterator first, 
		      BidirectionalIterator middle, 
		      BidirectionalIterator last, Distance len1, Distance len2,
		      Pointer buffer, Distance buffer_size, Compare comp);
template <class InputIterator1, class InputIterator2>
bool includes(InputIterator1 first1, InputIterator1 last1,
              InputIterator2 first2, InputIterator2 last2);
template <class InputIterator1, class InputIterator2, class Compare>
bool includes(InputIterator1 first1, InputIterator1 last1,
              InputIterator2 first2, InputIterator2 last2, Compare comp);
template <class InputIterator1, class InputIterator2, class OutputIterator>
OutputIterator set_union(InputIterator1 first1, InputIterator1 last1,
                         InputIterator2 first2, InputIterator2 last2,
                         OutputIterator result);
template <class InputIterator1, class InputIterator2, class OutputIterator,
          class Compare>
OutputIterator set_union(InputIterator1 first1, InputIterator1 last1,
                         InputIterator2 first2, InputIterator2 last2,
                         OutputIterator result, Compare comp);
template <class InputIterator1, class InputIterator2, class OutputIterator>
OutputIterator set_intersection(InputIterator1 first1, InputIterator1 last1,
                                InputIterator2 first2, InputIterator2 last2,
                                OutputIterator result);
template <class InputIterator1, class InputIterator2, class OutputIterator,
          class Compare>
OutputIterator set_intersection(InputIterator1 first1, InputIterator1 last1,
                                InputIterator2 first2, InputIterator2 last2,
                                OutputIterator result, Compare comp);
template <class InputIterator1, class InputIterator2, class OutputIterator>
OutputIterator set_difference(InputIterator1 first1, InputIterator1 last1,
                              InputIterator2 first2, InputIterator2 last2,
                              OutputIterator result);
template <class InputIterator1, class InputIterator2, class OutputIterator, 
          class Compare>
OutputIterator set_difference(InputIterator1 first1, InputIterator1 last1,
                              InputIterator2 first2, InputIterator2 last2, 
                              OutputIterator result, Compare comp);
template <class InputIterator1, class InputIterator2, class OutputIterator>
OutputIterator set_symmetric_difference(InputIterator1 first1,
                                        InputIterator1 last1,
                                        InputIterator2 first2,
                                        InputIterator2 last2,
                                        OutputIterator result);
template <class InputIterator1, class InputIterator2, class OutputIterator,
          class Compare>
OutputIterator set_symmetric_difference(InputIterator1 first1,
                                        InputIterator1 last1,
                                        InputIterator2 first2,
                                        InputIterator2 last2,
                                        OutputIterator result, Compare comp);
template <class ForwardIterator>
ForwardIterator max_element(ForwardIterator first, ForwardIterator last);
template <class ForwardIterator, class Compare>
ForwardIterator max_element(ForwardIterator first, ForwardIterator last,
                            Compare comp);
template <class ForwardIterator>
ForwardIterator min_element(ForwardIterator first, ForwardIterator last);
template <class ForwardIterator, class Compare>
ForwardIterator min_element(ForwardIterator first, ForwardIterator last,
                            Compare comp);
template <class BidirectionalIterator>
bool next_permutation(BidirectionalIterator first,
                      BidirectionalIterator last);
template <class BidirectionalIterator, class Compare>
bool next_permutation(BidirectionalIterator first, BidirectionalIterator last,
                      Compare comp);
template <class BidirectionalIterator>
bool prev_permutation(BidirectionalIterator first,
                      BidirectionalIterator last);
template <class BidirectionalIterator, class Compare>
bool prev_permutation(BidirectionalIterator first, BidirectionalIterator last,
                      Compare comp);
template <class InputIterator, class T>
T accumulate(InputIterator first, InputIterator last, T init);
template <class InputIterator, class T, class BinaryOperation>
T accumulate(InputIterator first, InputIterator last, T init,
             BinaryOperation binary_op);
template <class InputIterator1, class InputIterator2, class T>
T inner_product(InputIterator1 first1, InputIterator1 last1,
                InputIterator2 first2, T init);
template <class InputIterator1, class InputIterator2, class T,
          class BinaryOperation1, class BinaryOperation2>
T inner_product(InputIterator1 first1, InputIterator1 last1,
                InputIterator2 first2, T init, BinaryOperation1 binary_op1,
                BinaryOperation2 binary_op2);
/*
template <class InputIterator, class OutputIterator, class T>
OutputIterator __partial_sum(InputIterator first, InputIterator last,
			     OutputIterator result, T*);
                             */
template <class InputIterator, class OutputIterator>
OutputIterator partial_sum(InputIterator first, InputIterator last,
                           OutputIterator result);
template <class InputIterator, class OutputIterator, class BinaryOperation>
OutputIterator partial_sum(InputIterator first, InputIterator last,
                           OutputIterator result, BinaryOperation binary_op);
template <class InputIterator, class OutputIterator>
OutputIterator adjacent_difference(InputIterator first, InputIterator last, 
                                   OutputIterator result);
template <class InputIterator, class OutputIterator, class BinaryOperation>
OutputIterator adjacent_difference(InputIterator first, InputIterator last,
                                   OutputIterator result,
                                   BinaryOperation binary_op);
template <class ForwardIterator1, class ForwardIterator2>
ForwardIterator1 __find_end(ForwardIterator1 first1, ForwardIterator1 last1,
                            ForwardIterator2 first2, ForwardIterator2 last2,
                            forward_iterator_tag, forward_iterator_tag);

template <class ForwardIterator1, class ForwardIterator2,
          class BinaryPredicate>
ForwardIterator1 __find_end(ForwardIterator1 first1, ForwardIterator1 last1,
                            ForwardIterator2 first2, ForwardIterator2 last2,
                            forward_iterator_tag, forward_iterator_tag,
                            BinaryPredicate comp);
#ifdef __STL_CLASS_PARTIAL_SPECIALIZATION
template <class BidirectionalIterator1, class BidirectionalIterator2>
BidirectionalIterator1
__find_end(BidirectionalIterator1 first1, BidirectionalIterator1 last1,
           BidirectionalIterator2 first2, BidirectionalIterator2 last2,
           bidirectional_iterator_tag, bidirectional_iterator_tag);
template <class BidirectionalIterator1, class BidirectionalIterator2,
          class BinaryPredicate>
BidirectionalIterator1
__find_end(BidirectionalIterator1 first1, BidirectionalIterator1 last1,
           BidirectionalIterator2 first2, BidirectionalIterator2 last2,
           bidirectional_iterator_tag, bidirectional_iterator_tag, 
           BinaryPredicate comp);
# endif
template <class T, class Integer, class MonoidOperation>
T power(T x, Integer n, MonoidOperation op);
template <class ForwardIterator, class T>
void iota(ForwardIterator first, ForwardIterator last, T value);
template <class RandomAccessIterator, class Distance>
bool __is_heap(RandomAccessIterator first, RandomAccessIterator last,
               Distance*);
template <class ForwardIterator>
bool is_sorted(ForwardIterator first, ForwardIterator last);
template <class ForwardIterator, class StrictWeakOrdering>
bool is_sorted(ForwardIterator first, ForwardIterator last,
               StrictWeakOrdering comp);
__END_STL_NAMESPACE
# endif
