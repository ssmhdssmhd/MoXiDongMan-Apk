package android.support.v4;

/* loaded from: classes3.dex */
public class es extends a4 {

    /* renamed from: if, reason: not valid java name */
    private fs f1573if;

    public es(boolean z, fs fsVar) {
        super(z);
        this.f1573if = fsVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof es)) {
            return false;
        }
        fs fsVar = this.f1573if;
        fs fsVarM1999if = ((es) obj).m1999if();
        return fsVar == null ? fsVarM1999if == null : fsVar.equals(fsVarM1999if);
    }

    public int hashCode() {
        int i = !m33do() ? 1 : 0;
        fs fsVar = this.f1573if;
        return fsVar != null ? i ^ fsVar.hashCode() : i;
    }

    /* renamed from: if, reason: not valid java name */
    public fs m1999if() {
        return this.f1573if;
    }
}
