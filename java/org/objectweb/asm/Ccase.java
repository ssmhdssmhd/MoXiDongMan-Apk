package org.objectweb.asm;

import android.support.v4.d2;
import android.support.v4.ee;
import android.support.v4.la0;
import android.support.v4.o4;
import android.support.v4.p92;

/* renamed from: org.objectweb.asm.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase extends la0 {

    /* renamed from: break, reason: not valid java name */
    private Cdo f33951break;

    /* renamed from: case, reason: not valid java name */
    private final int f33952case;

    /* renamed from: catch, reason: not valid java name */
    private Cdo f33953catch;

    /* renamed from: class, reason: not valid java name */
    private Cdo f33954class;

    /* renamed from: const, reason: not valid java name */
    private o4 f33955const;

    /* renamed from: else, reason: not valid java name */
    private int f33956else;

    /* renamed from: for, reason: not valid java name */
    private final Cfor f33957for;

    /* renamed from: goto, reason: not valid java name */
    private int f33958goto;

    /* renamed from: new, reason: not valid java name */
    private final int f33959new;

    /* renamed from: this, reason: not valid java name */
    private Cdo f33960this;

    /* renamed from: try, reason: not valid java name */
    private final int f33961try;

    public Ccase(Cfor cfor, int i, String str, String str2, String str3, Object obj) {
        super(Opcodes.ASM5);
        if (cfor.f34038protected == null) {
            cfor.f34038protected = this;
        } else {
            cfor.f34049transient.f3584if = this;
        }
        cfor.f34049transient = this;
        this.f33957for = cfor;
        this.f33959new = i;
        this.f33961try = cfor.c(str);
        this.f33952case = cfor.c(str2);
        if (str3 != null) {
            this.f33956else = cfor.c(str3);
        }
        if (obj != null) {
            this.f33958goto = cfor.m37993native(obj).f34089do;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m37948case(ee eeVar) {
        int i = this.f33959new;
        eeVar.m1807this(i & ((((i & 262144) / 64) | 393216) ^ (-1))).m1807this(this.f33961try).m1807this(this.f33952case);
        int iM5456do = this.f33958goto != 0 ? 1 : 0;
        int i2 = this.f33959new;
        if ((i2 & 4096) != 0 && ((this.f33957for.f34035new & 65535) < 49 || (i2 & 262144) != 0)) {
            iM5456do++;
        }
        if ((i2 & 131072) != 0) {
            iM5456do++;
        }
        if (this.f33956else != 0) {
            iM5456do++;
        }
        if (this.f33960this != null) {
            iM5456do++;
        }
        if (this.f33951break != null) {
            iM5456do++;
        }
        if (this.f33953catch != null) {
            iM5456do++;
        }
        if (this.f33954class != null) {
            iM5456do++;
        }
        o4 o4Var = this.f33955const;
        if (o4Var != null) {
            iM5456do += o4Var.m5456do();
        }
        eeVar.m1807this(iM5456do);
        if (this.f33958goto != 0) {
            eeVar.m1807this(this.f33957for.c("ConstantValue"));
            eeVar.m1803else(2).m1807this(this.f33958goto);
        }
        int i3 = this.f33959new;
        if ((i3 & 4096) != 0) {
            Cfor cfor = this.f33957for;
            if ((65535 & cfor.f34035new) < 49 || (i3 & 262144) != 0) {
                eeVar.m1807this(cfor.c("Synthetic")).m1803else(0);
            }
        }
        if ((this.f33959new & 131072) != 0) {
            eeVar.m1807this(this.f33957for.c("Deprecated")).m1803else(0);
        }
        if (this.f33956else != 0) {
            eeVar.m1807this(this.f33957for.c("Signature"));
            eeVar.m1803else(2).m1807this(this.f33956else);
        }
        if (this.f33960this != null) {
            eeVar.m1807this(this.f33957for.c("RuntimeVisibleAnnotations"));
            this.f33960this.m37961goto(eeVar);
        }
        if (this.f33951break != null) {
            eeVar.m1807this(this.f33957for.c("RuntimeInvisibleAnnotations"));
            this.f33951break.m37961goto(eeVar);
        }
        if (this.f33953catch != null) {
            eeVar.m1807this(this.f33957for.c("RuntimeVisibleTypeAnnotations"));
            this.f33953catch.m37961goto(eeVar);
        }
        if (this.f33954class != null) {
            eeVar.m1807this(this.f33957for.c("RuntimeInvisibleTypeAnnotations"));
            this.f33954class.m37961goto(eeVar);
        }
        o4 o4Var2 = this.f33955const;
        if (o4Var2 != null) {
            o4Var2.m5458for(this.f33957for, null, 0, -1, -1, eeVar);
        }
    }

    @Override // android.support.v4.la0
    /* renamed from: do */
    public d2 mo4626do(String str, boolean z) {
        ee eeVar = new ee();
        eeVar.m1807this(this.f33957for.c(str)).m1807this(0);
        Cdo cdo = new Cdo(this.f33957for, true, eeVar, eeVar, 2);
        if (z) {
            cdo.f34005this = this.f33960this;
            this.f33960this = cdo;
        } else {
            cdo.f34005this = this.f33951break;
            this.f33951break = cdo;
        }
        return cdo;
    }

    @Override // android.support.v4.la0
    /* renamed from: for */
    public void mo4627for() {
    }

    @Override // android.support.v4.la0
    /* renamed from: if */
    public void mo4628if(o4 o4Var) {
        o4Var.f4409for = this.f33955const;
        this.f33955const = o4Var;
    }

    @Override // android.support.v4.la0
    /* renamed from: new */
    public d2 mo4629new(int i, p92 p92Var, String str, boolean z) {
        ee eeVar = new ee();
        Cdo.m37958else(i, p92Var, eeVar);
        eeVar.m1807this(this.f33957for.c(str)).m1807this(0);
        Cdo cdo = new Cdo(this.f33957for, true, eeVar, eeVar, eeVar.f1403if - 2);
        if (z) {
            cdo.f34005this = this.f33953catch;
            this.f33953catch = cdo;
        } else {
            cdo.f34005this = this.f33954class;
            this.f33954class = cdo;
        }
        return cdo;
    }

    /* renamed from: try, reason: not valid java name */
    public int m37949try() {
        int iM37960case;
        if (this.f33958goto != 0) {
            this.f33957for.c("ConstantValue");
            iM37960case = 16;
        } else {
            iM37960case = 8;
        }
        int i = this.f33959new;
        if ((i & 4096) != 0) {
            Cfor cfor = this.f33957for;
            if ((cfor.f34035new & 65535) < 49 || (i & 262144) != 0) {
                cfor.c("Synthetic");
                iM37960case += 6;
            }
        }
        if ((this.f33959new & 131072) != 0) {
            this.f33957for.c("Deprecated");
            iM37960case += 6;
        }
        if (this.f33956else != 0) {
            this.f33957for.c("Signature");
            iM37960case += 8;
        }
        if (this.f33960this != null) {
            this.f33957for.c("RuntimeVisibleAnnotations");
            iM37960case += this.f33960this.m37960case() + 8;
        }
        if (this.f33951break != null) {
            this.f33957for.c("RuntimeInvisibleAnnotations");
            iM37960case += this.f33951break.m37960case() + 8;
        }
        if (this.f33953catch != null) {
            this.f33957for.c("RuntimeVisibleTypeAnnotations");
            iM37960case += this.f33953catch.m37960case() + 8;
        }
        if (this.f33954class != null) {
            this.f33957for.c("RuntimeInvisibleTypeAnnotations");
            iM37960case += this.f33954class.m37960case() + 8;
        }
        o4 o4Var = this.f33955const;
        return o4Var != null ? iM37960case + o4Var.m5460if(this.f33957for, null, 0, -1, -1) : iM37960case;
    }
}
