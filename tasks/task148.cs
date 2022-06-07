
using System;

class task148 : itask
{
    class ListNode
    {
        public int val;
        public ListNode next;
        public ListNode(int val = 0, ListNode next = null)
        {
            this.val = val;
            this.next = next;
        }
    }

    ListNode sortedMerge(ListNode a, ListNode b)
    {
        ListNode result = null;
        /* Base cases */
        if (a == null)
            return b;
        if (b == null)
            return a;
 
        /* Pick either a or b, and recur */
        if (a.val <= b.val) {
            result = a;
            result.next = sortedMerge(a.next, b);
        }
        else {
            result = b;
            result.next = sortedMerge(a, b.next);
        }
        return result;
    }

    ListNode mergeSort(ListNode h)
    {
        // Base case : if head is null
        if (h == null || h.next == null) {
            return h;
        }
 
        // get the middle of the list
        ListNode middle = getMiddle(h);
        ListNode nextofmiddle = middle.next;
 
        // set the next of middle node to null
        middle.next = null;
 
        // Apply mergeSort on left list
        ListNode left = mergeSort(h);
 
        // Apply mergeSort on right list
        ListNode right = mergeSort(nextofmiddle);
 
        // Merge the left and right lists
        ListNode sortedlist = sortedMerge(left, right);
        return sortedlist;
    }

    ListNode getMiddle(ListNode h)
    {
        // Base case
        if (h == null)
            return h;
        ListNode fastptr = h.next;
        ListNode slowptr = h;
 
        // Move fastptr by two and slow ptr by one
        // Finally slowptr will point to middle node
        while (fastptr != null) {
            fastptr = fastptr.next;
            if (fastptr != null) {
                slowptr = slowptr.next;
                fastptr = fastptr.next;
            }
        }
        return slowptr;
    }

    private ListNode SortList(ListNode head)
    {
        if (head == null || head.next == null)
        {
            return head;
        }

        int? max = null;
        while (SwapNodes(head, max));

        return head;
    }

    // private ListNode SortList2(ListNode head)
    // {
    //     if(head==null || head.next == null){
    //         return head; 
    //     }

    //     int? max = null;
    //     while(true){
    //         if(!SwapNodes2(head, max)){
    //             break;
    //         }
    //         while(true){

    //             if(!SwapNodes2(head, max)){
    //                 break;
    //             }
    //         }
    //     }

    //     return head;
    // }

    // private bool SwapNodes2(ListNode node, int? max){
    //     if(node.next == null || node.next.val == max){
    //         max = node.val;
    //         return false;
    //     }

    //     if(node.val > node.next.val){
    //         var temp = node.next.val;
    //         node.next.val = node.val;
    //         node.val = temp;

    //         return true;
    //     }
    //     return false;
    // }

    private bool SwapNodes(ListNode node, int? max)
    {
        if (node.next == null || node.next.val <= max)
        {
            max = node.val;
            return false;
        }

        var swapped = false;
        if (node.val > node.next.val)
        {
            var temp = node.next.val;
            node.next.val = node.val;
            node.val = temp;

            swapped = true;
        }

        return SwapNodes(node.next, max) || swapped;
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
        var node1 = new ListNode() { val = 1 };
        var node2 = new ListNode() { val = 2 };
        var node3 = new ListNode() { val = 3 };
        var node4 = new ListNode() { val = 4 };

        node4.next = node2;
        node2.next = node1;
        node1.next = node3;

        NodePrint(node4);

        // var sortedNode = SortList(node4);
        var sortedNode = mergeSort(node4);

        Console.WriteLine("\n=====================");

        NodePrint(sortedNode);

    }
}