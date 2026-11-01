package com.sun.script.javascript;

import javax.script.Invocable;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.RhinoException;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Wrapper;

/* loaded from: classes2.dex */
final class JavaAdapter extends ScriptableObject implements Function {
    private Invocable engine;

    private JavaAdapter(Invocable invocable) {
        this.engine = invocable;
    }

    public static void init(Context context, Scriptable scriptable, boolean z) throws RhinoException {
        RhinoTopLevel rhinoTopLevel = (RhinoTopLevel) scriptable;
        JavaAdapter javaAdapter = new JavaAdapter(rhinoTopLevel.getScriptEngine());
        javaAdapter.setParentScope(scriptable);
        javaAdapter.setPrototype(ScriptableObject.getFunctionPrototype(scriptable));
        ScriptableObject.putProperty(rhinoTopLevel, "JavaAdapter", javaAdapter);
    }

    @Override // org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) throws RhinoException {
        return construct(context, scriptable, objArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002b A[PHI: r0
      0x002b: PHI (r0v5 java.lang.Class) = (r0v3 java.lang.Class), (r0v8 java.lang.Class) binds: [B:14:0x0029, B:9:0x001c] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // org.mozilla.javascript.Function
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) throws RhinoException {
        Class cls;
        if (objArr.length != 2) {
            throw Context.reportRuntimeError("JavaAdapter requires two arguments");
        }
        Class cls2 = null;
        Object obj = objArr[0];
        if (obj instanceof Wrapper) {
            Object objUnwrap = ((Wrapper) obj).unwrap();
            if (objUnwrap instanceof Class) {
                cls = (Class) objUnwrap;
                if (cls.isInterface()) {
                    cls2 = cls;
                }
            }
        } else if (obj instanceof Class) {
            cls = (Class) obj;
            if (cls.isInterface()) {
            }
        }
        if (cls2 == null) {
            throw Context.reportRuntimeError("JavaAdapter: first arg should be interface Class");
        }
        return Context.toObject(this.engine.getInterface(objArr[1], cls2), ScriptableObject.getTopLevelScope(scriptable));
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "JavaAdapter";
    }
}
