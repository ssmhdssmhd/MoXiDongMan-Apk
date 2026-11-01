package android.support.v4;

/* loaded from: classes3.dex */
public class h60 extends a4 {

    /* renamed from: if, reason: not valid java name */
    private l60 f2318if;

    public h60(boolean z, l60 l60Var) {
        super(z);
        this.f2318if = l60Var;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof h60)) {
            return false;
        }
        l60 l60Var = this.f2318if;
        l60 l60VarM2951if = ((h60) obj).m2951if();
        return l60Var == null ? l60VarM2951if == null : l60Var.equals(l60VarM2951if);
    }

    public int hashCode() {
        l60 l60Var = this.f2318if;
        if (l60Var != null) {
            return l60Var.hashCode();
        }
        return 0;
    }

    /* renamed from: if, reason: not valid java name */
    public l60 m2951if() {
        return this.f2318if;
    }
}
