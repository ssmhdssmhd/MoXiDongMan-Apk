package org.mozilla.javascript;

import android.support.v4.ca2;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.mozilla.javascript.TopLevel;
import org.mozilla.javascript.regexp.NativeRegExp;
import org.mozilla.javascript.v8dtoa.FastDtoa;

/* loaded from: classes3.dex */
public class NativeArray extends IdScriptableObject implements List {
    private static final int ConstructorId_concat = -13;
    private static final int ConstructorId_every = -17;
    private static final int ConstructorId_filter = -18;
    private static final int ConstructorId_find = -22;
    private static final int ConstructorId_findIndex = -23;
    private static final int ConstructorId_forEach = -19;
    private static final int ConstructorId_from = -28;
    private static final int ConstructorId_indexOf = -15;
    private static final int ConstructorId_isArray = -26;
    private static final int ConstructorId_join = -5;
    private static final int ConstructorId_lastIndexOf = -16;
    private static final int ConstructorId_map = -20;
    private static final int ConstructorId_of = -27;
    private static final int ConstructorId_pop = -9;
    private static final int ConstructorId_push = -8;
    private static final int ConstructorId_reduce = -24;
    private static final int ConstructorId_reduceRight = -25;
    private static final int ConstructorId_reverse = -6;
    private static final int ConstructorId_shift = -10;
    private static final int ConstructorId_slice = -14;
    private static final int ConstructorId_some = -21;
    private static final int ConstructorId_sort = -7;
    private static final int ConstructorId_splice = -12;
    private static final int ConstructorId_unshift = -11;
    private static final int DEFAULT_INITIAL_CAPACITY = 10;
    private static final double GROW_FACTOR = 1.5d;
    private static final int Id_concat = 13;
    private static final int Id_constructor = 1;
    private static final int Id_copyWithin = 31;
    private static final int Id_entries = 29;
    private static final int Id_every = 17;
    private static final int Id_fill = 26;
    private static final int Id_filter = 18;
    private static final int Id_find = 22;
    private static final int Id_findIndex = 23;
    private static final int Id_forEach = 19;
    private static final int Id_includes = 30;
    private static final int Id_indexOf = 15;
    private static final int Id_join = 5;
    private static final int Id_keys = 27;
    private static final int Id_lastIndexOf = 16;
    private static final int Id_length = 1;
    private static final int Id_map = 20;
    private static final int Id_pop = 9;
    private static final int Id_push = 8;
    private static final int Id_reduce = 24;
    private static final int Id_reduceRight = 25;
    private static final int Id_reverse = 6;
    private static final int Id_shift = 10;
    private static final int Id_slice = 14;
    private static final int Id_some = 21;
    private static final int Id_sort = 7;
    private static final int Id_splice = 12;
    private static final int Id_toLocaleString = 3;
    private static final int Id_toSource = 4;
    private static final int Id_toString = 2;
    private static final int Id_unshift = 11;
    private static final int Id_values = 28;
    private static final int MAX_INSTANCE_ID = 1;
    private static final int MAX_PRE_GROW_SIZE = 1431655764;
    private static final int MAX_PROTOTYPE_ID = 32;
    private static final int SymbolId_iterator = 32;
    private static final long serialVersionUID = 7331366857676127338L;
    private Object[] dense;
    private boolean denseOnly;
    private long length;
    private int lengthAttr;
    private static final Object ARRAY_TAG = "Array";
    private static final Long NEGATIVE_ONE = -1L;
    private static final Comparator<Object> STRING_COMPARATOR = new StringLikeComparator();
    private static final Comparator<Object> DEFAULT_COMPARATOR = new ElementComparator();
    private static int maximumInitialCapacity = FastDtoa.kTen4;

    public static final class StringLikeComparator implements Comparator<Object> {
        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ScriptRuntime.toString(obj).compareTo(ScriptRuntime.toString(obj2));
        }
    }

    public NativeArray(long j) {
        this.lengthAttr = 6;
        boolean z = j <= ((long) maximumInitialCapacity);
        this.denseOnly = z;
        if (z) {
            int i = (int) j;
            Object[] objArr = new Object[i < 10 ? 10 : i];
            this.dense = objArr;
            Arrays.fill(objArr, Scriptable.NOT_FOUND);
        }
        this.length = j;
    }

    private static Scriptable callConstructorOrCreateArray(Context context, Scriptable scriptable, Scriptable scriptable2, long j, boolean z) {
        Scriptable scriptableConstruct;
        if (scriptable2 instanceof Function) {
            try {
                scriptableConstruct = ((Function) scriptable2).construct(context, scriptable, (z || j > 0) ? new Object[]{Long.valueOf(j)} : ScriptRuntime.emptyArgs);
            } catch (EcmaError e) {
                if (!"TypeError".equals(e.getName())) {
                    throw e;
                }
            }
        } else {
            scriptableConstruct = null;
        }
        if (scriptableConstruct == null) {
            return context.newArray(scriptable, j <= 2147483647L ? (int) j : 0);
        }
        return scriptableConstruct;
    }

    private static long concatSpreadArg(Context context, Scriptable scriptable, Scriptable scriptable2, long j) {
        long lengthProperty = getLengthProperty(context, scriptable2, false);
        long j2 = lengthProperty + j;
        if (j2 <= 2147483647L && (scriptable instanceof NativeArray)) {
            NativeArray nativeArray = (NativeArray) scriptable;
            if (nativeArray.denseOnly && (scriptable2 instanceof NativeArray)) {
                NativeArray nativeArray2 = (NativeArray) scriptable2;
                if (nativeArray2.denseOnly) {
                    nativeArray.ensureCapacity((int) j2);
                    System.arraycopy(nativeArray2.dense, 0, nativeArray.dense, (int) j, (int) lengthProperty);
                    return j2;
                }
            }
        }
        long j3 = 0;
        while (j3 < lengthProperty) {
            Object rawElem = getRawElem(scriptable2, j3);
            if (rawElem != Scriptable.NOT_FOUND) {
                defineElem(context, scriptable, j, rawElem);
            }
            j3++;
            j++;
        }
        return j2;
    }

    private ScriptableObject defaultIndexPropertyDescriptor(Object obj) {
        Scriptable parentScope = getParentScope();
        if (parentScope == null) {
            parentScope = this;
        }
        NativeObject nativeObject = new NativeObject();
        ScriptRuntime.setBuiltinProtoAndParent(nativeObject, parentScope, TopLevel.Builtins.Object);
        nativeObject.defineProperty(ES6Iterator.VALUE_PROPERTY, obj, 0);
        Boolean bool = Boolean.TRUE;
        nativeObject.defineProperty("writable", bool, 0);
        nativeObject.defineProperty("enumerable", bool, 0);
        nativeObject.defineProperty("configurable", bool, 0);
        return nativeObject;
    }

    private static void defineElem(Context context, Scriptable scriptable, long j, Object obj) {
        if (j > 2147483647L) {
            scriptable.put(Long.toString(j), scriptable, obj);
        } else {
            scriptable.put((int) j, scriptable, obj);
        }
    }

    private static void deleteElem(Scriptable scriptable, long j) {
        int i = (int) j;
        if (i == j) {
            scriptable.delete(i);
        } else {
            scriptable.delete(Long.toString(j));
        }
    }

    private static long doConcat(Context context, Scriptable scriptable, Scriptable scriptable2, Object obj, long j) {
        if (isConcatSpreadable(context, scriptable, obj)) {
            return concatSpreadArg(context, scriptable2, (Scriptable) obj, j);
        }
        defineElem(context, scriptable2, j, obj);
        return j + 1;
    }

    private boolean ensureCapacity(int i) {
        Object[] objArr = this.dense;
        if (i <= objArr.length) {
            return true;
        }
        if (i > MAX_PRE_GROW_SIZE) {
            this.denseOnly = false;
            return false;
        }
        double length = objArr.length;
        Double.isNaN(length);
        int iMax = Math.max(i, (int) (length * GROW_FACTOR));
        Object[] objArr2 = new Object[iMax];
        Object[] objArr3 = this.dense;
        System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
        Arrays.fill(objArr2, this.dense.length, iMax, Scriptable.NOT_FOUND);
        this.dense = objArr2;
        return true;
    }

    private static Object getElem(Context context, Scriptable scriptable, long j) {
        Object rawElem = getRawElem(scriptable, j);
        return rawElem != Scriptable.NOT_FOUND ? rawElem : Undefined.instance;
    }

    public static long getLengthProperty(Context context, Scriptable scriptable, boolean z) {
        if (scriptable instanceof NativeString) {
            return ((NativeString) scriptable).getLength();
        }
        if (scriptable instanceof NativeArray) {
            return ((NativeArray) scriptable).getLength();
        }
        Object property = ScriptableObject.getProperty(scriptable, "length");
        if (property == Scriptable.NOT_FOUND) {
            return 0L;
        }
        double number = ScriptRuntime.toNumber(property);
        if (number > 9.007199254740991E15d) {
            if (z) {
                throw ScriptRuntime.constructError("RangeError", ScriptRuntime.getMessage0("msg.arraylength.bad"));
            }
            return 2147483647L;
        }
        if (number < 0.0d) {
            return 0L;
        }
        return ScriptRuntime.toUint32(property);
    }

    public static int getMaximumInitialCapacity() {
        return maximumInitialCapacity;
    }

    private static Object getRawElem(Scriptable scriptable, long j) {
        return j > 2147483647L ? ScriptableObject.getProperty(scriptable, Long.toString(j)) : ScriptableObject.getProperty(scriptable, (int) j);
    }

    public static void init(Scriptable scriptable, boolean z) {
        new NativeArray(0L).exportAsJSClass(32, scriptable, z);
    }

    private static boolean isConcatSpreadable(Context context, Scriptable scriptable, Object obj) {
        Object property;
        if ((obj instanceof Scriptable) && (property = ScriptableObject.getProperty((Scriptable) obj, SymbolKey.IS_CONCAT_SPREADABLE)) != Scriptable.NOT_FOUND && !Undefined.isUndefined(property)) {
            return ScriptRuntime.toBoolean(property);
        }
        if (context.getLanguageVersion() >= 200 || !ScriptRuntime.instanceOf(obj, ScriptRuntime.getExistingCtor(context, scriptable, "Array"), context)) {
            return js_isArray(obj);
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Object iterativeMethod(Context context, IdFunctionObject idFunctionObject, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        long j;
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        int iAbs = Math.abs(idFunctionObject.methodId());
        int i = 23;
        int i2 = 22;
        if (22 == iAbs || 23 == iAbs) {
            object = ScriptRuntimeES6.requireObjectCoercible(context, object, idFunctionObject);
        }
        long lengthProperty = getLengthProperty(context, object, iAbs == 20);
        Object obj = objArr.length > 0 ? objArr[0] : Undefined.instance;
        if (obj == null || !(obj instanceof Function)) {
            throw ScriptRuntime.notFunctionError(obj);
        }
        if (context.getLanguageVersion() >= 200 && (obj instanceof NativeRegExp)) {
            throw ScriptRuntime.notFunctionError(obj);
        }
        Function function = (Function) obj;
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(function);
        Scriptable object2 = (objArr.length < 2 || objArr[1] == null || objArr[1] == Undefined.instance) ? topLevelScope : ScriptRuntime.toObject(context, scriptable, objArr[1]);
        Scriptable scriptableNewArray = null;
        if (iAbs == 18 || iAbs == 20) {
            scriptableNewArray = context.newArray(scriptable, iAbs == 20 ? (int) lengthProperty : 0);
        }
        long j2 = 0;
        long j3 = 0;
        while (j2 < lengthProperty) {
            Object[] objArr2 = new Object[3];
            Object rawElem = getRawElem(object, j2);
            if (rawElem != Scriptable.NOT_FOUND) {
                objArr2[0] = rawElem;
                objArr2[1] = Long.valueOf(j2);
                objArr2[2] = object;
                Object objCall = function.call(context, topLevelScope, object2, objArr2);
                switch (iAbs) {
                    case 17:
                        j = j3;
                        if (!ScriptRuntime.toBoolean(objCall)) {
                            return Boolean.FALSE;
                        }
                        j3 = j;
                        break;
                    case 18:
                        if (ScriptRuntime.toBoolean(objCall)) {
                            long j4 = j3;
                            j3 = j4 + 1;
                            defineElem(context, scriptableNewArray, j4, objArr2[0]);
                            break;
                        }
                        j = j3;
                        j3 = j;
                        break;
                    case 19:
                    default:
                        j = j3;
                        j3 = j;
                        break;
                    case 20:
                        defineElem(context, scriptableNewArray, j2, objCall);
                        j = j3;
                        j3 = j;
                        break;
                    case 21:
                        if (ScriptRuntime.toBoolean(objCall)) {
                            return Boolean.TRUE;
                        }
                        j = j3;
                        j3 = j;
                        break;
                    case 22:
                        if (ScriptRuntime.toBoolean(objCall)) {
                            return rawElem;
                        }
                        j = j3;
                        j3 = j;
                        break;
                    case 23:
                        if (ScriptRuntime.toBoolean(objCall)) {
                            return ScriptRuntime.wrapNumber(j2);
                        }
                        j = j3;
                        j3 = j;
                        break;
                }
            } else if (iAbs == i2 || iAbs == i) {
                rawElem = Undefined.instance;
                objArr2[0] = rawElem;
                objArr2[1] = Long.valueOf(j2);
                objArr2[2] = object;
                Object objCall2 = function.call(context, topLevelScope, object2, objArr2);
                switch (iAbs) {
                }
            } else {
                j = j3;
                j3 = j;
            }
            j2++;
            i = 23;
            i2 = 22;
        }
        switch (iAbs) {
            case 17:
                return Boolean.TRUE;
            case 18:
            case 20:
                return scriptableNewArray;
            case 19:
            case 22:
            default:
                return Undefined.instance;
            case 21:
                return Boolean.FALSE;
            case 23:
                return ScriptRuntime.wrapNumber(-1.0d);
        }
    }

    private static Object jsConstructor(Context context, Scriptable scriptable, Object[] objArr) {
        if (objArr.length == 0) {
            return new NativeArray(0L);
        }
        if (context.getLanguageVersion() == 120) {
            return new NativeArray(objArr);
        }
        Object obj = objArr[0];
        if (objArr.length > 1 || !(obj instanceof Number)) {
            return new NativeArray(objArr);
        }
        long uint32 = ScriptRuntime.toUint32(obj);
        if (uint32 == ((Number) obj).doubleValue()) {
            return new NativeArray(uint32);
        }
        throw ScriptRuntime.constructError("RangeError", ScriptRuntime.getMessage0("msg.arraylength.bad"));
    }

    private static Scriptable js_concat(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        Scriptable scriptableNewArray = context.newArray(topLevelScope, 0);
        long jDoConcat = doConcat(context, topLevelScope, scriptableNewArray, scriptable2, 0L);
        for (Object obj : objArr) {
            jDoConcat = doConcat(context, topLevelScope, scriptableNewArray, obj, jDoConcat);
        }
        setLengthProperty(context, scriptableNewArray, jDoConcat);
        return scriptableNewArray;
    }

    private static Object js_copyWithin(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        long lengthProperty = getLengthProperty(context, object, false);
        int i = 1;
        long integer = (long) ScriptRuntime.toInteger(objArr.length >= 1 ? objArr[0] : Undefined.instance);
        long jMax = integer < 0 ? Math.max(integer + lengthProperty, 0L) : Math.min(integer, lengthProperty);
        long integer2 = (long) ScriptRuntime.toInteger(objArr.length >= 2 ? objArr[1] : Undefined.instance);
        long jMax2 = integer2 < 0 ? Math.max(integer2 + lengthProperty, 0L) : Math.min(integer2, lengthProperty);
        long integer3 = (objArr.length < 3 || Undefined.isUndefined(objArr[2])) ? lengthProperty : (long) ScriptRuntime.toInteger(objArr[2]);
        long jMin = Math.min((integer3 < 0 ? Math.max(integer3 + lengthProperty, 0L) : Math.min(integer3, lengthProperty)) - jMax2, lengthProperty - jMax);
        if (jMax2 < jMax) {
            long j = jMax2 + jMin;
            if (jMax < j) {
                i = -1;
                jMax2 = j - 1;
                jMax = (jMax + jMin) - 1;
            }
        }
        if ((object instanceof NativeArray) && jMin <= 2147483647L) {
            NativeArray nativeArray = (NativeArray) object;
            if (nativeArray.denseOnly) {
                while (jMin > 0) {
                    Object[] objArr2 = nativeArray.dense;
                    objArr2[(int) jMax] = objArr2[(int) jMax2];
                    long j2 = i;
                    jMax2 += j2;
                    jMax += j2;
                    jMin--;
                }
                return scriptable2;
            }
        }
        while (jMin > 0) {
            Object rawElem = getRawElem(object, jMax2);
            if (rawElem == Scriptable.NOT_FOUND || Undefined.isUndefined(rawElem)) {
                deleteElem(object, jMax);
            } else {
                setElem(context, object, jMax, rawElem);
            }
            long j3 = i;
            jMax2 += j3;
            jMax += j3;
            jMin--;
        }
        return scriptable2;
    }

    private static Object js_fill(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        long lengthProperty = getLengthProperty(context, ScriptRuntime.toObject(context, scriptable, scriptable2), false);
        long integer = objArr.length >= 2 ? (long) ScriptRuntime.toInteger(objArr[1]) : 0L;
        long integer2 = (objArr.length < 3 || Undefined.isUndefined(objArr[2])) ? lengthProperty : (long) ScriptRuntime.toInteger(objArr[2]);
        long jMax = integer2 < 0 ? Math.max(lengthProperty + integer2, 0L) : Math.min(integer2, lengthProperty);
        Object obj = objArr.length > 0 ? objArr[0] : Undefined.instance;
        for (long jMax2 = integer < 0 ? Math.max(integer + lengthProperty, 0L) : Math.min(integer, lengthProperty); jMax2 < jMax; jMax2++) {
            setRawElem(context, scriptable2, jMax2, obj);
        }
        return scriptable2;
    }

    private static Object js_from(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable object = ScriptRuntime.toObject(scriptable, objArr.length >= 1 ? objArr[0] : Undefined.instance);
        Object obj = objArr.length >= 2 ? objArr[1] : Undefined.instance;
        Scriptable scriptableEnsureScriptable = Undefined.SCRIPTABLE_UNDEFINED;
        boolean z = !Undefined.isUndefined(obj);
        Function function = null;
        if (z) {
            if (!(obj instanceof Function)) {
                throw ScriptRuntime.typeError0("msg.map.function.not");
            }
            function = (Function) obj;
            if (objArr.length >= 3) {
                scriptableEnsureScriptable = ScriptableObject.ensureScriptable(objArr[2]);
            }
        }
        Scriptable scriptable3 = scriptableEnsureScriptable;
        Function function2 = function;
        Object property = ScriptableObject.getProperty(object, SymbolKey.ITERATOR);
        if (!(object instanceof NativeArray) && property != Scriptable.NOT_FOUND && !Undefined.isUndefined(property)) {
            Object objCallIterator = ScriptRuntime.callIterator(object, context, scriptable);
            if (!Undefined.isUndefined(objCallIterator)) {
                Scriptable scriptableCallConstructorOrCreateArray = callConstructorOrCreateArray(context, scriptable, scriptable2, 0L, false);
                IteratorLikeIterable iteratorLikeIterable = new IteratorLikeIterable(context, scriptable, objCallIterator);
                try {
                    Iterator<Object> itIterator2 = iteratorLikeIterable.iterator();
                    long j = 0;
                    while (itIterator2.hasNext()) {
                        Object next = itIterator2.next();
                        if (z) {
                            next = function2.call(context, scriptable, scriptable3, new Object[]{next, Long.valueOf(j)});
                        }
                        defineElem(context, scriptableCallConstructorOrCreateArray, j, next);
                        j++;
                    }
                    iteratorLikeIterable.close();
                    setLengthProperty(context, scriptableCallConstructorOrCreateArray, j);
                    return scriptableCallConstructorOrCreateArray;
                } finally {
                }
            }
        }
        long lengthProperty = getLengthProperty(context, object, false);
        Scriptable scriptableCallConstructorOrCreateArray2 = callConstructorOrCreateArray(context, scriptable, scriptable2, lengthProperty, true);
        for (long j2 = 0; j2 < lengthProperty; j2++) {
            Object rawElem = getRawElem(object, j2);
            if (rawElem != Scriptable.NOT_FOUND) {
                if (z) {
                    rawElem = function2.call(context, scriptable, scriptable3, new Object[]{rawElem, Long.valueOf(j2)});
                }
                defineElem(context, scriptableCallConstructorOrCreateArray2, j2, rawElem);
            }
        }
        setLengthProperty(context, scriptableCallConstructorOrCreateArray2, lengthProperty);
        return scriptableCallConstructorOrCreateArray2;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002c A[PHI: r9
      0x002c: PHI (r9v9 long) = (r9v8 long), (r9v11 long) binds: [B:10:0x0024, B:12:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Object js_indexOf(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object obj = objArr.length > 0 ? objArr[0] : Undefined.instance;
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        long lengthProperty = getLengthProperty(context, object, false);
        if (objArr.length >= 2) {
            long integer = (long) ScriptRuntime.toInteger(objArr[1]);
            if (integer < 0) {
                integer += lengthProperty;
                j = integer >= 0 ? integer : 0L;
                if (j > lengthProperty - 1) {
                    return NEGATIVE_ONE;
                }
            }
        }
        if (object instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) object;
            if (nativeArray.denseOnly) {
                Scriptable prototype = nativeArray.getPrototype();
                int i = (int) j;
                while (true) {
                    long j = i;
                    if (j >= lengthProperty) {
                        return NEGATIVE_ONE;
                    }
                    Object property = nativeArray.dense[i];
                    Object obj2 = Scriptable.NOT_FOUND;
                    if (property == obj2 && prototype != null) {
                        property = ScriptableObject.getProperty(prototype, i);
                    }
                    if (property != obj2 && ScriptRuntime.shallowEq(property, obj)) {
                        return Long.valueOf(j);
                    }
                    i++;
                }
            }
        }
        while (j < lengthProperty) {
            Object rawElem = getRawElem(object, j);
            if (rawElem != Scriptable.NOT_FOUND && ScriptRuntime.shallowEq(rawElem, obj)) {
                return Long.valueOf(j);
            }
            j++;
        }
        return NEGATIVE_ONE;
    }

    private static boolean js_isArray(Object obj) {
        if (obj instanceof Scriptable) {
            return "Array".equals(((Scriptable) obj).getClassName());
        }
        return false;
    }

    private static String js_join(Context context, Scriptable scriptable, Object[] objArr) {
        Object obj;
        int i = 0;
        long lengthProperty = getLengthProperty(context, scriptable, false);
        int i2 = (int) lengthProperty;
        if (lengthProperty != i2) {
            throw Context.reportRuntimeError1("msg.arraylength.too.big", String.valueOf(lengthProperty));
        }
        String string = (objArr.length < 1 || objArr[0] == Undefined.instance) ? "," : ScriptRuntime.toString(objArr[0]);
        if (scriptable instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) scriptable;
            if (nativeArray.denseOnly) {
                StringBuilder sb = new StringBuilder();
                while (i < i2) {
                    if (i != 0) {
                        sb.append(string);
                    }
                    Object[] objArr2 = nativeArray.dense;
                    if (i < objArr2.length && (obj = objArr2[i]) != null && obj != Undefined.instance && obj != Scriptable.NOT_FOUND) {
                        sb.append(ScriptRuntime.toString(obj));
                    }
                    i++;
                }
                return sb.toString();
            }
        }
        if (i2 == 0) {
            return "";
        }
        String[] strArr = new String[i2];
        int length = 0;
        for (int i3 = 0; i3 != i2; i3++) {
            Object elem = getElem(context, scriptable, i3);
            if (elem != null && elem != Undefined.instance) {
                String string2 = ScriptRuntime.toString(elem);
                length += string2.length();
                strArr[i3] = string2;
            }
        }
        StringBuilder sb2 = new StringBuilder(length + ((i2 - 1) * string.length()));
        while (i != i2) {
            if (i != 0) {
                sb2.append(string);
            }
            String str = strArr[i];
            if (str != null) {
                sb2.append(str);
            }
            i++;
        }
        return sb2.toString();
    }

    private static Object js_lastIndexOf(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        long j;
        Object obj = objArr.length > 0 ? objArr[0] : Undefined.instance;
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        long lengthProperty = getLengthProperty(context, object, false);
        if (objArr.length < 2) {
            j = lengthProperty - 1;
        } else {
            long integer = (long) ScriptRuntime.toInteger(objArr[1]);
            if (integer >= lengthProperty) {
                j = lengthProperty - 1;
            } else {
                if (integer < 0) {
                    integer += lengthProperty;
                }
                j = integer;
            }
            if (j < 0) {
                return NEGATIVE_ONE;
            }
        }
        if (object instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) object;
            if (nativeArray.denseOnly) {
                Scriptable prototype = nativeArray.getPrototype();
                for (int i = (int) j; i >= 0; i--) {
                    Object property = nativeArray.dense[i];
                    Object obj2 = Scriptable.NOT_FOUND;
                    if (property == obj2 && prototype != null) {
                        property = ScriptableObject.getProperty(prototype, i);
                    }
                    if (property != obj2 && ScriptRuntime.shallowEq(property, obj)) {
                        return Long.valueOf(i);
                    }
                }
                return NEGATIVE_ONE;
            }
        }
        while (j >= 0) {
            Object rawElem = getRawElem(object, j);
            if (rawElem != Scriptable.NOT_FOUND && ScriptRuntime.shallowEq(rawElem, obj)) {
                return Long.valueOf(j);
            }
            j--;
        }
        return NEGATIVE_ONE;
    }

    private static Object js_of(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable scriptableCallConstructorOrCreateArray = callConstructorOrCreateArray(context, scriptable, scriptable2, objArr.length, true);
        for (int i = 0; i < objArr.length; i++) {
            defineElem(context, scriptableCallConstructorOrCreateArray, i, objArr[i]);
        }
        setLengthProperty(context, scriptableCallConstructorOrCreateArray, objArr.length);
        return scriptableCallConstructorOrCreateArray;
    }

    private static Object js_pop(Context context, Scriptable scriptable, Object[] objArr) {
        Object elem;
        if (scriptable instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) scriptable;
            if (nativeArray.denseOnly) {
                long j = nativeArray.length;
                if (j > 0) {
                    long j2 = j - 1;
                    nativeArray.length = j2;
                    Object[] objArr2 = nativeArray.dense;
                    Object obj = objArr2[(int) j2];
                    objArr2[(int) j2] = Scriptable.NOT_FOUND;
                    return obj;
                }
            }
        }
        long lengthProperty = getLengthProperty(context, scriptable, false);
        if (lengthProperty > 0) {
            lengthProperty--;
            elem = getElem(context, scriptable, lengthProperty);
            deleteElem(scriptable, lengthProperty);
        } else {
            elem = Undefined.instance;
        }
        setLengthProperty(context, scriptable, lengthProperty);
        return elem;
    }

    private static Object js_push(Context context, Scriptable scriptable, Object[] objArr) {
        int i = 0;
        if (scriptable instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) scriptable;
            if (nativeArray.denseOnly && nativeArray.ensureCapacity(((int) nativeArray.length) + objArr.length)) {
                while (i < objArr.length) {
                    Object[] objArr2 = nativeArray.dense;
                    long j = nativeArray.length;
                    nativeArray.length = 1 + j;
                    objArr2[(int) j] = objArr[i];
                    i++;
                }
                return ScriptRuntime.wrapNumber(nativeArray.length);
            }
        }
        long lengthProperty = getLengthProperty(context, scriptable, false);
        while (i < objArr.length) {
            setElem(context, scriptable, i + lengthProperty, objArr[i]);
            i++;
        }
        return context.getLanguageVersion() == 120 ? objArr.length == 0 ? Undefined.instance : objArr[objArr.length - 1] : setLengthProperty(context, scriptable, lengthProperty + objArr.length);
    }

    private static Scriptable js_reverse(Context context, Scriptable scriptable, Object[] objArr) {
        int i = 0;
        if (scriptable instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) scriptable;
            if (nativeArray.denseOnly) {
                for (int i2 = ((int) nativeArray.length) - 1; i < i2; i2--) {
                    Object[] objArr2 = nativeArray.dense;
                    Object obj = objArr2[i];
                    objArr2[i] = objArr2[i2];
                    objArr2[i2] = obj;
                    i++;
                }
                return scriptable;
            }
        }
        long lengthProperty = getLengthProperty(context, scriptable, false);
        long j = lengthProperty / 2;
        for (long j2 = 0; j2 < j; j2++) {
            long j3 = (lengthProperty - j2) - 1;
            Object rawElem = getRawElem(scriptable, j2);
            setRawElem(context, scriptable, j2, getRawElem(scriptable, j3));
            setRawElem(context, scriptable, j3, rawElem);
        }
        return scriptable;
    }

    private static Object js_shift(Context context, Scriptable scriptable, Object[] objArr) {
        Object elem;
        if (scriptable instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) scriptable;
            if (nativeArray.denseOnly) {
                long j = nativeArray.length;
                if (j > 0) {
                    long j2 = j - 1;
                    nativeArray.length = j2;
                    Object[] objArr2 = nativeArray.dense;
                    Object obj = objArr2[0];
                    System.arraycopy(objArr2, 1, objArr2, 0, (int) j2);
                    Object[] objArr3 = nativeArray.dense;
                    int i = (int) nativeArray.length;
                    Object obj2 = Scriptable.NOT_FOUND;
                    objArr3[i] = obj2;
                    return obj == obj2 ? Undefined.instance : obj;
                }
            }
        }
        long lengthProperty = getLengthProperty(context, scriptable, false);
        if (lengthProperty > 0) {
            lengthProperty--;
            elem = getElem(context, scriptable, 0L);
            if (lengthProperty > 0) {
                for (long j3 = 1; j3 <= lengthProperty; j3++) {
                    setRawElem(context, scriptable, j3 - 1, getRawElem(scriptable, j3));
                }
            }
            deleteElem(scriptable, lengthProperty);
        } else {
            elem = Undefined.instance;
        }
        setLengthProperty(context, scriptable, lengthProperty);
        return elem;
    }

    private Scriptable js_slice(Context context, Scriptable scriptable, Object[] objArr) {
        long sliceIndex;
        Scriptable scriptableNewArray = context.newArray(ScriptableObject.getTopLevelScope(this), 0);
        long lengthProperty = getLengthProperty(context, scriptable, false);
        if (objArr.length == 0) {
            sliceIndex = 0;
        } else {
            sliceIndex = toSliceIndex(ScriptRuntime.toInteger(objArr[0]), lengthProperty);
            if (objArr.length != 1 && objArr[1] != Undefined.instance) {
                lengthProperty = toSliceIndex(ScriptRuntime.toInteger(objArr[1]), lengthProperty);
            }
        }
        for (long j = sliceIndex; j < lengthProperty; j++) {
            Object rawElem = getRawElem(scriptable, j);
            if (rawElem != Scriptable.NOT_FOUND) {
                defineElem(context, scriptableNewArray, j - sliceIndex, rawElem);
            }
        }
        setLengthProperty(context, scriptableNewArray, Math.max(0L, lengthProperty - sliceIndex));
        return scriptableNewArray;
    }

    private static Scriptable js_sort(final Context context, final Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Comparator<Object> elementComparator;
        if (objArr.length <= 0 || Undefined.instance == objArr[0]) {
            elementComparator = DEFAULT_COMPARATOR;
        } else {
            final Callable valueFunctionAndThis = ScriptRuntime.getValueFunctionAndThis(objArr[0], context);
            final Scriptable scriptableLastStoredScriptable = ScriptRuntime.lastStoredScriptable(context);
            final Object[] objArr2 = new Object[2];
            elementComparator = new ElementComparator(new Comparator<Object>() { // from class: org.mozilla.javascript.NativeArray.1
                @Override // java.util.Comparator
                public int compare(Object obj, Object obj2) {
                    Object[] objArr3 = objArr2;
                    objArr3[0] = obj;
                    objArr3[1] = obj2;
                    double number = ScriptRuntime.toNumber(valueFunctionAndThis.call(context, scriptable, scriptableLastStoredScriptable, objArr3));
                    if (number < 0.0d) {
                        return -1;
                    }
                    return number > 0.0d ? 1 : 0;
                }
            });
        }
        long lengthProperty = getLengthProperty(context, scriptable2, false);
        int i = (int) lengthProperty;
        if (lengthProperty != i) {
            throw Context.reportRuntimeError1("msg.arraylength.too.big", String.valueOf(lengthProperty));
        }
        Object[] objArr3 = new Object[i];
        for (int i2 = 0; i2 != i; i2++) {
            objArr3[i2] = getRawElem(scriptable2, i2);
        }
        Sorting.get().hybridSort(objArr3, elementComparator);
        for (int i3 = 0; i3 < i; i3++) {
            setRawElem(context, scriptable2, i3, objArr3[i3]);
        }
        return scriptable2;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0151 A[LOOP:1: B:75:0x014f->B:76:0x0151, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Object js_splice(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        NativeArray nativeArray;
        boolean z;
        boolean z2;
        long j;
        NativeArray nativeArray2;
        long j2;
        Object objNewArray;
        long j3;
        int i;
        Object objNewArray2;
        if (scriptable2 instanceof NativeArray) {
            nativeArray = (NativeArray) scriptable2;
            z = nativeArray.denseOnly;
        } else {
            nativeArray = null;
            z = false;
        }
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        int length = objArr.length;
        if (length == 0) {
            return context.newArray(topLevelScope, 0);
        }
        long lengthProperty = getLengthProperty(context, scriptable2, false);
        long sliceIndex = toSliceIndex(ScriptRuntime.toInteger(objArr[0]), lengthProperty);
        int i2 = length - 1;
        if (objArr.length == 1) {
            j = lengthProperty - sliceIndex;
            z2 = z;
        } else {
            double integer = ScriptRuntime.toInteger(objArr[1]);
            if (integer < 0.0d) {
                z2 = z;
                j = 0;
            } else {
                z2 = z;
                long j4 = lengthProperty - sliceIndex;
                if (integer <= j4) {
                    j4 = (long) integer;
                }
                j = j4;
            }
            i2--;
        }
        long j5 = sliceIndex + j;
        if (j == 0) {
            nativeArray2 = nativeArray;
            j2 = lengthProperty;
            if (context.getLanguageVersion() != 120) {
                objNewArray = context.newArray(topLevelScope, 0);
                long j6 = i2;
                j3 = j6 - j;
                if (z2) {
                    long j7 = j2 + j3;
                    if (j7 < 2147483647L) {
                        int i3 = (int) j7;
                        NativeArray nativeArray3 = nativeArray2;
                        if (nativeArray3.ensureCapacity(i3)) {
                            Object[] objArr2 = nativeArray3.dense;
                            System.arraycopy(objArr2, (int) j5, objArr2, (int) (j6 + sliceIndex), (int) (j2 - j5));
                            if (i2 > 0) {
                                System.arraycopy(objArr, 2, nativeArray3.dense, (int) sliceIndex, i2);
                            }
                            if (j3 < 0) {
                                Arrays.fill(nativeArray3.dense, i3, (int) j2, Scriptable.NOT_FOUND);
                            }
                            nativeArray3.length = j7;
                            return objNewArray;
                        }
                    }
                }
                long j8 = j2;
                if (j3 <= 0) {
                    long j9 = j8 - 1;
                    while (j9 >= j5) {
                        setRawElem(context, scriptable2, j9 + j3, getRawElem(scriptable2, j9));
                        j9--;
                        j5 = j5;
                    }
                } else if (j3 < 0) {
                    for (long j10 = j5; j10 < j8; j10++) {
                        setRawElem(context, scriptable2, j10 + j3, getRawElem(scriptable2, j10));
                    }
                    for (long j11 = j8 - 1; j11 >= j8 + j3; j11--) {
                        deleteElem(scriptable2, j11);
                    }
                }
                int length2 = objArr.length - i2;
                for (i = 0; i < i2; i++) {
                    setElem(context, scriptable2, i + sliceIndex, objArr[i + length2]);
                }
                setLengthProperty(context, scriptable2, j8 + j3);
                return objNewArray;
            }
            objNewArray2 = Undefined.instance;
        } else if (j == 1 && context.getLanguageVersion() == 120) {
            nativeArray2 = nativeArray;
            j2 = lengthProperty;
            objNewArray2 = getElem(context, scriptable2, sliceIndex);
        } else if (z2) {
            int i4 = (int) (j5 - sliceIndex);
            Object[] objArr3 = new Object[i4];
            nativeArray2 = nativeArray;
            j2 = lengthProperty;
            System.arraycopy(nativeArray.dense, (int) sliceIndex, objArr3, 0, i4);
            objNewArray2 = context.newArray(topLevelScope, objArr3);
        } else {
            nativeArray2 = nativeArray;
            j2 = lengthProperty;
            Scriptable scriptableNewArray = context.newArray(topLevelScope, 0);
            for (long j12 = sliceIndex; j12 != j5; j12++) {
                Object rawElem = getRawElem(scriptable2, j12);
                if (rawElem != Scriptable.NOT_FOUND) {
                    setElem(context, scriptableNewArray, j12 - sliceIndex, rawElem);
                }
            }
            setLengthProperty(context, scriptableNewArray, j5 - sliceIndex);
            objNewArray2 = scriptableNewArray;
        }
        objNewArray = objNewArray2;
        long j62 = i2;
        j3 = j62 - j;
        if (z2) {
        }
        long j82 = j2;
        if (j3 <= 0) {
        }
        int length22 = objArr.length - i2;
        while (i < i2) {
        }
        setLengthProperty(context, scriptable2, j82 + j3);
        return objNewArray;
    }

    private static Object js_unshift(Context context, Scriptable scriptable, Object[] objArr) {
        int i = 0;
        if (scriptable instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) scriptable;
            if (nativeArray.denseOnly && nativeArray.ensureCapacity(((int) nativeArray.length) + objArr.length)) {
                Object[] objArr2 = nativeArray.dense;
                System.arraycopy(objArr2, 0, objArr2, objArr.length, (int) nativeArray.length);
                while (i < objArr.length) {
                    nativeArray.dense[i] = objArr[i];
                    i++;
                }
                long length = nativeArray.length + objArr.length;
                nativeArray.length = length;
                return ScriptRuntime.wrapNumber(length);
            }
        }
        long lengthProperty = getLengthProperty(context, scriptable, false);
        int length2 = objArr.length;
        if (objArr.length > 0) {
            if (lengthProperty > 0) {
                for (long j = lengthProperty - 1; j >= 0; j--) {
                    setRawElem(context, scriptable, length2 + j, getRawElem(scriptable, j));
                }
            }
            while (i < objArr.length) {
                setElem(context, scriptable, i, objArr[i]);
                i++;
            }
        }
        return setLengthProperty(context, scriptable, lengthProperty + objArr.length);
    }

    private static Object reduceMethod(Context context, int i, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        long lengthProperty = getLengthProperty(context, object, false);
        Object obj = objArr.length > 0 ? objArr[0] : Undefined.instance;
        if (obj == null || !(obj instanceof Function)) {
            throw ScriptRuntime.notFunctionError(obj);
        }
        Function function = (Function) obj;
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(function);
        boolean z = i == 24;
        Object objCall = objArr.length > 1 ? objArr[1] : Scriptable.NOT_FOUND;
        for (long j = 0; j < lengthProperty; j++) {
            long j2 = z ? j : (lengthProperty - 1) - j;
            Object rawElem = getRawElem(object, j2);
            Object obj2 = Scriptable.NOT_FOUND;
            if (rawElem != obj2) {
                objCall = objCall == obj2 ? rawElem : function.call(context, topLevelScope, topLevelScope, new Object[]{objCall, rawElem, Long.valueOf(j2), object});
            }
        }
        if (objCall != Scriptable.NOT_FOUND) {
            return objCall;
        }
        throw ScriptRuntime.typeError0("msg.empty.array.reduce");
    }

    private static void setElem(Context context, Scriptable scriptable, long j, Object obj) {
        if (j > 2147483647L) {
            ScriptableObject.putProperty(scriptable, Long.toString(j), obj);
        } else {
            ScriptableObject.putProperty(scriptable, (int) j, obj);
        }
    }

    private void setLength(Object obj) {
        if ((this.lengthAttr & 1) != 0) {
            return;
        }
        double number = ScriptRuntime.toNumber(obj);
        long uint32 = ScriptRuntime.toUint32(number);
        double d = uint32;
        if (d != number) {
            throw ScriptRuntime.constructError("RangeError", ScriptRuntime.getMessage0("msg.arraylength.bad"));
        }
        if (this.denseOnly) {
            long j = this.length;
            if (uint32 < j) {
                Object[] objArr = this.dense;
                Arrays.fill(objArr, (int) uint32, objArr.length, Scriptable.NOT_FOUND);
                this.length = uint32;
                return;
            }
            if (uint32 < 1431655764) {
                double d2 = j;
                Double.isNaN(d2);
                if (d < d2 * GROW_FACTOR && ensureCapacity((int) uint32)) {
                    this.length = uint32;
                    return;
                }
            }
            this.denseOnly = false;
        }
        long j2 = this.length;
        if (uint32 < j2) {
            if (j2 - uint32 > 4096) {
                for (Object obj2 : getIds()) {
                    if (obj2 instanceof String) {
                        String str = (String) obj2;
                        if (toArrayIndex(str) >= uint32) {
                            delete(str);
                        }
                    } else {
                        int iIntValue = ((Integer) obj2).intValue();
                        if (iIntValue >= uint32) {
                            delete(iIntValue);
                        }
                    }
                }
            } else {
                for (long j3 = uint32; j3 < this.length; j3++) {
                    deleteElem(this, j3);
                }
            }
        }
        this.length = uint32;
    }

    private static Object setLengthProperty(Context context, Scriptable scriptable, long j) {
        Number numberWrapNumber = ScriptRuntime.wrapNumber(j);
        ScriptableObject.putProperty(scriptable, "length", numberWrapNumber);
        return numberWrapNumber;
    }

    public static void setMaximumInitialCapacity(int i) {
        maximumInitialCapacity = i;
    }

    private static void setRawElem(Context context, Scriptable scriptable, long j, Object obj) {
        if (obj == Scriptable.NOT_FOUND) {
            deleteElem(scriptable, j);
        } else {
            setElem(context, scriptable, j, obj);
        }
    }

    private static long toArrayIndex(Object obj) {
        if (obj instanceof String) {
            return toArrayIndex((String) obj);
        }
        if (obj instanceof Number) {
            return toArrayIndex(((Number) obj).doubleValue());
        }
        return -1L;
    }

    private static int toDenseIndex(Object obj) {
        long arrayIndex = toArrayIndex(obj);
        if (0 > arrayIndex || arrayIndex >= 2147483647L) {
            return -1;
        }
        return (int) arrayIndex;
    }

    private static long toSliceIndex(double d, long j) {
        if (d < 0.0d) {
            double d2 = j;
            Double.isNaN(d2);
            d += d2;
            if (d < 0.0d) {
                return 0L;
            }
        } else if (d > j) {
            return j;
        }
        return (long) d;
    }

    private static String toStringHelper(Context context, Scriptable scriptable, Scriptable scriptable2, boolean z, boolean z2) {
        String str;
        boolean zHas;
        boolean z3;
        long j;
        boolean z4;
        long lengthProperty = getLengthProperty(context, scriptable2, false);
        StringBuilder sb = new StringBuilder(256);
        if (z) {
            sb.append('[');
            str = ", ";
        } else {
            str = ",";
        }
        ObjToIntMap objToIntMap = context.iterating;
        if (objToIntMap == null) {
            context.iterating = new ObjToIntMap(31);
            zHas = false;
            z3 = true;
        } else {
            zHas = objToIntMap.has(scriptable2);
            z3 = false;
        }
        long j2 = 0;
        if (zHas) {
            z4 = false;
            j = 0;
        } else {
            try {
                context.iterating.put(scriptable2, 0);
                boolean z5 = !z || context.getLanguageVersion() < 150;
                j = 0;
                boolean z6 = false;
                while (j < lengthProperty) {
                    if (j > j2) {
                        sb.append(str);
                    }
                    Object rawElem = getRawElem(scriptable2, j);
                    if (rawElem == Scriptable.NOT_FOUND || (z5 && (rawElem == null || rawElem == Undefined.instance))) {
                        z6 = false;
                    } else {
                        if (z) {
                            sb.append(ScriptRuntime.uneval(context, scriptable, rawElem));
                        } else if (rawElem instanceof String) {
                            String str2 = (String) rawElem;
                            if (z) {
                                sb.append(ca2.f674do);
                                sb.append(ScriptRuntime.escapeString(str2));
                                sb.append(ca2.f674do);
                            } else {
                                sb.append(str2);
                            }
                        } else {
                            if (z2) {
                                rawElem = ScriptRuntime.getPropFunctionAndThis(rawElem, "toLocaleString", context, scriptable).call(context, scriptable, ScriptRuntime.lastStoredScriptable(context), ScriptRuntime.emptyArgs);
                            }
                            sb.append(ScriptRuntime.toString(rawElem));
                        }
                        z6 = true;
                    }
                    j++;
                    j2 = 0;
                }
                z4 = z6;
            } finally {
                if (z3) {
                    context.iterating = null;
                }
            }
        }
        if (z) {
            if (z4 || j <= 0) {
                sb.append(']');
            } else {
                sb.append(", ]");
            }
        }
        return sb.toString();
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) > -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public void defineOwnProperty(Context context, Object obj, ScriptableObject scriptableObject, boolean z) {
        Object[] objArr = this.dense;
        if (objArr != null) {
            this.dense = null;
            this.denseOnly = false;
            for (int i = 0; i < objArr.length; i++) {
                if (objArr[i] != Scriptable.NOT_FOUND) {
                    put(i, this, objArr[i]);
                }
            }
        }
        long arrayIndex = toArrayIndex(obj);
        if (arrayIndex >= this.length) {
            this.length = arrayIndex + 1;
        }
        super.defineOwnProperty(context, obj, scriptableObject, z);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void delete(int i) {
        Object[] objArr = this.dense;
        if (objArr == null || i < 0 || i >= objArr.length || isSealed() || (!this.denseOnly && isGetterOrSetter(null, i, true))) {
            super.delete(i);
        } else {
            this.dense[i] = Scriptable.NOT_FOUND;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:200)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:61)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
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
    public java.lang.Object execIdCall(org.mozilla.javascript.IdFunctionObject r7, org.mozilla.javascript.Context r8, org.mozilla.javascript.Scriptable r9, org.mozilla.javascript.Scriptable r10, java.lang.Object[] r11) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.execIdCall(org.mozilla.javascript.IdFunctionObject, org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        Object obj = ARRAY_TAG;
        addIdFunctionProperty(idFunctionObject, obj, -5, "join", 1);
        addIdFunctionProperty(idFunctionObject, obj, -6, "reverse", 0);
        addIdFunctionProperty(idFunctionObject, obj, -7, "sort", 1);
        addIdFunctionProperty(idFunctionObject, obj, -8, "push", 1);
        addIdFunctionProperty(idFunctionObject, obj, -9, "pop", 0);
        addIdFunctionProperty(idFunctionObject, obj, -10, "shift", 0);
        addIdFunctionProperty(idFunctionObject, obj, -11, "unshift", 1);
        addIdFunctionProperty(idFunctionObject, obj, -12, "splice", 2);
        addIdFunctionProperty(idFunctionObject, obj, -13, "concat", 1);
        addIdFunctionProperty(idFunctionObject, obj, -14, "slice", 2);
        addIdFunctionProperty(idFunctionObject, obj, -15, "indexOf", 1);
        addIdFunctionProperty(idFunctionObject, obj, -16, "lastIndexOf", 1);
        addIdFunctionProperty(idFunctionObject, obj, -17, "every", 1);
        addIdFunctionProperty(idFunctionObject, obj, -18, "filter", 1);
        addIdFunctionProperty(idFunctionObject, obj, -19, "forEach", 1);
        addIdFunctionProperty(idFunctionObject, obj, -20, "map", 1);
        addIdFunctionProperty(idFunctionObject, obj, -21, "some", 1);
        addIdFunctionProperty(idFunctionObject, obj, -22, "find", 1);
        addIdFunctionProperty(idFunctionObject, obj, -23, "findIndex", 1);
        addIdFunctionProperty(idFunctionObject, obj, -24, "reduce", 1);
        addIdFunctionProperty(idFunctionObject, obj, -25, "reduceRight", 1);
        addIdFunctionProperty(idFunctionObject, obj, -26, "isArray", 1);
        addIdFunctionProperty(idFunctionObject, obj, -27, "of", 0);
        addIdFunctionProperty(idFunctionObject, obj, -28, TypedValues.Transition.S_FROM, 1);
        super.fillConstructorProperties(idFunctionObject);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        return str.equals("length") ? IdScriptableObject.instanceIdInfo(this.lengthAttr, 1) : super.findInstanceIdInfo(str);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(Symbol symbol) {
        return SymbolKey.ITERATOR.equals(symbol) ? 32 : 0;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        if (!this.denseOnly && isGetterOrSetter(null, i, false)) {
            return super.get(i, scriptable);
        }
        Object[] objArr = this.dense;
        return (objArr == null || i < 0 || i >= objArr.length) ? super.get(i, scriptable) : objArr[i];
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public int getAttributes(int i) {
        Object[] objArr = this.dense;
        if (objArr == null || i < 0 || i >= objArr.length || objArr[i] == Scriptable.NOT_FOUND) {
            return super.getAttributes(i);
        }
        return 0;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Array";
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        return (cls == ScriptRuntime.NumberClass && Context.getContext().getLanguageVersion() == 120) ? Long.valueOf(this.length) : super.getDefaultValue(cls);
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject
    public Object[] getIds(boolean z, boolean z2) {
        Object[] ids = super.getIds(z, z2);
        Object[] objArr = this.dense;
        if (objArr == null) {
            return ids;
        }
        int length = objArr.length;
        long j = this.length;
        if (length > j) {
            length = (int) j;
        }
        if (length == 0) {
            return ids;
        }
        int length2 = ids.length;
        Object[] objArr2 = new Object[length + length2];
        int i = 0;
        for (int i2 = 0; i2 != length; i2++) {
            if (this.dense[i2] != Scriptable.NOT_FOUND) {
                objArr2[i] = Integer.valueOf(i2);
                i++;
            }
        }
        if (i != length) {
            Object[] objArr3 = new Object[i + length2];
            System.arraycopy(objArr2, 0, objArr3, 0, i);
            objArr2 = objArr3;
        }
        System.arraycopy(ids, 0, objArr2, i, length2);
        return objArr2;
    }

    public List<Integer> getIndexIds() {
        Object[] ids = getIds();
        ArrayList arrayList = new ArrayList(ids.length);
        for (Object obj : ids) {
            int int32 = ScriptRuntime.toInt32(obj);
            if (int32 >= 0 && ScriptRuntime.toString(int32).equals(ScriptRuntime.toString(obj))) {
                arrayList.add(Integer.valueOf(int32));
            }
        }
        return arrayList;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        return i == 1 ? "length" : super.getInstanceIdName(i);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        return i == 1 ? ScriptRuntime.wrapNumber(this.length) : super.getInstanceIdValue(i);
    }

    public long getLength() {
        return this.length;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 1;
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject
    public ScriptableObject getOwnPropertyDescriptor(Context context, Object obj) {
        int denseIndex;
        if (this.dense != null && (denseIndex = toDenseIndex(obj)) >= 0) {
            Object[] objArr = this.dense;
            if (denseIndex < objArr.length && objArr[denseIndex] != Scriptable.NOT_FOUND) {
                return defaultIndexPropertyDescriptor(objArr[denseIndex]);
            }
        }
        return super.getOwnPropertyDescriptor(context, obj);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        if (!this.denseOnly && isGetterOrSetter(null, i, false)) {
            return super.has(i, scriptable);
        }
        Object[] objArr = this.dense;
        return (objArr == null || i < 0 || i >= objArr.length) ? super.has(i, scriptable) : objArr[i] != Scriptable.NOT_FOUND;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        long j = this.length;
        if (j > 2147483647L) {
            throw new IllegalStateException();
        }
        int i = (int) j;
        int i2 = 0;
        if (obj == null) {
            while (i2 < i) {
                if (get(i2) == null) {
                    return i2;
                }
                i2++;
            }
            return -1;
        }
        while (i2 < i) {
            if (obj.equals(get(i2))) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        String str;
        String str2;
        String str3;
        String str4;
        int i2;
        if (i == 32) {
            initPrototypeMethod(ARRAY_TAG, i, SymbolKey.ITERATOR, "[Symbol.iterator]", 0);
            return;
        }
        switch (i) {
            case 1:
                str = "constructor";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 2:
                str2 = "toString";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 3:
                str2 = "toLocaleString";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 4:
                str2 = "toSource";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 5:
                str = "join";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 6:
                str2 = "reverse";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 7:
                str = "sort";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 8:
                str = "push";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 9:
                str2 = "pop";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 10:
                str2 = "shift";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 11:
                str = "unshift";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 12:
                str3 = "splice";
                str4 = str3;
                i2 = 2;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 13:
                str = "concat";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 14:
                str3 = "slice";
                str4 = str3;
                i2 = 2;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 15:
                str = "indexOf";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 16:
                str = "lastIndexOf";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 17:
                str = "every";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 18:
                str = "filter";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 19:
                str = "forEach";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 20:
                str = "map";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 21:
                str = "some";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 22:
                str = "find";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 23:
                str = "findIndex";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 24:
                str = "reduce";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 25:
                str = "reduceRight";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 26:
                str = "fill";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 27:
                str2 = "keys";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 28:
                str2 = "values";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 29:
                str2 = "entries";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 30:
                str = "includes";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            case 31:
                str3 = "copyWithin";
                str4 = str3;
                i2 = 2;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                return;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.length == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return listIterator(0);
    }

    @Deprecated
    public long jsGet_length() {
        return getLength();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        long j = this.length;
        if (j > 2147483647L) {
            throw new IllegalStateException();
        }
        int i = (int) j;
        if (obj == null) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (get(i2) == null) {
                    return i2;
                }
            }
            return -1;
        }
        for (int i3 = i - 1; i3 >= 0; i3--) {
            if (obj.equals(get(i3))) {
                return i3;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
        super.put(str, scriptable, obj);
        if (scriptable == this) {
            long arrayIndex = toArrayIndex(str);
            if (arrayIndex >= this.length) {
                this.length = arrayIndex + 1;
                this.denseOnly = false;
            }
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    public void setDenseOnly(boolean z) {
        if (z && !this.denseOnly) {
            throw new IllegalArgumentException();
        }
        this.denseOnly = z;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdAttributes(int i, int i2) {
        if (i == 1) {
            this.lengthAttr = i2;
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdValue(int i, Object obj) {
        if (i == 1) {
            setLength(obj);
        } else {
            super.setInstanceIdValue(i, obj);
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, java.util.List, java.util.Collection
    public int size() {
        long j = this.length;
        if (j <= 2147483647L) {
            return (int) j;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.List
    public List subList(int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return toArray(ScriptRuntime.emptyArgs);
    }

    public static final class ElementComparator implements Comparator<Object> {
        private final Comparator<Object> child;

        public ElementComparator() {
            this.child = NativeArray.STRING_COMPARATOR;
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            Object obj3 = Undefined.instance;
            if (obj == obj3) {
                if (obj2 == obj3) {
                    return 0;
                }
                return obj2 == Scriptable.NOT_FOUND ? -1 : 1;
            }
            Object obj4 = Scriptable.NOT_FOUND;
            if (obj == obj4) {
                return obj2 == obj4 ? 0 : 1;
            }
            if (obj2 == obj4 || obj2 == obj3) {
                return -1;
            }
            return this.child.compare(obj, obj2);
        }

        public ElementComparator(Comparator<Object> comparator) {
            this.child = comparator;
        }
    }

    @Override // java.util.List
    public void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0140  */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 3;
        if (length != 14) {
            switch (length) {
                case 3:
                    char cCharAt = str.charAt(0);
                    if (cCharAt == 'm') {
                        if (str.charAt(2) == 'p' && str.charAt(1) == 'a') {
                            return 20;
                        }
                    } else if (cCharAt == 'p' && str.charAt(2) == 'p' && str.charAt(1) == 'o') {
                        return 9;
                    }
                    str2 = null;
                    i = 0;
                    break;
                case 4:
                    char cCharAt2 = str.charAt(2);
                    if (cCharAt2 == 'i') {
                        i = 5;
                        str2 = "join";
                        break;
                    } else if (cCharAt2 == 'y') {
                        i = 27;
                        str2 = "keys";
                        break;
                    } else if (cCharAt2 == 'r') {
                        i = 7;
                        str2 = "sort";
                        break;
                    } else if (cCharAt2 == 's') {
                        i = 8;
                        str2 = "push";
                        break;
                    } else {
                        switch (cCharAt2) {
                            case 'l':
                                i = 26;
                                str2 = "fill";
                                break;
                            case 'm':
                                i = 21;
                                str2 = "some";
                                break;
                            case 'n':
                                i = 22;
                                str2 = "find";
                                break;
                            default:
                                str2 = null;
                                i = 0;
                                break;
                        }
                    }
                case 5:
                    char cCharAt3 = str.charAt(1);
                    if (cCharAt3 == 'h') {
                        i = 10;
                        str2 = "shift";
                        break;
                    } else if (cCharAt3 == 'l') {
                        str2 = "slice";
                        i = 14;
                        break;
                    } else if (cCharAt3 == 'v') {
                        i = 17;
                        str2 = "every";
                        break;
                    }
                    break;
                case 6:
                    char cCharAt4 = str.charAt(0);
                    if (cCharAt4 == 'c') {
                        i = 13;
                        str2 = "concat";
                        break;
                    } else if (cCharAt4 == 'f') {
                        i = 18;
                        str2 = "filter";
                        break;
                    } else if (cCharAt4 == 'v') {
                        i = 28;
                        str2 = "values";
                        break;
                    } else if (cCharAt4 == 'r') {
                        i = 24;
                        str2 = "reduce";
                        break;
                    } else if (cCharAt4 == 's') {
                        i = 12;
                        str2 = "splice";
                        break;
                    }
                    break;
                case 7:
                    char cCharAt5 = str.charAt(0);
                    if (cCharAt5 == 'e') {
                        i = 29;
                        str2 = "entries";
                        break;
                    } else if (cCharAt5 == 'f') {
                        i = 19;
                        str2 = "forEach";
                        break;
                    } else if (cCharAt5 == 'i') {
                        i = 15;
                        str2 = "indexOf";
                        break;
                    } else if (cCharAt5 == 'r') {
                        i = 6;
                        str2 = "reverse";
                        break;
                    } else if (cCharAt5 == 'u') {
                        i = 11;
                        str2 = "unshift";
                        break;
                    }
                    break;
                case 8:
                    char cCharAt6 = str.charAt(3);
                    if (cCharAt6 == 'l') {
                        i = 30;
                        str2 = "includes";
                        break;
                    } else if (cCharAt6 == 'o') {
                        i = 4;
                        str2 = "toSource";
                        break;
                    } else if (cCharAt6 == 't') {
                        str2 = "toString";
                        i = 2;
                        break;
                    }
                    break;
                case 9:
                    i = 23;
                    str2 = "findIndex";
                    break;
                case 10:
                    i = 31;
                    str2 = "copyWithin";
                    break;
                case 11:
                    char cCharAt7 = str.charAt(0);
                    if (cCharAt7 == 'c') {
                        str2 = "constructor";
                        i = 1;
                        break;
                    } else if (cCharAt7 == 'l') {
                        i = 16;
                        str2 = "lastIndexOf";
                        break;
                    } else if (cCharAt7 == 'r') {
                        i = 25;
                        str2 = "reduceRight";
                        break;
                    }
                    break;
            }
        } else {
            str2 = "toLocaleString";
        }
        if (str2 == null || str2 == str || str2.equals(str)) {
            return i;
        }
        return 0;
    }

    @Override // java.util.List
    public ListIterator listIterator(int i) {
        long j = this.length;
        if (j > 2147483647L) {
            throw new IllegalStateException();
        }
        int i2 = (int) j;
        if (i >= 0 && i <= i2) {
            return new ListIterator(i, i2) { // from class: org.mozilla.javascript.NativeArray.2
                public int cursor;
                public final /* synthetic */ int val$len;
                public final /* synthetic */ int val$start;

                {
                    this.val$start = i;
                    this.val$len = i2;
                    this.cursor = i;
                }

                @Override // java.util.ListIterator
                public void add(Object obj) {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public boolean hasNext() {
                    return this.cursor < this.val$len;
                }

                @Override // java.util.ListIterator
                public boolean hasPrevious() {
                    return this.cursor > 0;
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public Object next() {
                    int i3 = this.cursor;
                    if (i3 == this.val$len) {
                        throw new NoSuchElementException();
                    }
                    NativeArray nativeArray = NativeArray.this;
                    this.cursor = i3 + 1;
                    return nativeArray.get(i3);
                }

                @Override // java.util.ListIterator
                public int nextIndex() {
                    return this.cursor;
                }

                @Override // java.util.ListIterator
                public Object previous() {
                    int i3 = this.cursor;
                    if (i3 == 0) {
                        throw new NoSuchElementException();
                    }
                    NativeArray nativeArray = NativeArray.this;
                    int i4 = i3 - 1;
                    this.cursor = i4;
                    return nativeArray.get(i4);
                }

                @Override // java.util.ListIterator
                public int previousIndex() {
                    return this.cursor - 1;
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public void remove() {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.ListIterator
                public void set(Object obj) {
                    throw new UnsupportedOperationException();
                }
            };
        }
        throw new IndexOutOfBoundsException("Index: " + i);
    }

    @Override // java.util.List
    public Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray(Object[] objArr) {
        long j = this.length;
        if (j > 2147483647L) {
            throw new IllegalStateException();
        }
        int i = (int) j;
        if (objArr.length < i) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        }
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = get(i2);
        }
        return objArr;
    }

    private static long toArrayIndex(String str) {
        long arrayIndex = toArrayIndex(ScriptRuntime.toNumber(str));
        if (Long.toString(arrayIndex).equals(str)) {
            return arrayIndex;
        }
        return -1L;
    }

    public Object get(long j) {
        if (j >= 0 && j < this.length) {
            Object rawElem = getRawElem(this, j);
            if (rawElem == Scriptable.NOT_FOUND || rawElem == Undefined.instance) {
                return null;
            }
            return rawElem instanceof Wrapper ? ((Wrapper) rawElem).unwrap() : rawElem;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        if (scriptable == this && !isSealed() && this.dense != null && i >= 0 && (this.denseOnly || !isGetterOrSetter(null, i, true))) {
            if (!isExtensible() && this.length <= i) {
                return;
            }
            Object[] objArr = this.dense;
            if (i < objArr.length) {
                objArr[i] = obj;
                long j = i;
                if (this.length <= j) {
                    this.length = j + 1;
                    return;
                }
                return;
            }
            if (this.denseOnly) {
                double d = i;
                double length = objArr.length;
                Double.isNaN(length);
                if (d < length * GROW_FACTOR && ensureCapacity(i + 1)) {
                    this.dense[i] = obj;
                    this.length = i + 1;
                    return;
                }
            }
            this.denseOnly = false;
        }
        super.put(i, scriptable, obj);
        if (scriptable == this && (this.lengthAttr & 1) == 0) {
            long j2 = i;
            if (this.length <= j2) {
                this.length = j2 + 1;
            }
        }
    }

    public NativeArray(Object[] objArr) {
        this.lengthAttr = 6;
        this.denseOnly = true;
        this.dense = objArr;
        this.length = objArr.length;
    }

    private static long toArrayIndex(double d) {
        if (d != d) {
            return -1L;
        }
        long uint32 = ScriptRuntime.toUint32(d);
        if (uint32 != d || uint32 == 4294967295L) {
            return -1L;
        }
        return uint32;
    }

    @Override // java.util.List
    public Object get(int i) {
        return get(i);
    }
}
