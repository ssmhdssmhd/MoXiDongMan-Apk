package android.support.v4;

/* loaded from: classes3.dex */
public abstract class d2 {

    /* renamed from: do, reason: not valid java name */
    public final int f921do;

    /* renamed from: if, reason: not valid java name */
    public d2 f922if;

    public d2(int i) {
        this(i, null);
    }

    public d2(int i, d2 d2Var) {
        if (i != 262144 && i != 327680) {
            throw new IllegalArgumentException();
        }
        this.f921do = i;
        this.f922if = d2Var;
    }

    /* renamed from: do, reason: not valid java name */
    public void mo1119do(String str, Object obj) {
        d2 d2Var = this.f922if;
        if (d2Var != null) {
            d2Var.mo1119do(str, obj);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public d2 mo1120for(String str) {
        d2 d2Var = this.f922if;
        if (d2Var != null) {
            return d2Var.mo1120for(str);
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public d2 mo1121if(String str, String str2) {
        d2 d2Var = this.f922if;
        if (d2Var != null) {
            return d2Var.mo1121if(str, str2);
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public void mo1122new() {
        d2 d2Var = this.f922if;
        if (d2Var != null) {
            d2Var.mo1122new();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void mo1123try(String str, String str2, String str3) {
        d2 d2Var = this.f922if;
        if (d2Var != null) {
            d2Var.mo1123try(str, str2, str3);
        }
    }
}
