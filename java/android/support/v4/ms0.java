package android.support.v4;

import org.antlr.v4.runtime.atn.Cfor;
import org.antlr.v4.runtime.atn.LexerAction;

/* loaded from: classes3.dex */
public final class ms0 implements LexerAction {

    /* renamed from: do, reason: not valid java name */
    private final int f4023do;

    /* renamed from: if, reason: not valid java name */
    private final int f4024if;

    public ms0(int i, int i2) {
        this.f4023do = i;
        this.f4024if = i2;
    }

    /* renamed from: do, reason: not valid java name */
    public int m4995do() {
        return this.f4024if;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ms0)) {
            return false;
        }
        ms0 ms0Var = (ms0) obj;
        return this.f4023do == ms0Var.f4023do && this.f4024if == ms0Var.f4024if;
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public void execute(is0 is0Var) {
        is0Var.m32072do(null, this.f4023do, this.f4024if);
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public Cfor getActionType() {
        return Cfor.CUSTOM;
    }

    public int hashCode() {
        return y01.m9664do(y01.m9668try(y01.m9668try(y01.m9668try(y01.m9665for(), getActionType().ordinal()), this.f4023do), this.f4024if), 3);
    }

    /* renamed from: if, reason: not valid java name */
    public int m4996if() {
        return this.f4023do;
    }

    @Override // org.antlr.v4.runtime.atn.LexerAction
    public boolean isPositionDependent() {
        return true;
    }
}
