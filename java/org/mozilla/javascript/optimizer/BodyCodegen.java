package org.mozilla.javascript.optimizer;

import androidx.core.app.NotificationCompat;
import freemarker.template.Cstatic;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.mozilla.classfile.Cfor;
import org.mozilla.javascript.CompilerEnvirons;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.Node;
import org.mozilla.javascript.Token;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.Jump;
import org.mozilla.javascript.ast.ScriptNode;
import org.mozilla.javascript.optimizer.OptRuntime;
import sun.security.util.SecurityConstants;

/* loaded from: classes3.dex */
class BodyCodegen {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ECMAERROR_EXCEPTION = 2;
    private static final int EVALUATOR_EXCEPTION = 1;
    private static final int EXCEPTION_MAX = 5;
    private static final int FINALLY_EXCEPTION = 4;
    public static final int GENERATOR_START = 0;
    public static final int GENERATOR_TERMINATE = -1;
    public static final int GENERATOR_YIELD_START = 1;
    private static final int JAVASCRIPT_EXCEPTION = 0;
    private static final int MAX_LOCALS = 1024;
    private static final int THROWABLE_EXCEPTION = 3;
    private short argsLocal;
    public Cfor cfw;
    public Codegen codegen;
    public CompilerEnvirons compilerEnv;
    private short contextLocal;
    private int enterAreaStartLabel;
    private int epilogueLabel;
    private Map<Node, FinallyReturnPoint> finallys;
    private short firstFreeLocal;
    private OptFunctionNode fnCurrent;
    private short funObjLocal;
    private short generatorStateLocal;
    private int generatorSwitch;
    private boolean hasVarsInRegs;
    private boolean inDirectCallFunction;
    private boolean inLocalBlock;
    private boolean isGenerator;
    private boolean itsForcedObjectParameters;
    private int itsLineNumber;
    private short itsOneArgArray;
    private short itsZeroArgArray;
    private List<Node> literals;
    private int[] locals;
    private short localsMax;
    private short operationLocal;
    private short popvLocal;
    private int savedCodeOffset;
    public ScriptNode scriptOrFn;
    public int scriptOrFnIndex;
    private short thisObjLocal;
    private short[] varRegisters;
    private short variableObjectLocal;
    private ExceptionManager exceptionManager = new ExceptionManager();
    private int maxLocals = 0;
    private int maxStack = 0;

    public class ExceptionManager {
        private LinkedList<ExceptionInfo> exceptionInfo = new LinkedList<>();

        public class ExceptionInfo {
            public Node finallyBlock;
            public int[] handlerLabels = new int[5];
            public int[] exceptionStarts = new int[5];
            public Node currentFinally = null;

            public ExceptionInfo(Jump jump, Node node) {
                this.finallyBlock = node;
            }
        }

        public ExceptionManager() {
        }

        private void endCatch(ExceptionInfo exceptionInfo, int i, int i2) {
            int[] iArr = exceptionInfo.exceptionStarts;
            if (iArr[i] == 0) {
                throw new IllegalStateException("bad exception start");
            }
            if (BodyCodegen.this.cfw.I(iArr[i]) != BodyCodegen.this.cfw.I(i2)) {
                BodyCodegen bodyCodegen = BodyCodegen.this;
                bodyCodegen.cfw.m37824package(exceptionInfo.exceptionStarts[i], i2, exceptionInfo.handlerLabels[i], bodyCodegen.exceptionTypeToName(i));
            }
        }

        private ExceptionInfo getTop() {
            return this.exceptionInfo.getLast();
        }

        public void addHandler(int i, int i2, int i3) {
            ExceptionInfo top = getTop();
            top.handlerLabels[i] = i2;
            top.exceptionStarts[i] = i3;
        }

        public void markInlineFinallyEnd(Node node, int i) {
            LinkedList<ExceptionInfo> linkedList = this.exceptionInfo;
            ListIterator<ExceptionInfo> listIterator = linkedList.listIterator(linkedList.size());
            while (listIterator.hasPrevious()) {
                ExceptionInfo exceptionInfoPrevious = listIterator.previous();
                for (int i2 = 0; i2 < 5; i2++) {
                    if (exceptionInfoPrevious.handlerLabels[i2] != 0 && exceptionInfoPrevious.currentFinally == node) {
                        exceptionInfoPrevious.exceptionStarts[i2] = i;
                        exceptionInfoPrevious.currentFinally = null;
                    }
                }
                if (exceptionInfoPrevious.finallyBlock == node) {
                    return;
                }
            }
        }

        public void markInlineFinallyStart(Node node, int i) {
            LinkedList<ExceptionInfo> linkedList = this.exceptionInfo;
            ListIterator<ExceptionInfo> listIterator = linkedList.listIterator(linkedList.size());
            while (listIterator.hasPrevious()) {
                ExceptionInfo exceptionInfoPrevious = listIterator.previous();
                for (int i2 = 0; i2 < 5; i2++) {
                    if (exceptionInfoPrevious.handlerLabels[i2] != 0 && exceptionInfoPrevious.currentFinally == null) {
                        endCatch(exceptionInfoPrevious, i2, i);
                        exceptionInfoPrevious.exceptionStarts[i2] = 0;
                        exceptionInfoPrevious.currentFinally = node;
                    }
                }
                if (exceptionInfoPrevious.finallyBlock == node) {
                    return;
                }
            }
        }

        public void popExceptionInfo() {
            this.exceptionInfo.removeLast();
        }

        public void pushExceptionInfo(Jump jump) {
            this.exceptionInfo.add(new ExceptionInfo(jump, BodyCodegen.this.getFinallyAtTarget(jump.getFinally())));
        }

        public int removeHandler(int i, int i2) {
            ExceptionInfo top = getTop();
            int[] iArr = top.handlerLabels;
            if (iArr[i] == 0) {
                return 0;
            }
            int i3 = iArr[i];
            endCatch(top, i, i2);
            top.handlerLabels[i] = 0;
            return i3;
        }

        public void setHandlers(int[] iArr, int i) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                if (iArr[i2] != 0) {
                    addHandler(i2, iArr[i2], i);
                }
            }
        }
    }

    public static class FinallyReturnPoint {
        public List<Integer> jsrPoints = new ArrayList();
        public int tableLabel = 0;
    }

    private void addDoubleWrap() {
        addOptRuntimeInvoke("wrapDouble", "(D)Ljava/lang/Double;");
    }

    private void addGoto(Node node, int i) throws RuntimeException {
        this.cfw.m37827public(i, getTargetLabel(node));
    }

    private void addGotoWithReturn(Node node) throws RuntimeException {
        FinallyReturnPoint finallyReturnPoint = this.finallys.get(node);
        this.cfw.g(finallyReturnPoint.jsrPoints.size());
        addGoto(node, 167);
        int iM37820import = this.cfw.m37820import();
        this.cfw.O(iM37820import);
        finallyReturnPoint.jsrPoints.add(Integer.valueOf(iM37820import));
    }

    private void addInstructionCount() throws RuntimeException {
        addInstructionCount(Math.max(this.cfw.H() - this.savedCodeOffset, 1));
    }

    private void addJumpedBooleanWrap(int i, int i2) throws RuntimeException {
        this.cfw.O(i2);
        int iM37820import = this.cfw.m37820import();
        this.cfw.m37831switch(178, "java/lang/Boolean", "FALSE", "Ljava/lang/Boolean;");
        this.cfw.m37827public(167, iM37820import);
        this.cfw.O(i);
        this.cfw.m37831switch(178, "java/lang/Boolean", "TRUE", "Ljava/lang/Boolean;");
        this.cfw.O(iM37820import);
        this.cfw.v(-1);
    }

    private void addLoadPropertyIds(Object[] objArr, int i) throws RuntimeException {
        addNewObjectArray(i);
        for (int i2 = 0; i2 != i; i2++) {
            this.cfw.m37823native(89);
            this.cfw.l(i2);
            Object obj = objArr[i2];
            if (obj instanceof String) {
                this.cfw.n((String) obj);
            } else {
                this.cfw.l(((Integer) obj).intValue());
                addScriptRuntimeInvoke("wrapInt", "(I)Ljava/lang/Integer;");
            }
            this.cfw.m37823native(83);
        }
    }

    private void addLoadPropertyValues(Node node, Node node2, int i) throws RuntimeException {
        int i2 = 0;
        if (!this.isGenerator) {
            addNewObjectArray(i);
            while (i2 != i) {
                this.cfw.m37823native(89);
                this.cfw.l(i2);
                int type = node2.getType();
                if (type == 152 || type == 153 || type == 164) {
                    generateExpression(node2.getFirstChild(), node);
                } else {
                    generateExpression(node2, node);
                }
                this.cfw.m37823native(83);
                node2 = node2.getNext();
                i2++;
            }
            return;
        }
        for (int i3 = 0; i3 != i; i3++) {
            int type2 = node2.getType();
            if (type2 == 152 || type2 == 153 || type2 == 164) {
                generateExpression(node2.getFirstChild(), node);
            } else {
                generateExpression(node2, node);
            }
            node2 = node2.getNext();
        }
        addNewObjectArray(i);
        while (i2 != i) {
            this.cfw.m37823native(90);
            this.cfw.m37823native(95);
            this.cfw.l((i - i2) - 1);
            this.cfw.m37823native(95);
            this.cfw.m37823native(83);
            i2++;
        }
    }

    private void addNewObjectArray(int i) throws RuntimeException {
        if (i != 0) {
            this.cfw.l(i);
            this.cfw.m37829static(189, "java/lang/Object");
            return;
        }
        short s = this.itsZeroArgArray;
        if (s >= 0) {
            this.cfw.m37833throws(s);
        } else {
            this.cfw.m37831switch(178, "org/mozilla/javascript/ScriptRuntime", "emptyArgs", "[Ljava/lang/Object;");
        }
    }

    private void addObjectToDouble() {
        addScriptRuntimeInvoke("toNumber", "(Ljava/lang/Object;)D");
    }

    private void addOptRuntimeInvoke(String str, String str2) {
        this.cfw.m37821instanceof(184, "org/mozilla/javascript/optimizer/OptRuntime", str, str2);
    }

    private void addScriptRuntimeInvoke(String str, String str2) {
        this.cfw.m37821instanceof(184, "org.mozilla.javascript.ScriptRuntime", str, str2);
    }

    private void dcpLoadAsNumber(int i) throws RuntimeException {
        this.cfw.m37833throws(i);
        this.cfw.m37831switch(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
        int iM37820import = this.cfw.m37820import();
        this.cfw.m37827public(165, iM37820import);
        short sK = this.cfw.K();
        this.cfw.m37833throws(i);
        addObjectToDouble();
        int iM37820import2 = this.cfw.m37820import();
        this.cfw.m37827public(167, iM37820import2);
        this.cfw.P(iM37820import, sK);
        this.cfw.m37817extends(i + 1);
        this.cfw.O(iM37820import2);
    }

    private void dcpLoadAsObject(int i) throws RuntimeException {
        this.cfw.m37833throws(i);
        this.cfw.m37831switch(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
        int iM37820import = this.cfw.m37820import();
        this.cfw.m37827public(165, iM37820import);
        short sK = this.cfw.K();
        this.cfw.m37833throws(i);
        int iM37820import2 = this.cfw.m37820import();
        this.cfw.m37827public(167, iM37820import2);
        this.cfw.P(iM37820import, sK);
        this.cfw.m37817extends(i + 1);
        addDoubleWrap();
        this.cfw.O(iM37820import2);
    }

    private void decReferenceWordLocal(short s) {
        this.locals[s] = r0[s] - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String exceptionTypeToName(int i) {
        if (i == 0) {
            return "org/mozilla/javascript/JavaScriptException";
        }
        if (i == 1) {
            return "org/mozilla/javascript/EvaluatorException";
        }
        if (i == 2) {
            return "org/mozilla/javascript/EcmaError";
        }
        if (i == 3) {
            return "java/lang/Throwable";
        }
        if (i == 4) {
            return null;
        }
        throw Kit.codeBug();
    }

    private void genSimpleCompare(int i, int i2, int i3) throws RuntimeException {
        if (i2 == -1) {
            throw Codegen.badTree();
        }
        switch (i) {
            case 14:
                this.cfw.m37823native(152);
                this.cfw.m37827public(155, i2);
                break;
            case 15:
                this.cfw.m37823native(152);
                this.cfw.m37827public(158, i2);
                break;
            case 16:
                this.cfw.m37823native(151);
                this.cfw.m37827public(157, i2);
                break;
            case 17:
                this.cfw.m37823native(151);
                this.cfw.m37827public(156, i2);
                break;
            default:
                throw Codegen.badTree();
        }
        if (i3 != -1) {
            this.cfw.m37827public(167, i3);
        }
    }

    private void generateActivationExit() throws RuntimeException {
        if (this.fnCurrent == null || this.hasVarsInRegs) {
            throw Kit.codeBug();
        }
        this.cfw.m37833throws(this.contextLocal);
        addScriptRuntimeInvoke("exitActivationFunction", Codegen.REGEXP_INIT_METHOD_SIGNATURE);
    }

    private void generateArrayLiteralFactory(Node node, int i) throws RuntimeException {
        String str = this.codegen.getBodyMethodName(this.scriptOrFn) + "_literal" + i;
        initBodyGeneration();
        short s = this.firstFreeLocal;
        short s2 = (short) (s + 1);
        this.firstFreeLocal = s2;
        this.argsLocal = s;
        this.localsMax = s2;
        this.cfw.d0(str, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;", (short) 2);
        visitArrayLiteral(node, node.getFirstChild(), true);
        this.cfw.m37823native(176);
        this.cfw.e0((short) (this.localsMax + 1));
    }

    private void generateCallArgArray(Node node, Node node2, boolean z) throws RuntimeException {
        short s;
        int i = 0;
        for (Node next = node2; next != null; next = next.getNext()) {
            i++;
        }
        if (i != 1 || (s = this.itsOneArgArray) < 0) {
            addNewObjectArray(i);
        } else {
            this.cfw.m37833throws(s);
        }
        for (int i2 = 0; i2 != i; i2++) {
            if (!this.isGenerator) {
                this.cfw.m37823native(89);
                this.cfw.l(i2);
            }
            if (z) {
                int iNodeIsDirectCallParameter = nodeIsDirectCallParameter(node2);
                if (iNodeIsDirectCallParameter >= 0) {
                    dcpLoadAsObject(iNodeIsDirectCallParameter);
                } else {
                    generateExpression(node2, node);
                    if (node2.getIntProp(8, -1) == 0) {
                        addDoubleWrap();
                    }
                }
            } else {
                generateExpression(node2, node);
            }
            if (this.isGenerator) {
                short newWordLocal = getNewWordLocal();
                this.cfw.m37816default(newWordLocal);
                this.cfw.m37829static(192, "[Ljava/lang/Object;");
                this.cfw.m37823native(89);
                this.cfw.l(i2);
                this.cfw.m37833throws(newWordLocal);
                releaseWordLocal(newWordLocal);
            }
            this.cfw.m37823native(83);
            node2 = node2.getNext();
        }
    }

    private void generateCatchBlock(int i, short s, int i2, int i3, int i4) throws RuntimeException {
        if (i4 == 0) {
            i4 = this.cfw.m37820import();
        }
        this.cfw.N(i4);
        this.cfw.m37816default(i3);
        this.cfw.m37833throws(s);
        this.cfw.m37816default(this.variableObjectLocal);
        this.cfw.m37827public(167, i2);
    }

    private void generateCheckForThrowOrClose(int i, boolean z, int i2) throws RuntimeException {
        int iM37820import = this.cfw.m37820import();
        int iM37820import2 = this.cfw.m37820import();
        this.cfw.O(iM37820import);
        this.cfw.m37833throws(this.argsLocal);
        generateThrowJavaScriptException();
        this.cfw.O(iM37820import2);
        this.cfw.m37833throws(this.argsLocal);
        this.cfw.m37829static(192, "java/lang/Throwable");
        this.cfw.m37823native(191);
        if (i != -1) {
            this.cfw.O(i);
        }
        if (!z) {
            this.cfw.Q(this.generatorSwitch, i2);
        }
        this.cfw.m37826protected(this.operationLocal);
        this.cfw.g(2);
        this.cfw.m37827public(159, iM37820import2);
        this.cfw.m37826protected(this.operationLocal);
        this.cfw.g(1);
        this.cfw.m37827public(159, iM37820import);
    }

    private void generateEpilogue() throws RuntimeException {
        if (this.compilerEnv.isGenerateObserverCount()) {
            addInstructionCount();
        }
        if (this.isGenerator) {
            Map<Node, int[]> liveLocals = ((FunctionNode) this.scriptOrFn).getLiveLocals();
            if (liveLocals != null) {
                List<Node> resumptionPoints = ((FunctionNode) this.scriptOrFn).getResumptionPoints();
                for (int i = 0; i < resumptionPoints.size(); i++) {
                    Node node = resumptionPoints.get(i);
                    int[] iArr = liveLocals.get(node);
                    if (iArr != null) {
                        this.cfw.Q(this.generatorSwitch, getNextGeneratorState(node));
                        generateGetGeneratorLocalsState();
                        for (int i2 = 0; i2 < iArr.length; i2++) {
                            this.cfw.m37823native(89);
                            this.cfw.g(i2);
                            this.cfw.m37823native(50);
                            this.cfw.m37816default(iArr[i2]);
                        }
                        this.cfw.m37823native(87);
                        this.cfw.m37827public(167, getTargetLabel(node));
                    }
                }
            }
            Map<Node, FinallyReturnPoint> map = this.finallys;
            if (map != null) {
                for (Node node2 : map.keySet()) {
                    if (node2.getType() == 126) {
                        FinallyReturnPoint finallyReturnPoint = this.finallys.get(node2);
                        this.cfw.P(finallyReturnPoint.tableLabel, (short) 1);
                        int iR = this.cfw.r(0, finallyReturnPoint.jsrPoints.size() - 1);
                        this.cfw.S(iR);
                        int i3 = 0;
                        for (int i4 = 0; i4 < finallyReturnPoint.jsrPoints.size(); i4++) {
                            this.cfw.Q(iR, i3);
                            this.cfw.m37827public(167, finallyReturnPoint.jsrPoints.get(i4).intValue());
                            i3++;
                        }
                    }
                }
            }
        }
        int i5 = this.epilogueLabel;
        if (i5 != -1) {
            this.cfw.O(i5);
        }
        if (this.hasVarsInRegs) {
            this.cfw.m37823native(176);
            return;
        }
        if (this.isGenerator) {
            if (((FunctionNode) this.scriptOrFn).getResumptionPoints() != null) {
                this.cfw.S(this.generatorSwitch);
            }
            generateSetGeneratorResumptionPoint(-1);
            this.cfw.m37833throws(this.variableObjectLocal);
            addOptRuntimeInvoke("throwStopIteration", "(Ljava/lang/Object;)V");
            Codegen.pushUndefined(this.cfw);
            this.cfw.m37823native(176);
            return;
        }
        if (this.fnCurrent == null) {
            this.cfw.m37833throws(this.popvLocal);
            this.cfw.m37823native(176);
            return;
        }
        generateActivationExit();
        this.cfw.m37823native(176);
        int iM37820import = this.cfw.m37820import();
        this.cfw.N(iM37820import);
        short newWordLocal = getNewWordLocal();
        this.cfw.m37816default(newWordLocal);
        generateActivationExit();
        this.cfw.m37833throws(newWordLocal);
        releaseWordLocal(newWordLocal);
        this.cfw.m37823native(191);
        this.cfw.m37824package(this.enterAreaStartLabel, this.epilogueLabel, iM37820import, null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0303  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void generateExpression(Node node, Node node2) throws RuntimeException {
        int i;
        int i2;
        int intProp;
        String str;
        String str2;
        int type = node.getType();
        Node firstChild = node.getFirstChild();
        if (type != 90) {
            if (type == 103) {
                Node next = firstChild.getNext();
                Node next2 = next.getNext();
                generateExpression(firstChild, node);
                addScriptRuntimeInvoke("toBoolean", "(Ljava/lang/Object;)Z");
                int iM37820import = this.cfw.m37820import();
                this.cfw.m37827public(153, iM37820import);
                short sK = this.cfw.K();
                generateExpression(next, node);
                int iM37820import2 = this.cfw.m37820import();
                this.cfw.m37827public(167, iM37820import2);
                this.cfw.P(iM37820import, sK);
                generateExpression(next2, node);
                this.cfw.O(iM37820import2);
                return;
            }
            if (type == 110) {
                if (this.fnCurrent == null && node2.getType() == 137) {
                    return;
                }
                OptFunctionNode optFunctionNode = OptFunctionNode.get(this.scriptOrFn, node.getExistingIntProp(1));
                int functionType = optFunctionNode.fnode.getFunctionType();
                if (functionType != 2 && functionType != 4) {
                    throw Codegen.badTree();
                }
                visitFunction(optFunctionNode, functionType);
                return;
            }
            if (type == 127) {
                generateExpression(firstChild, node);
                this.cfw.m37823native(87);
                Codegen.pushUndefined(this.cfw);
                return;
            }
            if (type != 143) {
                if (type == 147) {
                    visitDotQuery(node, firstChild);
                    return;
                }
                if (type == 160) {
                    Node next3 = firstChild.getNext();
                    Node next4 = next3.getNext();
                    generateStatement(firstChild);
                    generateExpression(next3.getFirstChild(), next3);
                    generateStatement(next4);
                    return;
                }
                if (type == 150) {
                    if (firstChild.getType() == 40) {
                        i = 8;
                        i2 = -1;
                        intProp = firstChild.getIntProp(8, -1);
                    } else {
                        i = 8;
                        i2 = -1;
                        intProp = -1;
                    }
                    if (intProp == i2) {
                        generateExpression(firstChild, node);
                        addDoubleWrap();
                        return;
                    } else {
                        firstChild.removeProp(i);
                        generateExpression(firstChild, node);
                        firstChild.putIntProp(i, intProp);
                        return;
                    }
                }
                if (type == 151) {
                    generateExpression(firstChild, node);
                    addObjectToDouble();
                    return;
                }
                switch (type) {
                    case 8:
                        visitSetName(node, firstChild);
                        return;
                    case 9:
                    case 10:
                    case 11:
                    case 18:
                    case 19:
                    case 20:
                        visitBitOp(node, type, firstChild);
                        return;
                    case 12:
                    case 13:
                    case 46:
                    case 47:
                        int iM37820import3 = this.cfw.m37820import();
                        int iM37820import4 = this.cfw.m37820import();
                        visitIfJumpEqOp(node, firstChild, iM37820import3, iM37820import4);
                        addJumpedBooleanWrap(iM37820import3, iM37820import4);
                        return;
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                        int iM37820import5 = this.cfw.m37820import();
                        int iM37820import6 = this.cfw.m37820import();
                        visitIfJumpRelOp(node, firstChild, iM37820import5, iM37820import6);
                        addJumpedBooleanWrap(iM37820import5, iM37820import6);
                        return;
                    case 21:
                        generateExpression(firstChild, node);
                        generateExpression(firstChild.getNext(), node);
                        int intProp2 = node.getIntProp(8, -1);
                        if (intProp2 == 0) {
                            this.cfw.m37823native(99);
                            return;
                        }
                        if (intProp2 == 1) {
                            addOptRuntimeInvoke("add", "(DLjava/lang/Object;)Ljava/lang/Object;");
                            return;
                        }
                        if (intProp2 == 2) {
                            addOptRuntimeInvoke("add", "(Ljava/lang/Object;D)Ljava/lang/Object;");
                            return;
                        }
                        if (firstChild.getType() == 41) {
                            addScriptRuntimeInvoke("add", "(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;");
                            return;
                        } else if (firstChild.getNext().getType() == 41) {
                            addScriptRuntimeInvoke("add", "(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;");
                            return;
                        } else {
                            this.cfw.m37833throws(this.contextLocal);
                            addScriptRuntimeInvoke("add", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
                            return;
                        }
                    case 22:
                        visitArithmetic(node, 103, firstChild, node2);
                        return;
                    case 23:
                        visitArithmetic(node, 107, firstChild, node2);
                        return;
                    case 24:
                    case 25:
                        visitArithmetic(node, type == 24 ? 111 : 115, firstChild, node2);
                        return;
                    case 26:
                        int iM37820import7 = this.cfw.m37820import();
                        int iM37820import8 = this.cfw.m37820import();
                        int iM37820import9 = this.cfw.m37820import();
                        generateIfJump(firstChild, node, iM37820import7, iM37820import8);
                        this.cfw.O(iM37820import7);
                        this.cfw.m37831switch(178, "java/lang/Boolean", "FALSE", "Ljava/lang/Boolean;");
                        this.cfw.m37827public(167, iM37820import9);
                        this.cfw.O(iM37820import8);
                        this.cfw.m37831switch(178, "java/lang/Boolean", "TRUE", "Ljava/lang/Boolean;");
                        this.cfw.O(iM37820import9);
                        this.cfw.v(-1);
                        return;
                    case 27:
                        generateExpression(firstChild, node);
                        addScriptRuntimeInvoke("toInt32", "(Ljava/lang/Object;)I");
                        this.cfw.l(-1);
                        this.cfw.m37823native(130);
                        this.cfw.m37823native(135);
                        addDoubleWrap();
                        return;
                    case 28:
                    case 29:
                        generateExpression(firstChild, node);
                        addObjectToDouble();
                        if (type == 29) {
                            this.cfw.m37823native(119);
                        }
                        addDoubleWrap();
                        return;
                    case 30:
                    case 38:
                        int intProp3 = node.getIntProp(10, 0);
                        if (intProp3 != 0) {
                            visitSpecialCall(node, type, intProp3, firstChild);
                            return;
                        }
                        OptFunctionNode optFunctionNode2 = (OptFunctionNode) node.getProp(9);
                        if (optFunctionNode2 != null) {
                            visitOptimizedCall(node, optFunctionNode2, type, firstChild);
                            return;
                        } else if (type == 38) {
                            visitStandardCall(node, firstChild);
                            return;
                        } else {
                            visitStandardNew(node, firstChild);
                            return;
                        }
                    case 31:
                        boolean z = firstChild.getType() == 49;
                        generateExpression(firstChild, node);
                        generateExpression(firstChild.getNext(), node);
                        this.cfw.m37833throws(this.contextLocal);
                        this.cfw.o(z);
                        addScriptRuntimeInvoke(SecurityConstants.FILE_DELETE_ACTION, "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Z)Ljava/lang/Object;");
                        return;
                    case 32:
                        generateExpression(firstChild, node);
                        addScriptRuntimeInvoke("typeof", "(Ljava/lang/Object;)Ljava/lang/String;");
                        return;
                    case 33:
                    case 34:
                        visitGetProp(node, firstChild);
                        return;
                    case 35:
                        visitSetProp(type, node, firstChild);
                        return;
                    case 36:
                        generateExpression(firstChild, node);
                        generateExpression(firstChild.getNext(), node);
                        this.cfw.m37833throws(this.contextLocal);
                        if (node.getIntProp(8, -1) != -1) {
                            addScriptRuntimeInvoke("getObjectIndex", "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;)Ljava/lang/Object;");
                            return;
                        } else {
                            this.cfw.m37833throws(this.variableObjectLocal);
                            addScriptRuntimeInvoke("getObjectElem", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
                            return;
                        }
                    case 37:
                        visitSetElem(type, node, firstChild);
                        return;
                    case 39:
                        this.cfw.m37833throws(this.contextLocal);
                        this.cfw.m37833throws(this.variableObjectLocal);
                        this.cfw.n(node.getString());
                        addScriptRuntimeInvoke("name", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;");
                        return;
                    case 40:
                        double d = node.getDouble();
                        if (node.getIntProp(8, -1) != -1) {
                            this.cfw.k(d);
                            return;
                        } else {
                            this.codegen.pushNumberAsObject(this.cfw, d);
                            return;
                        }
                    case 41:
                        this.cfw.n(node.getString());
                        return;
                    case 42:
                        this.cfw.m37823native(1);
                        return;
                    case 43:
                        this.cfw.m37833throws(this.thisObjLocal);
                        return;
                    case 44:
                        this.cfw.m37831switch(178, "java/lang/Boolean", "FALSE", "Ljava/lang/Boolean;");
                        return;
                    case 45:
                        this.cfw.m37831switch(178, "java/lang/Boolean", "TRUE", "Ljava/lang/Boolean;");
                        return;
                    case 48:
                        this.cfw.m37833throws(this.contextLocal);
                        this.cfw.m37833throws(this.variableObjectLocal);
                        int existingIntProp = node.getExistingIntProp(4);
                        Cfor cfor = this.cfw;
                        Codegen codegen = this.codegen;
                        cfor.m37831switch(178, codegen.mainClassName, codegen.getCompiledRegexpName(this.scriptOrFn, existingIntProp), "Ljava/lang/Object;");
                        this.cfw.m37821instanceof(184, "org/mozilla/javascript/ScriptRuntime", "wrapRegExp", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
                        return;
                    case 49:
                        while (firstChild != null) {
                            generateExpression(firstChild, node);
                            firstChild = firstChild.getNext();
                        }
                        this.cfw.m37833throws(this.contextLocal);
                        this.cfw.m37833throws(this.variableObjectLocal);
                        this.cfw.n(node.getString());
                        addScriptRuntimeInvoke("bind", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;");
                        return;
                    default:
                        switch (type) {
                            case 52:
                            case 53:
                                break;
                            case 54:
                                this.cfw.m37833throws(getLocalBlockRegister(node));
                                return;
                            case 55:
                                visitGetVar(node);
                                return;
                            case 56:
                                visitSetVar(node, firstChild, true);
                                return;
                            default:
                                switch (type) {
                                    case 62:
                                    case 63:
                                        this.cfw.m37833throws(getLocalBlockRegister(node));
                                        if (type == 62) {
                                            addScriptRuntimeInvoke("enumNext", "(Ljava/lang/Object;)Ljava/lang/Boolean;");
                                            return;
                                        } else {
                                            this.cfw.m37833throws(this.contextLocal);
                                            addScriptRuntimeInvoke("enumId", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
                                            return;
                                        }
                                    case 64:
                                        this.cfw.m37823native(42);
                                        return;
                                    default:
                                        switch (type) {
                                            case 66:
                                                visitArrayLiteral(node, firstChild, false);
                                                return;
                                            case 67:
                                                visitObjectLiteral(node, firstChild, false);
                                                return;
                                            case 68:
                                                generateExpression(firstChild, node);
                                                this.cfw.m37833throws(this.contextLocal);
                                                addScriptRuntimeInvoke("refGet", "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
                                                return;
                                            case 69:
                                                break;
                                            case 70:
                                                generateExpression(firstChild, node);
                                                this.cfw.m37833throws(this.contextLocal);
                                                addScriptRuntimeInvoke("refDel", "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
                                                return;
                                            case 71:
                                                generateFunctionAndThisObj(firstChild, node);
                                                generateCallArgArray(node, firstChild.getNext(), false);
                                                this.cfw.m37833throws(this.contextLocal);
                                                addScriptRuntimeInvoke("callRef", "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;");
                                                return;
                                            case 72:
                                                String str3 = (String) node.getProp(17);
                                                generateExpression(firstChild, node);
                                                this.cfw.n(str3);
                                                this.cfw.m37833throws(this.contextLocal);
                                                this.cfw.m37833throws(this.variableObjectLocal);
                                                addScriptRuntimeInvoke("specialRef", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;");
                                                return;
                                            case 73:
                                                generateYieldPoint(node, true);
                                                return;
                                            case 74:
                                                visitStrictSetName(node, firstChild);
                                                return;
                                            case 75:
                                                generateExpression(firstChild, node);
                                                this.cfw.m37833throws(this.contextLocal);
                                                addScriptRuntimeInvoke("setDefaultNamespace", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
                                                return;
                                            case 76:
                                                generateExpression(firstChild, node);
                                                this.cfw.m37833throws(this.contextLocal);
                                                addScriptRuntimeInvoke("escapeAttributeValue", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;");
                                                return;
                                            case 77:
                                                generateExpression(firstChild, node);
                                                this.cfw.m37833throws(this.contextLocal);
                                                addScriptRuntimeInvoke("escapeTextValue", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;");
                                                return;
                                            case 78:
                                            case 79:
                                            case 80:
                                            case 81:
                                                int intProp4 = node.getIntProp(16, 0);
                                                do {
                                                    generateExpression(firstChild, node);
                                                    firstChild = firstChild.getNext();
                                                } while (firstChild != null);
                                                this.cfw.m37833throws(this.contextLocal);
                                                switch (type) {
                                                    case 78:
                                                        str = "memberRef";
                                                        str2 = "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;";
                                                        break;
                                                    case 79:
                                                        str = "memberRef";
                                                        str2 = "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;";
                                                        break;
                                                    case 80:
                                                        this.cfw.m37833throws(this.variableObjectLocal);
                                                        str = "nameRef";
                                                        str2 = "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;";
                                                        break;
                                                    case 81:
                                                        this.cfw.m37833throws(this.variableObjectLocal);
                                                        str = "nameRef";
                                                        str2 = "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;";
                                                        break;
                                                    default:
                                                        throw Kit.codeBug();
                                                }
                                                this.cfw.l(intProp4);
                                                addScriptRuntimeInvoke(str, str2);
                                                return;
                                            default:
                                                switch (type) {
                                                    case 105:
                                                    case 106:
                                                        generateExpression(firstChild, node);
                                                        this.cfw.m37823native(89);
                                                        addScriptRuntimeInvoke("toBoolean", "(Ljava/lang/Object;)Z");
                                                        int iM37820import10 = this.cfw.m37820import();
                                                        if (type == 106) {
                                                            this.cfw.m37827public(153, iM37820import10);
                                                        } else {
                                                            this.cfw.m37827public(154, iM37820import10);
                                                        }
                                                        this.cfw.m37823native(87);
                                                        generateExpression(firstChild.getNext(), node);
                                                        this.cfw.O(iM37820import10);
                                                        return;
                                                    case 107:
                                                    case 108:
                                                        visitIncDec(node);
                                                        return;
                                                    default:
                                                        switch (type) {
                                                            case 138:
                                                                visitTypeofname(node);
                                                                return;
                                                            case 139:
                                                                return;
                                                            case 140:
                                                                break;
                                                            case 141:
                                                                break;
                                                            default:
                                                                switch (type) {
                                                                    case 156:
                                                                        visitSetConst(node, firstChild);
                                                                        return;
                                                                    case 157:
                                                                        visitSetConstVar(node, firstChild, true);
                                                                        return;
                                                                    case 158:
                                                                        Node next5 = firstChild.getNext();
                                                                        generateStatement(firstChild);
                                                                        generateExpression(next5, node);
                                                                        return;
                                                                    default:
                                                                        throw new RuntimeException("Unexpected node type " + type);
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
            }
            generateExpression(firstChild, node);
            Node next6 = firstChild.getNext();
            if (type == 143) {
                this.cfw.m37823native(89);
                this.cfw.m37833throws(this.contextLocal);
                addScriptRuntimeInvoke("refGet", "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
            }
            generateExpression(next6, node);
            this.cfw.m37833throws(this.contextLocal);
            this.cfw.m37833throws(this.variableObjectLocal);
            addScriptRuntimeInvoke("refSet", "(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
            return;
        }
        Node next7 = firstChild.getNext();
        while (true) {
            Node node3 = firstChild;
            firstChild = next7;
            if (firstChild == null) {
                generateExpression(node3, node);
                return;
            } else {
                generateExpression(node3, node);
                this.cfw.m37823native(87);
                next7 = firstChild.getNext();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void generateFunctionAndThisObj(Node node, Node node2) throws RuntimeException {
        int type = node.getType();
        int type2 = node.getType();
        if (type2 == 33) {
            Node firstChild = node.getFirstChild();
            generateExpression(firstChild, node);
            Node next = firstChild.getNext();
            if (type == 33) {
                this.cfw.n(next.getString());
                this.cfw.m37833throws(this.contextLocal);
                this.cfw.m37833throws(this.variableObjectLocal);
                addScriptRuntimeInvoke("getPropFunctionAndThis", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;");
            } else {
                generateExpression(next, node);
                if (node.getIntProp(8, -1) != -1) {
                    addDoubleWrap();
                }
                this.cfw.m37833throws(this.contextLocal);
                this.cfw.m37833throws(this.variableObjectLocal);
                addScriptRuntimeInvoke("getElemFunctionAndThis", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;");
            }
        } else {
            if (type2 == 34) {
                throw Kit.codeBug();
            }
            if (type2 != 36) {
                if (type2 != 39) {
                    generateExpression(node, node2);
                    this.cfw.m37833throws(this.contextLocal);
                    addScriptRuntimeInvoke("getValueFunctionAndThis", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;");
                } else {
                    this.cfw.n(node.getString());
                    this.cfw.m37833throws(this.contextLocal);
                    this.cfw.m37833throws(this.variableObjectLocal);
                    addScriptRuntimeInvoke("getNameFunctionAndThis", "(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;");
                }
            }
        }
        this.cfw.m37833throws(this.contextLocal);
        addScriptRuntimeInvoke("lastStoredScriptable", "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;");
    }

    private void generateGenerator() throws RuntimeException {
        this.cfw.d0(this.codegen.getBodyMethodName(this.scriptOrFn), this.codegen.getBodyMethodSignature(this.scriptOrFn), (short) 10);
        initBodyGeneration();
        short s = this.firstFreeLocal;
        short s2 = (short) (s + 1);
        this.firstFreeLocal = s2;
        this.argsLocal = s;
        this.localsMax = s2;
        if (this.fnCurrent != null) {
            this.cfw.m37833throws(this.funObjLocal);
            this.cfw.m37821instanceof(185, "org/mozilla/javascript/Scriptable", "getParentScope", "()Lorg/mozilla/javascript/Scriptable;");
            this.cfw.m37816default(this.variableObjectLocal);
        }
        this.cfw.m37833throws(this.funObjLocal);
        this.cfw.m37833throws(this.variableObjectLocal);
        this.cfw.m37833throws(this.argsLocal);
        this.cfw.o(this.scriptOrFn.isInStrictMode());
        addScriptRuntimeInvoke("createFunctionActivation", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Lorg/mozilla/javascript/Scriptable;");
        this.cfw.m37816default(this.variableObjectLocal);
        this.cfw.m37829static(187, this.codegen.mainClassName);
        this.cfw.m37823native(89);
        this.cfw.m37833throws(this.variableObjectLocal);
        this.cfw.m37833throws(this.contextLocal);
        this.cfw.l(this.scriptOrFnIndex);
        this.cfw.m37821instanceof(183, this.codegen.mainClassName, "<init>", Codegen.FUNCTION_CONSTRUCTOR_SIGNATURE);
        generateNestedFunctionInits();
        this.cfw.m37833throws(this.variableObjectLocal);
        this.cfw.m37833throws(this.thisObjLocal);
        this.cfw.g(this.maxLocals);
        this.cfw.g(this.maxStack);
        addOptRuntimeInvoke("createNativeGenerator", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/Scriptable;");
        this.cfw.m37823native(176);
        this.cfw.e0((short) (this.localsMax + 1));
    }

    private void generateGetGeneratorLocalsState() throws RuntimeException {
        this.cfw.m37833throws(this.generatorStateLocal);
        addOptRuntimeInvoke("getGeneratorLocalsState", "(Ljava/lang/Object;)[Ljava/lang/Object;");
    }

    private void generateGetGeneratorResumptionPoint() throws RuntimeException {
        this.cfw.m37833throws(this.generatorStateLocal);
        this.cfw.m37831switch(180, OptRuntime.GeneratorState.CLASS_NAME, OptRuntime.GeneratorState.resumptionPoint_NAME, OptRuntime.GeneratorState.resumptionPoint_TYPE);
    }

    private void generateGetGeneratorStackState() throws RuntimeException {
        this.cfw.m37833throws(this.generatorStateLocal);
        addOptRuntimeInvoke("getGeneratorStackState", "(Ljava/lang/Object;)[Ljava/lang/Object;");
    }

    private void generateIfJump(Node node, Node node2, int i, int i2) throws RuntimeException {
        int type = node.getType();
        Node firstChild = node.getFirstChild();
        if (type == 26) {
            generateIfJump(firstChild, node, i2, i);
            return;
        }
        if (type != 46 && type != 47) {
            if (type != 52 && type != 53) {
                if (type == 105 || type == 106) {
                    int iM37820import = this.cfw.m37820import();
                    if (type == 106) {
                        generateIfJump(firstChild, node, iM37820import, i2);
                    } else {
                        generateIfJump(firstChild, node, i, iM37820import);
                    }
                    this.cfw.O(iM37820import);
                    generateIfJump(firstChild.getNext(), node, i, i2);
                    return;
                }
                switch (type) {
                    case 12:
                    case 13:
                        break;
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                        break;
                    default:
                        generateExpression(node, node2);
                        addScriptRuntimeInvoke("toBoolean", "(Ljava/lang/Object;)Z");
                        this.cfw.m37827public(154, i);
                        this.cfw.m37827public(167, i2);
                        break;
                }
                return;
            }
            visitIfJumpRelOp(node, firstChild, i, i2);
            return;
        }
        visitIfJumpEqOp(node, firstChild, i, i2);
    }

    private void generateIntegerUnwrap() {
        this.cfw.m37821instanceof(182, "java/lang/Integer", "intValue", "()I");
    }

    private void generateIntegerWrap() {
        this.cfw.m37821instanceof(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
    }

    private void generateNestedFunctionInits() throws RuntimeException {
        int functionCount = this.scriptOrFn.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            OptFunctionNode optFunctionNode = OptFunctionNode.get(this.scriptOrFn, i);
            if (optFunctionNode.fnode.getFunctionType() == 1) {
                visitFunction(optFunctionNode, 1);
            }
        }
    }

    private void generateObjectLiteralFactory(Node node, int i) throws RuntimeException {
        String str = this.codegen.getBodyMethodName(this.scriptOrFn) + "_literal" + i;
        initBodyGeneration();
        short s = this.firstFreeLocal;
        short s2 = (short) (s + 1);
        this.firstFreeLocal = s2;
        this.argsLocal = s;
        this.localsMax = s2;
        this.cfw.d0(str, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;", (short) 2);
        visitObjectLiteral(node, node.getFirstChild(), true);
        this.cfw.m37823native(176);
        this.cfw.e0((short) (this.localsMax + 1));
    }

    private void generatePrologue() throws RuntimeException {
        String str;
        short newWordLocal;
        if (this.inDirectCallFunction) {
            int paramCount = this.scriptOrFn.getParamCount();
            if (this.firstFreeLocal != 4) {
                Kit.codeBug();
            }
            for (int i = 0; i != paramCount; i++) {
                short[] sArr = this.varRegisters;
                short s = this.firstFreeLocal;
                sArr[i] = s;
                this.firstFreeLocal = (short) (s + 3);
            }
            if (!this.fnCurrent.getParameterNumberContext()) {
                this.itsForcedObjectParameters = true;
                for (int i2 = 0; i2 != paramCount; i2++) {
                    short s2 = this.varRegisters[i2];
                    this.cfw.m37833throws(s2);
                    this.cfw.m37831switch(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
                    int iM37820import = this.cfw.m37820import();
                    this.cfw.m37827public(166, iM37820import);
                    this.cfw.m37817extends(s2 + 1);
                    addDoubleWrap();
                    this.cfw.m37816default(s2);
                    this.cfw.O(iM37820import);
                }
            }
        }
        if (this.fnCurrent != null) {
            this.cfw.m37833throws(this.funObjLocal);
            this.cfw.m37821instanceof(185, "org/mozilla/javascript/Scriptable", "getParentScope", "()Lorg/mozilla/javascript/Scriptable;");
            this.cfw.m37816default(this.variableObjectLocal);
        }
        short s3 = this.firstFreeLocal;
        short s4 = (short) (s3 + 1);
        this.firstFreeLocal = s4;
        this.argsLocal = s3;
        this.localsMax = s4;
        if (this.isGenerator) {
            short s5 = (short) (s4 + 1);
            this.firstFreeLocal = s5;
            this.operationLocal = s4;
            this.localsMax = s5;
            this.cfw.m37833throws(this.thisObjLocal);
            short s6 = this.firstFreeLocal;
            short s7 = (short) (s6 + 1);
            this.firstFreeLocal = s7;
            this.generatorStateLocal = s6;
            this.localsMax = s7;
            this.cfw.m37829static(192, OptRuntime.GeneratorState.CLASS_NAME);
            this.cfw.m37823native(89);
            this.cfw.m37816default(this.generatorStateLocal);
            this.cfw.m37831switch(180, OptRuntime.GeneratorState.CLASS_NAME, OptRuntime.GeneratorState.thisObj_NAME, OptRuntime.GeneratorState.thisObj_TYPE);
            this.cfw.m37816default(this.thisObjLocal);
            if (this.epilogueLabel == -1) {
                this.epilogueLabel = this.cfw.m37820import();
            }
            List<Node> resumptionPoints = ((FunctionNode) this.scriptOrFn).getResumptionPoints();
            if (resumptionPoints != null) {
                generateGetGeneratorResumptionPoint();
                this.generatorSwitch = this.cfw.r(0, resumptionPoints.size() + 0);
                generateCheckForThrowOrClose(-1, false, 0);
            }
        }
        if (this.fnCurrent == null && this.scriptOrFn.getRegexpCount() != 0) {
            this.cfw.m37833throws(this.contextLocal);
            this.cfw.m37821instanceof(184, this.codegen.mainClassName, Codegen.REGEXP_INIT_METHOD_NAME, Codegen.REGEXP_INIT_METHOD_SIGNATURE);
        }
        if (this.compilerEnv.isGenerateObserverCount()) {
            saveCurrentCodeOffset();
        }
        if (this.hasVarsInRegs) {
            int paramCount2 = this.scriptOrFn.getParamCount();
            if (paramCount2 > 0 && !this.inDirectCallFunction) {
                this.cfw.m37833throws(this.argsLocal);
                this.cfw.m37823native(190);
                this.cfw.l(paramCount2);
                int iM37820import2 = this.cfw.m37820import();
                this.cfw.m37827public(162, iM37820import2);
                this.cfw.m37833throws(this.argsLocal);
                this.cfw.l(paramCount2);
                addScriptRuntimeInvoke("padArguments", "([Ljava/lang/Object;I)[Ljava/lang/Object;");
                this.cfw.m37816default(this.argsLocal);
                this.cfw.O(iM37820import2);
            }
            int paramCount3 = this.fnCurrent.fnode.getParamCount();
            int paramAndVarCount = this.fnCurrent.fnode.getParamAndVarCount();
            boolean[] paramAndVarConst = this.fnCurrent.fnode.getParamAndVarConst();
            short s8 = -1;
            for (int i3 = 0; i3 != paramAndVarCount; i3++) {
                if (i3 < paramCount3) {
                    if (this.inDirectCallFunction) {
                        newWordLocal = -1;
                    } else {
                        newWordLocal = getNewWordLocal();
                        this.cfw.m37833throws(this.argsLocal);
                        this.cfw.l(i3);
                        this.cfw.m37823native(50);
                        this.cfw.m37816default(newWordLocal);
                    }
                } else if (this.fnCurrent.isNumberVar(i3)) {
                    newWordLocal = getNewWordPairLocal(paramAndVarConst[i3]);
                    this.cfw.k(0.0d);
                    this.cfw.m37818finally(newWordLocal);
                } else {
                    newWordLocal = getNewWordLocal(paramAndVarConst[i3]);
                    if (s8 == -1) {
                        Codegen.pushUndefined(this.cfw);
                        s8 = newWordLocal;
                    } else {
                        this.cfw.m37833throws(s8);
                    }
                    this.cfw.m37816default(newWordLocal);
                }
                if (newWordLocal >= 0) {
                    if (paramAndVarConst[i3]) {
                        this.cfw.l(0);
                        this.cfw.m37834transient((this.fnCurrent.isNumberVar(i3) ? (short) 2 : (short) 1) + newWordLocal);
                    }
                    this.varRegisters[i3] = newWordLocal;
                }
                if (this.compilerEnv.isGenerateDebugInfo()) {
                    String paramOrVarName = this.fnCurrent.fnode.getParamOrVarName(i3);
                    String str2 = this.fnCurrent.isNumberVar(i3) ? Cstatic.m1 : "Ljava/lang/Object;";
                    int iH = this.cfw.H();
                    if (newWordLocal < 0) {
                        newWordLocal = this.varRegisters[i3];
                    }
                    this.cfw.u(paramOrVarName, str2, iH, newWordLocal);
                }
            }
            return;
        }
        if (this.isGenerator) {
            return;
        }
        ScriptNode scriptNode = this.scriptOrFn;
        boolean z = (scriptNode instanceof FunctionNode) && ((FunctionNode) scriptNode).getFunctionType() == 4;
        if (this.fnCurrent != null) {
            this.cfw.m37833throws(this.funObjLocal);
            this.cfw.m37833throws(this.variableObjectLocal);
            this.cfw.m37833throws(this.argsLocal);
            String str3 = z ? "createArrowFunctionActivation" : "createFunctionActivation";
            this.cfw.o(this.scriptOrFn.isInStrictMode());
            addScriptRuntimeInvoke(str3, "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Lorg/mozilla/javascript/Scriptable;");
            this.cfw.m37816default(this.variableObjectLocal);
            this.cfw.m37833throws(this.contextLocal);
            this.cfw.m37833throws(this.variableObjectLocal);
            addScriptRuntimeInvoke("enterActivationFunction", Codegen.FUNCTION_INIT_SIGNATURE);
            str = "activation";
        } else {
            this.cfw.m37833throws(this.funObjLocal);
            this.cfw.m37833throws(this.thisObjLocal);
            this.cfw.m37833throws(this.contextLocal);
            this.cfw.m37833throws(this.variableObjectLocal);
            this.cfw.l(0);
            addScriptRuntimeInvoke("initScript", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V");
            str = "global";
        }
        this.enterAreaStartLabel = this.cfw.m37820import();
        this.epilogueLabel = this.cfw.m37820import();
        this.cfw.O(this.enterAreaStartLabel);
        generateNestedFunctionInits();
        if (this.compilerEnv.isGenerateDebugInfo()) {
            Cfor cfor = this.cfw;
            cfor.u(str, OptRuntime.GeneratorState.thisObj_TYPE, cfor.H(), this.variableObjectLocal);
        }
        OptFunctionNode optFunctionNode = this.fnCurrent;
        if (optFunctionNode == null) {
            this.popvLocal = getNewWordLocal();
            Codegen.pushUndefined(this.cfw);
            this.cfw.m37816default(this.popvLocal);
            int endLineno = this.scriptOrFn.getEndLineno();
            if (endLineno != -1) {
                this.cfw.d((short) endLineno);
                return;
            }
            return;
        }
        if (optFunctionNode.itsContainsCalls0) {
            this.itsZeroArgArray = getNewWordLocal();
            this.cfw.m37831switch(178, "org/mozilla/javascript/ScriptRuntime", "emptyArgs", "[Ljava/lang/Object;");
            this.cfw.m37816default(this.itsZeroArgArray);
        }
        if (this.fnCurrent.itsContainsCalls1) {
            this.itsOneArgArray = getNewWordLocal();
            this.cfw.l(1);
            this.cfw.m37829static(189, "java/lang/Object");
            this.cfw.m37816default(this.itsOneArgArray);
        }
    }

    private boolean generateSaveLocals(Node node) throws RuntimeException {
        int i = 0;
        for (int i2 = 0; i2 < this.firstFreeLocal; i2++) {
            if (this.locals[i2] != 0) {
                i++;
            }
        }
        if (i == 0) {
            ((FunctionNode) this.scriptOrFn).addLiveLocals(node, null);
            return false;
        }
        int i3 = this.maxLocals;
        if (i3 <= i) {
            i3 = i;
        }
        this.maxLocals = i3;
        int[] iArr = new int[i];
        int i4 = 0;
        for (int i5 = 0; i5 < this.firstFreeLocal; i5++) {
            if (this.locals[i5] != 0) {
                iArr[i4] = i5;
                i4++;
            }
        }
        ((FunctionNode) this.scriptOrFn).addLiveLocals(node, iArr);
        generateGetGeneratorLocalsState();
        for (int i6 = 0; i6 < i; i6++) {
            this.cfw.m37823native(89);
            this.cfw.g(i6);
            this.cfw.m37833throws(iArr[i6]);
            this.cfw.m37823native(83);
        }
        this.cfw.m37823native(87);
        return true;
    }

    private void generateSetGeneratorResumptionPoint(int i) throws RuntimeException {
        this.cfw.m37833throws(this.generatorStateLocal);
        this.cfw.g(i);
        this.cfw.m37831switch(181, OptRuntime.GeneratorState.CLASS_NAME, OptRuntime.GeneratorState.resumptionPoint_NAME, OptRuntime.GeneratorState.resumptionPoint_TYPE);
    }

    private void generateStatement(Node node) throws RuntimeException {
        updateLineNumber(node);
        int type = node.getType();
        Node firstChild = node.getFirstChild();
        if (type == 50) {
            generateExpression(firstChild, node);
            if (this.compilerEnv.isGenerateObserverCount()) {
                addInstructionCount();
            }
            generateThrowJavaScriptException();
            return;
        }
        if (type == 51) {
            if (this.compilerEnv.isGenerateObserverCount()) {
                addInstructionCount();
            }
            this.cfw.m37833throws(getLocalBlockRegister(node));
            this.cfw.m37823native(191);
            return;
        }
        if (type != 65) {
            if (type == 82) {
                visitTryCatchFinally((Jump) node, firstChild);
                return;
            }
            int i = 1;
            if (type == 110) {
                OptFunctionNode optFunctionNode = OptFunctionNode.get(this.scriptOrFn, node.getExistingIntProp(1));
                int functionType = optFunctionNode.fnode.getFunctionType();
                if (functionType == 3) {
                    visitFunction(optFunctionNode, functionType);
                    return;
                } else {
                    if (functionType != 1) {
                        throw Codegen.badTree();
                    }
                    return;
                }
            }
            if (type == 115) {
                if (this.compilerEnv.isGenerateObserverCount()) {
                    addInstructionCount();
                }
                visitSwitch((Jump) node, firstChild);
                return;
            }
            if (type != 124) {
                if (type == 126) {
                    if (this.isGenerator) {
                        if (this.compilerEnv.isGenerateObserverCount()) {
                            saveCurrentCodeOffset();
                        }
                        this.cfw.Z((short) 1);
                        short newWordLocal = getNewWordLocal();
                        int iM37820import = this.cfw.m37820import();
                        int iM37820import2 = this.cfw.m37820import();
                        this.cfw.O(iM37820import);
                        generateIntegerWrap();
                        this.cfw.m37816default(newWordLocal);
                        while (firstChild != null) {
                            generateStatement(firstChild);
                            firstChild = firstChild.getNext();
                        }
                        this.cfw.m37833throws(newWordLocal);
                        this.cfw.m37829static(192, "java/lang/Integer");
                        generateIntegerUnwrap();
                        FinallyReturnPoint finallyReturnPoint = this.finallys.get(node);
                        int iM37820import3 = this.cfw.m37820import();
                        finallyReturnPoint.tableLabel = iM37820import3;
                        this.cfw.m37827public(167, iM37820import3);
                        releaseWordLocal(newWordLocal);
                        this.cfw.O(iM37820import2);
                        return;
                    }
                    return;
                }
                if (type == 142) {
                    boolean z = this.inLocalBlock;
                    this.inLocalBlock = true;
                    short newWordLocal2 = getNewWordLocal();
                    if (this.isGenerator) {
                        this.cfw.m37823native(1);
                        this.cfw.m37816default(newWordLocal2);
                    }
                    node.putIntProp(2, newWordLocal2);
                    while (firstChild != null) {
                        generateStatement(firstChild);
                        firstChild = firstChild.getNext();
                    }
                    releaseWordLocal(newWordLocal2);
                    node.removeProp(2);
                    this.inLocalBlock = z;
                    return;
                }
                if (type != 161) {
                    switch (type) {
                        case 2:
                            generateExpression(firstChild, node);
                            this.cfw.m37833throws(this.contextLocal);
                            this.cfw.m37833throws(this.variableObjectLocal);
                            addScriptRuntimeInvoke("enterWith", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
                            this.cfw.m37816default(this.variableObjectLocal);
                            incReferenceWordLocal(this.variableObjectLocal);
                            return;
                        case 3:
                            this.cfw.m37833throws(this.variableObjectLocal);
                            addScriptRuntimeInvoke("leaveWith", "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
                            this.cfw.m37816default(this.variableObjectLocal);
                            decReferenceWordLocal(this.variableObjectLocal);
                            return;
                        case 4:
                            break;
                        default:
                            switch (type) {
                                case 57:
                                    this.cfw.Z((short) 0);
                                    int localBlockRegister = getLocalBlockRegister(node);
                                    int existingIntProp = node.getExistingIntProp(14);
                                    String string = firstChild.getString();
                                    generateExpression(firstChild.getNext(), node);
                                    if (existingIntProp == 0) {
                                        this.cfw.m37823native(1);
                                    } else {
                                        this.cfw.m37833throws(localBlockRegister);
                                    }
                                    this.cfw.n(string);
                                    this.cfw.m37833throws(this.contextLocal);
                                    this.cfw.m37833throws(this.variableObjectLocal);
                                    addScriptRuntimeInvoke("newCatchScope", "(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
                                    this.cfw.m37816default(localBlockRegister);
                                    return;
                                case 58:
                                case 59:
                                case 60:
                                case 61:
                                    generateExpression(firstChild, node);
                                    this.cfw.m37833throws(this.contextLocal);
                                    this.cfw.m37833throws(this.variableObjectLocal);
                                    if (type == 58) {
                                        i = 0;
                                    } else if (type != 59) {
                                        i = type == 61 ? 6 : 2;
                                    }
                                    this.cfw.l(i);
                                    addScriptRuntimeInvoke("enumInit", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
                                    this.cfw.m37816default(getLocalBlockRegister(node));
                                    return;
                                default:
                                    switch (type) {
                                        case 129:
                                        case 130:
                                        case 131:
                                        case 133:
                                        case 137:
                                            break;
                                        case 132:
                                            if (this.compilerEnv.isGenerateObserverCount()) {
                                                addInstructionCount();
                                            }
                                            this.cfw.O(getTargetLabel(node));
                                            if (this.compilerEnv.isGenerateObserverCount()) {
                                                saveCurrentCodeOffset();
                                                return;
                                            }
                                            return;
                                        case 134:
                                            if (firstChild.getType() == 56) {
                                                visitSetVar(firstChild, firstChild.getFirstChild(), false);
                                                return;
                                            }
                                            if (firstChild.getType() == 157) {
                                                visitSetConstVar(firstChild, firstChild.getFirstChild(), false);
                                                return;
                                            }
                                            if (firstChild.getType() == 73) {
                                                generateYieldPoint(firstChild, false);
                                                return;
                                            }
                                            generateExpression(firstChild, node);
                                            if (node.getIntProp(8, -1) != -1) {
                                                this.cfw.m37823native(88);
                                                return;
                                            } else {
                                                this.cfw.m37823native(87);
                                                return;
                                            }
                                        case 135:
                                            generateExpression(firstChild, node);
                                            if (this.popvLocal < 0) {
                                                this.popvLocal = getNewWordLocal();
                                            }
                                            this.cfw.m37816default(this.popvLocal);
                                            return;
                                        case 136:
                                            break;
                                        default:
                                            throw Codegen.badTree();
                                    }
                            }
                        case 5:
                        case 6:
                        case 7:
                            if (this.compilerEnv.isGenerateObserverCount()) {
                                addInstructionCount();
                            }
                            visitGoto((Jump) node, type, firstChild);
                            return;
                    }
                } else {
                    return;
                }
            }
            if (this.compilerEnv.isGenerateObserverCount()) {
                addInstructionCount(1);
            }
            while (firstChild != null) {
                generateStatement(firstChild);
                firstChild = firstChild.getNext();
            }
            return;
        }
        if (!this.isGenerator) {
            if (firstChild != null) {
                generateExpression(firstChild, node);
            } else if (type == 4) {
                Codegen.pushUndefined(this.cfw);
            } else {
                short s = this.popvLocal;
                if (s < 0) {
                    throw Codegen.badTree();
                }
                this.cfw.m37833throws(s);
            }
        }
        if (this.compilerEnv.isGenerateObserverCount()) {
            addInstructionCount();
        }
        if (this.epilogueLabel == -1) {
            if (!this.hasVarsInRegs) {
                throw Codegen.badTree();
            }
            this.epilogueLabel = this.cfw.m37820import();
        }
        this.cfw.m37827public(167, this.epilogueLabel);
    }

    private void generateThrowJavaScriptException() throws RuntimeException {
        this.cfw.m37829static(187, "org/mozilla/javascript/JavaScriptException");
        this.cfw.m37823native(90);
        this.cfw.m37823native(95);
        this.cfw.n(this.scriptOrFn.getSourceName());
        this.cfw.l(this.itsLineNumber);
        this.cfw.m37821instanceof(183, "org/mozilla/javascript/JavaScriptException", "<init>", "(Ljava/lang/Object;Ljava/lang/String;I)V");
        this.cfw.m37823native(191);
    }

    private void generateYieldPoint(Node node, boolean z) throws RuntimeException {
        short sK = this.cfw.K();
        int i = this.maxStack;
        if (i <= sK) {
            i = sK;
        }
        this.maxStack = i;
        if (this.cfw.K() != 0) {
            generateGetGeneratorStackState();
            for (int i2 = 0; i2 < sK; i2++) {
                this.cfw.m37823native(90);
                this.cfw.m37823native(95);
                this.cfw.g(i2);
                this.cfw.m37823native(95);
                this.cfw.m37823native(83);
            }
            this.cfw.m37823native(87);
        }
        Node firstChild = node.getFirstChild();
        if (firstChild != null) {
            generateExpression(firstChild, node);
        } else {
            Codegen.pushUndefined(this.cfw);
        }
        int nextGeneratorState = getNextGeneratorState(node);
        generateSetGeneratorResumptionPoint(nextGeneratorState);
        boolean zGenerateSaveLocals = generateSaveLocals(node);
        this.cfw.m37823native(176);
        generateCheckForThrowOrClose(getTargetLabel(node), zGenerateSaveLocals, nextGeneratorState);
        if (sK != 0) {
            generateGetGeneratorStackState();
            for (int i3 = 0; i3 < sK; i3++) {
                this.cfw.m37823native(89);
                this.cfw.g((sK - i3) - 1);
                this.cfw.m37823native(50);
                this.cfw.m37823native(95);
            }
            this.cfw.m37823native(87);
        }
        if (z) {
            this.cfw.m37833throws(this.argsLocal);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Node getFinallyAtTarget(Node node) {
        Node next;
        if (node == null) {
            return null;
        }
        if (node.getType() == 126) {
            return node;
        }
        if (node.getType() == 132 && (next = node.getNext()) != null && next.getType() == 126) {
            return next;
        }
        throw Kit.codeBug("bad finally target");
    }

    private int getLocalBlockRegister(Node node) {
        return ((Node) node.getProp(3)).getExistingIntProp(2);
    }

    private short getNewWordIntern(int i) {
        int i2;
        int i3;
        int[] iArr = this.locals;
        if (i > 1) {
            i2 = this.firstFreeLocal;
            loop0: while (true) {
                if (i2 + i > 1024) {
                    i2 = -1;
                    break;
                }
                i3 = 0;
                while (i3 < i) {
                    if (iArr[i2 + i3] != 0) {
                        break;
                    }
                    i3++;
                }
                break loop0;
                i2 += i3 + 1;
            }
        } else {
            i2 = this.firstFreeLocal;
        }
        if (i2 != -1) {
            iArr[i2] = 1;
            if (i > 1) {
                iArr[i2 + 1] = 1;
            }
            if (i > 2) {
                iArr[i2 + 2] = 1;
            }
            if (i2 != this.firstFreeLocal) {
                return (short) i2;
            }
            for (int i4 = i + i2; i4 < 1024; i4++) {
                if (iArr[i4] == 0) {
                    short s = (short) i4;
                    this.firstFreeLocal = s;
                    if (this.localsMax < s) {
                        this.localsMax = s;
                    }
                    return (short) i2;
                }
            }
        }
        throw Context.reportRuntimeError("Program too complex (out of locals)");
    }

    private short getNewWordLocal(boolean z) {
        return getNewWordIntern(z ? 2 : 1);
    }

    private short getNewWordPairLocal(boolean z) {
        return getNewWordIntern(z ? 3 : 2);
    }

    private int getNextGeneratorState(Node node) {
        return ((FunctionNode) this.scriptOrFn).getResumptionPoints().indexOf(node) + 1;
    }

    private int getTargetLabel(Node node) throws RuntimeException {
        int iLabelId = node.labelId();
        if (iLabelId != -1) {
            return iLabelId;
        }
        int iM37820import = this.cfw.m37820import();
        node.labelId(iM37820import);
        return iM37820import;
    }

    private void incReferenceWordLocal(short s) {
        int[] iArr = this.locals;
        iArr[s] = iArr[s] + 1;
    }

    private void initBodyGeneration() {
        int paramAndVarCount;
        this.varRegisters = null;
        if (this.scriptOrFn.getType() == 110) {
            OptFunctionNode optFunctionNode = OptFunctionNode.get(this.scriptOrFn);
            this.fnCurrent = optFunctionNode;
            boolean z = !optFunctionNode.fnode.requiresActivation();
            this.hasVarsInRegs = z;
            if (z && (paramAndVarCount = this.fnCurrent.fnode.getParamAndVarCount()) != 0) {
                this.varRegisters = new short[paramAndVarCount];
            }
            boolean zIsTargetOfDirectCall = this.fnCurrent.isTargetOfDirectCall();
            this.inDirectCallFunction = zIsTargetOfDirectCall;
            if (zIsTargetOfDirectCall && !this.hasVarsInRegs) {
                Codegen.badTree();
            }
        } else {
            this.fnCurrent = null;
            this.hasVarsInRegs = false;
            this.inDirectCallFunction = false;
        }
        this.locals = new int[1024];
        this.funObjLocal = (short) 0;
        this.contextLocal = (short) 1;
        this.variableObjectLocal = (short) 2;
        this.thisObjLocal = (short) 3;
        this.localsMax = (short) 4;
        this.firstFreeLocal = (short) 4;
        this.popvLocal = (short) -1;
        this.argsLocal = (short) -1;
        this.itsZeroArgArray = (short) -1;
        this.itsOneArgArray = (short) -1;
        this.epilogueLabel = -1;
        this.enterAreaStartLabel = -1;
        this.generatorStateLocal = (short) -1;
    }

    private void inlineFinally(Node node, int i, int i2) throws RuntimeException {
        Node finallyAtTarget = getFinallyAtTarget(node);
        finallyAtTarget.resetTargets();
        this.exceptionManager.markInlineFinallyStart(finallyAtTarget, i);
        for (Node firstChild = finallyAtTarget.getFirstChild(); firstChild != null; firstChild = firstChild.getNext()) {
            generateStatement(firstChild);
        }
        this.exceptionManager.markInlineFinallyEnd(finallyAtTarget, i2);
    }

    private static boolean isArithmeticNode(Node node) {
        int type = node.getType();
        return type == 22 || type == 25 || type == 24 || type == 23;
    }

    private int nodeIsDirectCallParameter(Node node) throws RuntimeException {
        if (node.getType() != 55 || !this.inDirectCallFunction || this.itsForcedObjectParameters) {
            return -1;
        }
        int varIndex = this.fnCurrent.getVarIndex(node);
        if (this.fnCurrent.isParameter(varIndex)) {
            return this.varRegisters[varIndex];
        }
        return -1;
    }

    private void releaseWordLocal(short s) {
        if (s < this.firstFreeLocal) {
            this.firstFreeLocal = s;
        }
        this.locals[s] = 0;
    }

    private void saveCurrentCodeOffset() {
        this.savedCodeOffset = this.cfw.H();
    }

    private void updateLineNumber(Node node) {
        int lineno = node.getLineno();
        this.itsLineNumber = lineno;
        if (lineno == -1) {
            return;
        }
        this.cfw.d((short) lineno);
    }

    private boolean varIsDirectCallParameter(int i) {
        return this.fnCurrent.isParameter(i) && this.inDirectCallFunction && !this.itsForcedObjectParameters;
    }

    private void visitArithmetic(Node node, int i, Node node2, Node node3) throws RuntimeException {
        if (node.getIntProp(8, -1) != -1) {
            generateExpression(node2, node);
            generateExpression(node2.getNext(), node);
            this.cfw.m37823native(i);
            return;
        }
        boolean zIsArithmeticNode = isArithmeticNode(node3);
        generateExpression(node2, node);
        if (!isArithmeticNode(node2)) {
            addObjectToDouble();
        }
        generateExpression(node2.getNext(), node);
        if (!isArithmeticNode(node2.getNext())) {
            addObjectToDouble();
        }
        this.cfw.m37823native(i);
        if (zIsArithmeticNode) {
            return;
        }
        addDoubleWrap();
    }

    private void visitArrayLiteral(Node node, Node node2, boolean z) throws RuntimeException {
        int i = 0;
        int i2 = 0;
        for (Node next = node2; next != null; next = next.getNext()) {
            i2++;
        }
        if (!z && ((i2 > 10 || this.cfw.H() > 30000) && !this.hasVarsInRegs && !this.isGenerator && !this.inLocalBlock)) {
            if (this.literals == null) {
                this.literals = new LinkedList();
            }
            this.literals.add(node);
            String str = this.codegen.getBodyMethodName(this.scriptOrFn) + "_literal" + this.literals.size();
            this.cfw.m37833throws(this.funObjLocal);
            this.cfw.m37833throws(this.contextLocal);
            this.cfw.m37833throws(this.variableObjectLocal);
            this.cfw.m37833throws(this.thisObjLocal);
            this.cfw.m37833throws(this.argsLocal);
            this.cfw.m37821instanceof(182, this.codegen.mainClassName, str, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
            return;
        }
        if (this.isGenerator) {
            for (int i3 = 0; i3 != i2; i3++) {
                generateExpression(node2, node);
                node2 = node2.getNext();
            }
            addNewObjectArray(i2);
            while (i != i2) {
                this.cfw.m37823native(90);
                this.cfw.m37823native(95);
                this.cfw.l((i2 - i) - 1);
                this.cfw.m37823native(95);
                this.cfw.m37823native(83);
                i++;
            }
        } else {
            addNewObjectArray(i2);
            while (i != i2) {
                this.cfw.m37823native(89);
                this.cfw.l(i);
                generateExpression(node2, node);
                this.cfw.m37823native(83);
                node2 = node2.getNext();
                i++;
            }
        }
        int[] iArr = (int[]) node.getProp(11);
        if (iArr == null) {
            this.cfw.m37823native(1);
            this.cfw.m37823native(3);
        } else {
            this.cfw.n(OptRuntime.encodeIntArray(iArr));
            this.cfw.l(iArr.length);
        }
        this.cfw.m37833throws(this.contextLocal);
        this.cfw.m37833throws(this.variableObjectLocal);
        addOptRuntimeInvoke("newArrayLiteral", "([Ljava/lang/Object;Ljava/lang/String;ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
    }

    private void visitBitOp(Node node, int i, Node node2) throws RuntimeException {
        int intProp = node.getIntProp(8, -1);
        generateExpression(node2, node);
        if (i == 20) {
            addScriptRuntimeInvoke("toUint32", "(Ljava/lang/Object;)J");
            generateExpression(node2.getNext(), node);
            addScriptRuntimeInvoke("toInt32", "(Ljava/lang/Object;)I");
            this.cfw.l(31);
            this.cfw.m37823native(126);
            this.cfw.m37823native(125);
            this.cfw.m37823native(138);
            addDoubleWrap();
            return;
        }
        if (intProp == -1) {
            addScriptRuntimeInvoke("toInt32", "(Ljava/lang/Object;)I");
            generateExpression(node2.getNext(), node);
            addScriptRuntimeInvoke("toInt32", "(Ljava/lang/Object;)I");
        } else {
            addScriptRuntimeInvoke("toInt32", "(D)I");
            generateExpression(node2.getNext(), node);
            addScriptRuntimeInvoke("toInt32", "(D)I");
        }
        if (i == 18) {
            this.cfw.m37823native(120);
        } else if (i != 19) {
            switch (i) {
                case 9:
                    this.cfw.m37823native(128);
                    break;
                case 10:
                    this.cfw.m37823native(130);
                    break;
                case 11:
                    this.cfw.m37823native(126);
                    break;
                default:
                    throw Codegen.badTree();
            }
        } else {
            this.cfw.m37823native(122);
        }
        this.cfw.m37823native(135);
        if (intProp == -1) {
            addDoubleWrap();
        }
    }

    private void visitDotQuery(Node node, Node node2) throws RuntimeException {
        updateLineNumber(node);
        generateExpression(node2, node);
        this.cfw.m37833throws(this.variableObjectLocal);
        addScriptRuntimeInvoke("enterDotQuery", "(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
        this.cfw.m37816default(this.variableObjectLocal);
        this.cfw.m37823native(1);
        int iM37820import = this.cfw.m37820import();
        this.cfw.O(iM37820import);
        this.cfw.m37823native(87);
        generateExpression(node2.getNext(), node);
        addScriptRuntimeInvoke("toBoolean", "(Ljava/lang/Object;)Z");
        this.cfw.m37833throws(this.variableObjectLocal);
        addScriptRuntimeInvoke("updateDotQuery", "(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        this.cfw.m37823native(89);
        this.cfw.m37827public(198, iM37820import);
        this.cfw.m37833throws(this.variableObjectLocal);
        addScriptRuntimeInvoke("leaveDotQuery", "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
        this.cfw.m37816default(this.variableObjectLocal);
    }

    private void visitFunction(OptFunctionNode optFunctionNode, int i) throws RuntimeException {
        int index = this.codegen.getIndex(optFunctionNode.fnode);
        this.cfw.m37829static(187, this.codegen.mainClassName);
        this.cfw.m37823native(89);
        this.cfw.m37833throws(this.variableObjectLocal);
        this.cfw.m37833throws(this.contextLocal);
        this.cfw.l(index);
        this.cfw.m37821instanceof(183, this.codegen.mainClassName, "<init>", Codegen.FUNCTION_CONSTRUCTOR_SIGNATURE);
        if (i == 4) {
            this.cfw.m37833throws(this.contextLocal);
            this.cfw.m37833throws(this.variableObjectLocal);
            this.cfw.m37833throws(this.thisObjLocal);
            addOptRuntimeInvoke("bindThis", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;");
        }
        if (i == 2 || i == 4) {
            return;
        }
        this.cfw.l(i);
        this.cfw.m37833throws(this.variableObjectLocal);
        this.cfw.m37833throws(this.contextLocal);
        addOptRuntimeInvoke("initFunction", "(Lorg/mozilla/javascript/NativeFunction;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)V");
    }

    private void visitGetProp(Node node, Node node2) throws RuntimeException {
        generateExpression(node2, node);
        Node next = node2.getNext();
        generateExpression(next, node);
        if (node.getType() == 34) {
            this.cfw.m37833throws(this.contextLocal);
            this.cfw.m37833throws(this.variableObjectLocal);
            addScriptRuntimeInvoke("getObjectPropNoWarn", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        } else if (node2.getType() == 43 && next.getType() == 41) {
            this.cfw.m37833throws(this.contextLocal);
            addScriptRuntimeInvoke("getObjectProp", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
        } else {
            this.cfw.m37833throws(this.contextLocal);
            this.cfw.m37833throws(this.variableObjectLocal);
            addScriptRuntimeInvoke("getObjectProp", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        }
    }

    private void visitGetVar(Node node) throws RuntimeException {
        if (!this.hasVarsInRegs) {
            Kit.codeBug();
        }
        int varIndex = this.fnCurrent.getVarIndex(node);
        short s = this.varRegisters[varIndex];
        if (varIsDirectCallParameter(varIndex)) {
            if (node.getIntProp(8, -1) != -1) {
                dcpLoadAsNumber(s);
                return;
            } else {
                dcpLoadAsObject(s);
                return;
            }
        }
        if (this.fnCurrent.isNumberVar(varIndex)) {
            this.cfw.m37817extends(s);
        } else {
            this.cfw.m37833throws(s);
        }
    }

    private void visitGoto(Jump jump, int i, Node node) throws RuntimeException {
        Node node2 = jump.target;
        if (i != 6 && i != 7) {
            if (i != 136) {
                addGoto(node2, 167);
                return;
            } else if (this.isGenerator) {
                addGotoWithReturn(node2);
                return;
            } else {
                inlineFinally(node2);
                return;
            }
        }
        if (node == null) {
            throw Codegen.badTree();
        }
        int targetLabel = getTargetLabel(node2);
        int iM37820import = this.cfw.m37820import();
        if (i == 6) {
            generateIfJump(node, jump, targetLabel, iM37820import);
        } else {
            generateIfJump(node, jump, iM37820import, targetLabel);
        }
        this.cfw.O(iM37820import);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x013f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void visitIfJumpEqOp(Node node, Node node2, int i, int i2) throws RuntimeException {
        int i3;
        Node node3 = node2;
        int i4 = i;
        int i5 = i2;
        if (i4 == -1 || i5 == -1) {
            throw Codegen.badTree();
        }
        short sK = this.cfw.K();
        int type = node.getType();
        Node next = node2.getNext();
        if (node2.getType() == 42 || next.getType() == 42) {
            if (node2.getType() == 42) {
                node3 = next;
            }
            generateExpression(node3, node);
            int i6 = 46;
            if (type == 46) {
                this.cfw.m37827public(type == i6 ? 198 : 199, i4);
                this.cfw.m37827public(167, i5);
            } else if (type == 47) {
                i6 = 46;
                this.cfw.m37827public(type == i6 ? 198 : 199, i4);
                this.cfw.m37827public(167, i5);
            } else {
                if (type != 12) {
                    if (type != 13) {
                        throw Codegen.badTree();
                    }
                    i5 = i4;
                    i4 = i5;
                }
                this.cfw.m37823native(89);
                int iM37820import = this.cfw.m37820import();
                this.cfw.m37827public(199, iM37820import);
                short sK2 = this.cfw.K();
                this.cfw.m37823native(87);
                this.cfw.m37827public(167, i4);
                this.cfw.P(iM37820import, sK2);
                Codegen.pushUndefined(this.cfw);
                this.cfw.m37827public(165, i4);
                this.cfw.m37827public(167, i5);
            }
        } else {
            int iNodeIsDirectCallParameter = nodeIsDirectCallParameter(node3);
            if (iNodeIsDirectCallParameter == -1 || next.getType() != 150) {
                generateExpression(node3, node);
                generateExpression(next, node);
                String str = "shallowEq";
                if (type == 12) {
                    if (type == 13) {
                        str = "eq";
                    } else if (type != 46) {
                        if (type != 47) {
                            throw Codegen.badTree();
                        }
                    }
                    i3 = 153;
                    addScriptRuntimeInvoke(str, "(Ljava/lang/Object;Ljava/lang/Object;)Z");
                    this.cfw.m37827public(i3, i4);
                    this.cfw.m37827public(167, i5);
                } else {
                    str = "eq";
                }
                i3 = 154;
                addScriptRuntimeInvoke(str, "(Ljava/lang/Object;Ljava/lang/Object;)Z");
                this.cfw.m37827public(i3, i4);
                this.cfw.m37827public(167, i5);
            } else {
                Node firstChild = next.getFirstChild();
                if (firstChild.getType() == 40) {
                    this.cfw.m37833throws(iNodeIsDirectCallParameter);
                    this.cfw.m37831switch(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
                    int iM37820import2 = this.cfw.m37820import();
                    this.cfw.m37827public(166, iM37820import2);
                    this.cfw.m37817extends(iNodeIsDirectCallParameter + 1);
                    this.cfw.k(firstChild.getDouble());
                    this.cfw.m37823native(151);
                    if (type == 12) {
                        this.cfw.m37827public(153, i4);
                    } else {
                        this.cfw.m37827public(154, i4);
                    }
                    this.cfw.m37827public(167, i5);
                    this.cfw.O(iM37820import2);
                }
                generateExpression(node3, node);
                generateExpression(next, node);
                String str2 = "shallowEq";
                if (type == 12) {
                }
                i3 = 154;
                addScriptRuntimeInvoke(str2, "(Ljava/lang/Object;Ljava/lang/Object;)Z");
                this.cfw.m37827public(i3, i4);
                this.cfw.m37827public(167, i5);
            }
        }
        if (sK != this.cfw.K()) {
            throw Codegen.badTree();
        }
    }

    private void visitIfJumpRelOp(Node node, Node node2, int i, int i2) throws RuntimeException {
        if (i == -1 || i2 == -1) {
            throw Codegen.badTree();
        }
        int type = node.getType();
        Node next = node2.getNext();
        if (type == 53 || type == 52) {
            generateExpression(node2, node);
            generateExpression(next, node);
            this.cfw.m37833throws(this.contextLocal);
            addScriptRuntimeInvoke(type == 53 ? "instanceOf" : "in", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z");
            this.cfw.m37827public(154, i);
            this.cfw.m37827public(167, i2);
            return;
        }
        int intProp = node.getIntProp(8, -1);
        int iNodeIsDirectCallParameter = nodeIsDirectCallParameter(node2);
        int iNodeIsDirectCallParameter2 = nodeIsDirectCallParameter(next);
        if (intProp != -1) {
            if (intProp != 2) {
                generateExpression(node2, node);
            } else if (iNodeIsDirectCallParameter != -1) {
                dcpLoadAsNumber(iNodeIsDirectCallParameter);
            } else {
                generateExpression(node2, node);
                addObjectToDouble();
            }
            if (intProp != 1) {
                generateExpression(next, node);
            } else if (iNodeIsDirectCallParameter2 != -1) {
                dcpLoadAsNumber(iNodeIsDirectCallParameter2);
            } else {
                generateExpression(next, node);
                addObjectToDouble();
            }
            genSimpleCompare(type, i, i2);
            return;
        }
        if (iNodeIsDirectCallParameter == -1 || iNodeIsDirectCallParameter2 == -1) {
            generateExpression(node2, node);
            generateExpression(next, node);
        } else {
            short sK = this.cfw.K();
            int iM37820import = this.cfw.m37820import();
            this.cfw.m37833throws(iNodeIsDirectCallParameter);
            this.cfw.m37831switch(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
            this.cfw.m37827public(166, iM37820import);
            this.cfw.m37817extends(iNodeIsDirectCallParameter + 1);
            dcpLoadAsNumber(iNodeIsDirectCallParameter2);
            genSimpleCompare(type, i, i2);
            if (sK != this.cfw.K()) {
                throw Codegen.badTree();
            }
            this.cfw.O(iM37820import);
            int iM37820import2 = this.cfw.m37820import();
            this.cfw.m37833throws(iNodeIsDirectCallParameter2);
            this.cfw.m37831switch(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
            this.cfw.m37827public(166, iM37820import2);
            this.cfw.m37833throws(iNodeIsDirectCallParameter);
            addObjectToDouble();
            this.cfw.m37817extends(iNodeIsDirectCallParameter2 + 1);
            genSimpleCompare(type, i, i2);
            if (sK != this.cfw.K()) {
                throw Codegen.badTree();
            }
            this.cfw.O(iM37820import2);
            this.cfw.m37833throws(iNodeIsDirectCallParameter);
            this.cfw.m37833throws(iNodeIsDirectCallParameter2);
        }
        if (type == 17 || type == 16) {
            this.cfw.m37823native(95);
        }
        addScriptRuntimeInvoke((type == 14 || type == 16) ? "cmp_LT" : "cmp_LE", "(Ljava/lang/Object;Ljava/lang/Object;)Z");
        this.cfw.m37827public(154, i);
        this.cfw.m37827public(167, i2);
    }

    private void visitIncDec(Node node) throws RuntimeException {
        int existingIntProp = node.getExistingIntProp(13);
        Node firstChild = node.getFirstChild();
        int type = firstChild.getType();
        if (type == 33) {
            Node firstChild2 = firstChild.getFirstChild();
            generateExpression(firstChild2, node);
            generateExpression(firstChild2.getNext(), node);
            this.cfw.m37833throws(this.contextLocal);
            this.cfw.m37833throws(this.variableObjectLocal);
            this.cfw.l(existingIntProp);
            addScriptRuntimeInvoke("propIncrDecr", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
            return;
        }
        if (type == 34) {
            throw Kit.codeBug();
        }
        if (type == 36) {
            Node firstChild3 = firstChild.getFirstChild();
            generateExpression(firstChild3, node);
            generateExpression(firstChild3.getNext(), node);
            this.cfw.m37833throws(this.contextLocal);
            this.cfw.m37833throws(this.variableObjectLocal);
            this.cfw.l(existingIntProp);
            if (firstChild3.getNext().getIntProp(8, -1) != -1) {
                addOptRuntimeInvoke("elemIncrDecr", "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
                return;
            } else {
                addScriptRuntimeInvoke("elemIncrDecr", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
                return;
            }
        }
        if (type == 39) {
            this.cfw.m37833throws(this.variableObjectLocal);
            this.cfw.n(firstChild.getString());
            this.cfw.m37833throws(this.contextLocal);
            this.cfw.l(existingIntProp);
            addScriptRuntimeInvoke("nameIncrDecr", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;");
            return;
        }
        if (type != 55) {
            if (type != 68) {
                Codegen.badTree();
                return;
            }
            generateExpression(firstChild.getFirstChild(), node);
            this.cfw.m37833throws(this.contextLocal);
            this.cfw.m37833throws(this.variableObjectLocal);
            this.cfw.l(existingIntProp);
            addScriptRuntimeInvoke("refIncrDecr", "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
            return;
        }
        if (!this.hasVarsInRegs) {
            Kit.codeBug();
        }
        boolean z = (existingIntProp & 2) != 0;
        int varIndex = this.fnCurrent.getVarIndex(firstChild);
        short s = this.varRegisters[varIndex];
        if (this.fnCurrent.fnode.getParamAndVarConst()[varIndex]) {
            if (node.getIntProp(8, -1) != -1) {
                this.cfw.m37817extends(s + (varIsDirectCallParameter(varIndex) ? 1 : 0));
                if (z) {
                    return;
                }
                this.cfw.k(1.0d);
                if ((existingIntProp & 1) == 0) {
                    this.cfw.m37823native(99);
                    return;
                } else {
                    this.cfw.m37823native(103);
                    return;
                }
            }
            if (varIsDirectCallParameter(varIndex)) {
                dcpLoadAsObject(s);
            } else {
                this.cfw.m37833throws(s);
            }
            if (z) {
                this.cfw.m37823native(89);
                addObjectToDouble();
                this.cfw.m37823native(88);
                return;
            } else {
                addObjectToDouble();
                this.cfw.k(1.0d);
                if ((existingIntProp & 1) == 0) {
                    this.cfw.m37823native(99);
                } else {
                    this.cfw.m37823native(103);
                }
                addDoubleWrap();
                return;
            }
        }
        if (node.getIntProp(8, -1) != -1) {
            boolean zVarIsDirectCallParameter = varIsDirectCallParameter(varIndex);
            Cfor cfor = this.cfw;
            int i = s + (zVarIsDirectCallParameter ? 1 : 0);
            cfor.m37817extends(i);
            if (z) {
                this.cfw.m37823native(92);
            }
            this.cfw.k(1.0d);
            if ((existingIntProp & 1) == 0) {
                this.cfw.m37823native(99);
            } else {
                this.cfw.m37823native(103);
            }
            if (!z) {
                this.cfw.m37823native(92);
            }
            this.cfw.m37818finally(i);
            return;
        }
        if (varIsDirectCallParameter(varIndex)) {
            dcpLoadAsObject(s);
        } else {
            this.cfw.m37833throws(s);
        }
        addObjectToDouble();
        if (z) {
            this.cfw.m37823native(92);
        }
        this.cfw.k(1.0d);
        if ((existingIntProp & 1) == 0) {
            this.cfw.m37823native(99);
        } else {
            this.cfw.m37823native(103);
        }
        addDoubleWrap();
        if (!z) {
            this.cfw.m37823native(89);
        }
        this.cfw.m37816default(s);
        if (z) {
            addDoubleWrap();
        }
    }

    private void visitObjectLiteral(Node node, Node node2, boolean z) throws RuntimeException {
        boolean z2;
        Object[] objArr = (Object[]) node.getProp(12);
        int length = objArr.length;
        if (!z && ((length > 10 || this.cfw.H() > 30000) && !this.hasVarsInRegs && !this.isGenerator && !this.inLocalBlock)) {
            if (this.literals == null) {
                this.literals = new LinkedList();
            }
            this.literals.add(node);
            String str = this.codegen.getBodyMethodName(this.scriptOrFn) + "_literal" + this.literals.size();
            this.cfw.m37833throws(this.funObjLocal);
            this.cfw.m37833throws(this.contextLocal);
            this.cfw.m37833throws(this.variableObjectLocal);
            this.cfw.m37833throws(this.thisObjLocal);
            this.cfw.m37833throws(this.argsLocal);
            this.cfw.m37821instanceof(182, this.codegen.mainClassName, str, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
            return;
        }
        if (this.isGenerator) {
            addLoadPropertyValues(node, node2, length);
            addLoadPropertyIds(objArr, length);
            this.cfw.m37823native(95);
        } else {
            addLoadPropertyIds(objArr, length);
            addLoadPropertyValues(node, node2, length);
        }
        Node next = node2;
        for (int i = 0; i != length; i++) {
            int type = next.getType();
            if (type == 152 || type == 153) {
                z2 = true;
                break;
            }
            next = next.getNext();
        }
        z2 = false;
        if (z2) {
            this.cfw.l(length);
            this.cfw.m37827public(188, 10);
            for (int i2 = 0; i2 != length; i2++) {
                this.cfw.m37823native(89);
                this.cfw.l(i2);
                int type2 = node2.getType();
                if (type2 == 152) {
                    this.cfw.m37823native(2);
                } else if (type2 == 153) {
                    this.cfw.m37823native(4);
                } else {
                    this.cfw.m37823native(3);
                }
                this.cfw.m37823native(79);
                node2 = node2.getNext();
            }
        } else {
            this.cfw.m37823native(1);
        }
        this.cfw.m37833throws(this.contextLocal);
        this.cfw.m37833throws(this.variableObjectLocal);
        addScriptRuntimeInvoke("newObjectLiteral", "([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
    }

    private void visitOptimizedCall(Node node, OptFunctionNode optFunctionNode, int i, Node node2) throws RuntimeException {
        short newWordLocal;
        Node next = node2.getNext();
        String str = this.codegen.mainClassName;
        if (i == 30) {
            generateExpression(node2, node);
            newWordLocal = 0;
        } else {
            generateFunctionAndThisObj(node2, node);
            newWordLocal = getNewWordLocal();
            this.cfw.m37816default(newWordLocal);
        }
        int iM37820import = this.cfw.m37820import();
        int iM37820import2 = this.cfw.m37820import();
        this.cfw.m37823native(89);
        this.cfw.m37829static(193, str);
        this.cfw.m37827public(153, iM37820import2);
        this.cfw.m37829static(192, str);
        this.cfw.m37823native(89);
        this.cfw.m37831switch(180, str, "_id", OptRuntime.GeneratorState.resumptionPoint_TYPE);
        this.cfw.l(this.codegen.getIndex(optFunctionNode.fnode));
        this.cfw.m37827public(160, iM37820import2);
        this.cfw.m37833throws(this.contextLocal);
        this.cfw.m37833throws(this.variableObjectLocal);
        if (i == 30) {
            this.cfw.m37823native(1);
        } else {
            this.cfw.m37833throws(newWordLocal);
        }
        for (Node next2 = next; next2 != null; next2 = next2.getNext()) {
            int iNodeIsDirectCallParameter = nodeIsDirectCallParameter(next2);
            if (iNodeIsDirectCallParameter >= 0) {
                this.cfw.m37833throws(iNodeIsDirectCallParameter);
                this.cfw.m37817extends(iNodeIsDirectCallParameter + 1);
            } else if (next2.getIntProp(8, -1) == 0) {
                this.cfw.m37831switch(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
                generateExpression(next2, node);
            } else {
                generateExpression(next2, node);
                this.cfw.k(0.0d);
            }
        }
        this.cfw.m37831switch(178, "org/mozilla/javascript/ScriptRuntime", "emptyArgs", "[Ljava/lang/Object;");
        Cfor cfor = this.cfw;
        Codegen codegen = this.codegen;
        cfor.m37821instanceof(184, codegen.mainClassName, i == 30 ? codegen.getDirectCtorName(optFunctionNode.fnode) : codegen.getBodyMethodName(optFunctionNode.fnode), this.codegen.getBodyMethodSignature(optFunctionNode.fnode));
        this.cfw.m37827public(167, iM37820import);
        this.cfw.O(iM37820import2);
        this.cfw.m37833throws(this.contextLocal);
        this.cfw.m37833throws(this.variableObjectLocal);
        if (i != 30) {
            this.cfw.m37833throws(newWordLocal);
            releaseWordLocal(newWordLocal);
        }
        generateCallArgArray(node, next, true);
        if (i == 30) {
            addScriptRuntimeInvoke("newObject", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
        } else {
            this.cfw.m37821instanceof(185, "org/mozilla/javascript/Callable", NotificationCompat.CATEGORY_CALL, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;");
        }
        this.cfw.O(iM37820import);
    }

    private void visitSetConst(Node node, Node node2) throws RuntimeException {
        String string = node.getFirstChild().getString();
        while (node2 != null) {
            generateExpression(node2, node);
            node2 = node2.getNext();
        }
        this.cfw.m37833throws(this.contextLocal);
        this.cfw.n(string);
        addScriptRuntimeInvoke("setConst", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;");
    }

    private void visitSetConstVar(Node node, Node node2, boolean z) throws RuntimeException {
        if (!this.hasVarsInRegs) {
            Kit.codeBug();
        }
        int varIndex = this.fnCurrent.getVarIndex(node);
        generateExpression(node2.getNext(), node);
        boolean z2 = node.getIntProp(8, -1) != -1;
        short s = this.varRegisters[varIndex];
        int iM37820import = this.cfw.m37820import();
        int iM37820import2 = this.cfw.m37820import();
        if (z2) {
            int i = s + 2;
            this.cfw.m37826protected(i);
            this.cfw.m37827public(154, iM37820import2);
            short sK = this.cfw.K();
            this.cfw.l(1);
            this.cfw.m37834transient(i);
            this.cfw.m37818finally(s);
            if (z) {
                this.cfw.m37817extends(s);
                this.cfw.P(iM37820import2, sK);
            } else {
                this.cfw.m37827public(167, iM37820import);
                this.cfw.P(iM37820import2, sK);
                this.cfw.m37823native(88);
            }
        } else {
            int i2 = s + 1;
            this.cfw.m37826protected(i2);
            this.cfw.m37827public(154, iM37820import2);
            short sK2 = this.cfw.K();
            this.cfw.l(1);
            this.cfw.m37834transient(i2);
            this.cfw.m37816default(s);
            if (z) {
                this.cfw.m37833throws(s);
                this.cfw.P(iM37820import2, sK2);
            } else {
                this.cfw.m37827public(167, iM37820import);
                this.cfw.P(iM37820import2, sK2);
                this.cfw.m37823native(87);
            }
        }
        this.cfw.O(iM37820import);
    }

    private void visitSetElem(int i, Node node, Node node2) throws RuntimeException {
        generateExpression(node2, node);
        Node next = node2.getNext();
        if (i == 141) {
            this.cfw.m37823native(89);
        }
        generateExpression(next, node);
        Node next2 = next.getNext();
        boolean z = node.getIntProp(8, -1) != -1;
        if (i == 141) {
            if (z) {
                this.cfw.m37823native(93);
                this.cfw.m37833throws(this.contextLocal);
                this.cfw.m37833throws(this.variableObjectLocal);
                addScriptRuntimeInvoke("getObjectIndex", "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
            } else {
                this.cfw.m37823native(90);
                this.cfw.m37833throws(this.contextLocal);
                this.cfw.m37833throws(this.variableObjectLocal);
                addScriptRuntimeInvoke("getObjectElem", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
            }
        }
        generateExpression(next2, node);
        this.cfw.m37833throws(this.contextLocal);
        this.cfw.m37833throws(this.variableObjectLocal);
        if (z) {
            addScriptRuntimeInvoke("setObjectIndex", "(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        } else {
            addScriptRuntimeInvoke("setObjectElem", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        }
    }

    private void visitSetName(Node node, Node node2) throws RuntimeException {
        String string = node.getFirstChild().getString();
        while (node2 != null) {
            generateExpression(node2, node);
            node2 = node2.getNext();
        }
        this.cfw.m37833throws(this.contextLocal);
        this.cfw.m37833throws(this.variableObjectLocal);
        this.cfw.n(string);
        addScriptRuntimeInvoke("setName", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;");
    }

    private void visitSetProp(int i, Node node, Node node2) throws RuntimeException {
        generateExpression(node2, node);
        Node next = node2.getNext();
        if (i == 140) {
            this.cfw.m37823native(89);
        }
        generateExpression(next, node);
        Node next2 = next.getNext();
        if (i == 140) {
            this.cfw.m37823native(90);
            if (node2.getType() == 43 && next.getType() == 41) {
                this.cfw.m37833throws(this.contextLocal);
                addScriptRuntimeInvoke("getObjectProp", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
            } else {
                this.cfw.m37833throws(this.contextLocal);
                this.cfw.m37833throws(this.variableObjectLocal);
                addScriptRuntimeInvoke("getObjectProp", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
            }
        }
        generateExpression(next2, node);
        this.cfw.m37833throws(this.contextLocal);
        this.cfw.m37833throws(this.variableObjectLocal);
        addScriptRuntimeInvoke("setObjectProp", "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
    }

    private void visitSetVar(Node node, Node node2, boolean z) throws RuntimeException {
        if (!this.hasVarsInRegs) {
            Kit.codeBug();
        }
        int varIndex = this.fnCurrent.getVarIndex(node);
        generateExpression(node2.getNext(), node);
        boolean z2 = node.getIntProp(8, -1) != -1;
        short s = this.varRegisters[varIndex];
        if (this.fnCurrent.fnode.getParamAndVarConst()[varIndex]) {
            if (z) {
                return;
            }
            if (z2) {
                this.cfw.m37823native(88);
                return;
            } else {
                this.cfw.m37823native(87);
                return;
            }
        }
        if (varIsDirectCallParameter(varIndex)) {
            if (!z2) {
                if (z) {
                    this.cfw.m37823native(89);
                }
                this.cfw.m37816default(s);
                return;
            }
            if (z) {
                this.cfw.m37823native(92);
            }
            this.cfw.m37833throws(s);
            this.cfw.m37831switch(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
            int iM37820import = this.cfw.m37820import();
            int iM37820import2 = this.cfw.m37820import();
            this.cfw.m37827public(165, iM37820import);
            short sK = this.cfw.K();
            addDoubleWrap();
            this.cfw.m37816default(s);
            this.cfw.m37827public(167, iM37820import2);
            this.cfw.P(iM37820import, sK);
            this.cfw.m37818finally(s + 1);
            this.cfw.O(iM37820import2);
            return;
        }
        boolean zIsNumberVar = this.fnCurrent.isNumberVar(varIndex);
        if (!z2) {
            if (zIsNumberVar) {
                Kit.codeBug();
            }
            this.cfw.m37816default(s);
            if (z) {
                this.cfw.m37833throws(s);
                return;
            }
            return;
        }
        if (zIsNumberVar) {
            this.cfw.m37818finally(s);
            if (z) {
                this.cfw.m37817extends(s);
                return;
            }
            return;
        }
        if (z) {
            this.cfw.m37823native(92);
        }
        addDoubleWrap();
        this.cfw.m37816default(s);
    }

    private void visitSpecialCall(Node node, int i, int i2, Node node2) throws RuntimeException {
        String str;
        String str2;
        this.cfw.m37833throws(this.contextLocal);
        if (i == 30) {
            generateExpression(node2, node);
        } else {
            generateFunctionAndThisObj(node2, node);
        }
        generateCallArgArray(node, node2.getNext(), false);
        if (i == 30) {
            this.cfw.m37833throws(this.variableObjectLocal);
            this.cfw.m37833throws(this.thisObjLocal);
            this.cfw.l(i2);
            str = "newObjectSpecial";
            str2 = "(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;";
        } else {
            this.cfw.m37833throws(this.variableObjectLocal);
            this.cfw.m37833throws(this.thisObjLocal);
            this.cfw.l(i2);
            String sourceName = this.scriptOrFn.getSourceName();
            Cfor cfor = this.cfw;
            if (sourceName == null) {
                sourceName = "";
            }
            cfor.n(sourceName);
            this.cfw.l(this.itsLineNumber);
            str = "callSpecial";
            str2 = "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;I)Ljava/lang/Object;";
        }
        addOptRuntimeInvoke(str, str2);
    }

    private void visitStandardCall(Node node, Node node2) throws RuntimeException {
        String str;
        String str2;
        if (node.getType() != 38) {
            throw Codegen.badTree();
        }
        Node next = node2.getNext();
        int type = node2.getType();
        if (next == null) {
            if (type == 39) {
                this.cfw.n(node2.getString());
                str = "callName0";
                str2 = "(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            } else if (type == 33) {
                Node firstChild = node2.getFirstChild();
                generateExpression(firstChild, node);
                this.cfw.n(firstChild.getNext().getString());
                str = "callProp0";
                str2 = "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            } else {
                if (type == 34) {
                    throw Kit.codeBug();
                }
                generateFunctionAndThisObj(node2, node);
                str = "call0";
                str2 = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            }
        } else if (type == 39) {
            String string = node2.getString();
            generateCallArgArray(node, next, false);
            this.cfw.n(string);
            str = "callName";
            str2 = "([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
        } else {
            int i = 0;
            for (Node next2 = next; next2 != null; next2 = next2.getNext()) {
                i++;
            }
            generateFunctionAndThisObj(node2, node);
            if (i == 1) {
                generateExpression(next, node);
                str = "call1";
                str2 = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            } else if (i == 2) {
                generateExpression(next, node);
                generateExpression(next.getNext(), node);
                str = "call2";
                str2 = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            } else {
                generateCallArgArray(node, next, false);
                str = "callN";
                str2 = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
            }
        }
        this.cfw.m37833throws(this.contextLocal);
        this.cfw.m37833throws(this.variableObjectLocal);
        addOptRuntimeInvoke(str, str2);
    }

    private void visitStandardNew(Node node, Node node2) throws RuntimeException {
        if (node.getType() != 30) {
            throw Codegen.badTree();
        }
        Node next = node2.getNext();
        generateExpression(node2, node);
        this.cfw.m37833throws(this.contextLocal);
        this.cfw.m37833throws(this.variableObjectLocal);
        generateCallArgArray(node, next, false);
        addScriptRuntimeInvoke("newObject", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
    }

    private void visitStrictSetName(Node node, Node node2) throws RuntimeException {
        String string = node.getFirstChild().getString();
        while (node2 != null) {
            generateExpression(node2, node);
            node2 = node2.getNext();
        }
        this.cfw.m37833throws(this.contextLocal);
        this.cfw.m37833throws(this.variableObjectLocal);
        this.cfw.n(string);
        addScriptRuntimeInvoke("strictSetName", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;");
    }

    private void visitSwitch(Jump jump, Node node) throws RuntimeException {
        generateExpression(node, jump);
        short newWordLocal = getNewWordLocal();
        this.cfw.m37816default(newWordLocal);
        for (Jump jump2 = (Jump) node.getNext(); jump2 != null; jump2 = (Jump) jump2.getNext()) {
            if (jump2.getType() != 116) {
                throw Codegen.badTree();
            }
            generateExpression(jump2.getFirstChild(), jump2);
            this.cfw.m37833throws(newWordLocal);
            addScriptRuntimeInvoke("shallowEq", "(Ljava/lang/Object;Ljava/lang/Object;)Z");
            addGoto(jump2.target, 154);
        }
        releaseWordLocal(newWordLocal);
    }

    private void visitTryCatchFinally(Jump jump, Node node) throws RuntimeException {
        int i;
        int i2;
        short newWordLocal = getNewWordLocal();
        this.cfw.m37833throws(this.variableObjectLocal);
        this.cfw.m37816default(newWordLocal);
        int iM37820import = this.cfw.m37820import();
        this.cfw.P(iM37820import, (short) 0);
        Node node2 = jump.target;
        Node node3 = jump.getFinally();
        int[] iArr = new int[5];
        this.exceptionManager.pushExceptionInfo(jump);
        if (node2 != null) {
            iArr[0] = this.cfw.m37820import();
            iArr[1] = this.cfw.m37820import();
            iArr[2] = this.cfw.m37820import();
            Context currentContext = Context.getCurrentContext();
            if (currentContext != null && currentContext.hasFeature(13)) {
                iArr[3] = this.cfw.m37820import();
            }
        }
        if (node3 != null) {
            iArr[4] = this.cfw.m37820import();
        }
        this.exceptionManager.setHandlers(iArr, iM37820import);
        if (this.isGenerator && node3 != null) {
            FinallyReturnPoint finallyReturnPoint = new FinallyReturnPoint();
            if (this.finallys == null) {
                this.finallys = new HashMap();
            }
            this.finallys.put(node3, finallyReturnPoint);
            this.finallys.put(node3.getNext(), finallyReturnPoint);
        }
        for (Node next = node; next != null; next = next.getNext()) {
            if (next == node2) {
                int targetLabel = getTargetLabel(node2);
                this.exceptionManager.removeHandler(0, targetLabel);
                this.exceptionManager.removeHandler(1, targetLabel);
                this.exceptionManager.removeHandler(2, targetLabel);
                this.exceptionManager.removeHandler(3, targetLabel);
            }
            generateStatement(next);
        }
        int iM37820import2 = this.cfw.m37820import();
        this.cfw.m37827public(167, iM37820import2);
        int localBlockRegister = getLocalBlockRegister(jump);
        if (node2 != null) {
            int iLabelId = node2.labelId();
            i = localBlockRegister;
            i2 = iM37820import2;
            generateCatchBlock(0, newWordLocal, iLabelId, localBlockRegister, iArr[0]);
            generateCatchBlock(1, newWordLocal, iLabelId, localBlockRegister, iArr[1]);
            generateCatchBlock(2, newWordLocal, iLabelId, localBlockRegister, iArr[2]);
            Context currentContext2 = Context.getCurrentContext();
            if (currentContext2 != null && currentContext2.hasFeature(13)) {
                generateCatchBlock(3, newWordLocal, iLabelId, i, iArr[3]);
            }
        } else {
            i = localBlockRegister;
            i2 = iM37820import2;
        }
        if (node3 != null) {
            int iM37820import3 = this.cfw.m37820import();
            int iM37820import4 = this.cfw.m37820import();
            this.cfw.N(iM37820import3);
            if (!this.isGenerator) {
                this.cfw.O(iArr[4]);
            }
            int i3 = i;
            this.cfw.m37816default(i3);
            this.cfw.m37833throws(newWordLocal);
            this.cfw.m37816default(this.variableObjectLocal);
            int iLabelId2 = node3.labelId();
            if (this.isGenerator) {
                addGotoWithReturn(node3);
            } else {
                inlineFinally(node3, iArr[4], iM37820import4);
            }
            this.cfw.m37833throws(i3);
            if (this.isGenerator) {
                this.cfw.m37829static(192, "java/lang/Throwable");
            }
            this.cfw.m37823native(191);
            this.cfw.O(iM37820import4);
            if (this.isGenerator) {
                this.cfw.m37824package(iM37820import, iLabelId2, iM37820import3, null);
            }
        }
        releaseWordLocal(newWordLocal);
        this.cfw.O(i2);
        if (this.isGenerator) {
            return;
        }
        this.exceptionManager.popExceptionInfo();
    }

    private void visitTypeofname(Node node) throws RuntimeException {
        int indexForNameNode;
        if (!this.hasVarsInRegs || (indexForNameNode = this.fnCurrent.fnode.getIndexForNameNode(node)) < 0) {
            this.cfw.m37833throws(this.variableObjectLocal);
            this.cfw.n(node.getString());
            addScriptRuntimeInvoke("typeofName", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;");
            return;
        }
        if (this.fnCurrent.isNumberVar(indexForNameNode)) {
            this.cfw.n("number");
            return;
        }
        if (!varIsDirectCallParameter(indexForNameNode)) {
            this.cfw.m37833throws(this.varRegisters[indexForNameNode]);
            addScriptRuntimeInvoke("typeof", "(Ljava/lang/Object;)Ljava/lang/String;");
            return;
        }
        short s = this.varRegisters[indexForNameNode];
        this.cfw.m37833throws(s);
        this.cfw.m37831switch(178, "java/lang/Void", "TYPE", "Ljava/lang/Class;");
        int iM37820import = this.cfw.m37820import();
        this.cfw.m37827public(165, iM37820import);
        short sK = this.cfw.K();
        this.cfw.m37833throws(s);
        addScriptRuntimeInvoke("typeof", "(Ljava/lang/Object;)Ljava/lang/String;");
        int iM37820import2 = this.cfw.m37820import();
        this.cfw.m37827public(167, iM37820import2);
        this.cfw.P(iM37820import, sK);
        this.cfw.n("number");
        this.cfw.O(iM37820import2);
    }

    public void generateBodyCode() {
        this.isGenerator = Codegen.isGenerator(this.scriptOrFn);
        initBodyGeneration();
        if (this.isGenerator) {
            String str = "(" + this.codegen.mainClassSignature + "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;";
            this.cfw.d0(this.codegen.getBodyMethodName(this.scriptOrFn) + "_gen", str, (short) 10);
        } else {
            this.cfw.d0(this.codegen.getBodyMethodName(this.scriptOrFn), this.codegen.getBodyMethodSignature(this.scriptOrFn), (short) 10);
        }
        generatePrologue();
        generateStatement(this.fnCurrent != null ? this.scriptOrFn.getLastChild() : this.scriptOrFn);
        generateEpilogue();
        this.cfw.e0((short) (this.localsMax + 1));
        if (this.isGenerator) {
            generateGenerator();
        }
        if (this.literals != null) {
            for (int i = 0; i < this.literals.size(); i++) {
                Node node = this.literals.get(i);
                int type = node.getType();
                if (type == 66) {
                    generateArrayLiteralFactory(node, i + 1);
                } else if (type != 67) {
                    Kit.codeBug(Token.typeToName(type));
                } else {
                    generateObjectLiteralFactory(node, i + 1);
                }
            }
        }
    }

    private short getNewWordLocal() {
        return getNewWordIntern(1);
    }

    private void addInstructionCount(int i) throws RuntimeException {
        this.cfw.m37833throws(this.contextLocal);
        this.cfw.l(i);
        addScriptRuntimeInvoke("addInstructionCount", "(Lorg/mozilla/javascript/Context;I)V");
    }

    private void inlineFinally(Node node) throws RuntimeException {
        int iM37820import = this.cfw.m37820import();
        int iM37820import2 = this.cfw.m37820import();
        this.cfw.O(iM37820import);
        inlineFinally(node, iM37820import, iM37820import2);
        this.cfw.O(iM37820import2);
    }
}
