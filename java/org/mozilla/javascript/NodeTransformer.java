package org.mozilla.javascript;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.Jump;
import org.mozilla.javascript.ast.Scope;
import org.mozilla.javascript.ast.ScriptNode;

/* loaded from: classes3.dex */
public class NodeTransformer {
    private boolean hasFinally;
    private ObjArray loopEnds;
    private ObjArray loops;

    private static Node addBeforeCurrent(Node node, Node node2, Node node3, Node node4) throws RuntimeException {
        if (node2 == null) {
            if (node3 != node.getFirstChild()) {
                Kit.codeBug();
            }
            node.addChildToFront(node4);
        } else {
            if (node3 != node2.getNext()) {
                Kit.codeBug();
            }
            node.addChildAfter(node4, node2);
        }
        return node4;
    }

    private static Node replaceCurrent(Node node, Node node2, Node node3, Node node4) throws RuntimeException {
        if (node2 == null) {
            if (node3 != node.getFirstChild()) {
                Kit.codeBug();
            }
            node.replaceChild(node3, node4);
        } else if (node2.next == node3) {
            node.replaceChildAfter(node2, node4);
        } else {
            node.replaceChild(node3, node4);
        }
        return node4;
    }

    private void transformCompilationUnit(ScriptNode scriptNode, boolean z) throws RuntimeException {
        this.loops = new ObjArray();
        this.loopEnds = new ObjArray();
        this.hasFinally = false;
        boolean z2 = scriptNode.getType() != 110 || ((FunctionNode) scriptNode).requiresActivation();
        scriptNode.flattenSymbolTable(!z2);
        transformCompilationUnit_r(scriptNode, scriptNode, scriptNode, z2, z);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0163  */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r13v7, types: [org.mozilla.javascript.ast.Scope] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void transformCompilationUnit_r(ScriptNode scriptNode, Node node, Scope scope, boolean z, boolean z2) throws RuntimeException {
        Node nodeAddBeforeCurrent;
        Node next;
        Node nodeReplaceCurrent;
        int i;
        Node node2;
        Node firstChild;
        Scope definingScope;
        ?? r10 = 0;
        Node node3 = null;
        while (true) {
            if (node3 == null) {
                next = node.getFirstChild();
                nodeAddBeforeCurrent = r10;
            } else {
                nodeAddBeforeCurrent = node3;
                next = node3.getNext();
            }
            if (next == null) {
                return;
            }
            int type = next.getType();
            if (z && ((type == 130 || type == 133 || type == 158) && (next instanceof Scope))) {
                ?? r13 = (Scope) next;
                if (r13.getSymbolTable() != null) {
                    Node node4 = new Node(type == 158 ? 159 : 154);
                    Node node5 = new Node(154);
                    node4.addChildToBack(node5);
                    Iterator<String> it = r13.getSymbolTable().keySet().iterator();
                    while (it.hasNext()) {
                        node5.addChildToBack(Node.newString(39, it.next()));
                    }
                    r13.setSymbolTable(r10);
                    Node nodeReplaceCurrent2 = replaceCurrent(node, nodeAddBeforeCurrent, next, node4);
                    int type2 = nodeReplaceCurrent2.getType();
                    node4.addChildToBack(next);
                    next = nodeReplaceCurrent2;
                    type = type2;
                }
            }
            if (type != 3) {
                boolean z3 = false;
                if (type == 4) {
                    if (scriptNode.getType() == 110 && ((FunctionNode) scriptNode).isGenerator()) {
                        z3 = true;
                    }
                    if (z3) {
                        i = 1;
                        next.putIntProp(20, 1);
                    } else {
                        i = 1;
                    }
                    if (this.hasFinally) {
                        int size = this.loops.size() - i;
                        Node node6 = null;
                        while (size >= 0) {
                            Node node7 = (Node) this.loops.get(size);
                            int type3 = node7.getType();
                            if (type3 == 82 || type3 == 124) {
                                if (type3 == 82) {
                                    Jump jump = new Jump(136);
                                    jump.target = ((Jump) node7).getFinally();
                                    node2 = jump;
                                } else {
                                    node2 = new Node(3);
                                }
                                node6 = node6 == null ? new Node(130, next.getLineno()) : node6;
                                node6.addChildToBack(node2);
                            }
                            size--;
                            node6 = node6;
                        }
                        if (node6 != null) {
                            Node firstChild2 = next.getFirstChild();
                            nodeReplaceCurrent = replaceCurrent(node, nodeAddBeforeCurrent, next, node6);
                            if (firstChild2 == null || z3) {
                                node6.addChildToBack(next);
                            } else {
                                Node node8 = new Node(135, firstChild2);
                                node6.addChildToFront(node8);
                                node6.addChildToBack(new Node(65));
                                transformCompilationUnit_r(scriptNode, node8, scope, z, z2);
                            }
                        }
                    }
                } else if (type == 7) {
                    Node firstChild3 = next.getFirstChild();
                    if (type == 7) {
                        while (firstChild3.getType() == 26) {
                            firstChild3 = firstChild3.getFirstChild();
                        }
                        if (firstChild3.getType() == 12 || firstChild3.getType() == 13) {
                            Node firstChild4 = firstChild3.getFirstChild();
                            Node lastChild = firstChild3.getLastChild();
                            if (firstChild4.getType() == 39 && firstChild4.getString().equals("undefined")) {
                                firstChild3 = lastChild;
                            } else if (lastChild.getType() == 39 && lastChild.getString().equals("undefined")) {
                                firstChild3 = firstChild4;
                            }
                        }
                    }
                    if (firstChild3.getType() == 33) {
                        firstChild3.setType(34);
                    }
                } else {
                    if (type != 8) {
                        if (type == 38) {
                            visitCall(next, scriptNode);
                        } else if (type != 39) {
                            if (type == 73) {
                                ((FunctionNode) scriptNode).addResumptionPoint(next);
                            } else if (type == 82) {
                                Node node9 = ((Jump) next).getFinally();
                                if (node9 != null) {
                                    this.hasFinally = true;
                                    this.loops.push(next);
                                    this.loopEnds.push(node9);
                                }
                            } else if (type == 115) {
                                this.loops.push(next);
                                this.loopEnds.push(((Jump) next).target);
                            } else if (type == 138) {
                                Scope definingScope2 = scope.getDefiningScope(next.getString());
                                if (definingScope2 != null) {
                                    next.setScope(definingScope2);
                                }
                            } else if (type != 159) {
                                switch (type) {
                                    case 30:
                                        visitNew(next, scriptNode);
                                        break;
                                    case 31:
                                        break;
                                    case 32:
                                        break;
                                    default:
                                        switch (type) {
                                            case 121:
                                            case 122:
                                                Jump jump2 = (Jump) next;
                                                Jump jumpStatement = jump2.getJumpStatement();
                                                if (jumpStatement == null) {
                                                    Kit.codeBug();
                                                }
                                                int size2 = this.loops.size();
                                                while (size2 != 0) {
                                                    size2--;
                                                    Node node10 = (Node) this.loops.get(size2);
                                                    if (node10 == jumpStatement) {
                                                        if (type == 121) {
                                                            jump2.target = jumpStatement.target;
                                                        } else {
                                                            jump2.target = jumpStatement.getContinue();
                                                        }
                                                        jump2.setType(5);
                                                        break;
                                                    } else {
                                                        int type4 = node10.getType();
                                                        if (type4 == 124) {
                                                            nodeAddBeforeCurrent = addBeforeCurrent(node, nodeAddBeforeCurrent, next, new Node(3));
                                                        } else if (type4 == 82) {
                                                            Jump jump3 = new Jump(136);
                                                            jump3.target = ((Jump) node10).getFinally();
                                                            nodeAddBeforeCurrent = addBeforeCurrent(node, nodeAddBeforeCurrent, next, jump3);
                                                        }
                                                    }
                                                }
                                                throw Kit.codeBug();
                                            case 123:
                                                Node node11 = new Node(130);
                                                Node firstChild5 = next.getFirstChild();
                                                while (firstChild5 != null) {
                                                    Node next2 = firstChild5.getNext();
                                                    if (firstChild5.getType() == 39) {
                                                        if (firstChild5.hasChildren()) {
                                                            Node firstChild6 = firstChild5.getFirstChild();
                                                            firstChild5.removeChild(firstChild6);
                                                            firstChild5.setType(49);
                                                            firstChild5 = new Node(type == 155 ? 156 : 8, firstChild5, firstChild6);
                                                        } else {
                                                            firstChild5 = next2;
                                                        }
                                                    } else if (firstChild5.getType() != 159) {
                                                        throw Kit.codeBug();
                                                    }
                                                    node11.addChildToBack(new Node(134, firstChild5, next.getLineno()));
                                                    firstChild5 = next2;
                                                }
                                                next = replaceCurrent(node, nodeAddBeforeCurrent, next, node11);
                                                break;
                                            case 124:
                                                this.loops.push(next);
                                                Node next3 = next.getNext();
                                                if (next3.getType() != 3) {
                                                    Kit.codeBug();
                                                }
                                                this.loopEnds.push(next3);
                                                break;
                                            default:
                                                switch (type) {
                                                    case 131:
                                                    case 133:
                                                        break;
                                                    case 132:
                                                        if (!this.loopEnds.isEmpty() && this.loopEnds.peek() == next) {
                                                            this.loopEnds.pop();
                                                            this.loops.pop();
                                                            break;
                                                        }
                                                        break;
                                                    default:
                                                        switch (type) {
                                                            case 154:
                                                                if (next.getFirstChild().getType() == 154) {
                                                                    next = visitLet(scriptNode.getType() != 110 || ((FunctionNode) scriptNode).requiresActivation(), node, nodeAddBeforeCurrent, next);
                                                                    break;
                                                                }
                                                                break;
                                                        }
                                                }
                                        }
                                }
                            }
                        }
                    } else if (z2) {
                        next.setType(74);
                    }
                    if (!z) {
                        if (type == 39) {
                            firstChild = next;
                        } else {
                            firstChild = next.getFirstChild();
                            if (firstChild.getType() != 49) {
                                if (type != 31) {
                                    throw Kit.codeBug();
                                }
                            }
                        }
                        if (firstChild.getScope() == null && (definingScope = scope.getDefiningScope(firstChild.getString())) != null) {
                            firstChild.setScope(definingScope);
                            if (type == 39) {
                                next.setType(55);
                            } else if (type == 8 || type == 74) {
                                next.setType(56);
                                firstChild.setType(41);
                            } else if (type == 156) {
                                next.setType(157);
                                firstChild.setType(41);
                            } else {
                                if (type != 31) {
                                    throw Kit.codeBug();
                                }
                                next = replaceCurrent(node, nodeAddBeforeCurrent, next, new Node(44));
                            }
                        }
                    }
                }
                nodeReplaceCurrent = next;
                transformCompilationUnit_r(scriptNode, nodeReplaceCurrent, nodeReplaceCurrent instanceof Scope ? (Scope) nodeReplaceCurrent : scope, z, z2);
            }
            node3 = nodeReplaceCurrent;
            r10 = 0;
        }
    }

    public final void transform(ScriptNode scriptNode, CompilerEnvirons compilerEnvirons) {
        transform(scriptNode, false, compilerEnvirons);
    }

    public void visitCall(Node node, ScriptNode scriptNode) {
    }

    public Node visitLet(boolean z, Node node, Node node2, Node node3) throws RuntimeException {
        Node nodeReplaceCurrent;
        Node node4;
        Node firstChild;
        Node node5;
        Node firstChild2;
        Node firstChild3 = node3.getFirstChild();
        Node next = firstChild3.getNext();
        node3.removeChild(firstChild3);
        node3.removeChild(next);
        int i = 159;
        boolean z2 = node3.getType() == 159;
        int i2 = 154;
        int i3 = 90;
        if (z) {
            nodeReplaceCurrent = replaceCurrent(node, node2, node3, new Node(z2 ? 160 : 130));
            ArrayList arrayList = new ArrayList();
            Node node6 = new Node(67);
            Node firstChild4 = firstChild3.getFirstChild();
            while (firstChild4 != null) {
                if (firstChild4.getType() == i) {
                    List list = (List) firstChild4.getProp(22);
                    Node firstChild5 = firstChild4.getFirstChild();
                    if (firstChild5.getType() != i2) {
                        throw Kit.codeBug();
                    }
                    node5 = z2 ? new Node(i3, firstChild5.getNext(), next) : new Node(130, new Node(134, firstChild5.getNext()), next);
                    if (list != null) {
                        arrayList.addAll(list);
                        for (int i4 = 0; i4 < list.size(); i4++) {
                            node6.addChildToBack(new Node(127, Node.newNumber(0.0d)));
                        }
                    }
                    firstChild2 = firstChild5.getFirstChild();
                } else {
                    node5 = next;
                    firstChild2 = firstChild4;
                }
                if (firstChild2.getType() != 39) {
                    throw Kit.codeBug();
                }
                arrayList.add(ScriptRuntime.getIndexObject(firstChild2.getString()));
                Node firstChild6 = firstChild2.getFirstChild();
                if (firstChild6 == null) {
                    firstChild6 = new Node(127, Node.newNumber(0.0d));
                }
                node6.addChildToBack(firstChild6);
                firstChild4 = firstChild4.getNext();
                next = node5;
                i = 159;
                i2 = 154;
                i3 = 90;
            }
            node6.putProp(12, arrayList.toArray());
            nodeReplaceCurrent.addChildToBack(new Node(2, node6));
            nodeReplaceCurrent.addChildToBack(new Node(124, next));
            nodeReplaceCurrent.addChildToBack(new Node(3));
        } else {
            nodeReplaceCurrent = replaceCurrent(node, node2, node3, new Node(z2 ? 90 : 130));
            Node node7 = new Node(90);
            Node firstChild7 = firstChild3.getFirstChild();
            while (firstChild7 != null) {
                if (firstChild7.getType() == 159) {
                    Node firstChild8 = firstChild7.getFirstChild();
                    if (firstChild8.getType() != 154) {
                        throw Kit.codeBug();
                    }
                    node4 = z2 ? new Node(90, firstChild8.getNext(), next) : new Node(130, new Node(134, firstChild8.getNext()), next);
                    Scope.joinScopes((Scope) firstChild7, (Scope) node3);
                    firstChild = firstChild8.getFirstChild();
                } else {
                    node4 = next;
                    firstChild = firstChild7;
                }
                if (firstChild.getType() != 39) {
                    throw Kit.codeBug();
                }
                Node nodeNewString = Node.newString(firstChild.getString());
                nodeNewString.setScope((Scope) node3);
                Node firstChild9 = firstChild.getFirstChild();
                if (firstChild9 == null) {
                    firstChild9 = new Node(127, Node.newNumber(0.0d));
                }
                node7.addChildToBack(new Node(56, nodeNewString, firstChild9));
                firstChild7 = firstChild7.getNext();
                next = node4;
            }
            if (z2) {
                nodeReplaceCurrent.addChildToBack(node7);
                node3.setType(90);
                nodeReplaceCurrent.addChildToBack(node3);
                node3.addChildToBack(next);
                if (next instanceof Scope) {
                    Scope scope = (Scope) next;
                    Scope parentScope = scope.getParentScope();
                    Scope scope2 = (Scope) node3;
                    scope.setParentScope(scope2);
                    scope2.setParentScope(parentScope);
                }
            } else {
                nodeReplaceCurrent.addChildToBack(new Node(134, node7));
                node3.setType(130);
                nodeReplaceCurrent.addChildToBack(node3);
                node3.addChildrenToBack(next);
                if (next instanceof Scope) {
                    Scope scope3 = (Scope) next;
                    Scope parentScope2 = scope3.getParentScope();
                    Scope scope4 = (Scope) node3;
                    scope3.setParentScope(scope4);
                    scope4.setParentScope(parentScope2);
                }
            }
        }
        return nodeReplaceCurrent;
    }

    public void visitNew(Node node, ScriptNode scriptNode) {
    }

    public final void transform(ScriptNode scriptNode, boolean z, CompilerEnvirons compilerEnvirons) throws RuntimeException {
        if (compilerEnvirons.getLanguageVersion() >= 200 && scriptNode.isInStrictMode()) {
            z = true;
        }
        transformCompilationUnit(scriptNode, z);
        for (int i = 0; i != scriptNode.getFunctionCount(); i++) {
            transform(scriptNode.getFunctionNode(i), z, compilerEnvirons);
        }
    }
}
