package kotlin.jvm.internal;

import android.support.v4.an0;
import android.support.v4.m41;
import java.util.NoSuchElementException;
import kotlin.Cwhile;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\n¨\u0006\u000e"}, d2 = {"Lkotlin/jvm/internal/case;", "Landroid/support/v4/an0;", "", "hasNext", "", "if", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "index", "", "[I", "array", "<init>", "([I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.jvm.internal.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase extends an0 {

    /* renamed from: do, reason: not valid java name */
    private int f27867do;

    /* renamed from: if, reason: not valid java name */
    private final int[] f27868if;

    public Ccase(@m41 int[] array) {
        Csuper.m30700throw(array, "array");
        this.f27868if = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f27867do < this.f27868if.length;
    }

    @Override // android.support.v4.an0
    /* renamed from: if */
    public int mo290if() {
        try {
            int[] iArr = this.f27868if;
            int i = this.f27867do;
            this.f27867do = i + 1;
            return iArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f27867do--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
