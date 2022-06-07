

using System;

class task141 : itask
{
    class ListNode
    {
        public int val;
        public ListNode next;
        public ListNode(int x)
        {
            val = x;
            next = null;
        }
    }

    private bool HasCycle(ListNode head)
    {
        if (head == null)
            return false;

        return Has(head);
    }

    private bool Has(ListNode head)
    {
        if (head.val == 100001)
        {
            return true;
        }
        if (head.next != null)
        {
            head.val = 100001;
            return Has(head.next);
        }
        return false;
    }
    public void execute()
    {
        throw new System.NotImplementedException();
    }
}