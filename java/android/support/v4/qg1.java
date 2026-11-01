package android.support.v4;

import java.security.BasicPermission;
import java.security.Permission;
import java.util.StringTokenizer;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class qg1 extends BasicPermission {

    /* renamed from: break, reason: not valid java name */
    private static final String f5399break = "threadlocaldhdefaultparams";

    /* renamed from: case, reason: not valid java name */
    private static final int f5400case = 32;

    /* renamed from: catch, reason: not valid java name */
    private static final String f5401catch = "dhdefaultparams";

    /* renamed from: class, reason: not valid java name */
    private static final String f5402class = "acceptableeccurves";

    /* renamed from: const, reason: not valid java name */
    private static final String f5403const = "additionalecparameters";

    /* renamed from: do, reason: not valid java name */
    private static final int f5404do = 1;

    /* renamed from: else, reason: not valid java name */
    private static final int f5405else = 63;

    /* renamed from: final, reason: not valid java name */
    private static final String f5406final = "all";

    /* renamed from: for, reason: not valid java name */
    private static final int f5407for = 4;

    /* renamed from: goto, reason: not valid java name */
    private static final String f5408goto = "threadlocalecimplicitlyca";

    /* renamed from: if, reason: not valid java name */
    private static final int f5409if = 2;

    /* renamed from: new, reason: not valid java name */
    private static final int f5410new = 8;

    /* renamed from: this, reason: not valid java name */
    private static final String f5411this = "ecimplicitlyca";

    /* renamed from: try, reason: not valid java name */
    private static final int f5412try = 16;
    private final String actions;
    private final int permissionMask;

    public qg1(String str) {
        super(str);
        this.actions = f5406final;
        this.permissionMask = 63;
    }

    public qg1(String str, String str2) {
        super(str, str2);
        this.actions = str2;
        this.permissionMask = m6556do(str2);
    }

    /* renamed from: do, reason: not valid java name */
    private int m6556do(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(Cfor.m36349break(str), " ,");
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (strNextToken.equals(f5408goto)) {
                i |= 1;
            } else if (strNextToken.equals(f5411this)) {
                i |= 2;
            } else if (strNextToken.equals(f5399break)) {
                i |= 4;
            } else if (strNextToken.equals(f5401catch)) {
                i |= 8;
            } else if (strNextToken.equals(f5402class)) {
                i |= 16;
            } else if (strNextToken.equals(f5403const)) {
                i |= 32;
            } else if (strNextToken.equals(f5406final)) {
                i |= 63;
            }
        }
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException("unknown permissions passed to mask");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof qg1)) {
            return false;
        }
        qg1 qg1Var = (qg1) obj;
        return this.permissionMask == qg1Var.permissionMask && getName().equals(qg1Var.getName());
    }

    @Override // java.security.BasicPermission, java.security.Permission
    public String getActions() {
        return this.actions;
    }

    public int hashCode() {
        return getName().hashCode() + this.permissionMask;
    }

    @Override // java.security.BasicPermission, java.security.Permission
    public boolean implies(Permission permission) {
        if (!(permission instanceof qg1) || !getName().equals(permission.getName())) {
            return false;
        }
        int i = this.permissionMask;
        int i2 = ((qg1) permission).permissionMask;
        return (i & i2) == i2;
    }
}
