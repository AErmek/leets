
using System;

class task83 : itask
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

    private ListNode DeleteDuplicates(ListNode head)
    {
        ListNode root = null;
        if (head != null)
        {
            root = new ListNode(head.val);
        }
        Delete(head, root);

        return root;
    }

    private void Delete(ListNode node, ListNode newNode)
    {
        if (node == null || newNode == null)
            return;

        if (newNode.val != node.val)
        {
            newNode.next = new ListNode(node.val);
            Delete(node.next, newNode.next);
        }
        else
        {
            Delete(node.next, newNode);
        }
    }

    private ListNode DeleteDuplicates2(ListNode head)
    {
        if (head == null || head.next == null)
            return head;

        if (head.val == head.next.val)
        {
            head = head.next;
            head = DeleteDuplicates2(head);
        }
        else
        {
            head.next = DeleteDuplicates2(head.next);
        }
        
        return head;
    }

    private void NodePrint(ListNode node)
    {
        if (node == null)
            return;

        Console.Write($"{node.val},");
        if (node.next != null)
        {
            NodePrint(node.next);
        }
    }

    public void execute()
    {
        var node = new ListNode(1, new ListNode(1, new ListNode(2, new ListNode(3, new ListNode(3)))));
        var result = DeleteDuplicates2(node);
        NodePrint(result);
    }
}