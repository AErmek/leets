
using System.Collections.Generic;

class task138 : itask
{

    // Definition for a Node.
    class Node
    {
        public int val;
        public Node next;
        public Node random;

        public Node(int _val)
        {
            val = _val;
            next = null;
            random = null;
        }
    }


    private Node CopyRandomList(Node head)
    {
        Node newNode = null;
        var dict = new Dictionary<Node, Node>();
        CopyBase(head,ref newNode, dict);
        CopyRandom(head, newNode, dict);

        return newNode;
    }

    private void CopyBase(Node node, ref Node newNode, Dictionary<Node, Node> dict)
    {
        if (node == null)
            return;

        newNode = new Node(node.val);

        dict.Add(node, newNode);

        if (node.next != null)
        {
            CopyBase(node.next,ref newNode.next, dict);
        }
    }

    private void CopyRandom(Node node, Node newNode, Dictionary<Node, Node> dict)
    {
        if (node == null)
            return;

        if (node.random != null)
        {
            newNode.random = dict[node.random];
        }

        CopyRandom(node.next, newNode.next, dict);
    }

    public void execute()
    {
        throw new System.NotImplementedException();
    }
}