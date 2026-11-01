package org.mozilla.javascript;

import java.io.Closeable;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class IteratorLikeIterable implements Iterable<Object>, Closeable {
    private boolean closed;
    private final Context cx;
    private final Scriptable iterator;
    private final Callable next;
    private final Callable returnFunc;
    private final Scriptable scope;

    public final class Itr implements Iterator<Object> {
        private Object nextVal;

        public Itr() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Object objCall = IteratorLikeIterable.this.next.call(IteratorLikeIterable.this.cx, IteratorLikeIterable.this.scope, IteratorLikeIterable.this.iterator, ScriptRuntime.emptyArgs);
            Object objectProp = ScriptRuntime.getObjectProp(objCall, ES6Iterator.DONE_PROPERTY, IteratorLikeIterable.this.cx, IteratorLikeIterable.this.scope);
            if (Undefined.instance.equals(objectProp)) {
                throw ScriptRuntime.undefReadError(objCall, ES6Iterator.DONE_PROPERTY);
            }
            if (Boolean.TRUE.equals(objectProp)) {
                return false;
            }
            this.nextVal = ScriptRuntime.getObjectProp(objCall, ES6Iterator.VALUE_PROPERTY, IteratorLikeIterable.this.cx, IteratorLikeIterable.this.scope);
            return true;
        }

        @Override // java.util.Iterator
        public Object next() {
            return this.nextVal;
        }
    }

    public IteratorLikeIterable(Context context, Scriptable scriptable, Object obj) {
        this.cx = context;
        this.scope = scriptable;
        this.next = ScriptRuntime.getPropFunctionAndThis(obj, ES6Iterator.NEXT_METHOD, context, scriptable);
        this.iterator = ScriptRuntime.lastStoredScriptable(context);
        Scriptable scriptableEnsureScriptable = ScriptableObject.ensureScriptable(obj);
        if (!scriptableEnsureScriptable.has("return", scriptableEnsureScriptable)) {
            this.returnFunc = null;
        } else {
            this.returnFunc = ScriptRuntime.getPropFunctionAndThis(obj, "return", context, scriptable);
            ScriptRuntime.lastStoredScriptable(context);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        Callable callable = this.returnFunc;
        if (callable != null) {
            callable.call(this.cx, this.scope, this.iterator, ScriptRuntime.emptyArgs);
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Object> iterator() {
        return new Itr();
    }
}
