package android.support.v4;

import org.antlr.v4.runtime.atn.Celse;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes3.dex */
public class d02 extends Celse {

    /* renamed from: break, reason: not valid java name */
    public static final /* synthetic */ boolean f905break = false;

    /* renamed from: goto, reason: not valid java name */
    public final Celse f906goto;

    /* renamed from: this, reason: not valid java name */
    public final int f907this;

    public d02(Celse celse, int i) {
        super(celse != null ? Celse.m31878if(celse, i) : Celse.m31873do());
        this.f906goto = celse;
        this.f907this = i;
    }

    /* renamed from: static, reason: not valid java name */
    public static d02 m1093static(Celse celse, int i) {
        return (i == Integer.MAX_VALUE && celse == null) ? Celse.f28469for : new d02(celse, i);
    }

    @Override // org.antlr.v4.runtime.atn.Celse
    /* renamed from: break, reason: not valid java name */
    public int mo1094break(int i) {
        return this.f907this;
    }

    @Override // org.antlr.v4.runtime.atn.Celse
    public boolean equals(Object obj) {
        Celse celse;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d02) || hashCode() != obj.hashCode()) {
            return false;
        }
        d02 d02Var = (d02) obj;
        return this.f907this == d02Var.f907this && (celse = this.f906goto) != null && celse.equals(d02Var.f906goto);
    }

    @Override // org.antlr.v4.runtime.atn.Celse
    /* renamed from: this, reason: not valid java name */
    public Celse mo1095this(int i) {
        return this.f906goto;
    }

    public String toString() {
        Celse celse = this.f906goto;
        String string = celse != null ? celse.toString() : "";
        if (string.length() == 0) {
            int i = this.f907this;
            return i == Integer.MAX_VALUE ? "$" : String.valueOf(i);
        }
        return String.valueOf(this.f907this) + Cclass.f28652do + string;
    }

    @Override // org.antlr.v4.runtime.atn.Celse
    /* renamed from: while, reason: not valid java name */
    public int mo1096while() {
        return 1;
    }
}
