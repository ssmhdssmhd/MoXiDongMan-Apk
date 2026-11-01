package org.mozilla.javascript;

/* loaded from: classes3.dex */
final class NativeNumber extends IdScriptableObject {
    private static final int ConstructorId_isFinite = -1;
    private static final int ConstructorId_isInteger = -3;
    private static final int ConstructorId_isNaN = -2;
    private static final int ConstructorId_isSafeInteger = -4;
    private static final int ConstructorId_parseFloat = -5;
    private static final int ConstructorId_parseInt = -6;
    private static final int Id_constructor = 1;
    private static final int Id_toExponential = 7;
    private static final int Id_toFixed = 6;
    private static final int Id_toLocaleString = 3;
    private static final int Id_toPrecision = 8;
    private static final int Id_toSource = 4;
    private static final int Id_toString = 2;
    private static final int Id_valueOf = 5;
    private static final int MAX_PRECISION = 100;
    private static final int MAX_PROTOTYPE_ID = 8;
    public static final double MAX_SAFE_INTEGER = 9.007199254740991E15d;
    private static final double MIN_SAFE_INTEGER = -9.007199254740991E15d;
    private static final Object NUMBER_TAG = "Number";
    private static final long serialVersionUID = 3504516769741512101L;
    private double doubleValue;

    public NativeNumber(double d) {
        this.doubleValue = d;
    }

    private Double doubleVal(Number number) {
        return number instanceof Double ? (Double) number : Double.valueOf(number.doubleValue());
    }

    private Object execConstructorCall(int i, Object[] objArr) {
        switch (i) {
            case -6:
                return NativeGlobal.js_parseInt(objArr);
            case -5:
                return NativeGlobal.js_parseFloat(objArr);
            case -4:
                return (objArr.length == 0 || Undefined.instance == objArr[0]) ? Boolean.FALSE : objArr[0] instanceof Number ? Boolean.valueOf(isSafeInteger((Number) objArr[0])) : Boolean.FALSE;
            case -3:
                return (objArr.length == 0 || Undefined.instance == objArr[0]) ? Boolean.FALSE : objArr[0] instanceof Number ? Boolean.valueOf(isInteger((Number) objArr[0])) : Boolean.FALSE;
            case -2:
                return (objArr.length == 0 || Undefined.instance == objArr[0]) ? Boolean.FALSE : objArr[0] instanceof Number ? isNaN((Number) objArr[0]) : Boolean.FALSE;
            case -1:
                return (objArr.length == 0 || Undefined.instance == objArr[0]) ? Boolean.FALSE : objArr[0] instanceof Number ? isFinite(objArr[0]) : Boolean.FALSE;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    public static void init(Scriptable scriptable, boolean z) {
        new NativeNumber(0.0d).exportAsJSClass(8, scriptable, z);
    }

    private boolean isDoubleInteger(Double d) {
        return (d.isInfinite() || d.isNaN() || Math.floor(d.doubleValue()) != d.doubleValue()) ? false : true;
    }

    private boolean isDoubleNan(Double d) {
        return d.isNaN();
    }

    private boolean isDoubleSafeInteger(Double d) {
        return isDoubleInteger(d) && d.doubleValue() <= 9.007199254740991E15d && d.doubleValue() >= MIN_SAFE_INTEGER;
    }

    public static Object isFinite(Object obj) {
        Double dValueOf = Double.valueOf(ScriptRuntime.toNumber(obj));
        return ScriptRuntime.wrapBoolean((dValueOf.isInfinite() || dValueOf.isNaN()) ? false : true);
    }

    private boolean isInteger(Number number) {
        return ScriptRuntime.toBoolean(Boolean.valueOf(isDoubleInteger(doubleVal(number))));
    }

    private Object isNaN(Number number) {
        return Boolean.valueOf(ScriptRuntime.toBoolean(Boolean.valueOf(isDoubleNan(doubleVal(number)))));
    }

    private boolean isSafeInteger(Number number) {
        return ScriptRuntime.toBoolean(Boolean.valueOf(isDoubleSafeInteger(doubleVal(number))));
    }

    private static String num_to(double d, Object[] objArr, int i, int i2, int i3, int i4) {
        int int32 = 0;
        if (objArr.length != 0) {
            double integer = ScriptRuntime.toInteger(objArr[0]);
            if (integer < i3 || integer > 100.0d) {
                throw ScriptRuntime.constructError("RangeError", ScriptRuntime.getMessage1("msg.bad.precision", ScriptRuntime.toString(objArr[0])));
            }
            int32 = ScriptRuntime.toInt32(integer);
            i = i2;
        }
        StringBuilder sb = new StringBuilder();
        DToA.JS_dtostr(sb, i, int32 + i4, d);
        return sb.toString();
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(NUMBER_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        if (iMethodId == 1) {
            double number = objArr.length >= 1 ? ScriptRuntime.toNumber(objArr[0]) : 0.0d;
            return scriptable2 == null ? new NativeNumber(number) : ScriptRuntime.wrapNumber(number);
        }
        if (iMethodId < 1) {
            return execConstructorCall(iMethodId, objArr);
        }
        if (!(scriptable2 instanceof NativeNumber)) {
            throw IdScriptableObject.incompatibleCallError(idFunctionObject);
        }
        double d = ((NativeNumber) scriptable2).doubleValue;
        int int32 = 10;
        switch (iMethodId) {
            case 2:
            case 3:
                if (objArr.length != 0 && objArr[0] != Undefined.instance) {
                    int32 = ScriptRuntime.toInt32(objArr[0]);
                }
                return ScriptRuntime.numberToString(d, int32);
            case 4:
                return "(new Number(" + ScriptRuntime.toString(d) + "))";
            case 5:
                return ScriptRuntime.wrapNumber(d);
            case 6:
                return num_to(d, objArr, 2, 2, -20, 0);
            case 7:
                return Double.isNaN(d) ? "NaN" : Double.isInfinite(d) ? d >= 0.0d ? "Infinity" : "-Infinity" : num_to(d, objArr, 1, 3, 0, 1);
            case 8:
                return (objArr.length == 0 || objArr[0] == Undefined.instance) ? ScriptRuntime.numberToString(d, 10) : Double.isNaN(d) ? "NaN" : Double.isInfinite(d) ? d >= 0.0d ? "Infinity" : "-Infinity" : num_to(d, objArr, 0, 4, 1, 0);
            default:
                throw new IllegalArgumentException(String.valueOf(iMethodId));
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        idFunctionObject.defineProperty("NaN", ScriptRuntime.NaNobj, 7);
        idFunctionObject.defineProperty("POSITIVE_INFINITY", ScriptRuntime.wrapNumber(Double.POSITIVE_INFINITY), 7);
        idFunctionObject.defineProperty("NEGATIVE_INFINITY", ScriptRuntime.wrapNumber(Double.NEGATIVE_INFINITY), 7);
        idFunctionObject.defineProperty("MAX_VALUE", ScriptRuntime.wrapNumber(Double.MAX_VALUE), 7);
        idFunctionObject.defineProperty("MIN_VALUE", ScriptRuntime.wrapNumber(Double.MIN_VALUE), 7);
        idFunctionObject.defineProperty("MAX_SAFE_INTEGER", ScriptRuntime.wrapNumber(9.007199254740991E15d), 7);
        idFunctionObject.defineProperty("MIN_SAFE_INTEGER", ScriptRuntime.wrapNumber(MIN_SAFE_INTEGER), 7);
        Object obj = NUMBER_TAG;
        addIdFunctionProperty(idFunctionObject, obj, -1, "isFinite", 1);
        addIdFunctionProperty(idFunctionObject, obj, -2, "isNaN", 1);
        addIdFunctionProperty(idFunctionObject, obj, -3, "isInteger", 1);
        addIdFunctionProperty(idFunctionObject, obj, -4, "isSafeInteger", 1);
        addIdFunctionProperty(idFunctionObject, obj, -5, "parseFloat", 1);
        addIdFunctionProperty(idFunctionObject, obj, -6, "parseInt", 1);
        super.fillConstructorProperties(idFunctionObject);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x005a  */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 3;
        if (length == 7) {
            char cCharAt = str.charAt(0);
            if (cCharAt == 't') {
                i = 6;
                str2 = "toFixed";
            } else if (cCharAt == 'v') {
                i = 5;
                str2 = "valueOf";
            }
        } else if (length == 8) {
            char cCharAt2 = str.charAt(3);
            if (cCharAt2 == 'o') {
                i = 4;
                str2 = "toSource";
            } else if (cCharAt2 == 't') {
                i = 2;
                str2 = "toString";
            }
        } else if (length == 11) {
            char cCharAt3 = str.charAt(0);
            if (cCharAt3 == 'c') {
                i = 1;
                str2 = "constructor";
            } else if (cCharAt3 == 't') {
                str2 = "toPrecision";
                i = 8;
            }
        } else if (length == 13) {
            str2 = "toExponential";
            i = 7;
        } else if (length != 14) {
            str2 = null;
            i = 0;
        } else {
            str2 = "toLocaleString";
        }
        if (str2 == null || str2 == str || str2.equals(str)) {
            return i;
        }
        return 0;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Number";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        String str;
        String str2;
        int i2 = 1;
        switch (i) {
            case 1:
                str = "constructor";
                initPrototypeMethod(NUMBER_TAG, i, str, i2);
                return;
            case 2:
                str = "toString";
                initPrototypeMethod(NUMBER_TAG, i, str, i2);
                return;
            case 3:
                str = "toLocaleString";
                initPrototypeMethod(NUMBER_TAG, i, str, i2);
                return;
            case 4:
                str2 = "toSource";
                str = str2;
                i2 = 0;
                initPrototypeMethod(NUMBER_TAG, i, str, i2);
                return;
            case 5:
                str2 = "valueOf";
                str = str2;
                i2 = 0;
                initPrototypeMethod(NUMBER_TAG, i, str, i2);
                return;
            case 6:
                str = "toFixed";
                initPrototypeMethod(NUMBER_TAG, i, str, i2);
                return;
            case 7:
                str = "toExponential";
                initPrototypeMethod(NUMBER_TAG, i, str, i2);
                return;
            case 8:
                str = "toPrecision";
                initPrototypeMethod(NUMBER_TAG, i, str, i2);
                return;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    public String toString() {
        return ScriptRuntime.numberToString(this.doubleValue, 10);
    }
}
