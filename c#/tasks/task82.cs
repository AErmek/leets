
using System;

class task82 : itask
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
        Delete(head, ref root, null);

        return root;
    }

    private void Delete(ListNode node, ref ListNode newNode, int? previosVal)
    {
        if (node == null)
            return;

        if (node.next == null || node.val != node.next.val)
        {
            if (previosVal == null || previosVal.Value != node.val)
            {
                newNode = new ListNode(node.val);

                Delete(node.next, ref newNode.next, node.val);
                return;
            }
        }

        Delete(node.next, ref newNode, node.val);
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
        var result = DeleteDuplicates(node);
        NodePrint(result);
    }
}