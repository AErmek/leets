
using System;
using System.Collections.Generic;

class task284 : itask
{
    class PeekingIterator
    {
        private IEnumerator<int> _iterator;
        private int? _next;

        // iterators refers to the first element of the array.
        public PeekingIterator(IEnumerator<int> iterator)
        {
            // initialize any member here.
            _iterator = iterator;
            _next = _iterator.Current;

            Console.WriteLine("null");
        }

        // Returns the next element in the iteration without advancing the iterator.
        public int Peek()
        {
            if(_next==null){

            _iterator.MoveNext();
            _next = _iterator.Current;
            }

            Console.WriteLine(_next.ToString());

            return _next.Value;
        }

        // Returns the next element in the iteration and advances the iterator.
        public int Next()
        {
            int? result = null;
            if (_next != null)
            {
                result = _next;
                _next = null;
            }
            else
            {

                _iterator.MoveNext();
                result = _iterator.Current;
            }

            Console.WriteLine(result);
            return result.Value;
        }

        // Returns false if the iterator is refering to the end of the array of true otherwise.
        public bool HasNext()
        {
            var result = false;
            if (_next != null)
            {
                result = true;
            }
            else if (_iterator.MoveNext())
            {
                _next = _iterator.Current;
                result = true;
            }

            Console.WriteLine(result);
            return result;
        }
    }

    public void execute()
    {
        var values = new List<int> { 1, 2, 3 };
        PeekingIterator peekingIterator = new PeekingIterator(values.GetEnumerator()); // [1,2,3]
        peekingIterator.Next();    // return 1, the pointer moves to the next element [1,2,3].
        peekingIterator.Peek();    // return 2, the pointer does not move [1,2,3].
        peekingIterator.Next();    // return 2, the pointer moves to the next element [1,2,3]
        peekingIterator.Next();    // return 3, the pointer moves to the next element [1,2,3]
        peekingIterator.HasNext(); // return False
    }
}