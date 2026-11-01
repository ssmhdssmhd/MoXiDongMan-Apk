package org.mozilla.javascript.typedarrays;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.ExternalArrayData;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.NativeArray;
import org.mozilla.javascript.NativeArrayIterator;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Symbol;
import org.mozilla.javascript.SymbolKey;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.Wrapper;

/* loaded from: classes3.dex */
public abstract class NativeTypedArrayView<T> extends NativeArrayBufferView implements List<T>, RandomAccess, ExternalArrayData {
    private static final int Id_BYTES_PER_ELEMENT = 5;
    private static final int Id_constructor = 1;
    private static final int Id_get = 3;
    private static final int Id_length = 4;
    private static final int Id_set = 4;
    private static final int Id_subarray = 5;
    private static final int Id_toString = 2;
    private static final int MAX_INSTANCE_ID = 5;
    public static final int MAX_PROTOTYPE_ID = 6;
    private static final int SymbolId_iterator = 6;
    public final int length;

    public NativeTypedArrayView() {
        this.length = 0;
    }

    private NativeTypedArrayView<T> js_constructor(Context context, Scriptable scriptable, Object[] objArr) {
        if (!NativeArrayBufferView.isArg(objArr, 0)) {
            return construct(NativeArrayBuffer.EMPTY_BUFFER, 0, 0);
        }
        Object obj = objArr[0];
        if (obj == null) {
            return construct(NativeArrayBuffer.EMPTY_BUFFER, 0, 0);
        }
        if ((obj instanceof Number) || (obj instanceof String)) {
            int int32 = ScriptRuntime.toInt32(obj);
            return construct(makeArrayBuffer(context, scriptable, getBytesPerElement() * int32), 0, int32);
        }
        if (obj instanceof NativeTypedArrayView) {
            NativeTypedArrayView nativeTypedArrayView = (NativeTypedArrayView) obj;
            NativeTypedArrayView<T> nativeTypedArrayViewConstruct = construct(makeArrayBuffer(context, scriptable, nativeTypedArrayView.length * getBytesPerElement()), 0, nativeTypedArrayView.length);
            while (int32 < nativeTypedArrayView.length) {
                nativeTypedArrayViewConstruct.js_set(int32, nativeTypedArrayView.js_get(int32));
                int32++;
            }
            return nativeTypedArrayViewConstruct;
        }
        if (obj instanceof NativeArrayBuffer) {
            NativeArrayBuffer nativeArrayBuffer = (NativeArrayBuffer) obj;
            int32 = NativeArrayBufferView.isArg(objArr, 1) ? ScriptRuntime.toInt32(objArr[1]) : 0;
            int int322 = NativeArrayBufferView.isArg(objArr, 2) ? ScriptRuntime.toInt32(objArr[2]) * getBytesPerElement() : nativeArrayBuffer.getLength() - int32;
            if (int32 >= 0) {
                byte[] bArr = nativeArrayBuffer.buffer;
                if (int32 <= bArr.length) {
                    if (int322 < 0 || int32 + int322 > bArr.length) {
                        throw ScriptRuntime.constructError("RangeError", "length out of range");
                    }
                    if (int32 % getBytesPerElement() != 0) {
                        throw ScriptRuntime.constructError("RangeError", "offset must be a multiple of the byte size");
                    }
                    if (int322 % getBytesPerElement() == 0) {
                        return construct(nativeArrayBuffer, int32, int322 / getBytesPerElement());
                    }
                    throw ScriptRuntime.constructError("RangeError", "offset and buffer must be a multiple of the byte size");
                }
            }
            throw ScriptRuntime.constructError("RangeError", "offset out of range");
        }
        if (!(obj instanceof NativeArray)) {
            if (!ScriptRuntime.isArrayObject(obj)) {
                throw ScriptRuntime.constructError("Error", "invalid argument");
            }
            Object[] arrayElements = ScriptRuntime.getArrayElements((Scriptable) obj);
            NativeTypedArrayView<T> nativeTypedArrayViewConstruct2 = construct(makeArrayBuffer(context, scriptable, arrayElements.length * getBytesPerElement()), 0, arrayElements.length);
            while (int32 < arrayElements.length) {
                nativeTypedArrayViewConstruct2.js_set(int32, arrayElements[int32]);
                int32++;
            }
            return nativeTypedArrayViewConstruct2;
        }
        NativeArray nativeArray = (NativeArray) obj;
        NativeTypedArrayView<T> nativeTypedArrayViewConstruct3 = construct(makeArrayBuffer(context, scriptable, nativeArray.size() * getBytesPerElement()), 0, nativeArray.size());
        while (int32 < nativeArray.size()) {
            Object obj2 = nativeArray.get(int32, nativeArray);
            if (obj2 == Scriptable.NOT_FOUND || obj2 == Undefined.instance) {
                nativeTypedArrayViewConstruct3.js_set(int32, Double.valueOf(Double.NaN));
            } else if (obj2 instanceof Wrapper) {
                nativeTypedArrayViewConstruct3.js_set(int32, ((Wrapper) obj2).unwrap());
            } else {
                nativeTypedArrayViewConstruct3.js_set(int32, obj2);
            }
            int32++;
        }
        return nativeTypedArrayViewConstruct3;
    }

    private Object js_subarray(Context context, Scriptable scriptable, int i, int i2) {
        if (i < 0) {
            i += this.length;
        }
        if (i2 < 0) {
            i2 += this.length;
        }
        int iMax = Math.max(0, i);
        int iMax2 = Math.max(0, Math.min(this.length, i2) - iMax);
        return context.newObject(scriptable, getClassName(), new Object[]{this.arrayBuffer, Integer.valueOf(Math.min(iMax * getBytesPerElement(), this.arrayBuffer.getLength())), Integer.valueOf(iMax2)});
    }

    private NativeArrayBuffer makeArrayBuffer(Context context, Scriptable scriptable, int i) {
        return (NativeArrayBuffer) context.newObject(scriptable, NativeArrayBuffer.CLASS_NAME, new Object[]{Integer.valueOf(i)});
    }

    private void setRange(NativeTypedArrayView<T> nativeTypedArrayView, int i) {
        int i2 = this.length;
        if (i >= i2) {
            throw ScriptRuntime.constructError("RangeError", "offset out of range");
        }
        int i3 = nativeTypedArrayView.length;
        if (i3 > i2 - i) {
            throw ScriptRuntime.constructError("RangeError", "source array too long");
        }
        int i4 = 0;
        if (nativeTypedArrayView.arrayBuffer != this.arrayBuffer) {
            while (i4 < nativeTypedArrayView.length) {
                js_set(i4 + i, nativeTypedArrayView.js_get(i4));
                i4++;
            }
            return;
        }
        Object[] objArr = new Object[i3];
        for (int i5 = 0; i5 < nativeTypedArrayView.length; i5++) {
            objArr[i5] = nativeTypedArrayView.js_get(i5);
        }
        while (i4 < nativeTypedArrayView.length) {
            js_set(i4 + i, objArr[i4]);
            i4++;
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
    }

    public boolean checkIndex(int i) {
        return i < 0 || i >= this.length;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public abstract NativeTypedArrayView<T> construct(NativeArrayBuffer nativeArrayBuffer, int i, int i2);

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void delete(int i) {
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        try {
            NativeTypedArrayView nativeTypedArrayView = (NativeTypedArrayView) obj;
            if (this.length != nativeTypedArrayView.length) {
                return false;
            }
            for (int i = 0; i < this.length; i++) {
                if (!js_get(i).equals(nativeTypedArrayView.js_get(i))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(getClassName())) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        switch (iMethodId) {
            case 1:
                return js_constructor(context, scriptable, objArr);
            case 2:
                NativeTypedArrayView<T> nativeTypedArrayViewRealThis = realThis(scriptable2, idFunctionObject);
                int arrayLength = nativeTypedArrayViewRealThis.getArrayLength();
                StringBuilder sb = new StringBuilder();
                if (arrayLength > 0) {
                    sb.append(ScriptRuntime.toString(nativeTypedArrayViewRealThis.js_get(0)));
                }
                for (int i = 1; i < arrayLength; i++) {
                    sb.append(',');
                    sb.append(ScriptRuntime.toString(nativeTypedArrayViewRealThis.js_get(i)));
                }
                return sb.toString();
            case 3:
                if (objArr.length > 0) {
                    return realThis(scriptable2, idFunctionObject).js_get(ScriptRuntime.toInt32(objArr[0]));
                }
                throw ScriptRuntime.constructError("Error", "invalid arguments");
            case 4:
                if (objArr.length > 0) {
                    NativeTypedArrayView<T> nativeTypedArrayViewRealThis2 = realThis(scriptable2, idFunctionObject);
                    if (objArr[0] instanceof NativeTypedArrayView) {
                        nativeTypedArrayViewRealThis2.setRange((NativeTypedArrayView) objArr[0], NativeArrayBufferView.isArg(objArr, 1) ? ScriptRuntime.toInt32(objArr[1]) : 0);
                        return Undefined.instance;
                    }
                    if (objArr[0] instanceof NativeArray) {
                        nativeTypedArrayViewRealThis2.setRange((NativeArray) objArr[0], NativeArrayBufferView.isArg(objArr, 1) ? ScriptRuntime.toInt32(objArr[1]) : 0);
                        return Undefined.instance;
                    }
                    if (objArr[0] instanceof Scriptable) {
                        return Undefined.instance;
                    }
                    if (NativeArrayBufferView.isArg(objArr, 2)) {
                        return nativeTypedArrayViewRealThis2.js_set(ScriptRuntime.toInt32(objArr[0]), objArr[1]);
                    }
                }
                throw ScriptRuntime.constructError("Error", "invalid arguments");
            case 5:
                if (objArr.length <= 0) {
                    throw ScriptRuntime.constructError("Error", "invalid arguments");
                }
                NativeTypedArrayView<T> nativeTypedArrayViewRealThis3 = realThis(scriptable2, idFunctionObject);
                return nativeTypedArrayViewRealThis3.js_subarray(context, scriptable, ScriptRuntime.toInt32(objArr[0]), NativeArrayBufferView.isArg(objArr, 1) ? ScriptRuntime.toInt32(objArr[1]) : nativeTypedArrayViewRealThis3.length);
            case 6:
                return new NativeArrayIterator(scriptable, scriptable2, NativeArrayIterator.ARRAY_ITERATOR_TYPE.VALUES);
            default:
                throw new IllegalArgumentException(String.valueOf(iMethodId));
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        idFunctionObject.put("BYTES_PER_ELEMENT", idFunctionObject, ScriptRuntime.wrapInt(getBytesPerElement()));
    }

    @Override // org.mozilla.javascript.typedarrays.NativeArrayBufferView, org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        String str2;
        int i;
        int length = str.length();
        if (length == 6) {
            i = 4;
            str2 = "length";
        } else if (length == 17) {
            str2 = "BYTES_PER_ELEMENT";
            i = 5;
        } else {
            str2 = null;
            i = 0;
        }
        int i2 = (str2 == null || str2 == str || str2.equals(str)) ? i : 0;
        return i2 == 0 ? super.findInstanceIdInfo(str) : IdScriptableObject.instanceIdInfo(5, i2);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(Symbol symbol) {
        return SymbolKey.ITERATOR.equals(symbol) ? 6 : 0;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        return js_get(i);
    }

    @Override // org.mozilla.javascript.ExternalArrayData
    public Object getArrayElement(int i) {
        return js_get(i);
    }

    @Override // org.mozilla.javascript.ExternalArrayData
    public int getArrayLength() {
        return this.length;
    }

    public abstract int getBytesPerElement();

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object[] getIds() {
        Object[] objArr = new Object[this.length];
        for (int i = 0; i < this.length; i++) {
            objArr[i] = Integer.valueOf(i);
        }
        return objArr;
    }

    @Override // org.mozilla.javascript.typedarrays.NativeArrayBufferView, org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        return i != 4 ? i != 5 ? super.getInstanceIdName(i) : "BYTES_PER_ELEMENT" : "length";
    }

    @Override // org.mozilla.javascript.typedarrays.NativeArrayBufferView, org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        return i != 4 ? i != 5 ? super.getInstanceIdValue(i) : ScriptRuntime.wrapInt(getBytesPerElement()) : ScriptRuntime.wrapInt(this.length);
    }

    @Override // org.mozilla.javascript.typedarrays.NativeArrayBufferView, org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 5;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        return !checkIndex(i);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        int iHashCode = 0;
        for (int i = 0; i < this.length; i++) {
            iHashCode += js_get(i).hashCode();
        }
        return iHashCode;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        for (int i = 0; i < this.length; i++) {
            if (obj.equals(js_get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        String str;
        String str2;
        int i2;
        String str3;
        if (i == 6) {
            initPrototypeMethod(getClassName(), i, SymbolKey.ITERATOR, "[Symbol.iterator]", 0);
            return;
        }
        if (i != 1) {
            if (i == 2) {
                str2 = "toString";
                i2 = 0;
            } else if (i != 3) {
                if (i == 4) {
                    str3 = "set";
                } else {
                    if (i != 5) {
                        throw new IllegalArgumentException(String.valueOf(i));
                    }
                    str3 = "subarray";
                }
                str2 = str3;
                i2 = 2;
            } else {
                str = "get";
            }
            initPrototypeMethod(getClassName(), i, str2, (String) null, i2);
        }
        str = "constructor";
        str2 = str;
        i2 = 1;
        initPrototypeMethod(getClassName(), i, str2, (String) null, i2);
    }

    @Override // org.mozilla.javascript.ScriptableObject, java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.length == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return new NativeTypedArrayIterator(this, 0);
    }

    public abstract Object js_get(int i);

    public abstract Object js_set(int i, Object obj);

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        for (int i = this.length - 1; i >= 0; i--) {
            if (obj.equals(js_get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public ListIterator<T> listIterator() {
        return new NativeTypedArrayIterator(this, 0);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        js_set(i, obj);
    }

    public abstract NativeTypedArrayView<T> realThis(Scriptable scriptable, IdFunctionObject idFunctionObject);

    @Override // java.util.List
    public T remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // org.mozilla.javascript.ExternalArrayData
    public void setArrayElement(int i, Object obj) {
        js_set(i, obj);
    }

    @Override // org.mozilla.javascript.ScriptableObject, java.util.List, java.util.Collection
    public int size() {
        return this.length;
    }

    @Override // java.util.List
    public List<T> subList(int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        Object[] objArr = new Object[this.length];
        for (int i = 0; i < this.length; i++) {
            objArr[i] = js_get(i);
        }
        return objArr;
    }

    @Override // java.util.List
    public void add(int i, T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends T> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(String str) {
        String str2;
        int i;
        int length = str.length();
        if (length != 3) {
            if (length == 8) {
                char cCharAt = str.charAt(0);
                if (cCharAt == 's') {
                    str2 = "subarray";
                    i = 5;
                } else if (cCharAt == 't') {
                    str2 = "toString";
                    i = 2;
                }
            } else if (length == 11) {
                str2 = "constructor";
                i = 1;
            }
            if (str2 != null || str2 == str || str2.equals(str)) {
                return i;
            }
            return 0;
        }
        char cCharAt2 = str.charAt(0);
        if (cCharAt2 == 'g') {
            if (str.charAt(2) == 't' && str.charAt(1) == 'e') {
                return 3;
            }
        } else if (cCharAt2 == 's' && str.charAt(2) == 't' && str.charAt(1) == 'e') {
            return 4;
        }
        str2 = null;
        i = 0;
        return str2 != null ? i : i;
    }

    @Override // java.util.List
    public ListIterator<T> listIterator(int i) {
        if (checkIndex(i)) {
            throw new IndexOutOfBoundsException();
        }
        return new NativeTypedArrayIterator(this, i);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public NativeTypedArrayView(NativeArrayBuffer nativeArrayBuffer, int i, int i2, int i3) {
        super(nativeArrayBuffer, i, i3);
        this.length = i2;
    }

    @Override // java.util.List, java.util.Collection
    public <U> U[] toArray(U[] uArr) {
        if (uArr.length < this.length) {
            uArr = (U[]) ((Object[]) Array.newInstance(uArr.getClass().getComponentType(), this.length));
        }
        for (int i = 0; i < this.length; i++) {
            try {
                uArr[i] = js_get(i);
            } catch (ClassCastException unused) {
                throw new ArrayStoreException();
            }
        }
        return uArr;
    }

    private void setRange(NativeArray nativeArray, int i) {
        if (i <= this.length) {
            if (nativeArray.size() + i <= this.length) {
                Iterator it = nativeArray.iterator();
                while (it.hasNext()) {
                    js_set(i, it.next());
                    i++;
                }
                return;
            }
            throw ScriptRuntime.constructError("RangeError", "offset + length out of range");
        }
        throw ScriptRuntime.constructError("RangeError", "offset out of range");
    }
}
