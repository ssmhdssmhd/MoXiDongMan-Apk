package org.mozilla.javascript;

import freemarker.ext.servlet.FreemarkerServlet;
import java.util.Iterator;
import org.mozilla.javascript.Hashtable;
import org.mozilla.javascript.NativeCollectionIterator;
import sun.security.util.SecurityConstants;

/* loaded from: classes3.dex */
public class NativeSet extends IdScriptableObject {
    public static final String ITERATOR_TAG = "Set Iterator";
    private static final int Id_add = 2;
    private static final int Id_clear = 5;
    private static final int Id_constructor = 1;
    private static final int Id_delete = 3;
    private static final int Id_entries = 7;
    private static final int Id_forEach = 8;
    private static final int Id_has = 4;
    private static final int Id_keys = 6;
    private static final int Id_values = 6;
    private static final int MAX_PROTOTYPE_ID = 10;
    private static final int SymbolId_getSize = 9;
    private static final int SymbolId_toStringTag = 10;
    private final Hashtable entries = new Hashtable();
    private boolean instanceOfSet = false;
    private static final Object SET_TAG = "Set";
    public static final SymbolKey GETSIZE = new SymbolKey("[Symbol.getSize]");

    public static void init(Context context, Scriptable scriptable, boolean z) {
        NativeSet nativeSet = new NativeSet();
        nativeSet.exportAsJSClass(10, scriptable, false);
        ScriptableObject scriptableObject = (ScriptableObject) context.newObject(scriptable);
        scriptableObject.put("enumerable", scriptableObject, Boolean.FALSE);
        scriptableObject.put("configurable", scriptableObject, Boolean.TRUE);
        scriptableObject.put("get", scriptableObject, nativeSet.get(GETSIZE, nativeSet));
        nativeSet.defineOwnProperty(context, "size", scriptableObject);
        if (z) {
            nativeSet.sealObject();
        }
    }

    private Object js_add(Object obj) {
        if ((obj instanceof Number) && ((Number) obj).doubleValue() == ScriptRuntime.negativeZero) {
            obj = Double.valueOf(0.0d);
        }
        this.entries.put(obj, obj);
        return this;
    }

    private Object js_clear() {
        this.entries.clear();
        return Undefined.instance;
    }

    private Object js_delete(Object obj) {
        return Boolean.valueOf(this.entries.delete(obj) != null);
    }

    private Object js_forEach(Context context, Scriptable scriptable, Object obj, Object obj2) {
        if (!(obj instanceof Callable)) {
            throw ScriptRuntime.notFunctionError(obj);
        }
        Callable callable = (Callable) obj;
        boolean zIsStrictMode = context.isStrictMode();
        Iterator<Hashtable.Entry> it = this.entries.iterator();
        while (it.hasNext()) {
            Scriptable objectOrNull = ScriptRuntime.toObjectOrNull(context, obj2, scriptable);
            if (objectOrNull == null && !zIsStrictMode) {
                objectOrNull = scriptable;
            }
            if (objectOrNull == null) {
                objectOrNull = Undefined.SCRIPTABLE_UNDEFINED;
            }
            Object obj3 = it.next().value;
            callable.call(context, scriptable, objectOrNull, new Object[]{obj3, obj3, this});
        }
        return Undefined.instance;
    }

    private Object js_getSize() {
        return Integer.valueOf(this.entries.size());
    }

    private Object js_has(Object obj) {
        return Boolean.valueOf(this.entries.has(obj));
    }

    private Object js_iterator(Scriptable scriptable, NativeCollectionIterator.Type type) {
        return new NativeCollectionIterator(scriptable, ITERATOR_TAG, type, this.entries.iterator());
    }

    public static void loadFromIterable(Context context, Scriptable scriptable, ScriptableObject scriptableObject, Object obj) {
        if (obj != null) {
            Object obj2 = Undefined.instance;
            if (obj2.equals(obj)) {
                return;
            }
            Object objCallIterator = ScriptRuntime.callIterator(obj, context, scriptable);
            if (obj2.equals(objCallIterator)) {
                return;
            }
            Callable propFunctionAndThis = ScriptRuntime.getPropFunctionAndThis(ScriptableObject.ensureScriptableObject(context.newObject(scriptable, scriptableObject.getClassName())).getPrototype(), "add", context, scriptable);
            ScriptRuntime.lastStoredScriptable(context);
            IteratorLikeIterable iteratorLikeIterable = new IteratorLikeIterable(context, scriptable, objCallIterator);
            try {
                Iterator<Object> it = iteratorLikeIterable.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next == Scriptable.NOT_FOUND) {
                        next = Undefined.instance;
                    }
                    propFunctionAndThis.call(context, scriptable, scriptableObject, new Object[]{next});
                }
                iteratorLikeIterable.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        iteratorLikeIterable.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
    }

    private NativeSet realThis(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable == null) {
            throw IdScriptableObject.incompatibleCallError(idFunctionObject);
        }
        try {
            NativeSet nativeSet = (NativeSet) scriptable;
            if (nativeSet.instanceOfSet) {
                return nativeSet;
            }
            throw IdScriptableObject.incompatibleCallError(idFunctionObject);
        } catch (ClassCastException unused) {
            throw IdScriptableObject.incompatibleCallError(idFunctionObject);
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(SET_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        switch (idFunctionObject.methodId()) {
            case 1:
                if (scriptable2 != null) {
                    throw ScriptRuntime.typeError1("msg.no.new", "Set");
                }
                NativeSet nativeSet = new NativeSet();
                nativeSet.instanceOfSet = true;
                if (objArr.length > 0) {
                    loadFromIterable(context, scriptable, nativeSet, objArr[0]);
                }
                return nativeSet;
            case 2:
                return realThis(scriptable2, idFunctionObject).js_add(objArr.length > 0 ? objArr[0] : Undefined.instance);
            case 3:
                return realThis(scriptable2, idFunctionObject).js_delete(objArr.length > 0 ? objArr[0] : Undefined.instance);
            case 4:
                return realThis(scriptable2, idFunctionObject).js_has(objArr.length > 0 ? objArr[0] : Undefined.instance);
            case 5:
                return realThis(scriptable2, idFunctionObject).js_clear();
            case 6:
                return realThis(scriptable2, idFunctionObject).js_iterator(scriptable, NativeCollectionIterator.Type.VALUES);
            case 7:
                return realThis(scriptable2, idFunctionObject).js_iterator(scriptable, NativeCollectionIterator.Type.BOTH);
            case 8:
                return realThis(scriptable2, idFunctionObject).js_forEach(context, scriptable, objArr.length > 0 ? objArr[0] : Undefined.instance, objArr.length > 1 ? objArr[1] : Undefined.instance);
            case 9:
                return realThis(scriptable2, idFunctionObject).js_getSize();
            default:
                throw new IllegalArgumentException("Set.prototype has no method: " + idFunctionObject.getFunctionName());
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(Symbol symbol) {
        if (GETSIZE.equals(symbol)) {
            return 9;
        }
        if (SymbolKey.ITERATOR.equals(symbol)) {
            return 6;
        }
        return SymbolKey.TO_STRING_TAG.equals(symbol) ? 10 : 0;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Set";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        String str;
        String str2;
        String str3;
        int i2;
        if (i == 9) {
            initPrototypeMethod(SET_TAG, i, GETSIZE, "get size", 0);
            return;
        }
        if (i == 10) {
            initPrototypeValue(10, SymbolKey.TO_STRING_TAG, getClassName(), 3);
            return;
        }
        switch (i) {
            case 1:
                str = "constructor";
                str3 = str;
                i2 = 0;
                initPrototypeMethod(SET_TAG, i, str3, (String) null, i2);
                return;
            case 2:
                str2 = "add";
                str3 = str2;
                i2 = 1;
                initPrototypeMethod(SET_TAG, i, str3, (String) null, i2);
                return;
            case 3:
                str2 = SecurityConstants.FILE_DELETE_ACTION;
                str3 = str2;
                i2 = 1;
                initPrototypeMethod(SET_TAG, i, str3, (String) null, i2);
                return;
            case 4:
                str2 = "has";
                str3 = str2;
                i2 = 1;
                initPrototypeMethod(SET_TAG, i, str3, (String) null, i2);
                return;
            case 5:
                str = FreemarkerServlet.r;
                str3 = str;
                i2 = 0;
                initPrototypeMethod(SET_TAG, i, str3, (String) null, i2);
                return;
            case 6:
                str = "values";
                str3 = str;
                i2 = 0;
                initPrototypeMethod(SET_TAG, i, str3, (String) null, i2);
                return;
            case 7:
                str = "entries";
                str3 = str;
                i2 = 0;
                initPrototypeMethod(SET_TAG, i, str3, (String) null, i2);
                return;
            case 8:
                str2 = "forEach";
                str3 = str2;
                i2 = 1;
                initPrototypeMethod(SET_TAG, i, str3, (String) null, i2);
                return;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x007b A[ADDED_TO_REGION] */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 7;
        if (length != 3) {
            if (length != 4) {
                if (length == 5) {
                    str2 = FreemarkerServlet.r;
                    i = 5;
                } else if (length == 6) {
                    char cCharAt = str.charAt(0);
                    if (cCharAt == 'd') {
                        str2 = SecurityConstants.FILE_DELETE_ACTION;
                        i = 3;
                    } else {
                        str2 = cCharAt == 'v' ? "values" : "keys";
                    }
                } else if (length == 7) {
                    char cCharAt2 = str.charAt(0);
                    if (cCharAt2 == 'e') {
                        str2 = "entries";
                    } else if (cCharAt2 == 'f') {
                        i = 8;
                        str2 = "forEach";
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
            i = 6;
            if (str2 != null) {
            }
            return i;
        }
        char cCharAt3 = str.charAt(0);
        if (cCharAt3 == 'a') {
            if (str.charAt(2) == 'd' && str.charAt(1) == 'd') {
                return 2;
            }
        } else if (cCharAt3 == 'h' && str.charAt(2) == 's' && str.charAt(1) == 'a') {
            return 4;
        }
        str2 = null;
        i = 0;
        if (str2 != null) {
        }
        return i;
    }
}
