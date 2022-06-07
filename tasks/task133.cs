
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

class task133 : itask
{
    class Node
    {
        public int val;
        public List<Node> neighbors;

        public Node()
        {
            val = 0;
            neighbors = new List<Node>();
        }

        public Node(int _val)
        {
            val = _val;
            neighbors = new List<Node>();
        }

        public Node(int _val, List<Node> _neighbors)
        {
            val = _val;
            neighbors = _neighbors;
        }
    }

    private Node CloneGraph(Node node)
    {
        if (node == null)
            return null;

        var visitedNodes = new Dictionary<int, Node>();
        return Clone(node, visitedNodes);
    }

    private Node Clone(Node node, Dictionary<int, Node> visitedNodes)
    {
        var newNode = new Node() { val = node.val };
        visitedNodes.Add(newNode.val, newNode);

        for (int i = 0; i < node.neighbors.Count; i++)
        {
            var key = node.neighbors[i].val;
            newNode.neighbors.Add(
                visitedNodes.ContainsKey(key)
            ? visitedNodes[key]
            : Clone(node.neighbors[i], visitedNodes)
            );
        }

        return newNode;
    }

    private void NodePrint(Node node)
    {
        var printedHash = new Dictionary<int, bool>();
        NodePrintExact(node, printedHash);
    }

    private void NodePrintExact(Node node, Dictionary<int, bool> printedHash)
    {
        Console.WriteLine($"({node.val}:[{string.Join(',', node.neighbors.Select(x => x.val))}])");
        printedHash.Add(node.val, false);
        foreach (var item in node.neighbors)
        {
            if (!printedHash.ContainsKey(item.val))
            {
                NodePrintExact(item, printedHash);
            }
        }
    }

    public void execute()
    {
        var node1 = new Node() { val = 1 };
        var node2 = new Node() { val = 2 };
        var node3 = new Node() { val = 3 };
        var node4 = new Node() { val = 4 };

        node1.neighbors = new List<Node>() { node2, node4 };
        node2.neighbors = new List<Node>() { node1, node3 };
        node3.neighbors = new List<Node>() { node2, node4 };
        node4.neighbors = new List<Node>() { node1, node3 };

        NodePrint(node1);

        var newNode1 = CloneGraph(node1);

        Console.WriteLine("=================");

        NodePrint(newNode1);
    }
}