
using System;
using System.Collections.Generic;

class task662 : itask
{
    public class TreeNode
    {
        public int val;
        public TreeNode left;
        public TreeNode right;
        public TreeNode(int val = 0, TreeNode left = null, TreeNode right = null)
        {
            this.val = val;
            this.left = left;
            this.right = right;
        }
    }

    public static int max_level = 0;

    public virtual void leftViewUtil(TreeNode node, int level)
    {
        // Base Case
        if (node == null)
        {
            return;
        }

        // If this is the first node of its level
        if (max_level < level)
        {
            Console.Write(" " + node.val);
            max_level = level;
        }

        // Recur for left and right subtrees
        leftViewUtil(node.left, level + 1);
        leftViewUtil(node.right, level + 1);
    }

    private int WidthOfBinaryTree(TreeNode root)
    {
        if (root == null)
            return 0;

        var queue = new Queue<KeyValuePair<int, TreeNode>>();
        queue.Enqueue(KeyValuePair.Create(0, root));

        int max = 0;
        int count = 1;
        int a = 0;

        while (queue.Count > 0)
        {
            var node = queue.Dequeue();

            if (node.Value.left != null)
                queue.Enqueue(KeyValuePair.Create(node.Key * 2, node.Value.left));
            if (node.Value.right != null)
                queue.Enqueue(KeyValuePair.Create(node.Key * 2 + 1, node.Value.right));

            count--;

            if (count == 0)
            {
                var width = node.Key - a + 1;
                if (width > max)
                {
                    max = width;
                }

                if (queue.Count > 0)
                {
                    a = queue.Peek().Key;
                    count = queue.Count;
                }
            }
        }

        return max;
    }

    public void execute()
    {
        var root = new TreeNode(3);
        // root.left = new TreeNode(2);
        // root.right = new TreeNode(5);
        // root.left.left = new TreeNode(1);
        // root.left.right = new TreeNode(4);


        //leftViewUtil(root, 1);
        Console.WriteLine(WidthOfBinaryTree(root));
    }
}