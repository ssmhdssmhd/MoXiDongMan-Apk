package kotlin.jvm.internal;

import android.support.v4.g20;
import android.support.v4.m41;
import java.util.NoSuchElementException;
import kotlin.Cwhile;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0013\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\f\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlin/jvm/internal/new;", "Landroid/support/v4/g20;", "", "hasNext", "", "if", "", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "index", "", "[D", "array", "<init>", "([D)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.jvm.internal.new, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cnew extends g20 {

    /* renamed from: do, reason: not valid java name */
    private int f27889do;

    /* renamed from: if, reason: not valid java name */
    private final double[] f27890if;

    public Cnew(@m41 double[] array) {
        Csuper.m30700throw(array, "array");
        this.f27890if = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f27889do < this.f27890if.length;
    }

    @Override // android.support.v4.g20
    /* renamed from: if */
    public double mo2512if() {
        try {
            double[] dArr = this.f27890if;
            int i = this.f27889do;
            this.f27889do = i + 1;
            return dArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f27889do--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
