package android.support.v4;

import org.antlr.v4.runtime.atn.Cfor;
import org.antlr.v4.runtime.atn.LexerAction;

/* loaded from: classes3.dex */
public class ws0 implements LexerAction {

    /* renamed from: do, reason: not valid java name */
    private final int f7684do;

    public ws0(int i) {
        this.f7684do = i;
    }

    /* renamed from: do, reason: not valid java name */
    public int m9268do() {
        return this.f7684do;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ws0) && this.f7684do == ((ws0) obj).f7684do;
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public void execute(is0 is0Var) {
        is0Var.o(this.f7684do);
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public Cfor getActionType() {
        return Cfor.TYPE;
    }

    public int hashCode() {
        return y01.m9664do(y01.m9668try(y01.m9668try(y01.m9665for(), getActionType().ordinal()), this.f7684do), 2);
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public boolean isPositionDependent() {
        return false;
    }

    public String toString() {
        return String.format("type(%d)", Integer.valueOf(this.f7684do));
    }
}
