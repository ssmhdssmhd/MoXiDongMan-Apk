package android.support.v4;

import java.util.NoSuchElementException;
import kotlin.Cwhile;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0019\u0010\u0006\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Landroid/support/v4/cn0;", "Landroid/support/v4/an0;", "", "hasNext", "", "if", "step", OptRuntime.GeneratorState.resumptionPoint_TYPE, "for", "()I", "first", "last", "<init>", "(III)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class cn0 extends an0 {

    /* renamed from: do, reason: not valid java name */
    private final int f826do;

    /* renamed from: for, reason: not valid java name */
    private int f827for;

    /* renamed from: if, reason: not valid java name */
    private boolean f828if;

    /* renamed from: new, reason: not valid java name */
    private final int f829new;

    public cn0(int i, int i2, int i3) {
        this.f829new = i3;
        this.f826do = i2;
        boolean z = true;
        if (i3 <= 0 ? i < i2 : i > i2) {
            z = false;
        }
        this.f828if = z;
        this.f827for = z ? i : i2;
    }

    /* renamed from: for, reason: not valid java name */
    public final int m973for() {
        return this.f829new;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f828if;
    }

    @Override // android.support.v4.an0
    /* renamed from: if */
    public int mo290if() {
        int i = this.f827for;
        if (i != this.f826do) {
            this.f827for = this.f829new + i;
        } else {
            if (!this.f828if) {
                throw new NoSuchElementException();
            }
            this.f828if = false;
        }
        return i;
    }
}
