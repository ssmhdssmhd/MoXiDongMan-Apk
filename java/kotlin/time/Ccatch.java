package kotlin.time;

import android.support.v4.iz1;
import android.support.v4.l90;
import android.support.v4.m41;
import kotlin.Cwhile;

@l90
@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0003\u001a\u00020\u0002H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\b\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\u0007J\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000b\u001a\u00020\t\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u000e"}, d2 = {"Lkotlin/time/catch;", "", "Lkotlin/time/new;", "do", "()J", "duration", "try", "(J)Lkotlin/time/catch;", "new", "", "for", "if", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.time.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ccatch {
    /* renamed from: do, reason: not valid java name */
    public abstract long mo31270do();

    /* renamed from: for, reason: not valid java name */
    public final boolean m31271for() {
        return !Cnew.u(mo31270do());
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m31272if() {
        return Cnew.u(mo31270do());
    }

    @m41
    /* renamed from: new, reason: not valid java name */
    public Ccatch m31273new(long j) {
        return mo31274try(Cnew.N(j));
    }

    @m41
    /* renamed from: try, reason: not valid java name */
    public Ccatch mo31274try(long j) {
        return new Cfor(this, j, null);
    }
}
