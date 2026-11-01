package org.mozilla.javascript.typedarrays;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;

/* loaded from: classes3.dex */
public class NativeArrayBuffer extends IdScriptableObject {
    public static final String CLASS_NAME = "ArrayBuffer";
    private static final int ConstructorId_isView = -1;
    private static final byte[] EMPTY_BUF = new byte[0];
    public static final NativeArrayBuffer EMPTY_BUFFER = new NativeArrayBuffer();
    private static final int Id_byteLength = 1;
    private static final int Id_constructor = 1;
    private static final int Id_slice = 2;
    private static final int MAX_INSTANCE_ID = 1;
    private static final int MAX_PROTOTYPE_ID = 2;
    private static final long serialVersionUID = 3110411773054879549L;
    public final byte[] buffer;

    public NativeArrayBuffer() {
        this.buffer = EMPTY_BUF;
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        new NativeArrayBuffer().exportAsJSClass(2, scriptable, z);
    }

    private static boolean isArg(Object[] objArr, int i) {
        return objArr.length > i && !Undefined.instance.equals(objArr[i]);
    }

    private static NativeArrayBuffer realThis(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable instanceof NativeArrayBuffer) {
            return (NativeArrayBuffer) scriptable;
        }
        throw IdScriptableObject.incompatibleCallError(idFunctionObject);
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(CLASS_NAME)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        if (iMethodId == -1) {
            return Boolean.valueOf(isArg(objArr, 0) && (objArr[0] instanceof NativeArrayBufferView));
        }
        if (iMethodId == 1) {
            return new NativeArrayBuffer(isArg(objArr, 0) ? ScriptRuntime.toNumber(objArr[0]) : 0.0d);
        }
        if (iMethodId != 2) {
            throw new IllegalArgumentException(String.valueOf(iMethodId));
        }
        return realThis(scriptable2, idFunctionObject).slice(isArg(objArr, 0) ? ScriptRuntime.toNumber(objArr[0]) : 0.0d, isArg(objArr, 1) ? ScriptRuntime.toNumber(objArr[1]) : r5.buffer.length);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        addIdFunctionProperty(idFunctionObject, CLASS_NAME, -1, "isView", 1);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        return "byteLength".equals(str) ? IdScriptableObject.instanceIdInfo(5, 1) : super.findInstanceIdInfo(str);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(String str) {
        String str2;
        int i;
        int length = str.length();
        if (length == 5) {
            i = 2;
            str2 = "slice";
        } else if (length == 11) {
            i = 1;
            str2 = "constructor";
        } else {
            str2 = null;
            i = 0;
        }
        if (str2 == null || str2 == str || str2.equals(str)) {
            return i;
        }
        return 0;
    }

    public byte[] getBuffer() {
        return this.buffer;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return CLASS_NAME;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        return i == 1 ? "byteLength" : super.getInstanceIdName(i);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        return i == 1 ? ScriptRuntime.wrapInt(this.buffer.length) : super.getInstanceIdValue(i);
    }

    public int getLength() {
        return this.buffer.length;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 1;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        String str;
        if (i == 1) {
            str = "constructor";
        } else {
            if (i != 2) {
                throw new IllegalArgumentException(String.valueOf(i));
            }
            str = "slice";
        }
        initPrototypeMethod(CLASS_NAME, i, str, 1);
    }

    public NativeArrayBuffer slice(double d, double d2) {
        byte[] bArr = this.buffer;
        double length = bArr.length;
        if (d2 < 0.0d) {
            double length2 = bArr.length;
            Double.isNaN(length2);
            d2 += length2;
        }
        int int32 = ScriptRuntime.toInt32(Math.max(0.0d, Math.min(length, d2)));
        double d3 = int32;
        if (d < 0.0d) {
            double length3 = this.buffer.length;
            Double.isNaN(length3);
            d += length3;
        }
        int int322 = ScriptRuntime.toInt32(Math.min(d3, Math.max(0.0d, d)));
        int i = int32 - int322;
        NativeArrayBuffer nativeArrayBuffer = new NativeArrayBuffer(i);
        System.arraycopy(this.buffer, int322, nativeArrayBuffer.buffer, 0, i);
        return nativeArrayBuffer;
    }

    public NativeArrayBuffer(double d) {
        if (d >= 2.147483647E9d) {
            throw ScriptRuntime.constructError("RangeError", "length parameter (" + d + ") is too large ");
        }
        if (d != Double.NEGATIVE_INFINITY) {
            int int32 = ScriptRuntime.toInt32(d);
            if (int32 < 0) {
                throw ScriptRuntime.constructError("RangeError", "Negative array length " + d);
            }
            if (int32 == 0) {
                this.buffer = EMPTY_BUF;
                return;
            } else {
                this.buffer = new byte[int32];
                return;
            }
        }
        throw ScriptRuntime.constructError("RangeError", "Negative array length " + d);
    }
}
