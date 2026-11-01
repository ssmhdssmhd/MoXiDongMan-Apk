package android.support.v4;

import org.antlr.v4.runtime.atn.Cfor;
import org.antlr.v4.runtime.atn.LexerAction;

/* loaded from: classes3.dex */
public final class qs0 implements LexerAction {

    /* renamed from: do, reason: not valid java name */
    private final int f5518do;

    public qs0(int i) {
        this.f5518do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public int m6664do() {
        return this.f5518do;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof qs0) && this.f5518do == ((qs0) obj).f5518do;
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public void execute(is0 is0Var) {
        is0Var.b(this.f5518do);
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public Cfor getActionType() {
        return Cfor.MODE;
    }

    public int hashCode() {
        return y01.m9664do(y01.m9668try(y01.m9668try(y01.m9665for(), getActionType().ordinal()), this.f5518do), 2);
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public boolean isPositionDependent() {
        return false;
    }

    public String toString() {
        return String.format("mode(%d)", Integer.valueOf(this.f5518do));
    }
}
