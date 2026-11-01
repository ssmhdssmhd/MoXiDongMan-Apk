package org.mozilla.javascript;

import com.umeng.analytics.pro.ak;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes3.dex */
public class NativeObject extends IdScriptableObject implements Map {
    private static final int ConstructorId_assign = -15;
    private static final int ConstructorId_create = -9;
    private static final int ConstructorId_defineProperties = -8;
    private static final int ConstructorId_defineProperty = -5;
    private static final int ConstructorId_freeze = -13;
    private static final int ConstructorId_getOwnPropertyDescriptor = -4;
    private static final int ConstructorId_getOwnPropertyNames = -3;
    private static final int ConstructorId_getOwnPropertySymbols = -14;
    private static final int ConstructorId_getPrototypeOf = -1;
    private static final int ConstructorId_is = -16;
    private static final int ConstructorId_isExtensible = -6;
    private static final int ConstructorId_isFrozen = -11;
    private static final int ConstructorId_isSealed = -10;
    private static final int ConstructorId_keys = -2;
    private static final int ConstructorId_preventExtensions = -7;
    private static final int ConstructorId_seal = -12;
    private static final int Id___defineGetter__ = 9;
    private static final int Id___defineSetter__ = 10;
    private static final int Id___lookupGetter__ = 11;
    private static final int Id___lookupSetter__ = 12;
    private static final int Id_constructor = 1;
    private static final int Id_hasOwnProperty = 5;
    private static final int Id_isPrototypeOf = 7;
    private static final int Id_propertyIsEnumerable = 6;
    private static final int Id_toLocaleString = 3;
    private static final int Id_toSource = 8;
    private static final int Id_toString = 2;
    private static final int Id_valueOf = 4;
    private static final int MAX_PROTOTYPE_ID = 12;
    private static final Object OBJECT_TAG = "Object";
    private static final long serialVersionUID = -6345305608474346996L;

    public class EntrySet extends AbstractSet<Map.Entry<Object, Object>> {
        public EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<Object, Object>> iterator() {
            return new Iterator<Map.Entry<Object, Object>>() { // from class: org.mozilla.javascript.NativeObject.EntrySet.1
                public Object[] ids;
                public Object key = null;
                public int index = 0;

                {
                    this.ids = NativeObject.this.getIds();
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.index < this.ids.length;
                }

                @Override // java.util.Iterator
                public void remove() {
                    Object obj = this.key;
                    if (obj == null) {
                        throw new IllegalStateException();
                    }
                    NativeObject.this.remove(obj);
                    this.key = null;
                }

                @Override // java.util.Iterator
                public Map.Entry<Object, Object> next() {
                    Object[] objArr = this.ids;
                    int i = this.index;
                    this.index = i + 1;
                    final Object obj = objArr[i];
                    this.key = obj;
                    final Object obj2 = NativeObject.this.get(obj);
                    return new Map.Entry<Object, Object>() { // from class: org.mozilla.javascript.NativeObject.EntrySet.1.1
                        @Override // java.util.Map.Entry
                        public boolean equals(Object obj3) {
                            if (!(obj3 instanceof Map.Entry)) {
                                return false;
                            }
                            Map.Entry entry = (Map.Entry) obj3;
                            Object obj4 = obj;
                            if (obj4 == null) {
                                if (entry.getKey() != null) {
                                    return false;
                                }
                            } else if (!obj4.equals(entry.getKey())) {
                                return false;
                            }
                            Object obj5 = obj2;
                            if (obj5 == null) {
                                if (entry.getValue() != null) {
                                    return false;
                                }
                            } else if (!obj5.equals(entry.getValue())) {
                                return false;
                            }
                            return true;
                        }

                        @Override // java.util.Map.Entry
                        public Object getKey() {
                            return obj;
                        }

                        @Override // java.util.Map.Entry
                        public Object getValue() {
                            return obj2;
                        }

                        @Override // java.util.Map.Entry
                        public int hashCode() {
                            Object obj3 = obj;
                            int iHashCode = obj3 == null ? 0 : obj3.hashCode();
                            Object obj4 = obj2;
                            return iHashCode ^ (obj4 != null ? obj4.hashCode() : 0);
                        }

                        @Override // java.util.Map.Entry
                        public Object setValue(Object obj3) {
                            throw new UnsupportedOperationException();
                        }

                        public String toString() {
                            return obj + "=" + obj2;
                        }
                    };
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return NativeObject.this.size();
        }
    }

    public class KeySet extends AbstractSet<Object> {
        public KeySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return NativeObject.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Object> iterator() {
            return new Iterator<Object>() { // from class: org.mozilla.javascript.NativeObject.KeySet.1
                public Object[] ids;
                public int index = 0;
                public Object key;

                {
                    this.ids = NativeObject.this.getIds();
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.index < this.ids.length;
                }

                @Override // java.util.Iterator
                public Object next() {
                    try {
                        Object[] objArr = this.ids;
                        int i = this.index;
                        this.index = i + 1;
                        Object obj = objArr[i];
                        this.key = obj;
                        return obj;
                    } catch (ArrayIndexOutOfBoundsException unused) {
                        this.key = null;
                        throw new NoSuchElementException();
                    }
                }

                @Override // java.util.Iterator
                public void remove() {
                    Object obj = this.key;
                    if (obj == null) {
                        throw new IllegalStateException();
                    }
                    NativeObject.this.remove(obj);
                    this.key = null;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return NativeObject.this.size();
        }
    }

    public class ValueCollection extends AbstractCollection<Object> {
        public ValueCollection() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Object> iterator() {
            return new Iterator<Object>() { // from class: org.mozilla.javascript.NativeObject.ValueCollection.1
                public Object[] ids;
                public int index = 0;
                public Object key;

                {
                    this.ids = NativeObject.this.getIds();
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.index < this.ids.length;
                }

                @Override // java.util.Iterator
                public Object next() {
                    NativeObject nativeObject = NativeObject.this;
                    Object[] objArr = this.ids;
                    int i = this.index;
                    this.index = i + 1;
                    Object obj = objArr[i];
                    this.key = obj;
                    return nativeObject.get(obj);
                }

                @Override // java.util.Iterator
                public void remove() {
                    Object obj = this.key;
                    if (obj == null) {
                        throw new IllegalStateException();
                    }
                    NativeObject.this.remove(obj);
                    this.key = null;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return NativeObject.this.size();
        }
    }

    private static Scriptable getCompatibleObject(Context context, Scriptable scriptable, Object obj) {
        return context.getLanguageVersion() >= 200 ? ScriptableObject.ensureScriptable(ScriptRuntime.toObject(context, scriptable, obj)) : ScriptableObject.ensureScriptable(obj);
    }

    public static void init(Scriptable scriptable, boolean z) {
        new NativeObject().exportAsJSClass(12, scriptable, z);
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return has((String) obj, this);
        }
        if (obj instanceof Number) {
            return has(((Number) obj).intValue(), this);
        }
        return false;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        for (Object obj2 : values()) {
            if (obj == obj2) {
                return true;
            }
            if (obj != null && obj.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map
    public Set<Map.Entry<Object, Object>> entrySet() {
        return new EntrySet();
    }

    /* JADX WARN: Removed duplicated region for block: B:93:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0107 A[PHI: r10
      0x0107: PHI (r10v16 boolean) = (r10v14 boolean), (r10v14 boolean), (r10v19 boolean), (r10v19 boolean) binds: [B:107:0x0132, B:109:0x0136, B:88:0x00f6, B:90:0x00fa] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        int int32;
        Object obj;
        boolean zHas;
        boolean zHas2;
        Object getterOrSetter;
        Scriptable prototype;
        if (!idFunctionObject.hasTag(OBJECT_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        z = false;
        z = false;
        boolean z = false;
        z = false;
        z = false;
        boolean z2 = false;
        switch (iMethodId) {
            case -16:
                return ScriptRuntime.wrapBoolean(ScriptRuntime.same(objArr.length < 1 ? Undefined.instance : objArr[0], objArr.length < 2 ? Undefined.instance : objArr[1]));
            case -15:
                if (objArr.length < 1) {
                    throw ScriptRuntime.typeError1("msg.incompat.call", "assign");
                }
                Scriptable object = ScriptRuntime.toObject(context, scriptable2, objArr[0]);
                for (int i = 1; i < objArr.length; i++) {
                    if (objArr[i] != null && !Undefined.instance.equals(objArr[i])) {
                        Scriptable object2 = ScriptRuntime.toObject(context, scriptable2, objArr[i]);
                        for (Object obj2 : object2.getIds()) {
                            if (obj2 instanceof String) {
                                String str = (String) obj2;
                                Object obj3 = object2.get(str, object);
                                if (obj3 != Scriptable.NOT_FOUND && obj3 != Undefined.instance) {
                                    object.put(str, object, obj3);
                                }
                            } else if ((obj2 instanceof Number) && (obj = object2.get((int32 = ScriptRuntime.toInt32(obj2)), object)) != Scriptable.NOT_FOUND && obj != Undefined.instance) {
                                object.put(int32, object, obj);
                            }
                        }
                    }
                }
                return object;
            case -14:
                Object[] ids = ScriptableObject.ensureScriptableObject(getCompatibleObject(context, scriptable, objArr.length < 1 ? Undefined.instance : objArr[0])).getIds(true, true);
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < ids.length; i2++) {
                    if (ids[i2] instanceof Symbol) {
                        arrayList.add(ids[i2]);
                    }
                }
                return context.newArray(scriptable, arrayList.toArray());
            case -13:
                Object obj4 = objArr.length < 1 ? Undefined.instance : objArr[0];
                if (context.getLanguageVersion() >= 200 && !(obj4 instanceof ScriptableObject)) {
                    return obj4;
                }
                ScriptableObject scriptableObjectEnsureScriptableObject = ScriptableObject.ensureScriptableObject(obj4);
                for (Object obj5 : scriptableObjectEnsureScriptableObject.getAllIds()) {
                    ScriptableObject ownPropertyDescriptor = scriptableObjectEnsureScriptableObject.getOwnPropertyDescriptor(context, obj5);
                    if (isDataDescriptor(ownPropertyDescriptor) && Boolean.TRUE.equals(ownPropertyDescriptor.get("writable"))) {
                        ownPropertyDescriptor.put("writable", ownPropertyDescriptor, Boolean.FALSE);
                    }
                    if (Boolean.TRUE.equals(ownPropertyDescriptor.get("configurable"))) {
                        ownPropertyDescriptor.put("configurable", ownPropertyDescriptor, Boolean.FALSE);
                    }
                    scriptableObjectEnsureScriptableObject.defineOwnProperty(context, obj5, ownPropertyDescriptor, false);
                }
                scriptableObjectEnsureScriptableObject.preventExtensions();
                return scriptableObjectEnsureScriptableObject;
            case -12:
                Object obj6 = objArr.length < 1 ? Undefined.instance : objArr[0];
                if (context.getLanguageVersion() >= 200 && !(obj6 instanceof ScriptableObject)) {
                    return obj6;
                }
                ScriptableObject scriptableObjectEnsureScriptableObject2 = ScriptableObject.ensureScriptableObject(obj6);
                for (Object obj7 : scriptableObjectEnsureScriptableObject2.getAllIds()) {
                    ScriptableObject ownPropertyDescriptor2 = scriptableObjectEnsureScriptableObject2.getOwnPropertyDescriptor(context, obj7);
                    if (Boolean.TRUE.equals(ownPropertyDescriptor2.get("configurable"))) {
                        ownPropertyDescriptor2.put("configurable", ownPropertyDescriptor2, Boolean.FALSE);
                        scriptableObjectEnsureScriptableObject2.defineOwnProperty(context, obj7, ownPropertyDescriptor2, false);
                    }
                }
                scriptableObjectEnsureScriptableObject2.preventExtensions();
                return scriptableObjectEnsureScriptableObject2;
            case -11:
                Object obj8 = objArr.length < 1 ? Undefined.instance : objArr[0];
                if (context.getLanguageVersion() >= 200 && !(obj8 instanceof ScriptableObject)) {
                    return Boolean.TRUE;
                }
                ScriptableObject scriptableObjectEnsureScriptableObject3 = ScriptableObject.ensureScriptableObject(obj8);
                if (scriptableObjectEnsureScriptableObject3.isExtensible()) {
                    return Boolean.FALSE;
                }
                for (Object obj9 : scriptableObjectEnsureScriptableObject3.getAllIds()) {
                    ScriptableObject ownPropertyDescriptor3 = scriptableObjectEnsureScriptableObject3.getOwnPropertyDescriptor(context, obj9);
                    Boolean bool = Boolean.TRUE;
                    if (bool.equals(ownPropertyDescriptor3.get("configurable"))) {
                        return Boolean.FALSE;
                    }
                    if (isDataDescriptor(ownPropertyDescriptor3) && bool.equals(ownPropertyDescriptor3.get("writable"))) {
                        return Boolean.FALSE;
                    }
                }
                return Boolean.TRUE;
            case -10:
                Object obj10 = objArr.length < 1 ? Undefined.instance : objArr[0];
                if (context.getLanguageVersion() >= 200 && !(obj10 instanceof ScriptableObject)) {
                    return Boolean.TRUE;
                }
                ScriptableObject scriptableObjectEnsureScriptableObject4 = ScriptableObject.ensureScriptableObject(obj10);
                if (scriptableObjectEnsureScriptableObject4.isExtensible()) {
                    return Boolean.FALSE;
                }
                for (Object obj11 : scriptableObjectEnsureScriptableObject4.getAllIds()) {
                    if (Boolean.TRUE.equals(scriptableObjectEnsureScriptableObject4.getOwnPropertyDescriptor(context, obj11).get("configurable"))) {
                        return Boolean.FALSE;
                    }
                }
                return Boolean.TRUE;
            case -9:
                Object obj12 = objArr.length < 1 ? Undefined.instance : objArr[0];
                Scriptable scriptableEnsureScriptable = obj12 == null ? null : ScriptableObject.ensureScriptable(obj12);
                NativeObject nativeObject = new NativeObject();
                nativeObject.setParentScope(getParentScope());
                nativeObject.setPrototype(scriptableEnsureScriptable);
                if (objArr.length > 1 && objArr[1] != Undefined.instance) {
                    nativeObject.defineOwnProperties(context, ScriptableObject.ensureScriptableObject(Context.toObject(objArr[1], getParentScope())));
                }
                return nativeObject;
            case -8:
                ScriptableObject scriptableObjectEnsureScriptableObject5 = ScriptableObject.ensureScriptableObject(objArr.length < 1 ? Undefined.instance : objArr[0]);
                scriptableObjectEnsureScriptableObject5.defineOwnProperties(context, ScriptableObject.ensureScriptableObject(Context.toObject(objArr.length < 2 ? Undefined.instance : objArr[1], getParentScope())));
                return scriptableObjectEnsureScriptableObject5;
            case -7:
                Object obj13 = objArr.length < 1 ? Undefined.instance : objArr[0];
                if (context.getLanguageVersion() >= 200 && !(obj13 instanceof ScriptableObject)) {
                    return obj13;
                }
                ScriptableObject scriptableObjectEnsureScriptableObject6 = ScriptableObject.ensureScriptableObject(obj13);
                scriptableObjectEnsureScriptableObject6.preventExtensions();
                return scriptableObjectEnsureScriptableObject6;
            case -6:
                Object obj14 = objArr.length < 1 ? Undefined.instance : objArr[0];
                return (context.getLanguageVersion() < 200 || (obj14 instanceof ScriptableObject)) ? Boolean.valueOf(ScriptableObject.ensureScriptableObject(obj14).isExtensible()) : Boolean.FALSE;
            case -5:
                ScriptableObject scriptableObjectEnsureScriptableObject7 = ScriptableObject.ensureScriptableObject(objArr.length < 1 ? Undefined.instance : objArr[0]);
                scriptableObjectEnsureScriptableObject7.defineOwnProperty(context, objArr.length < 2 ? Undefined.instance : objArr[1], ScriptableObject.ensureScriptableObject(objArr.length < 3 ? Undefined.instance : objArr[2]));
                return scriptableObjectEnsureScriptableObject7;
            case -4:
                ScriptableObject ownPropertyDescriptor4 = ScriptableObject.ensureScriptableObject(getCompatibleObject(context, scriptable, objArr.length < 1 ? Undefined.instance : objArr[0])).getOwnPropertyDescriptor(context, objArr.length < 2 ? Undefined.instance : objArr[1]);
                return ownPropertyDescriptor4 == null ? Undefined.instance : ownPropertyDescriptor4;
            case -3:
                Object[] ids2 = ScriptableObject.ensureScriptableObject(getCompatibleObject(context, scriptable, objArr.length < 1 ? Undefined.instance : objArr[0])).getIds(true, false);
                for (int i3 = 0; i3 < ids2.length; i3++) {
                    ids2[i3] = ScriptRuntime.toString(ids2[i3]);
                }
                return context.newArray(scriptable, ids2);
            case -2:
                Object[] ids3 = getCompatibleObject(context, scriptable, objArr.length < 1 ? Undefined.instance : objArr[0]).getIds();
                for (int i4 = 0; i4 < ids3.length; i4++) {
                    ids3[i4] = ScriptRuntime.toString(ids3[i4]);
                }
                return context.newArray(scriptable, ids3);
            case -1:
                return getCompatibleObject(context, scriptable, objArr.length < 1 ? Undefined.instance : objArr[0]).getPrototype();
            case 0:
            default:
                throw new IllegalArgumentException(String.valueOf(iMethodId));
            case 1:
                return scriptable2 != null ? idFunctionObject.construct(context, scriptable, objArr) : (objArr.length == 0 || objArr[0] == null || objArr[0] == Undefined.instance) ? new NativeObject() : ScriptRuntime.toObject(context, scriptable, objArr[0]);
            case 2:
                if (!context.hasFeature(4)) {
                    return ScriptRuntime.defaultObjectToString(scriptable2);
                }
                String strDefaultObjectToSource = ScriptRuntime.defaultObjectToSource(context, scriptable, scriptable2, objArr);
                int length = strDefaultObjectToSource.length();
                if (length == 0 || strDefaultObjectToSource.charAt(0) != '(') {
                    return strDefaultObjectToSource;
                }
                int i5 = length - 1;
                return strDefaultObjectToSource.charAt(i5) == ')' ? strDefaultObjectToSource.substring(1, i5) : strDefaultObjectToSource;
            case 3:
                Object property = ScriptableObject.getProperty(scriptable2, "toString");
                if (property instanceof Callable) {
                    return ((Callable) property).call(context, scriptable, scriptable2, ScriptRuntime.emptyArgs);
                }
                throw ScriptRuntime.notFunctionError(property);
            case 4:
                return scriptable2;
            case 5:
                Object obj15 = objArr.length < 1 ? Undefined.instance : objArr[0];
                if (obj15 instanceof Symbol) {
                    zHas = ScriptableObject.ensureSymbolScriptable(scriptable2).has((Symbol) obj15, scriptable2);
                } else {
                    String stringIdOrIndex = ScriptRuntime.toStringIdOrIndex(context, obj15);
                    zHas = stringIdOrIndex == null ? scriptable2.has(ScriptRuntime.lastIndexResult(context), scriptable2) : scriptable2.has(stringIdOrIndex, scriptable2);
                }
                return ScriptRuntime.wrapBoolean(zHas);
            case 6:
                Object obj16 = objArr.length < 1 ? Undefined.instance : objArr[0];
                if (obj16 instanceof Symbol) {
                    Symbol symbol = (Symbol) obj16;
                    zHas2 = ((SymbolScriptable) scriptable2).has(symbol, scriptable2);
                    if (!zHas2 || !(scriptable2 instanceof ScriptableObject)) {
                        z2 = zHas2;
                    } else if ((((ScriptableObject) scriptable2).getAttributes(symbol) & 2) == 0) {
                        z2 = true;
                    }
                } else {
                    String stringIdOrIndex2 = ScriptRuntime.toStringIdOrIndex(context, obj16);
                    try {
                        if (stringIdOrIndex2 == null) {
                            int iLastIndexResult = ScriptRuntime.lastIndexResult(context);
                            boolean zHas3 = scriptable2.has(iLastIndexResult, scriptable2);
                            Integer.toString(iLastIndexResult);
                            if (zHas3 && (scriptable2 instanceof ScriptableObject)) {
                                zHas3 = (((ScriptableObject) scriptable2).getAttributes(iLastIndexResult) & 2) == 0;
                            }
                            z2 = zHas3;
                        } else {
                            zHas2 = scriptable2.has(stringIdOrIndex2, scriptable2);
                            if (zHas2 && (scriptable2 instanceof ScriptableObject)) {
                                if ((((ScriptableObject) scriptable2).getAttributes(stringIdOrIndex2) & 2) == 0) {
                                }
                            }
                        }
                    } catch (EvaluatorException e) {
                        if (!e.getMessage().startsWith(ScriptRuntime.getMessage1("msg.prop.not.found", stringIdOrIndex2))) {
                            throw e;
                        }
                    }
                }
                return ScriptRuntime.wrapBoolean(z2);
            case 7:
                if (objArr.length != 0 && (objArr[0] instanceof Scriptable)) {
                    Scriptable prototype2 = (Scriptable) objArr[0];
                    while (true) {
                        prototype2 = prototype2.getPrototype();
                        if (prototype2 == scriptable2) {
                            z = true;
                        } else if (prototype2 == null) {
                        }
                    }
                }
                return ScriptRuntime.wrapBoolean(z);
            case 8:
                return ScriptRuntime.defaultObjectToSource(context, scriptable, scriptable2, objArr);
            case 9:
            case 10:
                if (objArr.length < 2 || !(objArr[1] instanceof Callable)) {
                    throw ScriptRuntime.notFunctionError(objArr.length >= 2 ? objArr[1] : Undefined.instance);
                }
                if (!(scriptable2 instanceof ScriptableObject)) {
                    throw Context.reportRuntimeError2("msg.extend.scriptable", scriptable2 == null ? "null" : scriptable2.getClass().getName(), String.valueOf(objArr[0]));
                }
                ScriptableObject scriptableObject = (ScriptableObject) scriptable2;
                String stringIdOrIndex3 = ScriptRuntime.toStringIdOrIndex(context, objArr[0]);
                scriptableObject.setGetterOrSetter(stringIdOrIndex3, stringIdOrIndex3 != null ? 0 : ScriptRuntime.lastIndexResult(context), (Callable) objArr[1], iMethodId == 10);
                if (scriptableObject instanceof NativeArray) {
                    ((NativeArray) scriptableObject).setDenseOnly(false);
                }
                return Undefined.instance;
            case 11:
            case 12:
                if (objArr.length < 1 || !(scriptable2 instanceof ScriptableObject)) {
                    return Undefined.instance;
                }
                ScriptableObject scriptableObject2 = (ScriptableObject) scriptable2;
                String stringIdOrIndex4 = ScriptRuntime.toStringIdOrIndex(context, objArr[0]);
                int iLastIndexResult2 = stringIdOrIndex4 != null ? 0 : ScriptRuntime.lastIndexResult(context);
                boolean z3 = iMethodId == 12;
                while (true) {
                    getterOrSetter = scriptableObject2.getGetterOrSetter(stringIdOrIndex4, iLastIndexResult2, z3);
                    if (getterOrSetter == null && (prototype = scriptableObject2.getPrototype()) != null && (prototype instanceof ScriptableObject)) {
                        scriptableObject2 = (ScriptableObject) prototype;
                    }
                }
                return getterOrSetter != null ? getterOrSetter : Undefined.instance;
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        Object obj = OBJECT_TAG;
        addIdFunctionProperty(idFunctionObject, obj, -1, "getPrototypeOf", 1);
        addIdFunctionProperty(idFunctionObject, obj, -2, "keys", 1);
        addIdFunctionProperty(idFunctionObject, obj, -3, "getOwnPropertyNames", 1);
        addIdFunctionProperty(idFunctionObject, obj, -14, "getOwnPropertySymbols", 1);
        addIdFunctionProperty(idFunctionObject, obj, -4, "getOwnPropertyDescriptor", 2);
        addIdFunctionProperty(idFunctionObject, obj, -5, "defineProperty", 3);
        addIdFunctionProperty(idFunctionObject, obj, -6, "isExtensible", 1);
        addIdFunctionProperty(idFunctionObject, obj, -7, "preventExtensions", 1);
        addIdFunctionProperty(idFunctionObject, obj, -8, "defineProperties", 2);
        addIdFunctionProperty(idFunctionObject, obj, -9, "create", 2);
        addIdFunctionProperty(idFunctionObject, obj, -10, "isSealed", 1);
        addIdFunctionProperty(idFunctionObject, obj, -11, "isFrozen", 1);
        addIdFunctionProperty(idFunctionObject, obj, -12, "seal", 1);
        addIdFunctionProperty(idFunctionObject, obj, -13, "freeze", 1);
        addIdFunctionProperty(idFunctionObject, obj, -15, "assign", 2);
        addIdFunctionProperty(idFunctionObject, obj, -16, ak.ae, 2);
        super.fillConstructorProperties(idFunctionObject);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x008b  */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 2;
        if (length == 7) {
            i = 4;
            str2 = "valueOf";
        } else if (length == 8) {
            char cCharAt = str.charAt(3);
            if (cCharAt == 'o') {
                str2 = "toSource";
                i = 8;
            } else if (cCharAt == 't') {
                str2 = "toString";
            }
        } else if (length == 11) {
            i = 1;
            str2 = "constructor";
        } else if (length == 16) {
            char cCharAt2 = str.charAt(2);
            if (cCharAt2 == 'd') {
                char cCharAt3 = str.charAt(8);
                if (cCharAt3 == 'G') {
                    i = 9;
                    str2 = "__defineGetter__";
                } else if (cCharAt3 == 'S') {
                    i = 10;
                    str2 = "__defineSetter__";
                }
            } else if (cCharAt2 == 'l') {
                char cCharAt4 = str.charAt(8);
                if (cCharAt4 == 'G') {
                    str2 = "__lookupGetter__";
                    i = 11;
                } else if (cCharAt4 == 'S') {
                    i = 12;
                    str2 = "__lookupSetter__";
                }
            }
        } else if (length == 20) {
            i = 6;
            str2 = "propertyIsEnumerable";
        } else if (length == 13) {
            str2 = "isPrototypeOf";
            i = 7;
        } else if (length == 14) {
            char cCharAt5 = str.charAt(0);
            if (cCharAt5 == 'h') {
                i = 5;
                str2 = "hasOwnProperty";
            } else if (cCharAt5 == 't') {
                str2 = "toLocaleString";
                i = 3;
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
        return "Object";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        String str;
        String str2;
        int i2 = 1;
        switch (i) {
            case 1:
                str = "constructor";
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 2:
                str = "toString";
                i2 = 0;
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 3:
                str = "toLocaleString";
                i2 = 0;
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 4:
                str = "valueOf";
                i2 = 0;
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 5:
                str = "hasOwnProperty";
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 6:
                str = "propertyIsEnumerable";
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 7:
                str = "isPrototypeOf";
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 8:
                str = "toSource";
                i2 = 0;
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 9:
                str2 = "__defineGetter__";
                str = str2;
                i2 = 2;
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 10:
                str2 = "__defineSetter__";
                str = str2;
                i2 = 2;
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 11:
                str = "__lookupGetter__";
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            case 12:
                str = "__lookupSetter__";
                initPrototypeMethod(OBJECT_TAG, i, str, i2);
                return;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    @Override // java.util.Map
    public Set<Object> keySet() {
        return new KeySet();
    }

    @Override // java.util.Map
    public Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        Object obj2 = get(obj);
        if (obj instanceof String) {
            delete((String) obj);
        } else if (obj instanceof Number) {
            delete(((Number) obj).intValue());
        }
        return obj2;
    }

    public String toString() {
        return ScriptRuntime.defaultObjectToString(this);
    }

    @Override // java.util.Map
    public Collection<Object> values() {
        return new ValueCollection();
    }
}
