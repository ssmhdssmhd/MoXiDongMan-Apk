package android.support.v4;

/* loaded from: classes3.dex */
public class ku extends a4 {

    /* renamed from: if, reason: not valid java name */
    private ou f3484if;

    public ku(boolean z, ou ouVar) {
        super(z);
        this.f3484if = ouVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ku)) {
            return false;
        }
        ou ouVar = this.f3484if;
        ou ouVarM4512if = ((ku) obj).m4512if();
        return ouVar == null ? ouVarM4512if == null : ouVar.equals(ouVarM4512if);
    }

    public int hashCode() {
        int i = !m33do() ? 1 : 0;
        ou ouVar = this.f3484if;
        return ouVar != null ? i ^ ouVar.hashCode() : i;
    }

    /* renamed from: if, reason: not valid java name */
    public ou m4512if() {
        return this.f3484if;
    }
}
