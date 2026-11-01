package android.support.v4;

import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes2.dex */
public class dd1 {

    /* renamed from: do, reason: not valid java name */
    public final String f997do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f998for;

    /* renamed from: if, reason: not valid java name */
    public final boolean f999if;

    public dd1(String str, boolean z) {
        this(str, z, false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        dd1 dd1Var = (dd1) obj;
        if (this.f999if == dd1Var.f999if && this.f998for == dd1Var.f998for) {
            return this.f997do.equals(dd1Var.f997do);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f997do.hashCode() * 31) + (this.f999if ? 1 : 0)) * 31) + (this.f998for ? 1 : 0);
    }

    public String toString() {
        return "Permission{name='" + this.f997do + "', granted=" + this.f999if + ", shouldShowRequestPermissionRationale=" + this.f998for + MessageFormatter.DELIM_STOP;
    }

    public dd1(String str, boolean z, boolean z2) {
        this.f997do = str;
        this.f999if = z;
        this.f998for = z2;
    }
}
