package android.support.v4;

import java.util.NoSuchElementException;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0019\u0010\u0007\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Landroid/support/v4/pk;", "Landroid/support/v4/nk;", "", "hasNext", "", "if", "", "step", OptRuntime.GeneratorState.resumptionPoint_TYPE, "for", "()I", "first", "last", "<init>", "(CCI)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class pk extends nk {

    /* renamed from: do, reason: not valid java name */
    private final int f5036do;

    /* renamed from: for, reason: not valid java name */
    private int f5037for;

    /* renamed from: if, reason: not valid java name */
    private boolean f5038if;

    /* renamed from: new, reason: not valid java name */
    private final int f5039new;

    public pk(char c, char c2, int i) {
        this.f5039new = i;
        this.f5036do = c2;
        boolean z = true;
        if (i <= 0 ? Csuper.m30692public(c, c2) < 0 : Csuper.m30692public(c, c2) > 0) {
            z = false;
        }
        this.f5038if = z;
        this.f5037for = z ? c : c2;
    }

    /* renamed from: for, reason: not valid java name */
    public final int m6095for() {
        return this.f5039new;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5038if;
    }

    @Override // android.support.v4.nk
    /* renamed from: if */
    public char mo5268if() {
        int i = this.f5037for;
        if (i != this.f5036do) {
            this.f5037for = this.f5039new + i;
        } else {
            if (!this.f5038if) {
                throw new NoSuchElementException();
            }
            this.f5038if = false;
        }
        return (char) i;
    }
}
