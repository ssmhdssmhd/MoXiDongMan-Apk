package kotlin.jvm.internal;

import android.support.v4.m41;
import android.support.v4.zb;
import java.util.NoSuchElementException;
import kotlin.Cwhile;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0018\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0016R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\n¨\u0006\u000e"}, d2 = {"Lkotlin/jvm/internal/do;", "Landroid/support/v4/zb;", "", "hasNext", "if", "", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "index", "", "[Z", "array", "<init>", "([Z)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.jvm.internal.do, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cdo extends zb {

    /* renamed from: do, reason: not valid java name */
    private int f27879do;

    /* renamed from: if, reason: not valid java name */
    private final boolean[] f27880if;

    public Cdo(@m41 boolean[] array) {
        Csuper.m30700throw(array, "array");
        this.f27880if = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f27879do < this.f27880if.length;
    }

    @Override // android.support.v4.zb
    /* renamed from: if */
    public boolean mo10152if() {
        try {
            boolean[] zArr = this.f27880if;
            int i = this.f27879do;
            this.f27879do = i + 1;
            return zArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f27879do--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
