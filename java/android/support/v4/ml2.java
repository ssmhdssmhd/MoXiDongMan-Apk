package android.support.v4;

import freemarker.core._Java6;
import freemarker.core._Java8;
import freemarker.log.Cif;
import freemarker.template.utility.Cconst;

/* loaded from: classes.dex */
public final class ml2 {

    /* renamed from: do, reason: not valid java name */
    private static final boolean f3941do;

    /* renamed from: for, reason: not valid java name */
    private static final boolean f3942for;

    /* renamed from: if, reason: not valid java name */
    public static final _Java6 f3943if;

    /* renamed from: new, reason: not valid java name */
    public static final _Java8 f3944new;

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        we2 we2Var;
        boolean z;
        _Java6 _java6;
        _Java8 _java8 = null;
        String strM29258for = Cconst.m29258for("java.version", null);
        boolean z2 = false;
        if (strM29258for != null) {
            try {
                we2Var = new we2(strM29258for);
            } catch (Exception unused) {
            }
            if (we2Var.getMajor() != 1 || we2Var.getMinor() < 6) {
                if (we2Var.getMajor() <= 1) {
                    z = false;
                }
            }
            z = true;
        }
        if (strM29258for == null) {
            try {
                Class.forName("java.util.ServiceLoader");
                z = true;
            } catch (Exception unused2) {
            }
        }
        f3941do = z;
        if (z) {
            try {
                _java6 = (_Java6) Class.forName("android.support.v4.kl2").getField("INSTANCE").get(null);
            } catch (Exception e) {
                try {
                    Cif.m29193break("freemarker.runtime").mo29181else("Failed to access Java 6 functionality", e);
                } catch (Exception unused3) {
                }
            }
        } else {
            _java6 = null;
        }
        f3943if = _java6;
        String strM29258for2 = Cconst.m29258for("java.version", null);
        if (strM29258for2 != null) {
            we2 we2Var2 = new we2(strM29258for2);
            if ((we2Var2.getMajor() == 1 && we2Var2.getMinor() >= 8) || we2Var2.getMajor() > 1) {
            }
            f3942for = z2;
            if (z2) {
                try {
                    _java8 = (_Java8) Class.forName("android.support.v4.ll2").getField("INSTANCE").get(null);
                } catch (Exception e2) {
                    try {
                        Cif.m29193break("freemarker.runtime").mo29181else("Failed to access Java 8 functionality", e2);
                    } catch (Exception unused4) {
                    }
                }
            }
            f3944new = _java8;
        }
        Class.forName("java.time.Instant");
        z2 = true;
        f3942for = z2;
        if (z2) {
        }
        f3944new = _java8;
    }

    private ml2() {
    }
}
