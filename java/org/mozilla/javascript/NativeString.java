package org.mozilla.javascript;

import android.support.v4.ca2;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes3.dex */
final class NativeString extends IdScriptableObject {
    private static final int ConstructorId_charAt = -5;
    private static final int ConstructorId_charCodeAt = -6;
    private static final int ConstructorId_concat = -14;
    private static final int ConstructorId_equalsIgnoreCase = -30;
    private static final int ConstructorId_fromCharCode = -1;
    private static final int ConstructorId_indexOf = -7;
    private static final int ConstructorId_lastIndexOf = -8;
    private static final int ConstructorId_localeCompare = -34;
    private static final int ConstructorId_match = -31;
    private static final int ConstructorId_replace = -33;
    private static final int ConstructorId_search = -32;
    private static final int ConstructorId_slice = -15;
    private static final int ConstructorId_split = -9;
    private static final int ConstructorId_substr = -13;
    private static final int ConstructorId_substring = -10;
    private static final int ConstructorId_toLocaleLowerCase = -35;
    private static final int ConstructorId_toLowerCase = -11;
    private static final int ConstructorId_toUpperCase = -12;
    private static final int Id_anchor = 28;
    private static final int Id_big = 21;
    private static final int Id_blink = 22;
    private static final int Id_bold = 16;
    private static final int Id_charAt = 5;
    private static final int Id_charCodeAt = 6;
    private static final int Id_codePointAt = 45;
    private static final int Id_concat = 14;
    private static final int Id_constructor = 1;
    private static final int Id_endsWith = 42;
    private static final int Id_equals = 29;
    private static final int Id_equalsIgnoreCase = 30;
    private static final int Id_fixed = 18;
    private static final int Id_fontcolor = 26;
    private static final int Id_fontsize = 25;
    private static final int Id_includes = 40;
    private static final int Id_indexOf = 7;
    private static final int Id_italics = 17;
    private static final int Id_lastIndexOf = 8;
    private static final int Id_length = 1;
    private static final int Id_link = 27;
    private static final int Id_localeCompare = 34;
    private static final int Id_match = 31;
    private static final int Id_normalize = 43;
    private static final int Id_padEnd = 47;
    private static final int Id_padStart = 46;
    private static final int Id_repeat = 44;
    private static final int Id_replace = 33;
    private static final int Id_search = 32;
    private static final int Id_slice = 15;
    private static final int Id_small = 20;
    private static final int Id_split = 9;
    private static final int Id_startsWith = 41;
    private static final int Id_strike = 19;
    private static final int Id_sub = 24;
    private static final int Id_substr = 13;
    private static final int Id_substring = 10;
    private static final int Id_sup = 23;
    private static final int Id_toLocaleLowerCase = 35;
    private static final int Id_toLocaleUpperCase = 36;
    private static final int Id_toLowerCase = 11;
    private static final int Id_toSource = 3;
    private static final int Id_toString = 2;
    private static final int Id_toUpperCase = 12;
    private static final int Id_trim = 37;
    private static final int Id_trimLeft = 38;
    private static final int Id_trimRight = 39;
    private static final int Id_valueOf = 4;
    private static final int MAX_INSTANCE_ID = 1;
    private static final int MAX_PROTOTYPE_ID = 48;
    private static final Object STRING_TAG = "String";
    private static final int SymbolId_iterator = 48;
    private static final long serialVersionUID = 920268368584188687L;
    private CharSequence string;

    public NativeString(CharSequence charSequence) {
        this.string = charSequence;
    }

    public static void init(Scriptable scriptable, boolean z) {
        new NativeString("").exportAsJSClass(48, scriptable, z);
    }

    private static String js_concat(String str, Object[] objArr) {
        int length = objArr.length;
        if (length == 0) {
            return str;
        }
        if (length == 1) {
            return str.concat(ScriptRuntime.toString(objArr[0]));
        }
        int length2 = str.length();
        String[] strArr = new String[length];
        for (int i = 0; i != length; i++) {
            String string = ScriptRuntime.toString(objArr[i]);
            strArr[i] = string;
            length2 += string.length();
        }
        StringBuilder sb = new StringBuilder(length2);
        sb.append(str);
        for (int i2 = 0; i2 != length; i2++) {
            sb.append(strArr[i2]);
        }
        return sb.toString();
    }

    private static int js_indexOf(int i, String str, Object[] objArr) {
        int length;
        String string = ScriptRuntime.toString(objArr, 0);
        double integer = ScriptRuntime.toInteger(objArr, 1);
        if (integer > str.length() && i != 41 && i != 42) {
            return -1;
        }
        if (integer < 0.0d) {
            integer = 0.0d;
        } else {
            if (integer > str.length()) {
                length = str.length();
            } else if (i == 42 && (integer != integer || integer > str.length())) {
                length = str.length();
            }
            integer = length;
        }
        if (42 != i) {
            return i == 41 ? str.startsWith(string, (int) integer) ? 0 : -1 : str.indexOf(string, (int) integer);
        }
        if (objArr.length == 0 || objArr.length == 1 || (objArr.length == 2 && objArr[1] == Undefined.instance)) {
            integer = str.length();
        }
        return str.substring(0, (int) integer).endsWith(string) ? 0 : -1;
    }

    private static int js_lastIndexOf(String str, Object[] objArr) {
        String string = ScriptRuntime.toString(objArr, 0);
        double number = ScriptRuntime.toNumber(objArr, 1);
        if (number != number || number > str.length()) {
            number = str.length();
        } else if (number < 0.0d) {
            number = 0.0d;
        }
        return str.lastIndexOf(string, (int) number);
    }

    private static String js_pad(Context context, Scriptable scriptable, IdFunctionObject idFunctionObject, Object[] objArr, Boolean bool) {
        String string;
        String string2 = ScriptRuntime.toString(ScriptRuntimeES6.requireObjectCoercible(context, scriptable, idFunctionObject));
        long length = ScriptRuntime.toLength(objArr, 0);
        if (length <= string2.length()) {
            return string2;
        }
        if (objArr.length < 2 || Undefined.isUndefined(objArr[1])) {
            string = Cclass.f28652do;
        } else {
            string = ScriptRuntime.toString(objArr[1]);
            if (string.length() < 1) {
                return string2;
            }
        }
        int length2 = (int) (length - string2.length());
        StringBuilder sb = new StringBuilder();
        do {
            sb.append(string);
        } while (sb.length() < length2);
        sb.setLength(length2);
        if (!bool.booleanValue()) {
            return sb.insert(0, string2).toString();
        }
        sb.append(string2);
        return sb.toString();
    }

    private static String js_repeat(Context context, Scriptable scriptable, IdFunctionObject idFunctionObject, Object[] objArr) {
        String string = ScriptRuntime.toString(ScriptRuntimeES6.requireObjectCoercible(context, scriptable, idFunctionObject));
        double integer = ScriptRuntime.toInteger(objArr, 0);
        if (integer < 0.0d || integer == Double.POSITIVE_INFINITY) {
            throw ScriptRuntime.rangeError("Invalid count value");
        }
        if (integer == 0.0d || string.length() == 0) {
            return "";
        }
        long length = string.length() * ((long) integer);
        if (integer > 2.147483647E9d || length > 2147483647L) {
            throw ScriptRuntime.rangeError("Invalid size or count value");
        }
        StringBuilder sb = new StringBuilder((int) length);
        sb.append(string);
        int i = 1;
        int i2 = (int) integer;
        while (i <= i2 / 2) {
            sb.append((CharSequence) sb);
            i *= 2;
        }
        if (i < i2) {
            sb.append(sb.substring(0, string.length() * (i2 - i)));
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004d A[PHI: r6
      0x004d: PHI (r6v5 double) = (r6v4 double), (r6v6 double) binds: [B:25:0x004a, B:22:0x0044] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static CharSequence js_slice(CharSequence charSequence, Object[] objArr) {
        double d = 0.0d;
        double integer = objArr.length < 1 ? 0.0d : ScriptRuntime.toInteger(objArr[0]);
        int length = charSequence.length();
        if (integer < 0.0d) {
            double d2 = length;
            Double.isNaN(d2);
            integer += d2;
            if (integer < 0.0d) {
                integer = 0.0d;
            }
        } else {
            double d3 = length;
            if (integer > d3) {
                integer = d3;
            }
        }
        if (objArr.length < 2 || objArr[1] == Undefined.instance) {
            d = length;
        } else {
            double integer2 = ScriptRuntime.toInteger(objArr[1]);
            if (integer2 < 0.0d) {
                double d4 = length;
                Double.isNaN(d4);
                integer2 += d4;
                if (integer2 >= 0.0d) {
                    d = integer2;
                }
                if (d < integer) {
                    d = integer;
                }
            } else {
                d = length;
                if (integer2 <= d) {
                }
                if (d < integer) {
                }
            }
        }
        return charSequence.subSequence((int) integer, (int) d);
    }

    private static CharSequence js_substr(CharSequence charSequence, Object[] objArr) {
        double d;
        if (objArr.length < 1) {
            return charSequence;
        }
        double integer = ScriptRuntime.toInteger(objArr[0]);
        int length = charSequence.length();
        if (integer < 0.0d) {
            double d2 = length;
            Double.isNaN(d2);
            integer += d2;
            if (integer < 0.0d) {
                integer = 0.0d;
            }
        } else {
            double d3 = length;
            if (integer > d3) {
                integer = d3;
            }
        }
        if (objArr.length == 1) {
            d = length;
        } else {
            double integer2 = ScriptRuntime.toInteger(objArr[1]);
            double d4 = (integer2 >= 0.0d ? integer2 : 0.0d) + integer;
            d = length;
            if (d4 <= d) {
                d = d4;
            }
        }
        return charSequence.subSequence((int) integer, (int) d);
    }

    private static CharSequence js_substring(Context context, CharSequence charSequence, Object[] objArr) {
        int length = charSequence.length();
        double integer = ScriptRuntime.toInteger(objArr, 0);
        double d = 0.0d;
        if (integer < 0.0d) {
            integer = 0.0d;
        } else {
            double d2 = length;
            if (integer > d2) {
                integer = d2;
            }
        }
        if (objArr.length <= 1 || objArr[1] == Undefined.instance) {
            d = length;
        } else {
            double integer2 = ScriptRuntime.toInteger(objArr[1]);
            if (integer2 >= 0.0d) {
                d = length;
                if (integer2 <= d) {
                    d = integer2;
                }
            }
            if (d < integer) {
                if (context.getLanguageVersion() != 120) {
                    double d3 = integer;
                    integer = d;
                    d = d3;
                } else {
                    d = integer;
                }
            }
        }
        return charSequence.subSequence((int) integer, (int) d);
    }

    private static NativeString realThis(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable instanceof NativeString) {
            return (NativeString) scriptable;
        }
        throw IdScriptableObject.incompatibleCallError(idFunctionObject);
    }

    private static String tagify(Object obj, String str, String str2, Object[] objArr) {
        String string = ScriptRuntime.toString(obj);
        StringBuilder sb = new StringBuilder();
        sb.append(ca2.f687new);
        sb.append(str);
        if (str2 != null) {
            sb.append(' ');
            sb.append(str2);
            sb.append("=\"");
            sb.append(ScriptRuntime.toString(objArr, 0));
            sb.append(ca2.f674do);
        }
        sb.append(ca2.f702try);
        sb.append(string);
        sb.append("</");
        sb.append(str);
        sb.append(ca2.f702try);
        return sb.toString();
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:200)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:61)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.processFallThroughCases(SwitchRegionMaker.java:105)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:281)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:101)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public java.lang.Object execIdCall(org.mozilla.javascript.IdFunctionObject r17, org.mozilla.javascript.Context r18, org.mozilla.javascript.Scriptable r19, org.mozilla.javascript.Scriptable r20, java.lang.Object[] r21) {
        /*
            Method dump skipped, instructions count: 1068
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeString.execIdCall(org.mozilla.javascript.IdFunctionObject, org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        Object obj = STRING_TAG;
        addIdFunctionProperty(idFunctionObject, obj, -1, "fromCharCode", 1);
        addIdFunctionProperty(idFunctionObject, obj, -5, "charAt", 2);
        addIdFunctionProperty(idFunctionObject, obj, -6, "charCodeAt", 2);
        addIdFunctionProperty(idFunctionObject, obj, -7, "indexOf", 2);
        addIdFunctionProperty(idFunctionObject, obj, -8, "lastIndexOf", 2);
        addIdFunctionProperty(idFunctionObject, obj, -9, "split", 3);
        addIdFunctionProperty(idFunctionObject, obj, -10, "substring", 3);
        addIdFunctionProperty(idFunctionObject, obj, -11, "toLowerCase", 1);
        addIdFunctionProperty(idFunctionObject, obj, -12, "toUpperCase", 1);
        addIdFunctionProperty(idFunctionObject, obj, -13, "substr", 3);
        addIdFunctionProperty(idFunctionObject, obj, -14, "concat", 2);
        addIdFunctionProperty(idFunctionObject, obj, -15, "slice", 3);
        addIdFunctionProperty(idFunctionObject, obj, -30, "equalsIgnoreCase", 2);
        addIdFunctionProperty(idFunctionObject, obj, -31, "match", 2);
        addIdFunctionProperty(idFunctionObject, obj, -32, "search", 2);
        addIdFunctionProperty(idFunctionObject, obj, -33, "replace", 2);
        addIdFunctionProperty(idFunctionObject, obj, -34, "localeCompare", 2);
        addIdFunctionProperty(idFunctionObject, obj, -35, "toLocaleLowerCase", 1);
        super.fillConstructorProperties(idFunctionObject);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        return str.equals("length") ? IdScriptableObject.instanceIdInfo(7, 1) : super.findInstanceIdInfo(str);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(Symbol symbol) {
        return SymbolKey.ITERATOR.equals(symbol) ? 48 : 0;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        return (i < 0 || i >= this.string.length()) ? super.get(i, scriptable) : String.valueOf(this.string.charAt(i));
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "String";
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject
    public Object[] getIds(boolean z, boolean z2) {
        Context currentContext = Context.getCurrentContext();
        if (currentContext == null || currentContext.getLanguageVersion() < 200) {
            return super.getIds(z, z2);
        }
        Object[] ids = super.getIds(z, z2);
        Object[] objArr = new Object[ids.length + this.string.length()];
        int i = 0;
        while (i < this.string.length()) {
            objArr[i] = Integer.valueOf(i);
            i++;
        }
        System.arraycopy(ids, 0, objArr, i, ids.length);
        return objArr;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        return i == 1 ? "length" : super.getInstanceIdName(i);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        return i == 1 ? ScriptRuntime.wrapInt(this.string.length()) : super.getInstanceIdValue(i);
    }

    public int getLength() {
        return this.string.length();
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 1;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        if (i < 0 || i >= this.string.length()) {
            return super.has(i, scriptable);
        }
        return true;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        String str;
        String str2;
        String str3;
        String str4;
        int i2;
        if (i == 48) {
            initPrototypeMethod(STRING_TAG, i, SymbolKey.ITERATOR, "[Symbol.iterator]", 0);
            return;
        }
        switch (i) {
            case 1:
                str = "constructor";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 2:
                str2 = "toString";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 3:
                str2 = "toSource";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 4:
                str2 = "valueOf";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 5:
                str = "charAt";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 6:
                str = "charCodeAt";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 7:
                str = "indexOf";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 8:
                str = "lastIndexOf";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 9:
                str3 = "split";
                str4 = str3;
                i2 = 2;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 10:
                str3 = "substring";
                str4 = str3;
                i2 = 2;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 11:
                str2 = "toLowerCase";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 12:
                str2 = "toUpperCase";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 13:
                str3 = "substr";
                str4 = str3;
                i2 = 2;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 14:
                str = "concat";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 15:
                str3 = "slice";
                str4 = str3;
                i2 = 2;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 16:
                str2 = "bold";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 17:
                str2 = "italics";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 18:
                str2 = "fixed";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 19:
                str2 = "strike";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 20:
                str2 = "small";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 21:
                str2 = "big";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 22:
                str2 = "blink";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 23:
                str2 = "sup";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 24:
                str2 = "sub";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 25:
                str2 = "fontsize";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 26:
                str2 = "fontcolor";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 27:
                str2 = "link";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 28:
                str2 = "anchor";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 29:
                str = "equals";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 30:
                str = "equalsIgnoreCase";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 31:
                str = "match";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 32:
                str = "search";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 33:
                str3 = "replace";
                str4 = str3;
                i2 = 2;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 34:
                str = "localeCompare";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 35:
                str2 = "toLocaleLowerCase";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 36:
                str2 = "toLocaleUpperCase";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 37:
                str2 = "trim";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 38:
                str2 = "trimLeft";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 39:
                str2 = "trimRight";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 40:
                str = "includes";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 41:
                str = "startsWith";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 42:
                str = "endsWith";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 43:
                str2 = "normalize";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 44:
                str = "repeat";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 45:
                str = "codePointAt";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 46:
                str = "padStart";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            case 47:
                str = "padEnd";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(STRING_TAG, i, str4, (String) null, i2);
                return;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        if (i < 0 || i >= this.string.length()) {
            super.put(i, scriptable, obj);
        }
    }

    public CharSequence toCharSequence() {
        return this.string;
    }

    public String toString() {
        CharSequence charSequence = this.string;
        return charSequence instanceof String ? (String) charSequence : charSequence.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:138:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0210 A[ADDED_TO_REGION] */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int findPrototypeId(String str) {
        String str2;
        int i = 8;
        switch (str.length()) {
            case 3:
                char cCharAt = str.charAt(2);
                if (cCharAt == 'b') {
                    if (str.charAt(0) == 's' && str.charAt(1) == 'u') {
                        return 24;
                    }
                } else if (cCharAt == 'g') {
                    if (str.charAt(0) == 'b' && str.charAt(1) == 'i') {
                        return 21;
                    }
                } else if (cCharAt == 'p' && str.charAt(0) == 's' && str.charAt(1) == 'u') {
                    return 23;
                }
                str2 = null;
                i = 0;
                if (str2 != null || str2 == str || str2.equals(str)) {
                    return i;
                }
                return 0;
            case 4:
                char cCharAt2 = str.charAt(0);
                if (cCharAt2 == 'b') {
                    i = 16;
                    str2 = "bold";
                } else if (cCharAt2 == 'l') {
                    i = 27;
                    str2 = "link";
                } else if (cCharAt2 == 't') {
                    i = 37;
                    str2 = "trim";
                } else {
                    str2 = null;
                    i = 0;
                }
                if (str2 != null) {
                }
                return i;
            case 5:
                char cCharAt3 = str.charAt(4);
                if (cCharAt3 == 'd') {
                    i = 18;
                    str2 = "fixed";
                } else if (cCharAt3 == 'e') {
                    i = 15;
                    str2 = "slice";
                } else if (cCharAt3 == 'h') {
                    i = 31;
                    str2 = "match";
                } else if (cCharAt3 == 't') {
                    i = 9;
                    str2 = "split";
                } else if (cCharAt3 == 'k') {
                    i = 22;
                    str2 = "blink";
                } else if (cCharAt3 == 'l') {
                    i = 20;
                    str2 = "small";
                }
                if (str2 != null) {
                }
                return i;
            case 6:
                char cCharAt4 = str.charAt(1);
                if (cCharAt4 == 'a') {
                    i = 47;
                    str2 = "padEnd";
                } else if (cCharAt4 == 'e') {
                    char cCharAt5 = str.charAt(0);
                    if (cCharAt5 == 'r') {
                        i = 44;
                        str2 = "repeat";
                    } else if (cCharAt5 == 's') {
                        i = 32;
                        str2 = "search";
                    }
                } else if (cCharAt4 == 'h') {
                    i = 5;
                    str2 = "charAt";
                } else if (cCharAt4 == 'q') {
                    i = 29;
                    str2 = "equals";
                } else if (cCharAt4 == 'n') {
                    i = 28;
                    str2 = "anchor";
                } else if (cCharAt4 == 'o') {
                    i = 14;
                    str2 = "concat";
                } else if (cCharAt4 == 't') {
                    i = 19;
                    str2 = "strike";
                } else if (cCharAt4 == 'u') {
                    i = 13;
                    str2 = "substr";
                }
                if (str2 != null) {
                }
                return i;
            case 7:
                char cCharAt6 = str.charAt(1);
                if (cCharAt6 == 'a') {
                    str2 = "valueOf";
                    i = 4;
                } else if (cCharAt6 == 'e') {
                    i = 33;
                    str2 = "replace";
                } else if (cCharAt6 == 'n') {
                    i = 7;
                    str2 = "indexOf";
                } else if (cCharAt6 == 't') {
                    i = 17;
                    str2 = "italics";
                }
                if (str2 != null) {
                }
                return i;
            case 8:
                char cCharAt7 = str.charAt(6);
                if (cCharAt7 == 'c') {
                    i = 3;
                    str2 = "toSource";
                } else if (cCharAt7 == 'n') {
                    str2 = "toString";
                    i = 2;
                } else if (cCharAt7 == 'r') {
                    i = 46;
                    str2 = "padStart";
                } else if (cCharAt7 == 't') {
                    i = 42;
                    str2 = "endsWith";
                } else if (cCharAt7 == 'z') {
                    i = 25;
                    str2 = "fontsize";
                } else if (cCharAt7 == 'e') {
                    i = 40;
                    str2 = "includes";
                } else if (cCharAt7 == 'f') {
                    i = 38;
                    str2 = "trimLeft";
                }
                if (str2 != null) {
                }
                return i;
            case 9:
                char cCharAt8 = str.charAt(0);
                if (cCharAt8 == 'f') {
                    i = 26;
                    str2 = "fontcolor";
                } else if (cCharAt8 == 'n') {
                    i = 43;
                    str2 = "normalize";
                } else if (cCharAt8 == 's') {
                    i = 10;
                    str2 = "substring";
                } else if (cCharAt8 == 't') {
                    i = 39;
                    str2 = "trimRight";
                }
                if (str2 != null) {
                }
                return i;
            case 10:
                char cCharAt9 = str.charAt(0);
                if (cCharAt9 == 'c') {
                    str2 = "charCodeAt";
                    i = 6;
                } else if (cCharAt9 == 's') {
                    i = 41;
                    str2 = "startsWith";
                }
                if (str2 != null) {
                }
                return i;
            case 11:
                char cCharAt10 = str.charAt(2);
                if (cCharAt10 == 'L') {
                    i = 11;
                    str2 = "toLowerCase";
                } else if (cCharAt10 == 'U') {
                    i = 12;
                    str2 = "toUpperCase";
                } else if (cCharAt10 == 'd') {
                    i = 45;
                    str2 = "codePointAt";
                } else if (cCharAt10 == 'n') {
                    str2 = "constructor";
                    i = 1;
                } else if (cCharAt10 == 's') {
                    str2 = "lastIndexOf";
                }
                if (str2 != null) {
                }
                return i;
            case 13:
                i = 34;
                str2 = "localeCompare";
                if (str2 != null) {
                }
                return i;
            case 16:
                i = 30;
                str2 = "equalsIgnoreCase";
                if (str2 != null) {
                }
                return i;
            case 17:
                char cCharAt11 = str.charAt(8);
                if (cCharAt11 == 'L') {
                    i = 35;
                    str2 = "toLocaleLowerCase";
                } else if (cCharAt11 == 'U') {
                    i = 36;
                    str2 = "toLocaleUpperCase";
                }
                if (str2 != null) {
                }
                return i;
        }
    }
}
