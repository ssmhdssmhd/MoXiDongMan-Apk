package io.reactivex.subjects;

import android.support.v4.a51;
import android.support.v4.b41;
import io.reactivex.Cnew;
import io.reactivex.Observer;

/* renamed from: io.reactivex.subjects.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cgoto<T> extends Cnew<T> implements Observer<T> {
    @a51
    /* renamed from: do */
    public abstract Throwable mo29793do();

    /* renamed from: for */
    public abstract boolean mo29796for();

    /* renamed from: if */
    public abstract boolean mo29797if();

    /* renamed from: new */
    public abstract boolean mo29800new();

    @b41
    /* renamed from: try, reason: not valid java name */
    public final Cgoto<T> m29814try() {
        return this instanceof Ccase ? this : new Ccase(this);
    }
}
