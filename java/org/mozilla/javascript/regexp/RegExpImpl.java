package org.mozilla.javascript.regexp;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.RegExpProxy;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Undefined;

/* loaded from: classes3.dex */
public class RegExpImpl implements RegExpProxy {
    public String input;
    public SubString lastMatch;
    public SubString lastParen;
    public SubString leftContext;
    public boolean multiline;
    public SubString[] parens;
    public SubString rightContext;

    private static NativeRegExp createRegExp(Context context, Scriptable scriptable, Object[] objArr, int i, boolean z) {
        NativeRegExp nativeRegExp;
        String string;
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        if (objArr.length == 0 || objArr[0] == Undefined.instance) {
            nativeRegExp = new NativeRegExp(topLevelScope, NativeRegExp.compileRE(context, "", "", false));
        } else {
            if (objArr[0] instanceof NativeRegExp) {
                return (NativeRegExp) objArr[0];
            }
            String string2 = ScriptRuntime.toString(objArr[0]);
            if (i < objArr.length) {
                objArr[0] = string2;
                string = ScriptRuntime.toString(objArr[i]);
            } else {
                string = null;
            }
            nativeRegExp = new NativeRegExp(topLevelScope, NativeRegExp.compileRE(context, string2, string, z));
        }
        return nativeRegExp;
    }

    private static void do_replace(GlobData globData, Context context, RegExpImpl regExpImpl) throws RuntimeException {
        int i;
        StringBuilder sb = globData.charBuf;
        String str = globData.repstr;
        int iIndexOf = globData.dollar;
        int i2 = 0;
        if (iIndexOf != -1) {
            int[] iArr = new int[1];
            int i3 = 0;
            do {
                sb.append(str.substring(i3, iIndexOf));
                SubString subStringInterpretDollar = interpretDollar(context, regExpImpl, str, iIndexOf, iArr);
                if (subStringInterpretDollar != null) {
                    int i4 = subStringInterpretDollar.length;
                    if (i4 > 0) {
                        String str2 = subStringInterpretDollar.str;
                        int i5 = subStringInterpretDollar.index;
                        sb.append((CharSequence) str2, i5, i4 + i5);
                    }
                    i3 = iArr[0] + iIndexOf;
                    i = iIndexOf + iArr[0];
                } else {
                    i3 = iIndexOf;
                    i = iIndexOf + 1;
                }
                iIndexOf = str.indexOf(36, i);
            } while (iIndexOf >= 0);
            i2 = i3;
        }
        int length = str.length();
        if (length > i2) {
            sb.append(str.substring(i2, length));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static SubString interpretDollar(Context context, RegExpImpl regExpImpl, String str, int i, int[] iArr) throws RuntimeException {
        int length;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (str.charAt(i) != '$') {
            Kit.codeBug();
        }
        int languageVersion = context.getLanguageVersion();
        if ((languageVersion != 0 && languageVersion <= 140 && i > 0 && str.charAt(i - 1) == '\\') || (i2 = i + 1) >= (length = str.length())) {
            return null;
        }
        char cCharAt = str.charAt(i2);
        if (!NativeRegExp.isDigit(cCharAt)) {
            iArr[0] = 2;
            if (cCharAt == '$') {
                return new SubString("$");
            }
            if (cCharAt == '+') {
                return regExpImpl.lastParen;
            }
            if (cCharAt != '`') {
                if (cCharAt == '&') {
                    return regExpImpl.lastMatch;
                }
                if (cCharAt != '\'') {
                    return null;
                }
                return regExpImpl.rightContext;
            }
            if (languageVersion == 120) {
                SubString subString = regExpImpl.leftContext;
                subString.index = 0;
                subString.length = regExpImpl.lastMatch.index;
            }
            return regExpImpl.leftContext;
        }
        if (languageVersion != 0 && languageVersion <= 140) {
            if (cCharAt != '0') {
                i3 = i;
                i4 = 0;
                while (true) {
                    i3++;
                    if (i3 >= length) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i3);
                    if (!NativeRegExp.isDigit(cCharAt2) || (i6 = (i4 * 10) + (cCharAt2 - '0')) < i4) {
                        break;
                    }
                    i4 = i6;
                }
            } else {
                return null;
            }
        } else {
            SubString[] subStringArr = regExpImpl.parens;
            int length2 = subStringArr == null ? 0 : subStringArr.length;
            int i7 = cCharAt - '0';
            if (i7 > length2) {
                return null;
            }
            int i8 = i + 2;
            if (i8 < length) {
                char cCharAt3 = str.charAt(i8);
                if (!NativeRegExp.isDigit(cCharAt3) || (i5 = (i7 * 10) + (cCharAt3 - '0')) > length2) {
                    i3 = i8;
                    i4 = i7;
                } else {
                    i3 = i8 + 1;
                    i4 = i5;
                }
                if (i4 == 0) {
                    return null;
                }
            }
        }
        iArr[0] = i3 - i;
        return regExpImpl.getParenSubString(i4 - 1);
    }

    private static Object matchOrReplace(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr, RegExpImpl regExpImpl, GlobData globData, NativeRegExp nativeRegExp) throws RuntimeException {
        String str = globData.str;
        boolean z = (nativeRegExp.getFlags() & 1) != 0;
        globData.global = z;
        int[] iArr = {0};
        Object obj = null;
        int i = globData.mode;
        if (i == 3) {
            Object objExecuteRegExp = nativeRegExp.executeRegExp(context, scriptable, regExpImpl, str, iArr, 0);
            if (objExecuteRegExp == null || !objExecuteRegExp.equals(Boolean.TRUE)) {
                return -1;
            }
            return Integer.valueOf(regExpImpl.leftContext.length);
        }
        if (!z) {
            return nativeRegExp.executeRegExp(context, scriptable, regExpImpl, str, iArr, i == 2 ? 0 : 1);
        }
        nativeRegExp.lastIndex = Double.valueOf(0.0d);
        int i2 = 0;
        while (iArr[0] <= str.length()) {
            Object objExecuteRegExp2 = nativeRegExp.executeRegExp(context, scriptable, regExpImpl, str, iArr, 0);
            if (objExecuteRegExp2 != null && objExecuteRegExp2.equals(Boolean.TRUE)) {
                int i3 = globData.mode;
                if (i3 == 1) {
                    match_glob(globData, context, scriptable, i2, regExpImpl);
                } else {
                    if (i3 != 2) {
                        Kit.codeBug();
                    }
                    SubString subString = regExpImpl.lastMatch;
                    int i4 = globData.leftIndex;
                    int i5 = subString.index;
                    globData.leftIndex = i5 + subString.length;
                    replace_glob(globData, context, scriptable, regExpImpl, i4, i5 - i4);
                }
                if (regExpImpl.lastMatch.length == 0) {
                    if (iArr[0] != str.length()) {
                        iArr[0] = iArr[0] + 1;
                    }
                }
                i2++;
                obj = objExecuteRegExp2;
            }
            return objExecuteRegExp2;
        }
        return obj;
    }

    private static void match_glob(GlobData globData, Context context, Scriptable scriptable, int i, RegExpImpl regExpImpl) {
        if (globData.arrayobj == null) {
            globData.arrayobj = context.newArray(scriptable, 0);
        }
        String string = regExpImpl.lastMatch.toString();
        Scriptable scriptable2 = globData.arrayobj;
        scriptable2.put(i, scriptable2, string);
    }

    private static void replace_glob(GlobData globData, Context context, Scriptable scriptable, RegExpImpl regExpImpl, int i, int i2) throws RuntimeException {
        String string;
        int length;
        int i3;
        if (globData.lambda != null) {
            SubString[] subStringArr = regExpImpl.parens;
            int length2 = subStringArr == null ? 0 : subStringArr.length;
            Object[] objArr = new Object[length2 + 3];
            objArr[0] = regExpImpl.lastMatch.toString();
            for (int i4 = 0; i4 < length2; i4++) {
                SubString subString = subStringArr[i4];
                if (subString != null) {
                    objArr[i4 + 1] = subString.toString();
                } else {
                    objArr[i4 + 1] = Undefined.instance;
                }
            }
            objArr[length2 + 1] = Integer.valueOf(regExpImpl.leftContext.length);
            objArr[length2 + 2] = globData.str;
            if (regExpImpl != ScriptRuntime.getRegExpProxy(context)) {
                Kit.codeBug();
            }
            RegExpImpl regExpImpl2 = new RegExpImpl();
            regExpImpl2.multiline = regExpImpl.multiline;
            regExpImpl2.input = regExpImpl.input;
            ScriptRuntime.setRegExpProxy(context, regExpImpl2);
            try {
                Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
                string = ScriptRuntime.toString(globData.lambda.call(context, topLevelScope, topLevelScope, objArr));
                ScriptRuntime.setRegExpProxy(context, regExpImpl);
                length = string.length();
            } catch (Throwable th) {
                ScriptRuntime.setRegExpProxy(context, regExpImpl);
                throw th;
            }
        } else {
            string = null;
            length = globData.repstr.length();
            int iIndexOf = globData.dollar;
            if (iIndexOf >= 0) {
                int[] iArr = new int[1];
                do {
                    SubString subStringInterpretDollar = interpretDollar(context, regExpImpl, globData.repstr, iIndexOf, iArr);
                    if (subStringInterpretDollar != null) {
                        length += subStringInterpretDollar.length - iArr[0];
                        i3 = iIndexOf + iArr[0];
                    } else {
                        i3 = iIndexOf + 1;
                    }
                    iIndexOf = globData.repstr.indexOf(36, i3);
                } while (iIndexOf >= 0);
            }
        }
        int i5 = length + i2 + regExpImpl.rightContext.length;
        StringBuilder sb = globData.charBuf;
        if (sb == null) {
            sb = new StringBuilder(i5);
            globData.charBuf = sb;
        } else {
            sb.ensureCapacity(sb.length() + i5);
        }
        sb.append((CharSequence) regExpImpl.leftContext.str, i, i2 + i);
        if (globData.lambda != null) {
            sb.append(string);
        } else {
            do_replace(globData, context, regExpImpl);
        }
    }

    @Override // org.mozilla.javascript.RegExpProxy
    public Object action(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr, int i) throws RuntimeException {
        String string;
        NativeRegExp nativeRegExpCreateRegExp;
        String string2;
        Function function;
        Object objMatchOrReplace;
        GlobData globData = new GlobData();
        globData.mode = i;
        globData.str = ScriptRuntime.toString(scriptable2);
        if (i == 1) {
            Object objMatchOrReplace2 = matchOrReplace(context, scriptable, scriptable2, objArr, this, globData, createRegExp(context, scriptable, objArr, 1, false));
            Scriptable scriptable3 = globData.arrayobj;
            return scriptable3 == null ? objMatchOrReplace2 : scriptable3;
        }
        if (i != 2) {
            if (i == 3) {
                return matchOrReplace(context, scriptable, scriptable2, objArr, this, globData, createRegExp(context, scriptable, objArr, 1, false));
            }
            throw Kit.codeBug();
        }
        boolean z = (objArr.length > 0 && (objArr[0] instanceof NativeRegExp)) || objArr.length > 2;
        if (z) {
            nativeRegExpCreateRegExp = createRegExp(context, scriptable, objArr, 2, true);
            string = null;
        } else {
            string = ScriptRuntime.toString(objArr.length < 1 ? Undefined.instance : objArr[0]);
            nativeRegExpCreateRegExp = null;
        }
        Object obj = objArr.length < 2 ? Undefined.instance : objArr[1];
        if (obj instanceof Function) {
            function = (Function) obj;
            string2 = null;
        } else {
            string2 = ScriptRuntime.toString(obj);
            function = null;
        }
        globData.lambda = function;
        globData.repstr = string2;
        globData.dollar = string2 == null ? -1 : string2.indexOf(36);
        globData.charBuf = null;
        globData.leftIndex = 0;
        if (z) {
            objMatchOrReplace = matchOrReplace(context, scriptable, scriptable2, objArr, this, globData, nativeRegExpCreateRegExp);
        } else {
            String str = globData.str;
            int iIndexOf = str.indexOf(string);
            if (iIndexOf >= 0) {
                int length = string.length();
                this.lastParen = null;
                this.leftContext = new SubString(str, 0, iIndexOf);
                this.lastMatch = new SubString(str, iIndexOf, length);
                this.rightContext = new SubString(str, iIndexOf + length, (str.length() - iIndexOf) - length);
                objMatchOrReplace = Boolean.TRUE;
            } else {
                objMatchOrReplace = Boolean.FALSE;
            }
        }
        if (globData.charBuf == null) {
            if (globData.global || objMatchOrReplace == null || !objMatchOrReplace.equals(Boolean.TRUE)) {
                return globData.str;
            }
            SubString subString = this.leftContext;
            replace_glob(globData, context, scriptable, this, subString.index, subString.length);
        }
        SubString subString2 = this.rightContext;
        StringBuilder sb = globData.charBuf;
        String str2 = subString2.str;
        int i2 = subString2.index;
        sb.append((CharSequence) str2, i2, subString2.length + i2);
        return globData.charBuf.toString();
    }

    @Override // org.mozilla.javascript.RegExpProxy
    public Object compileRegExp(Context context, String str, String str2) {
        return NativeRegExp.compileRE(context, str, str2, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004f, code lost:
    
        r0 = r0 - r20[0];
     */
    @Override // org.mozilla.javascript.RegExpProxy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int find_split(Context context, Scriptable scriptable, String str, String str2, Scriptable scriptable2, int[] iArr, int[] iArr2, boolean[] zArr, String[][] strArr) {
        int i;
        int i2 = iArr[0];
        int length = str.length();
        int languageVersion = context.getLanguageVersion();
        NativeRegExp nativeRegExp = (NativeRegExp) scriptable2;
        while (true) {
            int i3 = iArr[0];
            iArr[0] = i2;
            if (nativeRegExp.executeRegExp(context, scriptable, this, str, iArr, 0) != Boolean.TRUE) {
                iArr[0] = i3;
                iArr2[0] = 1;
                zArr[0] = false;
                return length;
            }
            i = iArr[0];
            iArr[0] = i3;
            zArr[0] = true;
            iArr2[0] = this.lastMatch.length;
            if (iArr2[0] != 0 || i != iArr[0]) {
                break;
            }
            if (i != length) {
                i2 = i + 1;
            } else if (languageVersion == 120) {
                iArr2[0] = 1;
            } else {
                i = -1;
            }
        }
        SubString[] subStringArr = this.parens;
        int length2 = subStringArr == null ? 0 : subStringArr.length;
        strArr[0] = new String[length2];
        for (int i4 = 0; i4 < length2; i4++) {
            strArr[0][i4] = getParenSubString(i4).toString();
        }
        return i;
    }

    public SubString getParenSubString(int i) {
        SubString subString;
        SubString[] subStringArr = this.parens;
        return (subStringArr == null || i >= subStringArr.length || (subString = subStringArr[i]) == null) ? new SubString() : subString;
    }

    @Override // org.mozilla.javascript.RegExpProxy
    public boolean isRegExp(Scriptable scriptable) {
        return scriptable instanceof NativeRegExp;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
    @Override // org.mozilla.javascript.RegExpProxy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object js_split(Context context, Scriptable scriptable, String str, Object[] objArr) {
        RegExpProxy regExpProxy;
        Scriptable scriptable2;
        String str2;
        boolean z;
        Object objSubstring;
        Scriptable scriptableNewArray = context.newArray(scriptable, 0);
        boolean z2 = objArr.length > 1 && objArr[1] != Undefined.instance;
        long uint32 = 0;
        if (z2) {
            uint32 = ScriptRuntime.toUint32(objArr[1]);
            if (uint32 > str.length()) {
                uint32 = str.length() + 1;
            }
        }
        long j = uint32;
        if (objArr.length < 1 || objArr[0] == Undefined.instance) {
            scriptableNewArray.put(0, scriptableNewArray, str);
            return scriptableNewArray;
        }
        int[] iArr = new int[1];
        if (objArr[0] instanceof Scriptable) {
            RegExpProxy regExpProxy2 = ScriptRuntime.getRegExpProxy(context);
            if (regExpProxy2 != null) {
                Scriptable scriptable3 = (Scriptable) objArr[0];
                if (regExpProxy2.isRegExp(scriptable3)) {
                    regExpProxy = regExpProxy2;
                    scriptable2 = scriptable3;
                } else {
                    regExpProxy = regExpProxy2;
                    scriptable2 = null;
                }
            }
        } else {
            regExpProxy = null;
            scriptable2 = null;
        }
        if (scriptable2 == null) {
            String string = ScriptRuntime.toString(objArr[0]);
            iArr[0] = string.length();
            str2 = string;
        } else {
            str2 = null;
        }
        int[] iArr2 = {0};
        boolean[] zArr = {false};
        String[][] strArr = {null};
        int languageVersion = context.getLanguageVersion();
        int i = 0;
        while (true) {
            int i2 = i;
            int i3 = languageVersion;
            String[][] strArr2 = strArr;
            boolean[] zArr2 = zArr;
            int[] iArr3 = iArr2;
            int[] iArr4 = iArr;
            int iFind_split = find_split(context, scriptable, str, str2, languageVersion, regExpProxy, scriptable2, iArr2, iArr, zArr2, strArr2);
            if (iFind_split < 0 || ((z2 && i2 >= j) || iFind_split > str.length())) {
                break;
            }
            if (str.length() == 0) {
                objSubstring = str;
                z = false;
            } else {
                z = false;
                objSubstring = str.substring(iArr3[0], iFind_split);
            }
            scriptableNewArray.put(i2, scriptableNewArray, objSubstring);
            i = i2 + 1;
            if (scriptable2 != null && zArr2[z ? 1 : 0]) {
                int length = strArr2[z ? 1 : 0].length;
                for (int i4 = 0; i4 < length && (!z2 || i < j); i4++) {
                    scriptableNewArray.put(i, scriptableNewArray, strArr2[z ? 1 : 0][i4]);
                    i++;
                }
                zArr2[z ? 1 : 0] = z;
            }
            iArr3[z ? 1 : 0] = iFind_split + iArr4[z ? 1 : 0];
            if (i3 < 130 && i3 != 0 && !z2 && iArr3[z ? 1 : 0] == str.length()) {
                break;
            }
            languageVersion = i3;
            strArr = strArr2;
            zArr = zArr2;
            iArr2 = iArr3;
            iArr = iArr4;
        }
        return scriptableNewArray;
    }

    @Override // org.mozilla.javascript.RegExpProxy
    public Scriptable wrapRegExp(Context context, Scriptable scriptable, Object obj) {
        return new NativeRegExp(scriptable, (RECompiled) obj);
    }

    private static int find_split(Context context, Scriptable scriptable, String str, String str2, int i, RegExpProxy regExpProxy, Scriptable scriptable2, int[] iArr, int[] iArr2, boolean[] zArr, String[][] strArr) {
        int iIndexOf;
        int i2 = iArr[0];
        int length = str.length();
        if (i == 120 && scriptable2 == null && str2.length() == 1 && str2.charAt(0) == ' ') {
            if (i2 == 0) {
                while (i2 < length && Character.isWhitespace(str.charAt(i2))) {
                    i2++;
                }
                iArr[0] = i2;
            }
            if (i2 == length) {
                return -1;
            }
            while (i2 < length && !Character.isWhitespace(str.charAt(i2))) {
                i2++;
            }
            int i3 = i2;
            while (i3 < length && Character.isWhitespace(str.charAt(i3))) {
                i3++;
            }
            iArr2[0] = i3 - i2;
            return i2;
        }
        if (i2 > length) {
            return -1;
        }
        if (scriptable2 != null) {
            return regExpProxy.find_split(context, scriptable, str, str2, scriptable2, iArr, iArr2, zArr, strArr);
        }
        if (i != 0 && i < 130 && length == 0) {
            return -1;
        }
        if (str2.length() != 0) {
            return (iArr[0] < length && (iIndexOf = str.indexOf(str2, iArr[0])) != -1) ? iIndexOf : length;
        }
        if (i != 120) {
            if (i2 == length) {
                return -1;
            }
            return i2 + 1;
        }
        if (i2 != length) {
            return i2 + 1;
        }
        iArr2[0] = 1;
        return i2;
    }
}
