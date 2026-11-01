package android.support.v4;

import org.antlr.v4.runtime.atn.Cfor;
import org.antlr.v4.runtime.atn.LexerAction;

/* loaded from: classes3.dex */
public final class us0 implements LexerAction {

    /* renamed from: do, reason: not valid java name */
    private final int f6976do;

    public us0(int i) {
        this.f6976do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public int m8636do() {
        return this.f6976do;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof us0) && this.f6976do == ((us0) obj).f6976do;
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public void execute(is0 is0Var) {
        is0Var.f(this.f6976do);
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public Cfor getActionType() {
        return Cfor.PUSH_MODE;
    }

    public int hashCode() {
        return y01.m9664do(y01.m9668try(y01.m9668try(y01.m9665for(), getActionType().ordinal()), this.f6976do), 2);
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public boolean isPositionDependent() {
        return false;
    }

    public String toString() {
        return String.format("pushMode(%d)", Integer.valueOf(this.f6976do));
    }
}
