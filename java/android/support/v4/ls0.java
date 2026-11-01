package android.support.v4;

import org.antlr.v4.runtime.atn.Cfor;
import org.antlr.v4.runtime.atn.LexerAction;

/* loaded from: classes3.dex */
public final class ls0 implements LexerAction {

    /* renamed from: do, reason: not valid java name */
    private final int f3761do;

    public ls0(int i) {
        this.f3761do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public int m4757do() {
        return this.f3761do;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ls0) && this.f3761do == ((ls0) obj).f3761do;
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public void execute(is0 is0Var) {
        is0Var.j(this.f3761do);
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public Cfor getActionType() {
        return Cfor.CHANNEL;
    }

    public int hashCode() {
        return y01.m9664do(y01.m9668try(y01.m9668try(y01.m9665for(), getActionType().ordinal()), this.f3761do), 2);
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public boolean isPositionDependent() {
        return false;
    }

    public String toString() {
        return String.format("channel(%d)", Integer.valueOf(this.f3761do));
    }
}
