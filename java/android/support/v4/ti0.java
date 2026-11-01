package android.support.v4;

import org.apache.commons.lang3.Ctry;

/* loaded from: classes3.dex */
public final class ti0 {

    /* renamed from: do, reason: not valid java name */
    public final int f6572do;

    /* renamed from: for, reason: not valid java name */
    public final String f6573for;

    /* renamed from: if, reason: not valid java name */
    public final String f6574if;

    /* renamed from: new, reason: not valid java name */
    public final String f6575new;

    public ti0(int i, String str, String str2, String str3) {
        this.f6572do = i;
        this.f6574if = str;
        this.f6573for = str2;
        this.f6575new = str3;
    }

    /* renamed from: do, reason: not valid java name */
    public String m7946do() {
        return this.f6575new;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ti0)) {
            return false;
        }
        ti0 ti0Var = (ti0) obj;
        return this.f6572do == ti0Var.f6572do && this.f6574if.equals(ti0Var.f6574if) && this.f6573for.equals(ti0Var.f6573for) && this.f6575new.equals(ti0Var.f6575new);
    }

    /* renamed from: for, reason: not valid java name */
    public String m7947for() {
        return this.f6574if;
    }

    public int hashCode() {
        return this.f6572do + (this.f6574if.hashCode() * this.f6573for.hashCode() * this.f6575new.hashCode());
    }

    /* renamed from: if, reason: not valid java name */
    public String m7948if() {
        return this.f6573for;
    }

    /* renamed from: new, reason: not valid java name */
    public int m7949new() {
        return this.f6572do;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f6574if);
        stringBuffer.append(Ctry.f28883do);
        stringBuffer.append(this.f6573for);
        stringBuffer.append(this.f6575new);
        stringBuffer.append(" (");
        stringBuffer.append(this.f6572do);
        stringBuffer.append(')');
        return stringBuffer.toString();
    }
}
