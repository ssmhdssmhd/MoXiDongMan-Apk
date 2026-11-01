package kotlin.jvm.internal;

import android.support.v4.m41;
import android.support.v4.yv0;
import java.util.NoSuchElementException;
import kotlin.Cwhile;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0016\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\f\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlin/jvm/internal/break;", "Landroid/support/v4/yv0;", "", "hasNext", "", "if", "", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "index", "", "[J", "array", "<init>", "([J)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.jvm.internal.break, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cbreak extends yv0 {

    /* renamed from: do, reason: not valid java name */
    private int f27865do;

    /* renamed from: if, reason: not valid java name */
    private final long[] f27866if;

    public Cbreak(@m41 long[] array) {
        Csuper.m30700throw(array, "array");
        this.f27866if = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f27865do < this.f27866if.length;
    }

    @Override // android.support.v4.yv0
    /* renamed from: if */
    public long mo372if() {
        try {
            long[] jArr = this.f27866if;
            int i = this.f27865do;
            this.f27865do = i + 1;
            return jArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f27865do--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
