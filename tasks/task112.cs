
using System.Collections.Generic;

class task112 : itask
{
    private class TreeNode
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

    private bool HasPathSum(TreeNode root, int targetSum)
    {
        return root != null && Visit(root, 0, targetSum);
    }

    private bool Visit(TreeNode node, int sum, int expectedSum)
    {
        sum += node.val;
        var visitedChild = false;

        if (node.left != null)
        {
            if(Visit(node.left, sum, expectedSum))
                return true;
            visitedChild = true;
        }
        if (node.right != null)
        {
            if(Visit(node.right, sum, expectedSum))
                return true;
            visitedChild = true;
        }
        if (!visitedChild)
        {
            return sum == expectedSum;
        }

        return false;
    }

    public void execute()
    {
        throw new System.NotImplementedException();
    }
}