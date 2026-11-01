package com.wsw.cospa.widget;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Stack;

/* loaded from: classes2.dex */
public class ListTree {
    private List<TreeNode> nodes = new ArrayList();
    private int rootNodesCount;

    public class Couple {
        public int curListPos;
        public List<TreeNode> list;

        public Couple(List<TreeNode> list, int i) {
            this.list = list;
            this.curListPos = i;
        }
    }

    @FunctionalInterface
    public interface EnumOptionFunc {
        void option(TreeNode treeNode);
    }

    @Deprecated
    public class EnumPos {
        private Stack<TreeEnumInfo> treeEnumStack;

        public class TreeEnumInfo {
            private List<TreeNode> nodeList;
            private int planeIndex;

            public TreeEnumInfo(List<TreeNode> list, int i) {
                this.nodeList = list;
                this.planeIndex = i;
            }

            public static /* synthetic */ int access$808(TreeEnumInfo treeEnumInfo) {
                int i = treeEnumInfo.planeIndex;
                treeEnumInfo.planeIndex = i + 1;
                return i;
            }
        }

        private EnumPos() {
            Stack<TreeEnumInfo> stack = new Stack<>();
            this.treeEnumStack = stack;
            stack.push(new TreeEnumInfo(ListTree.this.nodes, 0));
        }
    }

    public class TreeNode {
        private boolean checked;
        private int childrenCount;
        private List<TreeNode> collapseDescendant;
        private Object data;
        private boolean expand;
        private int expandDescendantCount;
        private int layoutResId;
        private TreeNode parent;
        private boolean showExpandIcon;

        public static /* synthetic */ int access$208(TreeNode treeNode) {
            int i = treeNode.expandDescendantCount;
            treeNode.expandDescendantCount = i + 1;
            return i;
        }

        public static /* synthetic */ int access$210(TreeNode treeNode) {
            int i = treeNode.expandDescendantCount;
            treeNode.expandDescendantCount = i - 1;
            return i;
        }

        public static /* synthetic */ int access$212(TreeNode treeNode, int i) {
            int i2 = treeNode.expandDescendantCount + i;
            treeNode.expandDescendantCount = i2;
            return i2;
        }

        public static /* synthetic */ int access$220(TreeNode treeNode, int i) {
            int i2 = treeNode.expandDescendantCount - i;
            treeNode.expandDescendantCount = i2;
            return i2;
        }

        public static /* synthetic */ int access$508(TreeNode treeNode) {
            int i = treeNode.childrenCount;
            treeNode.childrenCount = i + 1;
            return i;
        }

        public static /* synthetic */ int access$510(TreeNode treeNode) {
            int i = treeNode.childrenCount;
            treeNode.childrenCount = i - 1;
            return i;
        }

        public void enumCheckedNodes(EnumOptionFunc enumOptionFunc) {
            if (this.expand) {
                throw new IllegalStateException("Only can be invoked when node is collapsed");
            }
            List<TreeNode> list = this.collapseDescendant;
            if (list == null) {
                return;
            }
            for (TreeNode treeNode : list) {
                enumOptionFunc.option(treeNode);
                if (!treeNode.isExpand()) {
                    treeNode.enumCheckedNodes(enumOptionFunc);
                }
            }
        }

        public List<TreeNode> extractDescendant() {
            List<TreeNode> list = this.collapseDescendant;
            this.collapseDescendant = null;
            return list;
        }

        public int getChildrenCount() {
            return this.childrenCount;
        }

        public Object getData() {
            return this.data;
        }

        public int getExpandDescendantCount() {
            return this.expandDescendantCount;
        }

        public int getLayoutResId() {
            return this.layoutResId;
        }

        public TreeNode getParent() {
            return this.parent;
        }

        public boolean isChecked() {
            return this.checked;
        }

        public boolean isExpand() {
            return this.expand;
        }

        public boolean isShowExpandIcon() {
            return this.showExpandIcon;
        }

        public void removeCheckedChildren() {
            if (this.collapseDescendant == null) {
                return;
            }
            int i = 0;
            while (i < this.collapseDescendant.size()) {
                if (this.collapseDescendant.get(i).checked) {
                    this.collapseDescendant.remove(i);
                    i--;
                } else {
                    this.collapseDescendant.get(i).removeCheckedChildren();
                }
                i++;
            }
        }

        public void retractDescendant(List<TreeNode> list) {
            this.collapseDescendant = new ArrayList();
            Iterator<TreeNode> it = list.iterator();
            while (it.hasNext()) {
                this.collapseDescendant.add(it.next());
            }
        }

        public void setChecked(boolean z) {
            this.checked = z;
        }

        public void setDescendantChecked(boolean z) {
            List<TreeNode> list = this.collapseDescendant;
            if (list == null) {
                return;
            }
            if (this.expand) {
                throw new IllegalStateException("Only can be invoked when node is collapsed");
            }
            Iterator<TreeNode> it = list.iterator();
            while (it.hasNext()) {
                it.next().setChecked(z);
            }
        }

        public void setExpand(boolean z) {
            this.expand = z;
        }

        public void setShowExpandIcon(boolean z) {
            this.showExpandIcon = z;
        }

        private TreeNode(TreeNode treeNode, Object obj, int i) {
            this.childrenCount = 0;
            this.expandDescendantCount = 0;
            this.parent = null;
            this.showExpandIcon = true;
            this.parent = treeNode;
            this.data = obj;
            this.layoutResId = i;
        }
    }

    private List<TreeNode> getNodeContainer(TreeNode treeNode) {
        TreeNode parent = treeNode.getParent();
        while (parent != null) {
            if (parent.expandDescendantCount == 0) {
                return parent.collapseDescendant;
            }
        }
        return this.nodes;
    }

    private int getNodePlaneIndexByIndex(TreeNode treeNode, int i) {
        if (!treeNode.isExpand()) {
            throw new IllegalStateException("Only invoke when parent is expand");
        }
        int i2 = treeNode.childrenCount;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return i3;
            }
            TreeNode treeNode2 = this.nodes.get(i3);
            i3 = i3 + (treeNode2.isExpand() ? treeNode2.expandDescendantCount : 0) + 1;
        }
        return -1;
    }

    private void insertNoRootNode(List<TreeNode> list, TreeNode treeNode, int i, TreeNode treeNode2) {
        TreeNode treeNode3;
        if (!treeNode.isExpand()) {
            if (treeNode.collapseDescendant == null) {
                treeNode.collapseDescendant = new ArrayList();
            }
            insertRootNode(treeNode.collapseDescendant, i, treeNode2);
            return;
        }
        TreeNode treeNode4 = null;
        TreeNode nextSibling = list.get(list.indexOf(treeNode) + 1);
        int i2 = 0;
        while (true) {
            TreeNode treeNode5 = nextSibling;
            treeNode3 = treeNode4;
            treeNode4 = treeNode5;
            if (i2 >= i) {
                break;
            }
            nextSibling = getNextSibling(treeNode4);
            i2++;
        }
        if (treeNode4 != null) {
            list.add(list.indexOf(treeNode4), treeNode2);
        } else {
            list.add(list.indexOf(treeNode3) + treeNode3.expandDescendantCount + 1, treeNode2);
        }
        while (treeNode != null) {
            TreeNode.access$208(treeNode);
            treeNode = treeNode.parent;
        }
    }

    private void insertRootNode(List<TreeNode> list, int i, TreeNode treeNode) {
        TreeNode nextSibling = list.get(0);
        for (int i2 = 0; i2 < i; i2++) {
            nextSibling = getNextSibling(nextSibling);
        }
        if (nextSibling != null) {
            list.add(list.indexOf(nextSibling), treeNode);
        } else {
            list.add(treeNode);
        }
    }

    public TreeNode addNode(TreeNode treeNode, Object obj, int i) {
        TreeNode treeNode2 = new TreeNode(treeNode, obj, i);
        if (treeNode == null) {
            this.nodes.add(treeNode2);
            this.rootNodesCount++;
        } else {
            if (treeNode.isExpand()) {
                this.nodes.add(this.nodes.indexOf(treeNode) + treeNode.expandDescendantCount + 1, treeNode2);
                for (TreeNode treeNode3 = treeNode; treeNode3 != null; treeNode3 = treeNode3.parent) {
                    TreeNode.access$208(treeNode3);
                }
            } else {
                if (treeNode.collapseDescendant == null) {
                    treeNode.collapseDescendant = new ArrayList();
                }
                treeNode.collapseDescendant.add(treeNode2);
            }
            TreeNode.access$508(treeNode);
        }
        return treeNode2;
    }

    public Pair<Integer, Integer> clearDescendant(TreeNode treeNode) {
        if (treeNode.childrenCount == 0) {
            return null;
        }
        int iIndexOf = this.nodes.indexOf(treeNode) + 1;
        Pair<Integer, Integer> pair = new Pair<>(Integer.valueOf(iIndexOf), Integer.valueOf(treeNode.expandDescendantCount));
        this.nodes.subList(iIndexOf, treeNode.expandDescendantCount + iIndexOf).clear();
        treeNode.childrenCount = 0;
        treeNode.expandDescendantCount = 0;
        treeNode.collapseDescendant = null;
        return pair;
    }

    public void collapseAllNodes() {
        for (int i = 0; i < this.nodes.size(); i++) {
            collapseNode(this.nodes.get(i));
        }
    }

    public int collapseNode(TreeNode treeNode) {
        int iIndexOf = this.nodes.indexOf(treeNode);
        if (!treeNode.isExpand()) {
            return 0;
        }
        treeNode.setExpand(false);
        if (treeNode.childrenCount == 0) {
            return 0;
        }
        int i = iIndexOf + 1;
        List<TreeNode> listSubList = this.nodes.subList(i, treeNode.expandDescendantCount + i);
        treeNode.retractDescendant(listSubList);
        listSubList.clear();
        for (TreeNode treeNode2 = treeNode.parent; treeNode2 != null; treeNode2 = treeNode2.parent) {
            TreeNode.access$220(treeNode2, treeNode.expandDescendantCount);
        }
        int i2 = treeNode.expandDescendantCount;
        treeNode.expandDescendantCount = 0;
        return i2;
    }

    @Deprecated
    public void enumCheckedNodes(EnumOptionFunc enumOptionFunc) {
        for (int i = 0; i < this.nodes.size(); i++) {
            TreeNode treeNode = this.nodes.get(i);
            if (treeNode.isChecked()) {
                enumOptionFunc.option(treeNode);
                if (!treeNode.isExpand()) {
                    treeNode.enumCheckedNodes(enumOptionFunc);
                }
            }
        }
    }

    @Deprecated
    public EnumPos enumNext(EnumPos enumPos) {
        EnumPos.TreeEnumInfo treeEnumInfo = (EnumPos.TreeEnumInfo) enumPos.treeEnumStack.peek();
        TreeNode treeNode = (TreeNode) treeEnumInfo.nodeList.get(treeEnumInfo.planeIndex);
        if (treeNode.getChildrenCount() > 0 && !treeNode.isExpand()) {
            Stack stack = enumPos.treeEnumStack;
            Objects.requireNonNull(enumPos);
            stack.push(enumPos.new TreeEnumInfo(treeNode.collapseDescendant, 0));
            return enumPos;
        }
        while (!enumPos.treeEnumStack.empty()) {
            EnumPos.TreeEnumInfo.access$808((EnumPos.TreeEnumInfo) enumPos.treeEnumStack.peek());
            if (((EnumPos.TreeEnumInfo) enumPos.treeEnumStack.peek()).planeIndex != ((EnumPos.TreeEnumInfo) enumPos.treeEnumStack.peek()).nodeList.size()) {
                return enumPos;
            }
            enumPos.treeEnumStack.pop();
        }
        return null;
    }

    public void expandAllNodes() {
        for (int i = 0; i < this.nodes.size(); i++) {
            expandNode(this.nodes.get(i));
        }
    }

    public int expandNode(TreeNode treeNode) {
        int iIndexOf = this.nodes.indexOf(treeNode);
        if (treeNode.isExpand()) {
            return 0;
        }
        treeNode.setExpand(true);
        if (treeNode.childrenCount == 0) {
            return 0;
        }
        List<TreeNode> listExtractDescendant = treeNode.extractDescendant();
        this.nodes.addAll(iIndexOf + 1, listExtractDescendant);
        treeNode.expandDescendantCount = listExtractDescendant.size();
        for (TreeNode treeNode2 = treeNode.parent; treeNode2 != null; treeNode2 = treeNode2.parent) {
            TreeNode.access$212(treeNode2, treeNode.expandDescendantCount);
        }
        return treeNode.expandDescendantCount;
    }

    public void forEach(EnumOptionFunc enumOptionFunc) {
        Stack stack = new Stack();
        stack.push(new Couple(this.nodes, 0));
        do {
            if (((Couple) stack.peek()).list.size() > ((Couple) stack.peek()).curListPos) {
                TreeNode treeNode = ((Couple) stack.peek()).list.get(((Couple) stack.peek()).curListPos);
                enumOptionFunc.option(treeNode);
                ((Couple) stack.peek()).curListPos++;
                if (treeNode.collapseDescendant != null && !treeNode.collapseDescendant.isEmpty()) {
                    stack.push(new Couple(treeNode.collapseDescendant, 0));
                }
            } else {
                stack.pop();
            }
        } while (!stack.empty());
    }

    public TreeNode getFirstChild(TreeNode treeNode) {
        if (treeNode.childrenCount == 0) {
            return null;
        }
        return getFirstChild(getNodeContainer(treeNode), treeNode);
    }

    public TreeNode getFirstNode() {
        if (this.nodes.isEmpty()) {
            return null;
        }
        return this.nodes.get(0);
    }

    public TreeNode getLastChild(TreeNode treeNode) {
        if (treeNode.childrenCount == 0) {
            return null;
        }
        List<TreeNode> nodeContainer = getNodeContainer(treeNode);
        TreeNode firstChild = getFirstChild(nodeContainer, treeNode);
        while (firstChild != null) {
            firstChild = getNextSibling(nodeContainer, firstChild);
        }
        return firstChild;
    }

    public TreeNode getNextSibling(TreeNode treeNode) {
        List<TreeNode> nodeContainer = getNodeContainer(treeNode);
        int iIndexOf = nodeContainer.indexOf(treeNode) + 1;
        if (nodeContainer.size() == iIndexOf) {
            return null;
        }
        TreeNode treeNode2 = nodeContainer.get(iIndexOf + treeNode.expandDescendantCount);
        if (treeNode2.getParent() == treeNode.getParent()) {
            return treeNode2;
        }
        return null;
    }

    @Deprecated
    public TreeNode getNodeByEnumPos(EnumPos enumPos) {
        return (TreeNode) ((EnumPos.TreeEnumInfo) enumPos.treeEnumStack.peek()).nodeList.get(((EnumPos.TreeEnumInfo) enumPos.treeEnumStack.peek()).planeIndex);
    }

    public TreeNode getNodeByPlaneIndex(int i) {
        return this.nodes.get(i);
    }

    public TreeNode getNodeByRank(TreeNode treeNode, int i) {
        if (i >= treeNode.childrenCount) {
            return null;
        }
        List<TreeNode> nodeContainer = getNodeContainer(treeNode);
        TreeNode firstChild = getFirstChild(nodeContainer, treeNode);
        int i2 = 0;
        while (firstChild != null) {
            if (i2 == i) {
                return firstChild;
            }
            firstChild = getNextSibling(nodeContainer, firstChild);
            i2++;
        }
        return null;
    }

    public int getNodeLayerLevel(TreeNode treeNode) {
        int i = 0;
        for (TreeNode treeNode2 = treeNode.parent; treeNode2 != null; treeNode2 = treeNode2.parent) {
            i++;
        }
        return i;
    }

    public int getNodePlaneIndex(TreeNode treeNode) {
        return this.nodes.indexOf(treeNode);
    }

    public int getNodeRank(TreeNode treeNode) {
        int iIndexOf;
        List<TreeNode> nodeContainer = getNodeContainer(treeNode);
        TreeNode parent = treeNode.getParent();
        int i = 0;
        if (parent == null || (iIndexOf = nodeContainer.indexOf(parent)) < 0) {
            TreeNode nextSibling = nodeContainer.get(0);
            while (nextSibling != null && nextSibling != treeNode) {
                nextSibling = getNextSibling(nodeContainer, nextSibling);
                i++;
            }
            if (nextSibling != null) {
                return i;
            }
            throw new RuntimeException("Can`t find node in tree");
        }
        TreeNode nextSibling2 = nodeContainer.get(iIndexOf + 1);
        while (nextSibling2 != null && nextSibling2 != treeNode) {
            nextSibling2 = getNextSibling(nodeContainer, nextSibling2);
            i++;
        }
        if (nextSibling2 != null) {
            return i;
        }
        throw new RuntimeException("Can`t find node in tree");
    }

    public TreeNode getPrevSibling(TreeNode treeNode) {
        List<TreeNode> nodeContainer = getNodeContainer(treeNode);
        int iIndexOf = nodeContainer.indexOf(treeNode);
        if (iIndexOf == 0) {
            return null;
        }
        for (TreeNode parent = nodeContainer.get(iIndexOf - 1); parent != null; parent = parent.getParent()) {
            if (parent.getParent() == treeNode.getParent()) {
                return parent;
            }
        }
        return null;
    }

    public TreeNode insertNode(TreeNode treeNode, int i, Object obj, int i2) {
        TreeNode treeNode2 = new TreeNode(treeNode, obj, i2);
        if (treeNode == null) {
            if (i > this.rootNodesCount) {
                return null;
            }
            insertRootNode(this.nodes, i, treeNode2);
            this.rootNodesCount++;
        } else {
            if (i > treeNode.childrenCount) {
                return null;
            }
            insertNoRootNode(this.nodes, treeNode, i, treeNode2);
            TreeNode.access$508(treeNode);
        }
        return treeNode2;
    }

    public void printList() {
        for (TreeNode treeNode : this.nodes) {
            int nodeLayerLevel = getNodeLayerLevel(treeNode);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < nodeLayerLevel; i++) {
                sb.append('\t');
            }
            System.out.println(sb.toString() + treeNode.getData().toString());
        }
    }

    public void removeCheckedNodes() {
        new ArrayList();
        int i = 0;
        while (i < this.nodes.size()) {
            TreeNode treeNode = this.nodes.get(i);
            if (treeNode.isChecked()) {
                this.nodes.removeAll(this.nodes.subList(i, i + 1 + treeNode.expandDescendantCount));
                TreeNode treeNode2 = treeNode.parent;
                if (treeNode2 != null) {
                    TreeNode.access$510(treeNode2);
                }
                while (treeNode2 != null) {
                    TreeNode.access$220(treeNode2, treeNode.expandDescendantCount + 1);
                    treeNode2 = treeNode2.parent;
                }
                i--;
            } else {
                treeNode.removeCheckedChildren();
            }
            i++;
        }
    }

    public void removeNode(TreeNode treeNode) {
        TreeNode treeNode2 = treeNode.parent;
        if (treeNode2 != null && !treeNode2.isExpand()) {
            TreeNode.access$508(treeNode2);
            TreeNode.access$210(treeNode2);
            this.nodes.remove(treeNode);
            return;
        }
        int i = treeNode.expandDescendantCount;
        int iIndexOf = this.nodes.indexOf(treeNode);
        this.nodes.subList(iIndexOf, iIndexOf + i + 1).clear();
        if (treeNode2 == null) {
            this.rootNodesCount--;
            return;
        }
        TreeNode.access$508(treeNode2);
        while (treeNode2 != null) {
            TreeNode.access$220(treeNode2, i);
            treeNode2 = treeNode2.parent;
        }
    }

    public int setDescendantChecked(int i, boolean z) {
        TreeNode treeNode = this.nodes.get(i);
        if (!treeNode.isExpand()) {
            treeNode.setDescendantChecked(z);
            return 0;
        }
        int i2 = i + 1;
        int i3 = treeNode.expandDescendantCount;
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            this.nodes.get(i4).setChecked(z);
        }
        return treeNode.expandDescendantCount;
    }

    public int size() {
        return this.nodes.size();
    }

    @Deprecated
    public EnumPos startEnumNode() {
        if (this.nodes.isEmpty()) {
            return null;
        }
        return new EnumPos();
    }

    private TreeNode getFirstChild(List<TreeNode> list, TreeNode treeNode) {
        if (treeNode.childrenCount == 0) {
            return null;
        }
        if (!treeNode.isExpand()) {
            return (TreeNode) treeNode.collapseDescendant.get(0);
        }
        return list.get(list.indexOf(treeNode) + 1);
    }

    private TreeNode getNextSibling(List<TreeNode> list, TreeNode treeNode) {
        TreeNode treeNode2 = list.get(list.indexOf(treeNode) + 1 + treeNode.expandDescendantCount);
        if (treeNode2.getParent() == treeNode.getParent()) {
            return treeNode2;
        }
        return null;
    }

    public int expandNode(int i) {
        return expandNode(this.nodes.get(i));
    }

    public int collapseNode(int i) {
        return collapseNode(this.nodes.get(i));
    }
}
