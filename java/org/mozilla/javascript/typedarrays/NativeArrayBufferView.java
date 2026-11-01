package org.mozilla.javascript.typedarrays;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Undefined;

/* loaded from: classes3.dex */
public abstract class NativeArrayBufferView extends IdScriptableObject {
    private static final int Id_buffer = 1;
    private static final int Id_byteLength = 3;
    private static final int Id_byteOffset = 2;
    public static final int MAX_INSTANCE_ID = 3;
    private static final long serialVersionUID = 6884475582973958419L;
    private static Boolean useLittleEndian;
    public final NativeArrayBuffer arrayBuffer;
    public final int byteLength;
    public final int offset;

    public NativeArrayBufferView() {
        this.arrayBuffer = NativeArrayBuffer.EMPTY_BUFFER;
        this.offset = 0;
        this.byteLength = 0;
    }

    public static boolean isArg(Object[] objArr, int i) {
        return objArr.length > i && !Undefined.instance.equals(objArr[i]);
    }

    public static boolean useLittleEndian() {
        if (useLittleEndian == null) {
            Context currentContext = Context.getCurrentContext();
            if (currentContext == null) {
                return false;
            }
            useLittleEndian = Boolean.valueOf(currentContext.hasFeature(19));
        }
        return useLittleEndian.booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0025  */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int findInstanceIdInfo(String str) {
        String str2;
        int i;
        int length = str.length();
        if (length == 6) {
            i = 1;
            str2 = "buffer";
        } else if (length != 10) {
            str2 = null;
            i = 0;
        } else {
            char cCharAt = str.charAt(4);
            if (cCharAt == 'L') {
                i = 3;
                str2 = "byteLength";
            } else if (cCharAt == 'O') {
                i = 2;
                str2 = "byteOffset";
            }
        }
        int i2 = (str2 == null || str2 == str || str2.equals(str)) ? i : 0;
        return i2 == 0 ? super.findInstanceIdInfo(str) : IdScriptableObject.instanceIdInfo(5, i2);
    }

    public NativeArrayBuffer getBuffer() {
        return this.arrayBuffer;
    }

    public int getByteLength() {
        return this.byteLength;
    }

    public int getByteOffset() {
        return this.offset;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        return i != 1 ? i != 2 ? i != 3 ? super.getInstanceIdName(i) : "byteLength" : "byteOffset" : "buffer";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        return i != 1 ? i != 2 ? i != 3 ? super.getInstanceIdValue(i) : ScriptRuntime.wrapInt(this.byteLength) : ScriptRuntime.wrapInt(this.offset) : this.arrayBuffer;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 3;
    }

    public NativeArrayBufferView(NativeArrayBuffer nativeArrayBuffer, int i, int i2) {
        this.offset = i;
        this.byteLength = i2;
        this.arrayBuffer = nativeArrayBuffer;
    }
}
