package kotlin;

import android.support.v4.m41;
import android.support.v4.rm0;
import android.support.v4.rx;
import android.support.v4.ua2;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0002\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004B!\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\tH\u0016R\u001e\u0010\f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000b8\b@\bX\u0088\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u000fR\u0016\u0010\u0013\u001a\u00028\u00008V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lkotlin/volatile;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Lazy;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "", "isInitialized", "", "toString", "Lkotlin/Function0;", "initializer", "Lkotlin/jvm/functions/Function0;", "_value", "Ljava/lang/Object;", "lock", "getValue", "()Ljava/lang/Object;", ES6Iterator.VALUE_PROPERTY, "<init>", "(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.volatile, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cvolatile<T> implements Lazy<T>, Serializable {
    private volatile Object _value;
    private Function0<? extends T> initializer;
    private final Object lock;

    public Cvolatile(@m41 Function0<? extends T> initializer, @z41 Object obj) {
        Csuper.m30700throw(initializer, "initializer");
        this.initializer = initializer;
        this._value = ua2.f6816do;
        this.lock = obj == null ? this : obj;
    }

    private final Object writeReplace() {
        return new rm0(getValue());
    }

    @Override // kotlin.Lazy
    public T getValue() {
        T tInvoke;
        T t = (T) this._value;
        ua2 ua2Var = ua2.f6816do;
        if (t != ua2Var) {
            return t;
        }
        synchronized (this.lock) {
            tInvoke = (T) this._value;
            if (tInvoke == ua2Var) {
                Function0<? extends T> function0 = this.initializer;
                Csuper.m30672const(function0);
                tInvoke = function0.invoke();
                this._value = tInvoke;
                this.initializer = null;
            }
        }
        return tInvoke;
    }

    @Override // kotlin.Lazy
    public boolean isInitialized() {
        return this._value != ua2.f6816do;
    }

    @m41
    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }

    public /* synthetic */ Cvolatile(Function0 function0, Object obj, int i, rx rxVar) {
        this(function0, (i & 2) != 0 ? null : obj);
    }
}
