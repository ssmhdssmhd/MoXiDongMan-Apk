package org.mozilla.javascript.optimizer;

import org.mozilla.javascript.Node;
import org.mozilla.javascript.ObjArray;
import org.mozilla.javascript.ast.ScriptNode;

/* loaded from: classes3.dex */
class Optimizer {
    public static final int AnyType = 3;
    public static final int NoType = 0;
    public static final int NumberType = 1;
    private boolean inDirectCallFunction;
    private boolean parameterUsedInNumberContext;
    public OptFunctionNode theFunction;

    private static void buildStatementList_r(Node node, ObjArray objArray) {
        int type = node.getType();
        if (type != 130 && type != 142 && type != 133 && type != 110) {
            objArray.add(node);
            return;
        }
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNext()) {
            buildStatementList_r(firstChild, objArray);
        }
    }

    private boolean convertParameter(Node node) throws RuntimeException {
        if (!this.inDirectCallFunction || node.getType() != 55) {
            return false;
        }
        if (!this.theFunction.isParameter(this.theFunction.getVarIndex(node))) {
            return false;
        }
        node.removeProp(8);
        return true;
    }

    private void markDCPNumberContext(Node node) throws RuntimeException {
        if (this.inDirectCallFunction && node.getType() == 55) {
            if (this.theFunction.isParameter(this.theFunction.getVarIndex(node))) {
                this.parameterUsedInNumberContext = true;
            }
        }
    }

    private void optimizeFunction(OptFunctionNode optFunctionNode) throws RuntimeException {
        if (optFunctionNode.fnode.requiresActivation()) {
            return;
        }
        this.inDirectCallFunction = optFunctionNode.isTargetOfDirectCall();
        this.theFunction = optFunctionNode;
        ObjArray objArray = new ObjArray();
        buildStatementList_r(optFunctionNode.fnode, objArray);
        int size = objArray.size();
        Node[] nodeArr = new Node[size];
        objArray.toArray(nodeArr);
        Block.runFlowAnalyzes(optFunctionNode, nodeArr);
        if (optFunctionNode.fnode.requiresActivation()) {
            return;
        }
        this.parameterUsedInNumberContext = false;
        for (int i = 0; i < size; i++) {
            rewriteForNumberVariables(nodeArr[i], 1);
        }
        optFunctionNode.setParameterNumberContext(this.parameterUsedInNumberContext);
    }

    private void rewriteAsObjectChildren(Node node, Node node2) {
        while (node2 != null) {
            Node next = node2.getNext();
            if (rewriteForNumberVariables(node2, 0) == 1 && !convertParameter(node2)) {
                node.removeChild(node2);
                Node node3 = new Node(150, node2);
                if (next == null) {
                    node.addChildToBack(node3);
                } else {
                    node.addChildBefore(node3, next);
                }
            }
            node2 = next;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x0125 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int rewriteForNumberVariables(Node node, int i) throws RuntimeException {
        int type = node.getType();
        if (type == 40) {
            node.putIntProp(8, 0);
            return 1;
        }
        if (type == 134) {
            if (rewriteForNumberVariables(node.getFirstChild(), 1) == 1) {
                node.putIntProp(8, 0);
            }
            return 0;
        }
        if (type != 141) {
            if (type != 157) {
                if (type == 55) {
                    int varIndex = this.theFunction.getVarIndex(node);
                    if (this.inDirectCallFunction && this.theFunction.isParameter(varIndex) && i == 1) {
                        node.putIntProp(8, 0);
                        return 1;
                    }
                    if (!this.theFunction.isNumberVar(varIndex)) {
                        return 0;
                    }
                    node.putIntProp(8, 0);
                    return 1;
                }
                if (type != 56) {
                    if (type != 107 && type != 108) {
                        switch (type) {
                            default:
                                switch (type) {
                                    case 14:
                                    case 15:
                                    case 16:
                                    case 17:
                                        Node firstChild = node.getFirstChild();
                                        Node next = firstChild.getNext();
                                        int iRewriteForNumberVariables = rewriteForNumberVariables(firstChild, 1);
                                        int iRewriteForNumberVariables2 = rewriteForNumberVariables(next, 1);
                                        markDCPNumberContext(firstChild);
                                        markDCPNumberContext(next);
                                        if (convertParameter(firstChild)) {
                                            if (!convertParameter(next) && iRewriteForNumberVariables2 == 1) {
                                                node.putIntProp(8, 2);
                                            }
                                        } else if (convertParameter(next)) {
                                            if (iRewriteForNumberVariables == 1) {
                                                node.putIntProp(8, 1);
                                            }
                                        } else if (iRewriteForNumberVariables == 1) {
                                            if (iRewriteForNumberVariables2 == 1) {
                                                node.putIntProp(8, 0);
                                            } else {
                                                node.putIntProp(8, 1);
                                            }
                                        } else if (iRewriteForNumberVariables2 == 1) {
                                            node.putIntProp(8, 2);
                                        }
                                        return 0;
                                    default:
                                        switch (type) {
                                            case 21:
                                                Node firstChild2 = node.getFirstChild();
                                                Node next2 = firstChild2.getNext();
                                                int iRewriteForNumberVariables3 = rewriteForNumberVariables(firstChild2, 1);
                                                int iRewriteForNumberVariables4 = rewriteForNumberVariables(next2, 1);
                                                if (convertParameter(firstChild2)) {
                                                    if (!convertParameter(next2) && iRewriteForNumberVariables4 == 1) {
                                                        node.putIntProp(8, 2);
                                                    }
                                                } else if (convertParameter(next2)) {
                                                    if (iRewriteForNumberVariables3 == 1) {
                                                        node.putIntProp(8, 1);
                                                    }
                                                } else if (iRewriteForNumberVariables3 == 1) {
                                                    if (iRewriteForNumberVariables4 == 1) {
                                                        node.putIntProp(8, 0);
                                                        return 1;
                                                    }
                                                    node.putIntProp(8, 1);
                                                } else if (iRewriteForNumberVariables4 == 1) {
                                                    node.putIntProp(8, 2);
                                                }
                                                return 0;
                                            case 22:
                                            case 23:
                                            case 24:
                                            case 25:
                                                break;
                                            default:
                                                switch (type) {
                                                    case 36:
                                                        Node firstChild3 = node.getFirstChild();
                                                        Node next3 = firstChild3.getNext();
                                                        if (rewriteForNumberVariables(firstChild3, 1) == 1 && !convertParameter(firstChild3)) {
                                                            node.removeChild(firstChild3);
                                                            node.addChildToFront(new Node(150, firstChild3));
                                                        }
                                                        if (rewriteForNumberVariables(next3, 1) == 1 && !convertParameter(next3)) {
                                                            node.putIntProp(8, 2);
                                                        }
                                                        return 0;
                                                    case 37:
                                                        break;
                                                    case 38:
                                                        Node firstChild4 = node.getFirstChild();
                                                        rewriteAsObjectChildren(firstChild4, firstChild4.getFirstChild());
                                                        Node next4 = firstChild4.getNext();
                                                        if (((OptFunctionNode) node.getProp(9)) != null) {
                                                            while (next4 != null) {
                                                                if (rewriteForNumberVariables(next4, 1) == 1) {
                                                                    markDCPNumberContext(next4);
                                                                }
                                                                next4 = next4.getNext();
                                                            }
                                                        } else {
                                                            rewriteAsObjectChildren(node, next4);
                                                        }
                                                        return 0;
                                                    default:
                                                        rewriteAsObjectChildren(node, node.getFirstChild());
                                                        return 0;
                                                }
                                        }
                                    case 18:
                                    case 19:
                                        Node firstChild5 = node.getFirstChild();
                                        Node next5 = firstChild5.getNext();
                                        int iRewriteForNumberVariables5 = rewriteForNumberVariables(firstChild5, 1);
                                        int iRewriteForNumberVariables6 = rewriteForNumberVariables(next5, 1);
                                        markDCPNumberContext(firstChild5);
                                        markDCPNumberContext(next5);
                                        if (iRewriteForNumberVariables5 == 1) {
                                            if (iRewriteForNumberVariables6 == 1) {
                                                node.putIntProp(8, 0);
                                                return 1;
                                            }
                                            if (!convertParameter(next5)) {
                                                node.removeChild(next5);
                                                node.addChildToBack(new Node(151, next5));
                                                node.putIntProp(8, 0);
                                            }
                                            return 1;
                                        }
                                        if (iRewriteForNumberVariables6 == 1) {
                                            if (!convertParameter(firstChild5)) {
                                                node.removeChild(firstChild5);
                                                node.addChildToFront(new Node(151, firstChild5));
                                                node.putIntProp(8, 0);
                                            }
                                            return 1;
                                        }
                                        if (!convertParameter(firstChild5)) {
                                            node.removeChild(firstChild5);
                                            node.addChildToFront(new Node(151, firstChild5));
                                        }
                                        if (!convertParameter(next5)) {
                                            node.removeChild(next5);
                                            node.addChildToBack(new Node(151, next5));
                                        }
                                        node.putIntProp(8, 0);
                                        return 1;
                                }
                            case 9:
                            case 10:
                            case 11:
                                break;
                        }
                    } else {
                        Node firstChild6 = node.getFirstChild();
                        int iRewriteForNumberVariables7 = rewriteForNumberVariables(firstChild6, 1);
                        if (firstChild6.getType() != 55) {
                            if (firstChild6.getType() == 36 || firstChild6.getType() == 33) {
                                return iRewriteForNumberVariables7;
                            }
                            return 0;
                        }
                        if (iRewriteForNumberVariables7 != 1 || convertParameter(firstChild6)) {
                            return 0;
                        }
                        node.putIntProp(8, 0);
                        markDCPNumberContext(firstChild6);
                        return 1;
                    }
                }
            }
            Node next6 = node.getFirstChild().getNext();
            int iRewriteForNumberVariables8 = rewriteForNumberVariables(next6, 1);
            int varIndex2 = this.theFunction.getVarIndex(node);
            if (this.inDirectCallFunction && this.theFunction.isParameter(varIndex2)) {
                if (iRewriteForNumberVariables8 != 1) {
                    return iRewriteForNumberVariables8;
                }
                if (convertParameter(next6)) {
                    markDCPNumberContext(next6);
                    return 0;
                }
                node.putIntProp(8, 0);
                return 1;
            }
            if (!this.theFunction.isNumberVar(varIndex2)) {
                if (iRewriteForNumberVariables8 == 1 && !convertParameter(next6)) {
                    node.removeChild(next6);
                    node.addChildToBack(new Node(150, next6));
                }
                return 0;
            }
            if (iRewriteForNumberVariables8 != 1) {
                node.removeChild(next6);
                node.addChildToBack(new Node(151, next6));
            }
            node.putIntProp(8, 0);
            markDCPNumberContext(next6);
            return 1;
        }
        Node firstChild7 = node.getFirstChild();
        Node next7 = firstChild7.getNext();
        Node next8 = next7.getNext();
        if (rewriteForNumberVariables(firstChild7, 1) == 1 && !convertParameter(firstChild7)) {
            node.removeChild(firstChild7);
            node.addChildToFront(new Node(150, firstChild7));
        }
        if (rewriteForNumberVariables(next7, 1) == 1 && !convertParameter(next7)) {
            node.putIntProp(8, 1);
        }
        if (rewriteForNumberVariables(next8, 1) == 1 && !convertParameter(next8)) {
            node.removeChild(next8);
            node.addChildToBack(new Node(150, next8));
        }
        return 0;
    }

    public void optimize(ScriptNode scriptNode) {
        int functionCount = scriptNode.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            optimizeFunction(OptFunctionNode.get(scriptNode, i));
        }
    }
}
