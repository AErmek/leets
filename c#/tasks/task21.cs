
using System;

class task21 : itask
{
    public class ListNode
    {
        public int val;
        public ListNode next;
        public ListNode(int val = 0, ListNode next = null)
        {
            this.val = val;
            this.next = next;
        }
    }

    public ListNode MergeTwoLists(ListNode list1, ListNode list2)
    {
        if (list1 == null || list2 == null)
        {
            return list1 ?? list2;
        }

        var isFirst = list1.val <= list2.val;
        return new ListNode(isFirst ? list1.val : list2.val, MergeTwoLists(isFirst ? list1.next : list1, isFirst ? list2 : list2.next));
    }

    public ListNode MergeTwoLists2(ListNode list1, ListNode list2)
    {
        if (list1 == null || list2 == null)
        {
            return list1 ?? list2;
        }

        if (list1.val <= list2.val)
        {
            list1.next = MergeTwoLists2(list1.next, list2);
            return list1;
        }

        list2.next = MergeTwoLists2(list1, list2.next);
        return list2;
    }

    private void NodePrint(ListNode node)
    {
        Console.Write($"{node.val},");
        if (node.next != null)
        {
            NodePrint(node.next);
        }
    }

    public void execute()
    {
        var node11 = new ListNode() { val = 1 };
        var node12 = new ListNode() { val = 2 };
        var node14 = new ListNode() { val = 4 };

        var node21 = new ListNode() { val = 1 };
        var node23 = new ListNode() { val = 3 };
        var node24 = new ListNode() { val = 4 };

        node11.next = node12;
        node12.next = node14;

        node21.next = node23;
        node23.next = node24;


        var merged = MergeTwoLists2(node11, node21);

        NodePrint(merged);
    }
}