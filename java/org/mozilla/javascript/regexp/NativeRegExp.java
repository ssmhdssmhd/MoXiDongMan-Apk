package org.mozilla.javascript.regexp;

import android.support.v4.wk;
import org.jsoup.nodes.Attributes;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.TopLevel;
import org.mozilla.javascript.Undefined;

/* loaded from: classes3.dex */
public class NativeRegExp extends IdScriptableObject implements Function {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ANCHOR_BOL = -2;
    private static final int INDEX_LEN = 2;
    private static final int Id_compile = 1;
    private static final int Id_exec = 4;
    private static final int Id_global = 3;
    private static final int Id_ignoreCase = 4;
    private static final int Id_lastIndex = 1;
    private static final int Id_multiline = 5;
    private static final int Id_prefix = 6;
    private static final int Id_source = 2;
    private static final int Id_test = 5;
    private static final int Id_toSource = 3;
    private static final int Id_toString = 2;
    public static final int JSREG_FOLD = 2;
    public static final int JSREG_GLOB = 1;
    public static final int JSREG_MULTILINE = 4;
    public static final int MATCH = 1;
    private static final int MAX_INSTANCE_ID = 5;
    private static final int MAX_PROTOTYPE_ID = 6;
    public static final int PREFIX = 2;
    private static final Object REGEXP_TAG = new Object();
    private static final byte REOP_ALNUM = 9;
    private static final byte REOP_ALT = 31;
    private static final byte REOP_ALTPREREQ = 53;
    private static final byte REOP_ALTPREREQ2 = 55;
    private static final byte REOP_ALTPREREQi = 54;
    private static final byte REOP_ASSERT = 41;
    private static final byte REOP_ASSERTNOTTEST = 44;
    private static final byte REOP_ASSERTTEST = 43;
    private static final byte REOP_ASSERT_NOT = 42;
    private static final byte REOP_BACKREF = 13;
    private static final byte REOP_BOL = 2;
    private static final byte REOP_CLASS = 22;
    private static final byte REOP_DIGIT = 7;
    private static final byte REOP_DOT = 6;
    private static final byte REOP_EMPTY = 1;
    private static final byte REOP_END = 57;
    private static final byte REOP_ENDCHILD = 49;
    private static final byte REOP_EOL = 3;
    private static final byte REOP_FLAT = 14;
    private static final byte REOP_FLAT1 = 15;
    private static final byte REOP_FLAT1i = 17;
    private static final byte REOP_FLATi = 16;
    private static final byte REOP_JUMP = 32;
    private static final byte REOP_LPAREN = 29;
    private static final byte REOP_MINIMALOPT = 47;
    private static final byte REOP_MINIMALPLUS = 46;
    private static final byte REOP_MINIMALQUANT = 48;
    private static final byte REOP_MINIMALREPEAT = 52;
    private static final byte REOP_MINIMALSTAR = 45;
    private static final byte REOP_NCLASS = 23;
    private static final byte REOP_NONALNUM = 10;
    private static final byte REOP_NONDIGIT = 8;
    private static final byte REOP_NONSPACE = 12;
    private static final byte REOP_OPT = 28;
    private static final byte REOP_PLUS = 27;
    private static final byte REOP_QUANT = 25;
    private static final byte REOP_REPEAT = 51;
    private static final byte REOP_RPAREN = 30;
    private static final byte REOP_SIMPLE_END = 23;
    private static final byte REOP_SIMPLE_START = 1;
    private static final byte REOP_SPACE = 11;
    private static final byte REOP_STAR = 26;
    private static final byte REOP_UCFLAT1 = 18;
    private static final byte REOP_UCFLAT1i = 19;
    private static final byte REOP_WBDRY = 4;
    private static final byte REOP_WNONBDRY = 5;
    public static final int TEST = 0;
    private static final boolean debug = false;
    private static final long serialVersionUID = 4965263491464903264L;
    public Object lastIndex;
    private int lastIndexAttr;
    private RECompiled re;

    public NativeRegExp(Scriptable scriptable, RECompiled rECompiled) {
        Double dValueOf = Double.valueOf(0.0d);
        this.lastIndex = dValueOf;
        this.lastIndexAttr = 6;
        this.re = rECompiled;
        this.lastIndex = dValueOf;
        ScriptRuntime.setBuiltinProtoAndParent(this, scriptable, TopLevel.Builtins.RegExp);
    }

    private static void addCharacterRangeToCharSet(RECharSet rECharSet, char c, char c2) {
        int i = c / '\b';
        int i2 = c2 / '\b';
        if (c2 >= rECharSet.length || c > c2) {
            throw ScriptRuntime.constructError("SyntaxError", "invalid range in character class");
        }
        char c3 = (char) (c & 7);
        char c4 = (char) (c2 & 7);
        if (i == i2) {
            byte[] bArr = rECharSet.bits;
            bArr[i] = (byte) (((255 >> (7 - (c4 - c3))) << c3) | bArr[i]);
            return;
        }
        byte[] bArr2 = rECharSet.bits;
        bArr2[i] = (byte) ((255 << c3) | bArr2[i]);
        while (true) {
            i++;
            if (i >= i2) {
                byte[] bArr3 = rECharSet.bits;
                bArr3[i2] = (byte) (bArr3[i2] | (255 >> (7 - c4)));
                return;
            }
            rECharSet.bits[i] = -1;
        }
    }

    private static void addCharacterToCharSet(RECharSet rECharSet, char c) {
        int i = c / '\b';
        if (c >= rECharSet.length) {
            throw ScriptRuntime.constructError("SyntaxError", "invalid range in character class");
        }
        byte[] bArr = rECharSet.bits;
        bArr[i] = (byte) ((1 << (c & 7)) | bArr[i]);
    }

    private static int addIndex(byte[] bArr, int i, int i2) {
        if (i2 < 0) {
            throw Kit.codeBug();
        }
        if (i2 > 65535) {
            throw Context.reportRuntimeError("Too complex regexp");
        }
        bArr[i] = (byte) (i2 >> 8);
        bArr[i + 1] = (byte) i2;
        return i + 2;
    }

    private static boolean backrefMatcher(REGlobalData rEGlobalData, int i, String str, int i2) {
        long[] jArr = rEGlobalData.parens;
        if (jArr == null || i >= jArr.length) {
            return false;
        }
        int iParensIndex = rEGlobalData.parensIndex(i);
        if (iParensIndex == -1) {
            return true;
        }
        int iParensLength = rEGlobalData.parensLength(i);
        int i3 = rEGlobalData.cp;
        if (i3 + iParensLength > i2) {
            return false;
        }
        if ((rEGlobalData.regexp.flags & 2) != 0) {
            for (int i4 = 0; i4 < iParensLength; i4++) {
                char cCharAt = str.charAt(iParensIndex + i4);
                char cCharAt2 = str.charAt(rEGlobalData.cp + i4);
                if (cCharAt != cCharAt2 && upcase(cCharAt) != upcase(cCharAt2)) {
                    return false;
                }
            }
        } else if (!str.regionMatches(iParensIndex, str, i3, iParensLength)) {
            return false;
        }
        rEGlobalData.cp += iParensLength;
        return true;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:32:0x005d
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:225)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:195)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:62)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.processFallThroughCases(SwitchRegionMaker.java:105)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.processFallThroughCases(SwitchRegionMaker.java:105)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.processFallThroughCases(SwitchRegionMaker.java:105)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:101)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:101)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:124)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:101)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x001c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0053 A[PHI: r1 r8
      0x0053: PHI (r1v9 char) = (r1v22 char), (r1v23 char), (r1v24 char), (r1v25 char), (r1v26 char), (r1v27 char) binds: [B:52:0x00a0, B:54:0x00a4, B:56:0x00af, B:57:0x00b1, B:61:0x00c1, B:26:0x0050] A[DONT_GENERATE, DONT_INLINE]
      0x0053: PHI (r8v5 int) = (r8v1 int), (r8v1 int), (r8v2 int), (r8v2 int), (r8v4 int), (r8v1 int) binds: [B:52:0x00a0, B:54:0x00a4, B:56:0x00af, B:57:0x00b1, B:61:0x00c1, B:26:0x0050] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x00ce A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v7, types: [int] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [int] */
    /* JADX WARN: Type inference failed for: r14v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean calculateBitmapSize(org.mozilla.javascript.regexp.CompilerState r16, org.mozilla.javascript.regexp.RENode r17, char[] r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.calculateBitmapSize(org.mozilla.javascript.regexp.CompilerState, org.mozilla.javascript.regexp.RENode, char[], int, int):boolean");
    }

    private static boolean classMatcher(REGlobalData rEGlobalData, RECharSet rECharSet, char c) {
        if (!rECharSet.converted) {
            processCharSet(rEGlobalData, rECharSet);
        }
        int i = c >> 3;
        int i2 = rECharSet.length;
        boolean z = true;
        if (i2 != 0 && c < i2 && (rECharSet.bits[i] & (1 << (c & 7))) != 0) {
            z = false;
        }
        return rECharSet.sense ^ z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static RECompiled compileRE(Context context, String str, String str2, boolean z) {
        int i;
        int i2;
        RECompiled rECompiled = new RECompiled(str);
        int length = str.length();
        if (str2 != null) {
            i = 0;
            for (int i3 = 0; i3 < str2.length(); i3++) {
                char cCharAt = str2.charAt(i3);
                if (cCharAt == 'g') {
                    i2 = 1;
                } else if (cCharAt == 'i') {
                    i2 = 2;
                } else if (cCharAt == 'm') {
                    i2 = 4;
                } else {
                    reportError("msg.invalid.re.flag", String.valueOf(cCharAt));
                    i2 = 0;
                }
                if ((i & i2) != 0) {
                    reportError("msg.invalid.re.flag", String.valueOf(cCharAt));
                }
                i |= i2;
            }
        } else {
            i = 0;
        }
        rECompiled.flags = i;
        CompilerState compilerState = new CompilerState(context, rECompiled.source, length, i);
        if (z && length > 0) {
            RENode rENode = new RENode((byte) 14);
            compilerState.result = rENode;
            rENode.chr = compilerState.cpbegin[0];
            rENode.length = length;
            rENode.flatIndex = 0;
            compilerState.progLength += 5;
        } else {
            if (!parseDisjunction(compilerState)) {
                return null;
            }
            if (compilerState.maxBackReference > compilerState.parenCount) {
                compilerState = new CompilerState(context, rECompiled.source, length, i);
                compilerState.backReferenceLimit = compilerState.parenCount;
                if (!parseDisjunction(compilerState)) {
                    return null;
                }
            }
        }
        rECompiled.program = new byte[compilerState.progLength + 1];
        int i4 = compilerState.classCount;
        if (i4 != 0) {
            rECompiled.classList = new RECharSet[i4];
            rECompiled.classCount = i4;
        }
        int iEmitREBytecode = emitREBytecode(compilerState, rECompiled, 0, compilerState.result);
        byte[] bArr = rECompiled.program;
        bArr[iEmitREBytecode] = REOP_END;
        rECompiled.parenCount = compilerState.parenCount;
        byte b = bArr[0];
        if (b == 2) {
            rECompiled.anchorCh = -2;
        } else if (b != 31) {
            switch (b) {
                case 14:
                case 16:
                    rECompiled.anchorCh = rECompiled.source[getIndex(bArr, 1)];
                    break;
                case 15:
                case 17:
                    rECompiled.anchorCh = (char) (bArr[1] & 255);
                    break;
                case 18:
                case 19:
                    rECompiled.anchorCh = (char) getIndex(bArr, 1);
                    break;
            }
        } else {
            RENode rENode2 = compilerState.result;
            if (rENode2.kid.op == 2 && rENode2.kid2.op == 2) {
                rECompiled.anchorCh = -2;
            }
        }
        return rECompiled;
    }

    private static void doFlat(CompilerState compilerState, char c) {
        RENode rENode = new RENode((byte) 14);
        compilerState.result = rENode;
        rENode.chr = c;
        rENode.length = 1;
        rENode.flatIndex = -1;
        compilerState.progLength += 3;
    }

    private static char downcase(char c) {
        if (c < 128) {
            return ('A' > c || c > 'Z') ? c : (char) (c + ' ');
        }
        char lowerCase = Character.toLowerCase(c);
        return lowerCase < 128 ? c : lowerCase;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:200)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:61)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:101)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:124)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private static int emitREBytecode(org.mozilla.javascript.regexp.CompilerState r8, org.mozilla.javascript.regexp.RECompiled r9, int r10, org.mozilla.javascript.regexp.RENode r11) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.emitREBytecode(org.mozilla.javascript.regexp.CompilerState, org.mozilla.javascript.regexp.RECompiled, int, org.mozilla.javascript.regexp.RENode):int");
    }

    private static String escapeRegExp(Object obj) {
        String string = ScriptRuntime.toString(obj);
        StringBuilder sb = null;
        int i = 0;
        for (int iIndexOf = string.indexOf(47); iIndexOf > -1; iIndexOf = string.indexOf(47, iIndexOf + 1)) {
            if (iIndexOf == i || string.charAt(iIndexOf - 1) != '\\') {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append((CharSequence) string, i, iIndexOf);
                sb.append("\\/");
                i = iIndexOf + 1;
            }
        }
        if (sb == null) {
            return string;
        }
        sb.append((CharSequence) string, i, string.length());
        return sb.toString();
    }

    private Object execSub(Context context, Scriptable scriptable, Object[] objArr, int i) {
        String string;
        RegExpImpl impl = getImpl(context);
        if (objArr.length == 0) {
            string = impl.input;
            if (string == null) {
                string = ScriptRuntime.toString(Undefined.instance);
            }
        } else {
            string = ScriptRuntime.toString(objArr[0]);
        }
        String str = string;
        double d = 0.0d;
        double integer = (this.re.flags & 1) != 0 ? ScriptRuntime.toInteger(this.lastIndex) : 0.0d;
        if (integer < 0.0d || str.length() < integer) {
            this.lastIndex = Double.valueOf(0.0d);
            return null;
        }
        int[] iArr = {(int) integer};
        Object objExecuteRegExp = executeRegExp(context, scriptable, impl, str, iArr, i);
        if ((this.re.flags & 1) == 0) {
            return objExecuteRegExp;
        }
        if (objExecuteRegExp != null && objExecuteRegExp != Undefined.instance) {
            d = iArr[0];
        }
        this.lastIndex = Double.valueOf(d);
        return objExecuteRegExp;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0411  */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r0v90, types: [int] */
    /* JADX WARN: Type inference failed for: r1v23, types: [int] */
    /* JADX WARN: Type inference failed for: r1v26, types: [int] */
    /* JADX WARN: Type inference failed for: r1v37, types: [int] */
    /* JADX WARN: Type inference failed for: r1v45, types: [int] */
    /* JADX WARN: Type inference failed for: r1v52, types: [int] */
    /* JADX WARN: Type inference failed for: r1v55, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8, types: [int] */
    /* JADX WARN: Type inference failed for: r2v41, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean executeREBytecode(REGlobalData rEGlobalData, String str, int i) {
        byte b;
        int offset;
        int i2;
        byte b2;
        byte b3;
        int i3;
        boolean z;
        int i4;
        int offset2;
        int i5;
        boolean z2;
        byte b4;
        int i6;
        int i7;
        boolean z3;
        int i8;
        int i9;
        int i10;
        byte b5;
        byte b6;
        byte b7;
        byte b8;
        boolean z4;
        RECompiled rECompiled = rEGlobalData.regexp;
        byte[] bArr = rECompiled.program;
        byte b9 = bArr[0];
        int i11 = rECompiled.anchorCh;
        byte b10 = REOP_END;
        byte b11 = REOP_MINIMALREPEAT;
        int i12 = 1;
        if (i11 >= 0 || !reopIsSimple(b9)) {
            b = b9;
            offset = 1;
        } else {
            while (true) {
                if (rEGlobalData.cp > i) {
                    z4 = false;
                    break;
                }
                int iSimpleMatch = simpleMatch(rEGlobalData, str, b9, bArr, 1, i, true);
                if (iSimpleMatch >= 0) {
                    i12 = iSimpleMatch + 1;
                    b9 = bArr[iSimpleMatch];
                    z4 = true;
                    break;
                }
                rEGlobalData.skipped++;
                rEGlobalData.cp++;
            }
            if (!z4) {
                return false;
            }
            b = b9;
            offset = i12;
        }
        int i13 = 0;
        byte b12 = REOP_END;
        boolean z5 = false;
        while (true) {
            if (!reopIsSimple(b)) {
                if (b == b10) {
                    return true;
                }
                switch (b) {
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        switch (b) {
                            case 25:
                                z = true;
                                int offset3 = getOffset(bArr, offset);
                                int i14 = offset + 2;
                                offset2 = getOffset(bArr, i14) - 1;
                                i5 = offset3;
                                i4 = i14 + 2;
                                z2 = z;
                                pushProgState(rEGlobalData, i5, offset2, rEGlobalData.cp, null, b12, i13);
                                if (!z2) {
                                    pushBackTrackState(rEGlobalData, REOP_REPEAT, i4);
                                    int i15 = i4 + 6;
                                    int i16 = i15 + 1;
                                    b4 = bArr[i15];
                                    offset = i16;
                                    i13 = i4;
                                    b12 = REOP_REPEAT;
                                } else if (i5 != 0) {
                                    int i17 = i4 + 6;
                                    int i18 = i17 + 1;
                                    b4 = bArr[i17];
                                    offset = i18;
                                    i13 = i4;
                                    b12 = REOP_MINIMALREPEAT;
                                } else {
                                    pushBackTrackState(rEGlobalData, REOP_MINIMALREPEAT, i4);
                                    popProgState(rEGlobalData);
                                    int i19 = i4 + 4;
                                    int offset4 = i19 + getOffset(bArr, i19);
                                    offset = offset4 + 1;
                                    b = bArr[offset4];
                                    b10 = REOP_END;
                                    b11 = REOP_MINIMALREPEAT;
                                }
                                b = b4;
                                b10 = REOP_END;
                                b11 = REOP_MINIMALREPEAT;
                            case 26:
                                z = true;
                                i4 = offset;
                                offset2 = -1;
                                i5 = 0;
                                z2 = z;
                                pushProgState(rEGlobalData, i5, offset2, rEGlobalData.cp, null, b12, i13);
                                if (!z2) {
                                }
                                b = b4;
                                b10 = REOP_END;
                                b11 = REOP_MINIMALREPEAT;
                                break;
                            case 27:
                                z = true;
                                i4 = offset;
                                offset2 = -1;
                                i5 = 1;
                                z2 = z;
                                pushProgState(rEGlobalData, i5, offset2, rEGlobalData.cp, null, b12, i13);
                                if (!z2) {
                                }
                                b = b4;
                                b10 = REOP_END;
                                b11 = REOP_MINIMALREPEAT;
                                break;
                            case 28:
                                z = true;
                                i4 = offset;
                                offset2 = 1;
                                i5 = 0;
                                z2 = z;
                                pushProgState(rEGlobalData, i5, offset2, rEGlobalData.cp, null, b12, i13);
                                if (!z2) {
                                }
                                b = b4;
                                b10 = REOP_END;
                                b11 = REOP_MINIMALREPEAT;
                                break;
                            default:
                                switch (b) {
                                    case 45:
                                        z = false;
                                        i4 = offset;
                                        offset2 = -1;
                                        i5 = 0;
                                        z2 = z;
                                        pushProgState(rEGlobalData, i5, offset2, rEGlobalData.cp, null, b12, i13);
                                        if (!z2) {
                                        }
                                        b = b4;
                                        b10 = REOP_END;
                                        b11 = REOP_MINIMALREPEAT;
                                        break;
                                    case 46:
                                        z = false;
                                        i4 = offset;
                                        offset2 = -1;
                                        i5 = 1;
                                        z2 = z;
                                        pushProgState(rEGlobalData, i5, offset2, rEGlobalData.cp, null, b12, i13);
                                        if (!z2) {
                                        }
                                        b = b4;
                                        b10 = REOP_END;
                                        b11 = REOP_MINIMALREPEAT;
                                        break;
                                    case 47:
                                        z = false;
                                        i4 = offset;
                                        offset2 = 1;
                                        i5 = 0;
                                        z2 = z;
                                        pushProgState(rEGlobalData, i5, offset2, rEGlobalData.cp, null, b12, i13);
                                        if (!z2) {
                                        }
                                        b = b4;
                                        b10 = REOP_END;
                                        b11 = REOP_MINIMALREPEAT;
                                        break;
                                    case 48:
                                        z = false;
                                        int offset32 = getOffset(bArr, offset);
                                        int i142 = offset + 2;
                                        offset2 = getOffset(bArr, i142) - 1;
                                        i5 = offset32;
                                        i4 = i142 + 2;
                                        z2 = z;
                                        pushProgState(rEGlobalData, i5, offset2, rEGlobalData.cp, null, b12, i13);
                                        if (!z2) {
                                        }
                                        b = b4;
                                        b10 = REOP_END;
                                        b11 = REOP_MINIMALREPEAT;
                                        break;
                                    default:
                                        throw Kit.codeBug();
                                }
                        }
                    case 29:
                        int index = getIndex(bArr, offset);
                        int i20 = offset + 2;
                        rEGlobalData.setParens(index, rEGlobalData.cp, 0);
                        i2 = i20 + 1;
                        b = bArr[i20];
                        offset = i2;
                        b10 = REOP_END;
                        b11 = REOP_MINIMALREPEAT;
                    case 30:
                        int index2 = getIndex(bArr, offset);
                        int i21 = offset + 2;
                        int iParensIndex = rEGlobalData.parensIndex(index2);
                        rEGlobalData.setParens(index2, iParensIndex, rEGlobalData.cp - iParensIndex);
                        i2 = i21 + 1;
                        b = bArr[i21];
                        offset = i2;
                        b10 = REOP_END;
                        b11 = REOP_MINIMALREPEAT;
                    case 31:
                        int offset5 = offset + getOffset(bArr, offset);
                        int i22 = offset + 2;
                        int i23 = i22 + 1;
                        b2 = bArr[i22];
                        int i24 = rEGlobalData.cp;
                        if (reopIsSimple(b2)) {
                            int iSimpleMatch2 = simpleMatch(rEGlobalData, str, b2, bArr, i23, i, true);
                            if (iSimpleMatch2 < 0) {
                                offset = offset5 + 1;
                                b = bArr[offset5];
                                b10 = REOP_END;
                                b11 = REOP_MINIMALREPEAT;
                            } else {
                                b3 = bArr[iSimpleMatch2];
                                i3 = iSimpleMatch2 + 1;
                                z5 = true;
                            }
                        } else {
                            b3 = b2;
                            i3 = i23;
                        }
                        pushBackTrackState(rEGlobalData, bArr[offset5], offset5 + 1, i24, b12, i13);
                        b = b3;
                        offset = i3;
                        b10 = REOP_END;
                        b11 = REOP_MINIMALREPEAT;
                    case 32:
                        int offset6 = offset + getOffset(bArr, offset);
                        i2 = offset6 + 1;
                        b = bArr[offset6];
                        offset = i2;
                        b10 = REOP_END;
                        b11 = REOP_MINIMALREPEAT;
                    default:
                        switch (b) {
                            case 41:
                                int index3 = offset + getIndex(bArr, offset);
                                int i25 = offset + 2;
                                i3 = i25 + 1;
                                b7 = bArr[i25];
                                if (!reopIsSimple(b7) || simpleMatch(rEGlobalData, str, b7, bArr, i3, i, false) >= 0) {
                                    pushProgState(rEGlobalData, 0, 0, rEGlobalData.cp, rEGlobalData.backTrackStackTop, b12, i13);
                                    pushBackTrackState(rEGlobalData, REOP_ASSERTTEST, index3);
                                    b = b7;
                                    offset = i3;
                                    b10 = REOP_END;
                                    b11 = REOP_MINIMALREPEAT;
                                }
                                offset = i3;
                                z5 = false;
                                break;
                            case 42:
                                int index4 = offset + getIndex(bArr, offset);
                                int i26 = offset + 2;
                                i3 = i26 + 1;
                                b7 = bArr[i26];
                                if (reopIsSimple(b7)) {
                                    b8 = REOP_ASSERTNOTTEST;
                                    int iSimpleMatch3 = simpleMatch(rEGlobalData, str, b7, bArr, i3, i, false);
                                    if (iSimpleMatch3 < 0 || bArr[iSimpleMatch3] != 44) {
                                    }
                                    offset = i3;
                                    z5 = false;
                                    break;
                                } else {
                                    b8 = REOP_ASSERTNOTTEST;
                                }
                                pushProgState(rEGlobalData, 0, 0, rEGlobalData.cp, rEGlobalData.backTrackStackTop, b12, i13);
                                pushBackTrackState(rEGlobalData, b8, index4);
                                b = b7;
                                offset = i3;
                                b10 = REOP_END;
                                b11 = REOP_MINIMALREPEAT;
                                break;
                            case 43:
                            case 44:
                                REProgState rEProgStatePopProgState = popProgState(rEGlobalData);
                                rEGlobalData.cp = rEProgStatePopProgState.index;
                                rEGlobalData.backTrackStackTop = rEProgStatePopProgState.backTrack;
                                int i27 = rEProgStatePopProgState.continuationPc;
                                ?? r0 = rEProgStatePopProgState.continuationOp;
                                if (b == 44) {
                                    z5 = !z5;
                                }
                                b12 = r0;
                                i13 = i27;
                                break;
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                                switch (b) {
                                }
                            case 49:
                                offset = i13;
                                b = b12;
                                z5 = true;
                            default:
                                switch (b) {
                                    case 51:
                                        while (true) {
                                            REProgState rEProgStatePopProgState2 = popProgState(rEGlobalData);
                                            if (!z5) {
                                                if (rEProgStatePopProgState2.min == 0) {
                                                    z5 = true;
                                                }
                                                i6 = rEProgStatePopProgState2.continuationPc;
                                                ?? r1 = rEProgStatePopProgState2.continuationOp;
                                                int i28 = offset + 4;
                                                offset = i28 + getOffset(bArr, i28);
                                                b5 = r1;
                                                break;
                                            } else {
                                                int i29 = rEProgStatePopProgState2.min;
                                                if (i29 == 0 && rEGlobalData.cp == rEProgStatePopProgState2.index) {
                                                    i10 = rEProgStatePopProgState2.continuationPc;
                                                    ?? r12 = rEProgStatePopProgState2.continuationOp;
                                                    int i30 = offset + 4;
                                                    offset = i30 + getOffset(bArr, i30);
                                                    b6 = r12;
                                                    break;
                                                } else {
                                                    int i31 = rEProgStatePopProgState2.max;
                                                    if (i29 != 0) {
                                                        i29--;
                                                    }
                                                    int i32 = i29;
                                                    if (i31 != -1) {
                                                        i31--;
                                                    }
                                                    int i33 = i31;
                                                    if (i33 == 0) {
                                                        int i34 = rEProgStatePopProgState2.continuationPc;
                                                        ?? r13 = rEProgStatePopProgState2.continuationOp;
                                                        int i35 = offset + 4;
                                                        offset = i35 + getOffset(bArr, i35);
                                                        i13 = i34;
                                                        b12 = r13;
                                                        z5 = true;
                                                        break;
                                                    } else {
                                                        int i36 = offset + 6;
                                                        byte b13 = bArr[i36];
                                                        int i37 = rEGlobalData.cp;
                                                        if (reopIsSimple(b13)) {
                                                            i7 = i37;
                                                            int iSimpleMatch4 = simpleMatch(rEGlobalData, str, b13, bArr, i36 + 1, i, true);
                                                            if (iSimpleMatch4 < 0) {
                                                                boolean z6 = i32 == 0;
                                                                int i38 = rEProgStatePopProgState2.continuationPc;
                                                                ?? r2 = rEProgStatePopProgState2.continuationOp;
                                                                int i39 = offset + 4;
                                                                offset = i39 + getOffset(bArr, i39);
                                                                z5 = z6;
                                                                i13 = i38;
                                                                b12 = r2;
                                                                break;
                                                            } else {
                                                                i8 = iSimpleMatch4;
                                                                z3 = true;
                                                            }
                                                        } else {
                                                            i7 = i37;
                                                            z3 = z5;
                                                            i8 = i36;
                                                        }
                                                        pushProgState(rEGlobalData, i32, i33, i7, null, rEProgStatePopProgState2.continuationOp, rEProgStatePopProgState2.continuationPc);
                                                        if (i32 == 0) {
                                                            pushBackTrackState(rEGlobalData, REOP_REPEAT, offset, i7, rEProgStatePopProgState2.continuationOp, rEProgStatePopProgState2.continuationPc);
                                                            int index5 = getIndex(bArr, offset);
                                                            int index6 = getIndex(bArr, offset + 2);
                                                            for (int i40 = 0; i40 < index5; i40++) {
                                                                rEGlobalData.setParens(index6 + i40, -1, 0);
                                                            }
                                                        }
                                                        if (bArr[i8] != 49) {
                                                            i9 = i8 + 1;
                                                            b = bArr[i8];
                                                            z5 = z3;
                                                            b10 = REOP_END;
                                                            b12 = REOP_REPEAT;
                                                        } else {
                                                            z5 = z3;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        int i41 = i9;
                                        i13 = offset;
                                        offset = i41;
                                        break;
                                    case 52:
                                        REProgState rEProgStatePopProgState3 = popProgState(rEGlobalData);
                                        if (!z5) {
                                            int i42 = rEProgStatePopProgState3.max;
                                            if (i42 != -1 && i42 <= 0) {
                                                i6 = rEProgStatePopProgState3.continuationPc;
                                                b5 = rEProgStatePopProgState3.continuationOp;
                                                i13 = i6;
                                                b12 = b5;
                                                break;
                                            } else {
                                                pushProgState(rEGlobalData, rEProgStatePopProgState3.min, i42, rEGlobalData.cp, null, rEProgStatePopProgState3.continuationOp, rEProgStatePopProgState3.continuationPc);
                                                int index7 = getIndex(bArr, offset);
                                                int i43 = offset + 2;
                                                int index8 = getIndex(bArr, i43);
                                                int i44 = i43 + 4;
                                                for (int i45 = 0; i45 < index7; i45++) {
                                                    rEGlobalData.setParens(index8 + i45, -1, 0);
                                                }
                                                i9 = i44 + 1;
                                                b = bArr[i44];
                                            }
                                        } else {
                                            int i46 = rEProgStatePopProgState3.min;
                                            if (i46 == 0 && rEGlobalData.cp == rEProgStatePopProgState3.index) {
                                                i10 = rEProgStatePopProgState3.continuationPc;
                                                b6 = rEProgStatePopProgState3.continuationOp;
                                                i13 = i10;
                                                b12 = b6;
                                                z5 = false;
                                                break;
                                            } else {
                                                int i47 = rEProgStatePopProgState3.max;
                                                if (i46 != 0) {
                                                    i46--;
                                                }
                                                int i48 = i46;
                                                if (i47 != -1) {
                                                    i47--;
                                                }
                                                pushProgState(rEGlobalData, i48, i47, rEGlobalData.cp, null, rEProgStatePopProgState3.continuationOp, rEProgStatePopProgState3.continuationPc);
                                                if (i48 != 0) {
                                                    int index9 = getIndex(bArr, offset);
                                                    int i49 = offset + 2;
                                                    int index10 = getIndex(bArr, i49);
                                                    int i50 = i49 + 4;
                                                    for (int i51 = 0; i51 < index9; i51++) {
                                                        rEGlobalData.setParens(index10 + i51, -1, 0);
                                                    }
                                                    i9 = i50 + 1;
                                                    b = bArr[i50];
                                                } else {
                                                    int i52 = rEProgStatePopProgState3.continuationPc;
                                                    ?? r14 = rEProgStatePopProgState3.continuationOp;
                                                    pushBackTrackState(rEGlobalData, b11, offset);
                                                    popProgState(rEGlobalData);
                                                    int i53 = offset + 4;
                                                    int offset7 = i53 + getOffset(bArr, i53);
                                                    byte b14 = bArr[offset7];
                                                    i13 = i52;
                                                    b12 = r14;
                                                    offset = offset7 + 1;
                                                    b = b14;
                                                    b10 = REOP_END;
                                                }
                                            }
                                        }
                                        b10 = REOP_END;
                                        b12 = REOP_MINIMALREPEAT;
                                        int i412 = i9;
                                        i13 = offset;
                                        offset = i412;
                                        break;
                                    case 53:
                                    case 54:
                                    case 55:
                                        char index11 = (char) getIndex(bArr, offset);
                                        int i54 = offset + 2;
                                        char index12 = (char) getIndex(bArr, i54);
                                        offset = i54 + 2;
                                        int i55 = rEGlobalData.cp;
                                        if (i55 != i) {
                                            char cCharAt = str.charAt(i55);
                                            if (b != 55) {
                                                if (b == 54) {
                                                    cCharAt = upcase(cCharAt);
                                                }
                                                if (cCharAt == index11 || cCharAt == index12) {
                                                    int offset52 = offset + getOffset(bArr, offset);
                                                    int i222 = offset + 2;
                                                    int i232 = i222 + 1;
                                                    b2 = bArr[i222];
                                                    int i242 = rEGlobalData.cp;
                                                    if (reopIsSimple(b2)) {
                                                    }
                                                    pushBackTrackState(rEGlobalData, bArr[offset52], offset52 + 1, i242, b12, i13);
                                                    b = b3;
                                                    offset = i3;
                                                    b10 = REOP_END;
                                                    b11 = REOP_MINIMALREPEAT;
                                                }
                                            } else if (cCharAt == index11 || classMatcher(rEGlobalData, rEGlobalData.regexp.classList[index12], cCharAt)) {
                                                int offset522 = offset + getOffset(bArr, offset);
                                                int i2222 = offset + 2;
                                                int i2322 = i2222 + 1;
                                                b2 = bArr[i2222];
                                                int i2422 = rEGlobalData.cp;
                                                if (reopIsSimple(b2)) {
                                                }
                                                pushBackTrackState(rEGlobalData, bArr[offset522], offset522 + 1, i2422, b12, i13);
                                                b = b3;
                                                offset = i3;
                                                b10 = REOP_END;
                                                b11 = REOP_MINIMALREPEAT;
                                            }
                                        }
                                        z5 = false;
                                        break;
                                    default:
                                        throw Kit.codeBug("invalid bytecode");
                                }
                        }
                        break;
                }
            } else {
                int iSimpleMatch5 = simpleMatch(rEGlobalData, str, b, bArr, offset, i, true);
                boolean z7 = iSimpleMatch5 >= 0;
                if (z7) {
                    offset = iSimpleMatch5;
                }
                z5 = z7;
            }
            if (z5) {
                i2 = offset + 1;
                b = bArr[offset];
                offset = i2;
                b10 = REOP_END;
                b11 = REOP_MINIMALREPEAT;
            } else {
                REBackTrackData rEBackTrackData = rEGlobalData.backTrackStackTop;
                if (rEBackTrackData == null) {
                    return false;
                }
                rEGlobalData.backTrackStackTop = rEBackTrackData.previous;
                rEGlobalData.parens = rEBackTrackData.parens;
                rEGlobalData.cp = rEBackTrackData.cp;
                rEGlobalData.stateStackTop = rEBackTrackData.stateStackTop;
                ?? r15 = rEBackTrackData.continuationOp;
                int i56 = rEBackTrackData.continuationPc;
                offset = rEBackTrackData.pc;
                ?? r02 = rEBackTrackData.op;
                b12 = r15;
                i13 = i56;
                b10 = REOP_END;
                b11 = REOP_MINIMALREPEAT;
                b = r02;
            }
        }
    }

    private static boolean flatNIMatcher(REGlobalData rEGlobalData, int i, int i2, String str, int i3) {
        if (rEGlobalData.cp + i2 > i3) {
            return false;
        }
        char[] cArr = rEGlobalData.regexp.source;
        for (int i4 = 0; i4 < i2; i4++) {
            char c = cArr[i + i4];
            char cCharAt = str.charAt(rEGlobalData.cp + i4);
            if (c != cCharAt && upcase(c) != upcase(cCharAt)) {
                return false;
            }
        }
        rEGlobalData.cp += i2;
        return true;
    }

    private static boolean flatNMatcher(REGlobalData rEGlobalData, int i, int i2, String str, int i3) {
        if (rEGlobalData.cp + i2 > i3) {
            return false;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            if (rEGlobalData.regexp.source[i + i4] != str.charAt(rEGlobalData.cp + i4)) {
                return false;
            }
        }
        rEGlobalData.cp += i2;
        return true;
    }

    private static int getDecimalValue(char c, CompilerState compilerState, int i, String str) {
        int i2 = compilerState.cp;
        char[] cArr = compilerState.cpbegin;
        int i3 = c - 48;
        boolean z = false;
        while (true) {
            int i4 = compilerState.cp;
            if (i4 == compilerState.cpend) {
                break;
            }
            char c2 = cArr[i4];
            if (!isDigit(c2)) {
                break;
            }
            if (!z && (i3 = (i3 * 10) + (c2 - '0')) >= i) {
                i3 = i;
                z = true;
            }
            compilerState.cp++;
        }
        if (z) {
            reportError(str, String.valueOf(cArr, i2, compilerState.cp - i2));
        }
        return i3;
    }

    private static RegExpImpl getImpl(Context context) {
        return (RegExpImpl) ScriptRuntime.getRegExpProxy(context);
    }

    private static int getIndex(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    private static int getOffset(byte[] bArr, int i) {
        return getIndex(bArr, i);
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        NativeRegExp nativeRegExp = new NativeRegExp();
        nativeRegExp.re = compileRE(context, "", null, false);
        nativeRegExp.activatePrototypeMap(6);
        nativeRegExp.setParentScope(scriptable);
        nativeRegExp.setPrototype(ScriptableObject.getObjectPrototype(scriptable));
        NativeRegExpCtor nativeRegExpCtor = new NativeRegExpCtor();
        nativeRegExp.defineProperty("constructor", nativeRegExpCtor, 2);
        ScriptRuntime.setFunctionProtoAndParent(nativeRegExpCtor, scriptable);
        nativeRegExpCtor.setImmunePrototypeProperty(nativeRegExp);
        if (z) {
            nativeRegExp.sealObject();
            nativeRegExpCtor.sealObject();
        }
        ScriptableObject.defineProperty(scriptable, "RegExp", nativeRegExpCtor, 2);
    }

    private static boolean isControlLetter(char c) {
        return ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z');
    }

    public static boolean isDigit(char c) {
        return '0' <= c && c <= '9';
    }

    private static boolean isLineTerm(char c) {
        return ScriptRuntime.isJSLineTerminator(c);
    }

    private static boolean isREWhiteSpace(int i) {
        return ScriptRuntime.isJSWhitespaceOrLineTerminator(i);
    }

    private static boolean isWord(char c) {
        return ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') || isDigit(c) || c == '_';
    }

    private static boolean matchRegExp(REGlobalData rEGlobalData, RECompiled rECompiled, String str, int i, int i2, boolean z) {
        int i3 = rECompiled.parenCount;
        if (i3 != 0) {
            rEGlobalData.parens = new long[i3];
        } else {
            rEGlobalData.parens = null;
        }
        rEGlobalData.backTrackStackTop = null;
        rEGlobalData.stateStackTop = null;
        rEGlobalData.multiline = z || (rECompiled.flags & 4) != 0;
        rEGlobalData.regexp = rECompiled;
        int i4 = rECompiled.anchorCh;
        int i5 = i;
        while (i5 <= i2) {
            if (i4 >= 0) {
                while (i5 != i2) {
                    char cCharAt = str.charAt(i5);
                    if (cCharAt != i4 && ((rEGlobalData.regexp.flags & 2) == 0 || upcase(cCharAt) != upcase((char) i4))) {
                        i5++;
                    }
                }
                return false;
            }
            rEGlobalData.cp = i5;
            rEGlobalData.skipped = i5 - i;
            for (int i6 = 0; i6 < rECompiled.parenCount; i6++) {
                rEGlobalData.parens[i6] = -1;
            }
            boolean zExecuteREBytecode = executeREBytecode(rEGlobalData, str, i2);
            rEGlobalData.backTrackStackTop = null;
            rEGlobalData.stateStackTop = null;
            if (zExecuteREBytecode) {
                return true;
            }
            if (i4 == -2 && !rEGlobalData.multiline) {
                rEGlobalData.skipped = i2;
                return false;
            }
            i5 = rEGlobalData.skipped + i + 1;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0034, code lost:
    
        if (r1 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0036, code lost:
    
        r6.result = new org.mozilla.javascript.regexp.RENode((byte) 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x003e, code lost:
    
        r6.result = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0040, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean parseAlternative(CompilerState compilerState) {
        char[] cArr = compilerState.cpbegin;
        RENode rENode = null;
        RENode rENode2 = null;
        while (true) {
            int i = compilerState.cp;
            if (i == compilerState.cpend || cArr[i] == '|' || (compilerState.parenNesting != 0 && cArr[i] == ')')) {
                break;
            }
            if (!parseTerm(compilerState)) {
                return false;
            }
            if (rENode == null) {
                rENode = compilerState.result;
                rENode2 = rENode;
            } else {
                rENode2.next = compilerState.result;
            }
            while (true) {
                RENode rENode3 = rENode2.next;
                if (rENode3 != null) {
                    rENode2 = rENode3;
                }
            }
        }
    }

    private static boolean parseDisjunction(CompilerState compilerState) {
        int i;
        int i2;
        if (!parseAlternative(compilerState)) {
            return false;
        }
        char[] cArr = compilerState.cpbegin;
        int i3 = compilerState.cp;
        if (i3 != cArr.length && cArr[i3] == '|') {
            compilerState.cp = i3 + 1;
            RENode rENode = new RENode((byte) 31);
            rENode.kid = compilerState.result;
            if (!parseDisjunction(compilerState)) {
                return false;
            }
            RENode rENode2 = compilerState.result;
            rENode.kid2 = rENode2;
            compilerState.result = rENode;
            RENode rENode3 = rENode.kid;
            byte b = rENode3.op;
            if (b == 14 && rENode2.op == 14) {
                rENode.op = (compilerState.flags & 2) == 0 ? REOP_ALTPREREQ : REOP_ALTPREREQi;
                rENode.chr = rENode3.chr;
                rENode.index = rENode2.chr;
                compilerState.progLength += 13;
            } else if (b == 22 && (i2 = rENode3.index) < 256 && rENode2.op == 14 && (compilerState.flags & 2) == 0) {
                rENode.op = REOP_ALTPREREQ2;
                rENode.chr = rENode2.chr;
                rENode.index = i2;
                compilerState.progLength += 13;
            } else if (b == 14 && rENode2.op == 22 && (i = rENode2.index) < 256 && (compilerState.flags & 2) == 0) {
                rENode.op = REOP_ALTPREREQ2;
                rENode.chr = rENode3.chr;
                rENode.index = i;
                compilerState.progLength += 13;
            } else {
                compilerState.progLength += 9;
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x03dc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x015c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x013a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean parseTerm(CompilerState compilerState) {
        boolean z;
        int i;
        char c;
        int i2;
        char c2;
        int i3;
        char c3;
        int iXDigitToInt;
        char c4;
        char[] cArr = compilerState.cpbegin;
        int i4 = compilerState.cp;
        int i5 = i4 + 1;
        compilerState.cp = i5;
        char c5 = cArr[i4];
        int i6 = compilerState.parenCount;
        if (c5 == '$') {
            compilerState.result = new RENode((byte) 3);
            compilerState.progLength++;
            return true;
        }
        if (c5 != '.') {
            if (c5 != '?') {
                if (c5 == '^') {
                    compilerState.result = new RENode((byte) 2);
                    compilerState.progLength++;
                    return true;
                }
                char c6 = '\\';
                if (c5 != '[') {
                    int i7 = 4;
                    if (c5 != '\\') {
                        switch (c5) {
                            case '(':
                                RENode rENode = null;
                                if (i5 + 1 < compilerState.cpend && cArr[i5] == '?' && ((c4 = cArr[i5 + 1]) == '=' || c4 == '!' || c4 == ':')) {
                                    compilerState.cp = i5 + 2;
                                    if (c4 == '=') {
                                        rENode = new RENode(REOP_ASSERT);
                                        compilerState.progLength += 4;
                                    } else if (c4 == '!') {
                                        rENode = new RENode((byte) 42);
                                        compilerState.progLength += 4;
                                    }
                                } else {
                                    rENode = new RENode((byte) 29);
                                    compilerState.progLength += 6;
                                    int i8 = compilerState.parenCount;
                                    compilerState.parenCount = i8 + 1;
                                    rENode.parenIndex = i8;
                                }
                                compilerState.parenNesting++;
                                if (!parseDisjunction(compilerState)) {
                                    return false;
                                }
                                int i9 = compilerState.cp;
                                if (i9 != compilerState.cpend && cArr[i9] == ')') {
                                    compilerState.cp = i9 + 1;
                                    compilerState.parenNesting--;
                                    if (rENode != null) {
                                        rENode.kid = compilerState.result;
                                        compilerState.result = rENode;
                                        break;
                                    }
                                } else {
                                    reportError("msg.unterm.paren", "");
                                    return false;
                                }
                                break;
                            case ')':
                                reportError("msg.re.unmatched.right.paren", "");
                                return false;
                            case '*':
                            case '+':
                                break;
                            default:
                                RENode rENode2 = new RENode((byte) 14);
                                compilerState.result = rENode2;
                                rENode2.chr = c5;
                                rENode2.length = 1;
                                rENode2.flatIndex = compilerState.cp - 1;
                                compilerState.progLength += 3;
                                break;
                        }
                    } else {
                        int i10 = compilerState.cpend;
                        if (i5 >= i10) {
                            reportError("msg.trail.backslash", "");
                            return false;
                        }
                        int i11 = i5 + 1;
                        compilerState.cp = i11;
                        char c7 = cArr[i5];
                        if (c7 == 'B') {
                            compilerState.result = new RENode((byte) 5);
                            compilerState.progLength++;
                            return true;
                        }
                        if (c7 == 'D') {
                            compilerState.result = new RENode((byte) 8);
                            compilerState.progLength++;
                        } else if (c7 == 'S') {
                            compilerState.result = new RENode((byte) 12);
                            compilerState.progLength++;
                        } else if (c7 == 'W') {
                            compilerState.result = new RENode((byte) 10);
                            compilerState.progLength++;
                        } else if (c7 == 'f') {
                            doFlat(compilerState, '\f');
                        } else if (c7 != 'n') {
                            switch (c7) {
                                case '0':
                                    reportWarning(compilerState.cx, "msg.bad.backref", "");
                                    int i12 = 0;
                                    while (i12 < 32 && (i = compilerState.cp) < compilerState.cpend && (c = cArr[i]) >= '0' && c <= '7') {
                                        compilerState.cp = i + 1;
                                        i12 = (i12 * 8) + (c - '0');
                                    }
                                    doFlat(compilerState, (char) i12);
                                    break;
                                case '1':
                                case '2':
                                case '3':
                                case '4':
                                case '5':
                                case '6':
                                case '7':
                                case '8':
                                case '9':
                                    int i13 = i11 - 1;
                                    int decimalValue = getDecimalValue(c7, compilerState, 65535, "msg.overlarge.backref");
                                    if (decimalValue > compilerState.backReferenceLimit) {
                                        reportWarning(compilerState.cx, "msg.bad.backref", "");
                                    }
                                    if (decimalValue <= compilerState.backReferenceLimit) {
                                        RENode rENode3 = new RENode((byte) 13);
                                        compilerState.result = rENode3;
                                        rENode3.parenIndex = decimalValue - 1;
                                        compilerState.progLength += 3;
                                        if (compilerState.maxBackReference < decimalValue) {
                                            compilerState.maxBackReference = decimalValue;
                                            break;
                                        }
                                    } else {
                                        compilerState.cp = i13;
                                        if (c7 < '8') {
                                            compilerState.cp = i13 + 1;
                                            int i14 = c7 - '0';
                                            while (i14 < 32 && (i2 = compilerState.cp) < compilerState.cpend && (c2 = cArr[i2]) >= '0' && c2 <= '7') {
                                                compilerState.cp = i2 + 1;
                                                i14 = (i14 * 8) + (c2 - '0');
                                            }
                                            doFlat(compilerState, (char) i14);
                                            break;
                                        } else {
                                            doFlat(compilerState, '\\');
                                            break;
                                        }
                                    }
                                    break;
                                default:
                                    switch (c7) {
                                        case 'b':
                                            compilerState.result = new RENode((byte) 4);
                                            compilerState.progLength++;
                                            return true;
                                        case 'c':
                                            if (i11 >= i10 || !isControlLetter(cArr[i11])) {
                                                compilerState.cp--;
                                            } else {
                                                int i15 = compilerState.cp;
                                                compilerState.cp = i15 + 1;
                                                c6 = (char) (cArr[i15] & 31);
                                            }
                                            doFlat(compilerState, c6);
                                            break;
                                        case 'd':
                                            compilerState.result = new RENode((byte) 7);
                                            compilerState.progLength++;
                                            break;
                                        default:
                                            switch (c7) {
                                                case 'r':
                                                    doFlat(compilerState, wk.f7547for);
                                                    break;
                                                case 's':
                                                    compilerState.result = new RENode((byte) 11);
                                                    compilerState.progLength++;
                                                    break;
                                                case 't':
                                                    doFlat(compilerState, '\t');
                                                    break;
                                                case 'u':
                                                    i3 = 0;
                                                    c3 = 0;
                                                    while (true) {
                                                        if (i3 < i7) {
                                                            int i16 = compilerState.cp;
                                                            if (i16 < compilerState.cpend) {
                                                                compilerState.cp = i16 + 1;
                                                                iXDigitToInt = Kit.xDigitToInt(cArr[i16], c3);
                                                                if (iXDigitToInt < 0) {
                                                                    int i17 = compilerState.cp - (i3 + 2);
                                                                    compilerState.cp = i17;
                                                                    compilerState.cp = i17 + 1;
                                                                    c3 = cArr[i17];
                                                                } else {
                                                                    i3++;
                                                                    c3 = iXDigitToInt;
                                                                }
                                                            }
                                                        }
                                                    }
                                                    doFlat(compilerState, c3);
                                                    break;
                                                case 'v':
                                                    doFlat(compilerState, (char) 11);
                                                    break;
                                                case 'w':
                                                    compilerState.result = new RENode((byte) 9);
                                                    compilerState.progLength++;
                                                    break;
                                                case 'x':
                                                    i7 = 2;
                                                    i3 = 0;
                                                    c3 = 0;
                                                    while (true) {
                                                        if (i3 < i7) {
                                                        }
                                                        i3++;
                                                        c3 = iXDigitToInt;
                                                    }
                                                    doFlat(compilerState, c3);
                                                    break;
                                                default:
                                                    RENode rENode4 = new RENode((byte) 14);
                                                    compilerState.result = rENode4;
                                                    rENode4.chr = c7;
                                                    rENode4.length = 1;
                                                    rENode4.flatIndex = compilerState.cp - 1;
                                                    compilerState.progLength += 3;
                                                    break;
                                            }
                                    }
                            }
                        } else {
                            doFlat(compilerState, '\n');
                        }
                    }
                } else {
                    RENode rENode5 = new RENode((byte) 22);
                    compilerState.result = rENode5;
                    int i18 = compilerState.cp;
                    rENode5.startIndex = i18;
                    while (true) {
                        int i19 = compilerState.cp;
                        if (i19 == compilerState.cpend) {
                            reportError("msg.unterm.class", "");
                            return false;
                        }
                        if (cArr[i19] == '\\') {
                            compilerState.cp = i19 + 1;
                        } else if (cArr[i19] == ']') {
                            RENode rENode6 = compilerState.result;
                            rENode6.kidlen = i19 - i18;
                            int i20 = compilerState.classCount;
                            compilerState.classCount = i20 + 1;
                            rENode6.index = i20;
                            compilerState.cp = i19 + 1;
                            if (!calculateBitmapSize(compilerState, rENode6, cArr, i18, i19)) {
                                return false;
                            }
                            compilerState.progLength += 3;
                        }
                        compilerState.cp++;
                    }
                }
            }
            reportError("msg.bad.quant", String.valueOf(cArr[i5 - 1]));
            return false;
        }
        compilerState.result = new RENode((byte) 6);
        compilerState.progLength++;
        RENode rENode7 = compilerState.result;
        int i21 = compilerState.cp;
        if (i21 == compilerState.cpend) {
            return true;
        }
        char c8 = cArr[i21];
        int decimalValue2 = -1;
        if (c8 == '*') {
            RENode rENode8 = new RENode((byte) 25);
            compilerState.result = rENode8;
            rENode8.min = 0;
            rENode8.max = -1;
            compilerState.progLength += 8;
        } else if (c8 == '+') {
            RENode rENode9 = new RENode((byte) 25);
            compilerState.result = rENode9;
            rENode9.min = 1;
            rENode9.max = -1;
            compilerState.progLength += 8;
        } else {
            if (c8 != '?') {
                if (c8 != '{') {
                    z = false;
                } else {
                    int i22 = i21 + 1;
                    compilerState.cp = i22;
                    if (i22 < cArr.length) {
                        char c9 = cArr[i22];
                        if (isDigit(c9)) {
                            compilerState.cp++;
                            int decimalValue3 = getDecimalValue(c9, compilerState, 65535, "msg.overlarge.min");
                            int i23 = compilerState.cp;
                            if (i23 >= cArr.length) {
                                z = false;
                                if (!z) {
                                    compilerState.cp = i21;
                                }
                            } else {
                                char c10 = cArr[i23];
                                if (c10 == ',') {
                                    int i24 = i23 + 1;
                                    compilerState.cp = i24;
                                    if (i24 < cArr.length) {
                                        c10 = cArr[i24];
                                        if (isDigit(c10)) {
                                            int i25 = compilerState.cp + 1;
                                            compilerState.cp = i25;
                                            if (i25 < cArr.length) {
                                                decimalValue2 = getDecimalValue(c10, compilerState, 65535, "msg.overlarge.max");
                                                int i26 = compilerState.cp;
                                                c10 = cArr[i26];
                                                if (decimalValue3 > decimalValue2) {
                                                    reportError("msg.max.lt.min", String.valueOf(cArr[i26]));
                                                    return false;
                                                }
                                            }
                                        }
                                    } else {
                                        decimalValue2 = decimalValue3;
                                    }
                                    if (c10 == '}') {
                                        RENode rENode10 = new RENode((byte) 25);
                                        compilerState.result = rENode10;
                                        rENode10.min = decimalValue3;
                                        rENode10.max = decimalValue2;
                                        compilerState.progLength += 12;
                                        z = true;
                                    }
                                    if (!z) {
                                    }
                                }
                            }
                        }
                    }
                }
                if (z) {
                    return true;
                }
                int i27 = compilerState.cp + 1;
                compilerState.cp = i27;
                RENode rENode11 = compilerState.result;
                rENode11.kid = rENode7;
                rENode11.parenIndex = i6;
                rENode11.parenCount = compilerState.parenCount - i6;
                if (i27 >= compilerState.cpend || cArr[i27] != '?') {
                    rENode11.greedy = true;
                } else {
                    compilerState.cp = i27 + 1;
                    rENode11.greedy = false;
                }
                return true;
            }
            RENode rENode12 = new RENode((byte) 25);
            compilerState.result = rENode12;
            rENode12.min = 0;
            rENode12.max = 1;
            compilerState.progLength += 8;
        }
        z = true;
        if (z) {
        }
    }

    private static REProgState popProgState(REGlobalData rEGlobalData) {
        REProgState rEProgState = rEGlobalData.stateStackTop;
        rEGlobalData.stateStackTop = rEProgState.previous;
        return rEProgState;
    }

    private static void processCharSet(REGlobalData rEGlobalData, RECharSet rECharSet) {
        synchronized (rECharSet) {
            if (!rECharSet.converted) {
                processCharSetImpl(rEGlobalData, rECharSet);
                rECharSet.converted = true;
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:39:0x0078
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:225)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:195)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:62)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.processFallThroughCases(SwitchRegionMaker.java:105)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.processFallThroughCases(SwitchRegionMaker.java:105)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.processFallThroughCases(SwitchRegionMaker.java:105)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:101)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:124)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:101)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0053. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:26:0x0056. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:27:0x0059. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0135 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x010a A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void processCharSetImpl(org.mozilla.javascript.regexp.REGlobalData r14, org.mozilla.javascript.regexp.RECharSet r15) {
        /*
            Method dump skipped, instructions count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.processCharSetImpl(org.mozilla.javascript.regexp.REGlobalData, org.mozilla.javascript.regexp.RECharSet):void");
    }

    private static void pushBackTrackState(REGlobalData rEGlobalData, byte b, int i) {
        REProgState rEProgState = rEGlobalData.stateStackTop;
        rEGlobalData.backTrackStackTop = new REBackTrackData(rEGlobalData, b, i, rEGlobalData.cp, rEProgState.continuationOp, rEProgState.continuationPc);
    }

    private static void pushProgState(REGlobalData rEGlobalData, int i, int i2, int i3, REBackTrackData rEBackTrackData, int i4, int i5) {
        rEGlobalData.stateStackTop = new REProgState(rEGlobalData.stateStackTop, i, i2, i3, rEBackTrackData, i4, i5);
    }

    private static NativeRegExp realThis(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable instanceof NativeRegExp) {
            return (NativeRegExp) scriptable;
        }
        throw IdScriptableObject.incompatibleCallError(idFunctionObject);
    }

    private static boolean reopIsSimple(int i) {
        return i >= 1 && i <= 23;
    }

    private static void reportError(String str, String str2) {
        throw ScriptRuntime.constructError("SyntaxError", ScriptRuntime.getMessage1(str, str2));
    }

    private static void reportWarning(Context context, String str, String str2) {
        if (context.hasFeature(11)) {
            Context.reportWarning(ScriptRuntime.getMessage1(str, str2));
        }
    }

    private static void resolveForwardJump(byte[] bArr, int i, int i2) {
        if (i > i2) {
            throw Kit.codeBug();
        }
        addIndex(bArr, i, i2 - i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01be A[PHI: r7
      0x01be: PHI (r7v1 int) = 
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v0 int)
      (r7v5 int)
      (r7v9 int)
      (r7v10 int)
      (r7v12 int)
     binds: [B:3:0x0004, B:96:0x01ab, B:100:0x01bb, B:90:0x019a, B:94:0x01a8, B:66:0x014f, B:62:0x013c, B:58:0x0129, B:54:0x0116, B:50:0x0103, B:46:0x00f0, B:42:0x00dd, B:35:0x00a8, B:22:0x0060, B:17:0x0048, B:10:0x0026] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0197 A[PHI: r5
      0x0197: PHI (r5v11 boolean) = (r5v5 boolean), (r5v5 boolean), (r5v13 boolean) binds: [B:85:0x018b, B:87:0x0195, B:76:0x0174] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int simpleMatch(REGlobalData rEGlobalData, String str, int i, byte[] bArr, int i2, int i3, boolean z) {
        boolean z2;
        int i4;
        char cCharAt;
        char cCharAt2;
        int i5 = rEGlobalData.cp;
        boolean zBackrefMatcher = false;
        switch (i) {
            case 1:
                zBackrefMatcher = true;
                if (!zBackrefMatcher) {
                    rEGlobalData.cp = i5;
                    return -1;
                }
                if (!z) {
                    rEGlobalData.cp = i5;
                }
                return i2;
            case 2:
                if (i5 == 0 || (rEGlobalData.multiline && isLineTerm(str.charAt(i5 - 1)))) {
                }
                if (!zBackrefMatcher) {
                }
                break;
            case 3:
                if (i5 == i3 || (rEGlobalData.multiline && isLineTerm(str.charAt(i5)))) {
                }
                if (!zBackrefMatcher) {
                }
                break;
            case 4:
                z2 = i5 == 0 || !isWord(str.charAt(i5 + (-1)));
                int i6 = rEGlobalData.cp;
                if (i6 >= i3 || !isWord(str.charAt(i6))) {
                    zBackrefMatcher = true;
                }
                zBackrefMatcher ^= z2;
                if (!zBackrefMatcher) {
                }
                break;
            case 5:
                z2 = i5 == 0 || !isWord(str.charAt(i5 + (-1)));
                int i7 = rEGlobalData.cp;
                if (i7 < i3 && isWord(str.charAt(i7))) {
                }
                zBackrefMatcher ^= z2;
                if (!zBackrefMatcher) {
                }
                break;
            case 6:
                if (i5 != i3 && !isLineTerm(str.charAt(i5))) {
                    rEGlobalData.cp++;
                    zBackrefMatcher = true;
                }
                if (!zBackrefMatcher) {
                }
                break;
            case 7:
                if (i5 != i3 && isDigit(str.charAt(i5))) {
                    rEGlobalData.cp++;
                    zBackrefMatcher = true;
                }
                if (!zBackrefMatcher) {
                }
                break;
            case 8:
                if (i5 != i3 && !isDigit(str.charAt(i5))) {
                    rEGlobalData.cp++;
                    zBackrefMatcher = true;
                }
                if (!zBackrefMatcher) {
                }
                break;
            case 9:
                if (i5 != i3 && isWord(str.charAt(i5))) {
                    rEGlobalData.cp++;
                    zBackrefMatcher = true;
                }
                if (!zBackrefMatcher) {
                }
                break;
            case 10:
                if (i5 != i3 && !isWord(str.charAt(i5))) {
                    rEGlobalData.cp++;
                    zBackrefMatcher = true;
                }
                if (!zBackrefMatcher) {
                }
                break;
            case 11:
                if (i5 != i3 && isREWhiteSpace(str.charAt(i5))) {
                    rEGlobalData.cp++;
                    zBackrefMatcher = true;
                }
                if (!zBackrefMatcher) {
                }
                break;
            case 12:
                if (i5 != i3 && !isREWhiteSpace(str.charAt(i5))) {
                    rEGlobalData.cp++;
                    zBackrefMatcher = true;
                }
                if (!zBackrefMatcher) {
                }
                break;
            case 13:
                int index = getIndex(bArr, i2);
                i2 += 2;
                zBackrefMatcher = backrefMatcher(rEGlobalData, index, str, i3);
                if (!zBackrefMatcher) {
                }
                break;
            case 14:
                int index2 = getIndex(bArr, i2);
                int i8 = i2 + 2;
                int index3 = getIndex(bArr, i8);
                i2 = i8 + 2;
                zBackrefMatcher = flatNMatcher(rEGlobalData, index2, index3, str, i3);
                if (!zBackrefMatcher) {
                }
                break;
            case 15:
                i4 = i2 + 1;
                char c = (char) (bArr[i2] & 255);
                if (i5 != i3 && str.charAt(i5) == c) {
                    rEGlobalData.cp++;
                    i2 = i4;
                    zBackrefMatcher = true;
                    if (!zBackrefMatcher) {
                    }
                }
                i2 = i4;
                if (!zBackrefMatcher) {
                }
                break;
            case 16:
                int index4 = getIndex(bArr, i2);
                int i9 = i2 + 2;
                int index5 = getIndex(bArr, i9);
                i2 = i9 + 2;
                zBackrefMatcher = flatNIMatcher(rEGlobalData, index4, index5, str, i3);
                if (!zBackrefMatcher) {
                }
                break;
            case 17:
                i4 = i2 + 1;
                char c2 = (char) (bArr[i2] & 255);
                if (i5 != i3 && (c2 == (cCharAt = str.charAt(i5)) || upcase(c2) == upcase(cCharAt))) {
                    rEGlobalData.cp++;
                    zBackrefMatcher = true;
                }
                i2 = i4;
                if (!zBackrefMatcher) {
                }
                break;
            case 18:
                char index6 = (char) getIndex(bArr, i2);
                i2 += 2;
                int i10 = rEGlobalData.cp;
                if (i10 != i3 && str.charAt(i10) == index6) {
                    rEGlobalData.cp++;
                    zBackrefMatcher = true;
                }
                if (!zBackrefMatcher) {
                }
                break;
            case 19:
                char index7 = (char) getIndex(bArr, i2);
                i2 += 2;
                int i11 = rEGlobalData.cp;
                if (i11 != i3 && (index7 == (cCharAt2 = str.charAt(i11)) || upcase(index7) == upcase(cCharAt2))) {
                    rEGlobalData.cp++;
                    zBackrefMatcher = true;
                }
                if (!zBackrefMatcher) {
                }
                break;
            case 20:
            case 21:
            default:
                throw Kit.codeBug();
            case 22:
            case 23:
                int index8 = getIndex(bArr, i2);
                i2 += 2;
                int i12 = rEGlobalData.cp;
                if (i12 != i3 && classMatcher(rEGlobalData, rEGlobalData.regexp.classList[index8], str.charAt(i12))) {
                    rEGlobalData.cp++;
                    zBackrefMatcher = true;
                }
                if (!zBackrefMatcher) {
                }
                break;
        }
    }

    private static int toASCIIHexDigit(int i) {
        if (i < 48) {
            return -1;
        }
        if (i <= 57) {
            return i - 48;
        }
        int i2 = i | 32;
        if (97 > i2 || i2 > 102) {
            return -1;
        }
        return (i2 - 97) + 10;
    }

    private static char upcase(char c) {
        if (c < 128) {
            return ('a' > c || c > 'z') ? c : (char) (c - ' ');
        }
        char upperCase = Character.toUpperCase(c);
        return upperCase < 128 ? c : upperCase;
    }

    @Override // org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return execSub(context, scriptable, objArr, 1);
    }

    public Scriptable compile(Context context, Scriptable scriptable, Object[] objArr) {
        if (objArr.length <= 0 || !(objArr[0] instanceof NativeRegExp)) {
            this.re = compileRE(context, (objArr.length == 0 || (objArr[0] instanceof Undefined)) ? "" : escapeRegExp(objArr[0]), (objArr.length <= 1 || objArr[1] == Undefined.instance) ? null : ScriptRuntime.toString(objArr[1]), false);
            this.lastIndex = Double.valueOf(0.0d);
            return this;
        }
        if (objArr.length > 1 && objArr[1] != Undefined.instance) {
            throw ScriptRuntime.typeError0("msg.bad.regexp.compile");
        }
        NativeRegExp nativeRegExp = (NativeRegExp) objArr[0];
        this.re = nativeRegExp.re;
        this.lastIndex = nativeRegExp.lastIndex;
        return this;
    }

    @Override // org.mozilla.javascript.Function
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        return (Scriptable) execSub(context, scriptable, objArr, 1);
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(REGEXP_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        switch (iMethodId) {
            case 1:
                return realThis(scriptable2, idFunctionObject).compile(context, scriptable, objArr);
            case 2:
            case 3:
                return realThis(scriptable2, idFunctionObject).toString();
            case 4:
                return realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 1);
            case 5:
                Object objExecSub = realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 0);
                Boolean bool = Boolean.TRUE;
                return bool.equals(objExecSub) ? bool : Boolean.FALSE;
            case 6:
                return realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 2);
            default:
                throw new IllegalArgumentException(String.valueOf(iMethodId));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Boolean] */
    public Object executeRegExp(Context context, Scriptable scriptable, RegExpImpl regExpImpl, String str, int[] iArr, int i) {
        Scriptable scriptableNewArray;
        Scriptable scriptable2;
        NativeRegExp nativeRegExp = this;
        REGlobalData rEGlobalData = new REGlobalData();
        int i2 = iArr[0];
        int length = str.length();
        int i3 = i2 > length ? length : i2;
        SubString subString = null;
        if (!matchRegExp(rEGlobalData, nativeRegExp.re, str, i3, length, regExpImpl.multiline)) {
            if (i != 2) {
                return null;
            }
            return Undefined.instance;
        }
        int i4 = rEGlobalData.cp;
        iArr[0] = i4;
        int i5 = i4 - (rEGlobalData.skipped + i3);
        int i6 = i4 - i5;
        if (i == 0) {
            scriptable2 = null;
            scriptableNewArray = Boolean.TRUE;
        } else {
            scriptableNewArray = context.newArray(scriptable, 0);
            scriptableNewArray.put(0, scriptableNewArray, str.substring(i6, i6 + i5));
            scriptable2 = scriptableNewArray;
        }
        int i7 = nativeRegExp.re.parenCount;
        if (i7 == 0) {
            regExpImpl.parens = null;
            regExpImpl.lastParen = new SubString();
        } else {
            regExpImpl.parens = new SubString[i7];
            int i8 = 0;
            while (i8 < nativeRegExp.re.parenCount) {
                int iParensIndex = rEGlobalData.parensIndex(i8);
                if (iParensIndex != -1) {
                    subString = new SubString(str, iParensIndex, rEGlobalData.parensLength(i8));
                    regExpImpl.parens[i8] = subString;
                    if (i != 0) {
                        scriptable2.put(i8 + 1, scriptable2, subString.toString());
                    }
                } else if (i != 0) {
                    scriptable2.put(i8 + 1, scriptable2, Undefined.instance);
                }
                i8++;
                nativeRegExp = this;
            }
            regExpImpl.lastParen = subString;
        }
        if (i != 0) {
            scriptable2.put("index", scriptable2, Integer.valueOf(rEGlobalData.skipped + i3));
            scriptable2.put("input", scriptable2, str);
        }
        if (regExpImpl.lastMatch == null) {
            regExpImpl.lastMatch = new SubString();
            regExpImpl.leftContext = new SubString();
            regExpImpl.rightContext = new SubString();
        }
        SubString subString2 = regExpImpl.lastMatch;
        subString2.str = str;
        subString2.index = i6;
        subString2.length = i5;
        regExpImpl.leftContext.str = str;
        if (context.getLanguageVersion() == 120) {
            SubString subString3 = regExpImpl.leftContext;
            subString3.index = i3;
            subString3.length = rEGlobalData.skipped;
        } else {
            SubString subString4 = regExpImpl.leftContext;
            subString4.index = 0;
            subString4.length = i3 + rEGlobalData.skipped;
        }
        SubString subString5 = regExpImpl.rightContext;
        subString5.str = str;
        subString5.index = i4;
        subString5.length = length - i4;
        return scriptableNewArray;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0041  */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int findInstanceIdInfo(String str) {
        String str2;
        int i;
        int i2;
        int length = str.length();
        if (length == 6) {
            char cCharAt = str.charAt(0);
            if (cCharAt == 'g') {
                str2 = "global";
                i = 3;
            } else if (cCharAt == 's') {
                str2 = "source";
                i = 2;
            } else {
                str2 = null;
                i = 0;
            }
        } else if (length == 9) {
            char cCharAt2 = str.charAt(0);
            if (cCharAt2 == 'l') {
                str2 = "lastIndex";
                i = 1;
            } else if (cCharAt2 == 'm') {
                str2 = "multiline";
                i = 5;
            }
        } else if (length == 10) {
            str2 = "ignoreCase";
            i = 4;
        }
        int i3 = (str2 == null || str2 == str || str2.equals(str)) ? i : 0;
        if (i3 == 0) {
            return super.findInstanceIdInfo(str);
        }
        if (i3 == 1) {
            i2 = this.lastIndexAttr;
        } else {
            if (i3 != 2 && i3 != 3 && i3 != 4 && i3 != 5) {
                throw new IllegalStateException();
            }
            i2 = 7;
        }
        return IdScriptableObject.instanceIdInfo(i2, i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0041  */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 3;
        if (length == 4) {
            char cCharAt = str.charAt(0);
            if (cCharAt == 'e') {
                str2 = "exec";
                i = 4;
            } else if (cCharAt == 't') {
                i = 5;
                str2 = "test";
            }
        } else if (length == 6) {
            str2 = "prefix";
            i = 6;
        } else if (length == 7) {
            i = 1;
            str2 = "compile";
        } else if (length == 8) {
            char cCharAt2 = str.charAt(3);
            if (cCharAt2 == 'o') {
                str2 = "toSource";
            } else if (cCharAt2 == 't') {
                i = 2;
                str2 = "toString";
            } else {
                str2 = null;
                i = 0;
            }
        }
        if (str2 == null || str2 == str || str2.equals(str)) {
            return i;
        }
        return 0;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "RegExp";
    }

    public int getFlags() {
        return this.re.flags;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? super.getInstanceIdName(i) : "multiline" : "ignoreCase" : "global" : "source" : "lastIndex";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        if (i == 1) {
            return this.lastIndex;
        }
        if (i == 2) {
            return new String(this.re.source);
        }
        if (i == 3) {
            return ScriptRuntime.wrapBoolean((this.re.flags & 1) != 0);
        }
        if (i == 4) {
            return ScriptRuntime.wrapBoolean((this.re.flags & 2) != 0);
        }
        if (i != 5) {
            return super.getInstanceIdValue(i);
        }
        return ScriptRuntime.wrapBoolean((this.re.flags & 4) != 0);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 5;
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public String getTypeOf() {
        return "object";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        String str;
        String str2;
        int i2 = 1;
        switch (i) {
            case 1:
                str = "compile";
                i2 = 2;
                initPrototypeMethod(REGEXP_TAG, i, str, i2);
                return;
            case 2:
                str2 = "toString";
                str = str2;
                i2 = 0;
                initPrototypeMethod(REGEXP_TAG, i, str, i2);
                return;
            case 3:
                str2 = "toSource";
                str = str2;
                i2 = 0;
                initPrototypeMethod(REGEXP_TAG, i, str, i2);
                return;
            case 4:
                str = "exec";
                initPrototypeMethod(REGEXP_TAG, i, str, i2);
                return;
            case 5:
                str = "test";
                initPrototypeMethod(REGEXP_TAG, i, str, i2);
                return;
            case 6:
                str = "prefix";
                initPrototypeMethod(REGEXP_TAG, i, str, i2);
                return;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdAttributes(int i, int i2) {
        if (i != 1) {
            super.setInstanceIdAttributes(i, i2);
        } else {
            this.lastIndexAttr = i2;
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdValue(int i, Object obj) {
        if (i == 1) {
            this.lastIndex = obj;
        } else {
            if (i == 2 || i == 3 || i == 4 || i == 5) {
                return;
            }
            super.setInstanceIdValue(i, obj);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Attributes.InternalPrefix);
        char[] cArr = this.re.source;
        if (cArr.length != 0) {
            sb.append(cArr);
        } else {
            sb.append("(?:)");
        }
        sb.append(Attributes.InternalPrefix);
        if ((this.re.flags & 1) != 0) {
            sb.append('g');
        }
        if ((this.re.flags & 2) != 0) {
            sb.append('i');
        }
        if ((this.re.flags & 4) != 0) {
            sb.append('m');
        }
        return sb.toString();
    }

    private static void pushBackTrackState(REGlobalData rEGlobalData, byte b, int i, int i2, int i3, int i4) {
        rEGlobalData.backTrackStackTop = new REBackTrackData(rEGlobalData, b, i, i2, i3, i4);
    }

    public NativeRegExp() {
        this.lastIndex = Double.valueOf(0.0d);
        this.lastIndexAttr = 6;
    }
}
