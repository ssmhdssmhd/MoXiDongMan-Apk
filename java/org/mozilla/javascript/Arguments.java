package org.mozilla.javascript;

import org.mozilla.javascript.NativeArrayIterator;

/* loaded from: classes3.dex */
final class Arguments extends IdScriptableObject {
    private static final String FTAG = "Arguments";
    private static final int Id_callee = 1;
    private static final int Id_caller = 3;
    private static final int Id_length = 2;
    private static final int MAX_INSTANCE_ID = 3;
    private static BaseFunction iteratorMethod = new BaseFunction() { // from class: org.mozilla.javascript.Arguments.1
        @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.Function, org.mozilla.javascript.Callable
        public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
            return new NativeArrayIterator(scriptable, scriptable2, NativeArrayIterator.ARRAY_ITERATOR_TYPE.VALUES);
        }
    };
    private static final long serialVersionUID = 4275508002492040609L;
    private NativeCall activation;
    private Object[] args;
    private Object calleeObj;
    private Object callerObj;
    private Object lengthObj;
    private int callerAttr = 2;
    private int calleeAttr = 2;
    private int lengthAttr = 2;

    public static class ThrowTypeError extends BaseFunction {
        private String propertyName;

        public ThrowTypeError(String str) {
            this.propertyName = str;
        }

        @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.Function, org.mozilla.javascript.Callable
        public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
            throw ScriptRuntime.typeError1("msg.arguments.not.access.strict", this.propertyName);
        }
    }

    public Arguments(NativeCall nativeCall) {
        this.activation = nativeCall;
        Scriptable parentScope = nativeCall.getParentScope();
        setParentScope(parentScope);
        setPrototype(ScriptableObject.getObjectPrototype(parentScope));
        Object[] objArr = nativeCall.originalArgs;
        this.args = objArr;
        this.lengthObj = Integer.valueOf(objArr.length);
        NativeFunction nativeFunction = nativeCall.function;
        this.calleeObj = nativeFunction;
        int languageVersion = nativeFunction.getLanguageVersion();
        if (languageVersion > 130 || languageVersion == 0) {
            this.callerObj = Scriptable.NOT_FOUND;
        } else {
            this.callerObj = null;
        }
        defineProperty(SymbolKey.ITERATOR, iteratorMethod, 2);
    }

    private Object arg(int i) {
        if (i >= 0) {
            Object[] objArr = this.args;
            if (objArr.length > i) {
                return objArr[i];
            }
        }
        return Scriptable.NOT_FOUND;
    }

    private Object getFromActivation(int i) {
        String paramOrVarName = this.activation.function.getParamOrVarName(i);
        Scriptable scriptable = this.activation;
        return scriptable.get(paramOrVarName, scriptable);
    }

    private void putIntoActivation(int i, Object obj) {
        String paramOrVarName = this.activation.function.getParamOrVarName(i);
        Scriptable scriptable = this.activation;
        scriptable.put(paramOrVarName, scriptable, obj);
    }

    private void removeArg(int i) {
        synchronized (this) {
            Object[] objArr = this.args;
            Object obj = objArr[i];
            Object obj2 = Scriptable.NOT_FOUND;
            if (obj != obj2) {
                if (objArr == this.activation.originalArgs) {
                    this.args = (Object[]) objArr.clone();
                }
                this.args[i] = obj2;
            }
        }
    }

    private void replaceArg(int i, Object obj) {
        if (sharedWithActivation(i)) {
            putIntoActivation(i, obj);
        }
        synchronized (this) {
            Object[] objArr = this.args;
            if (objArr == this.activation.originalArgs) {
                this.args = (Object[]) objArr.clone();
            }
            this.args[i] = obj;
        }
    }

    private boolean sharedWithActivation(int i) {
        NativeFunction nativeFunction;
        int paramCount;
        if (Context.getContext().isStrictMode() || i >= (paramCount = (nativeFunction = this.activation.function).getParamCount())) {
            return false;
        }
        if (i < paramCount - 1) {
            String paramOrVarName = nativeFunction.getParamOrVarName(i);
            for (int i2 = i + 1; i2 < paramCount; i2++) {
                if (paramOrVarName.equals(nativeFunction.getParamOrVarName(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    public void defineAttributesForStrictMode() {
        if (Context.getContext().isStrictMode()) {
            setGetterOrSetter("caller", 0, new ThrowTypeError("caller"), true);
            setGetterOrSetter("caller", 0, new ThrowTypeError("caller"), false);
            setGetterOrSetter("callee", 0, new ThrowTypeError("callee"), true);
            setGetterOrSetter("callee", 0, new ThrowTypeError("callee"), false);
            setAttributes("caller", 6);
            setAttributes("callee", 6);
            this.callerObj = null;
            this.calleeObj = null;
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public void defineOwnProperty(Context context, Object obj, ScriptableObject scriptableObject, boolean z) {
        super.defineOwnProperty(context, obj, scriptableObject, z);
        double number = ScriptRuntime.toNumber(obj);
        int i = (int) number;
        if (number != i) {
            return;
        }
        Object objArg = arg(i);
        Object obj2 = Scriptable.NOT_FOUND;
        if (objArg == obj2) {
            return;
        }
        if (isAccessorDescriptor(scriptableObject)) {
            removeArg(i);
            return;
        }
        Object property = ScriptableObject.getProperty(scriptableObject, ES6Iterator.VALUE_PROPERTY);
        if (property == obj2) {
            return;
        }
        replaceArg(i, property);
        if (ScriptableObject.isFalse(ScriptableObject.getProperty(scriptableObject, "writable"))) {
            removeArg(i);
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void delete(int i) {
        if (i >= 0 && i < this.args.length) {
            removeArg(i);
        }
        super.delete(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0028  */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int findInstanceIdInfo(String str) {
        String str2;
        int i;
        int i2;
        if (str.length() != 6) {
            str2 = null;
            i = 0;
        } else {
            char cCharAt = str.charAt(5);
            if (cCharAt == 'e') {
                str2 = "callee";
                i = 1;
            } else if (cCharAt == 'h') {
                str2 = "length";
                i = 2;
            } else if (cCharAt == 'r') {
                str2 = "caller";
                i = 3;
            }
        }
        int i3 = (str2 == null || str2 == str || str2.equals(str)) ? i : 0;
        if (Context.getContext().isStrictMode() && (i3 == 1 || i3 == 3)) {
            return super.findInstanceIdInfo(str);
        }
        if (i3 == 0) {
            return super.findInstanceIdInfo(str);
        }
        if (i3 == 1) {
            i2 = this.calleeAttr;
        } else if (i3 == 2) {
            i2 = this.lengthAttr;
        } else {
            if (i3 != 3) {
                throw new IllegalStateException();
            }
            i2 = this.callerAttr;
        }
        return IdScriptableObject.instanceIdInfo(i2, i3);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        Object objArg = arg(i);
        return objArg == Scriptable.NOT_FOUND ? super.get(i, scriptable) : sharedWithActivation(i) ? getFromActivation(i) : objArg;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return FTAG;
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject
    public Object[] getIds(boolean z, boolean z2) throws RuntimeException {
        int iIntValue;
        Object[] ids = super.getIds(z, z2);
        Object[] objArr = this.args;
        if (objArr.length == 0) {
            return ids;
        }
        int length = objArr.length;
        boolean[] zArr = new boolean[length];
        int length2 = objArr.length;
        for (int i = 0; i != ids.length; i++) {
            Object obj = ids[i];
            if ((obj instanceof Integer) && (iIntValue = ((Integer) obj).intValue()) >= 0 && iIntValue < this.args.length && !zArr[iIntValue]) {
                zArr[iIntValue] = true;
                length2--;
            }
        }
        if (!z) {
            for (int i2 = 0; i2 < length; i2++) {
                if (!zArr[i2] && super.has(i2, this)) {
                    zArr[i2] = true;
                    length2--;
                }
            }
        }
        if (length2 == 0) {
            return ids;
        }
        Object[] objArr2 = new Object[ids.length + length2];
        System.arraycopy(ids, 0, objArr2, length2, ids.length);
        int i3 = 0;
        for (int i4 = 0; i4 != this.args.length; i4++) {
            if (!zArr[i4]) {
                objArr2[i3] = Integer.valueOf(i4);
                i3++;
            }
        }
        if (i3 != length2) {
            Kit.codeBug();
        }
        return objArr2;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        if (i == 1) {
            return "callee";
        }
        if (i == 2) {
            return "length";
        }
        if (i != 3) {
            return null;
        }
        return "caller";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        Scriptable scriptable;
        if (i == 1) {
            return this.calleeObj;
        }
        if (i == 2) {
            return this.lengthObj;
        }
        if (i != 3) {
            return super.getInstanceIdValue(i);
        }
        Object obj = this.callerObj;
        if (obj == UniqueTag.NULL_VALUE) {
            return null;
        }
        return (obj != null || (scriptable = this.activation.parentActivationCall) == null) ? obj : scriptable.get("arguments", scriptable);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 3;
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject
    public ScriptableObject getOwnPropertyDescriptor(Context context, Object obj) {
        if (obj instanceof Scriptable) {
            return super.getOwnPropertyDescriptor(context, obj);
        }
        double number = ScriptRuntime.toNumber(obj);
        int i = (int) number;
        if (number != i) {
            return super.getOwnPropertyDescriptor(context, obj);
        }
        Object objArg = arg(i);
        if (objArg == Scriptable.NOT_FOUND) {
            return super.getOwnPropertyDescriptor(context, obj);
        }
        if (sharedWithActivation(i)) {
            objArg = getFromActivation(i);
        }
        if (super.has(i, this)) {
            ScriptableObject ownPropertyDescriptor = super.getOwnPropertyDescriptor(context, obj);
            ownPropertyDescriptor.put(ES6Iterator.VALUE_PROPERTY, ownPropertyDescriptor, objArg);
            return ownPropertyDescriptor;
        }
        Scriptable parentScope = getParentScope();
        if (parentScope == null) {
            parentScope = this;
        }
        return ScriptableObject.buildDataDescriptor(parentScope, objArg, 0);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        if (arg(i) != Scriptable.NOT_FOUND) {
            return true;
        }
        return super.has(i, scriptable);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        if (arg(i) == Scriptable.NOT_FOUND) {
            super.put(i, scriptable, obj);
        } else {
            replaceArg(i, obj);
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdAttributes(int i, int i2) {
        if (i == 1) {
            this.calleeAttr = i2;
            return;
        }
        if (i == 2) {
            this.lengthAttr = i2;
        } else if (i != 3) {
            super.setInstanceIdAttributes(i, i2);
        } else {
            this.callerAttr = i2;
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdValue(int i, Object obj) {
        if (i == 1) {
            this.calleeObj = obj;
            return;
        }
        if (i == 2) {
            this.lengthObj = obj;
        } else {
            if (i != 3) {
                super.setInstanceIdValue(i, obj);
                return;
            }
            if (obj == null) {
                obj = UniqueTag.NULL_VALUE;
            }
            this.callerObj = obj;
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
        super.put(str, scriptable, obj);
    }
}
