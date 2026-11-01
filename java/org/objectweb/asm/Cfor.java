package org.objectweb.asm;

import android.support.v4.bm;
import android.support.v4.d2;
import android.support.v4.ee;
import android.support.v4.f92;
import android.support.v4.la0;
import android.support.v4.o4;
import android.support.v4.p92;
import android.support.v4.ti0;
import android.support.v4.xz0;
import androidx.fragment.app.FragmentManagerImpl;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;

/* renamed from: org.objectweb.asm.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends bm {
    public static final int c = 1;
    public static final int d = 2;
    public static final byte[] e;
    private boolean a;

    /* renamed from: abstract, reason: not valid java name */
    private o4 f34016abstract;
    public boolean b;

    /* renamed from: break, reason: not valid java name */
    public final Cthis f34017break;

    /* renamed from: case, reason: not valid java name */
    public final ee f34018case;

    /* renamed from: catch, reason: not valid java name */
    public final Cthis f34019catch;

    /* renamed from: class, reason: not valid java name */
    public final Cthis f34020class;

    /* renamed from: const, reason: not valid java name */
    public Cthis[] f34021const;

    /* renamed from: continue, reason: not valid java name */
    private int f34022continue;

    /* renamed from: default, reason: not valid java name */
    private int f34023default;

    /* renamed from: else, reason: not valid java name */
    public Cthis[] f34024else;

    /* renamed from: extends, reason: not valid java name */
    private Cdo f34025extends;

    /* renamed from: final, reason: not valid java name */
    private short f34026final;

    /* renamed from: finally, reason: not valid java name */
    private Cdo f34027finally;

    /* renamed from: for, reason: not valid java name */
    public Cif f34028for;

    /* renamed from: goto, reason: not valid java name */
    public int f34029goto;

    /* renamed from: implements, reason: not valid java name */
    public Ccatch f34030implements;

    /* renamed from: import, reason: not valid java name */
    private int f34031import;

    /* renamed from: instanceof, reason: not valid java name */
    public Ccatch f34032instanceof;

    /* renamed from: interface, reason: not valid java name */
    public ee f34033interface;

    /* renamed from: native, reason: not valid java name */
    private int f34034native;

    /* renamed from: new, reason: not valid java name */
    public int f34035new;

    /* renamed from: package, reason: not valid java name */
    private Cdo f34036package;

    /* renamed from: private, reason: not valid java name */
    private Cdo f34037private;

    /* renamed from: protected, reason: not valid java name */
    public Ccase f34038protected;

    /* renamed from: public, reason: not valid java name */
    private int f34039public;

    /* renamed from: return, reason: not valid java name */
    private int[] f34040return;

    /* renamed from: static, reason: not valid java name */
    private int f34041static;

    /* renamed from: strictfp, reason: not valid java name */
    private ee f34042strictfp;

    /* renamed from: super, reason: not valid java name */
    private int f34043super;

    /* renamed from: switch, reason: not valid java name */
    private ee f34044switch;

    /* renamed from: synchronized, reason: not valid java name */
    private boolean f34045synchronized;

    /* renamed from: this, reason: not valid java name */
    public final Cthis f34046this;

    /* renamed from: throw, reason: not valid java name */
    private int f34047throw;

    /* renamed from: throws, reason: not valid java name */
    private int f34048throws;

    /* renamed from: transient, reason: not valid java name */
    public Ccase f34049transient;

    /* renamed from: try, reason: not valid java name */
    public int f34050try;

    /* renamed from: volatile, reason: not valid java name */
    public int f34051volatile;

    /* renamed from: while, reason: not valid java name */
    public String f34052while;

    static {
        m37977catch();
        byte[] bArr = new byte[FragmentManagerImpl.ANIM_DUR];
        for (int i = 0; i < 220; i++) {
            bArr[i] = (byte) ("AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ".charAt(i) - 'A');
        }
        e = bArr;
    }

    public Cfor(int i) {
        super(Opcodes.ASM5);
        this.f34050try = 1;
        this.f34018case = new ee();
        Cthis[] cthisArr = new Cthis[256];
        this.f34024else = cthisArr;
        double length = cthisArr.length;
        Double.isNaN(length);
        this.f34029goto = (int) (length * 0.75d);
        this.f34046this = new Cthis();
        this.f34017break = new Cthis();
        this.f34019catch = new Cthis();
        this.f34020class = new Cthis();
        this.f34045synchronized = (i & 1) != 0;
        this.a = (i & 2) != 0;
    }

    public Cfor(Cif cif, int i) {
        this(i);
        cif.m38024catch(this);
        this.f34028for = cif;
    }

    /* renamed from: catch, reason: not valid java name */
    public static /* synthetic */ void m37977catch() {
    }

    /* renamed from: default, reason: not valid java name */
    private Cthis m37978default(Cthis cthis) {
        Cthis[] cthisArr = this.f34024else;
        Cthis cthis2 = cthisArr[cthis.f34092goto % cthisArr.length];
        while (cthis2 != null && (cthis2.f34093if != cthis.f34093if || !cthis.m38046goto(cthis2))) {
            cthis2 = cthis2.f34095this;
        }
        return cthis2;
    }

    /* renamed from: extends, reason: not valid java name */
    private void m37979extends(int i, int i2, int i3) {
        this.f34018case.m1804for(i, i2).m1807this(i3);
    }

    /* renamed from: finally, reason: not valid java name */
    private Cthis m37980finally(String str) {
        this.f34017break.m38049try(8, str, null, null);
        Cthis cthisM37978default = m37978default(this.f34017break);
        if (cthisM37978default != null) {
            return cthisM37978default;
        }
        this.f34018case.m1804for(8, c(str));
        int i = this.f34050try;
        this.f34050try = i + 1;
        Cthis cthis = new Cthis(i, this.f34017break);
        m37982private(cthis);
        return cthis;
    }

    /* renamed from: package, reason: not valid java name */
    private void m37981package(int i, int i2, int i3) {
        this.f34018case.m1802do(i, i2).m1807this(i3);
    }

    /* renamed from: private, reason: not valid java name */
    private void m37982private(Cthis cthis) {
        if (this.f34050try + this.f34026final > this.f34029goto) {
            int length = this.f34024else.length;
            int i = (length * 2) + 1;
            Cthis[] cthisArr = new Cthis[i];
            for (int i2 = length - 1; i2 >= 0; i2--) {
                Cthis cthis2 = this.f34024else[i2];
                while (cthis2 != null) {
                    int i3 = cthis2.f34092goto % i;
                    Cthis cthis3 = cthis2.f34095this;
                    cthis2.f34095this = cthisArr[i3];
                    cthisArr[i3] = cthis2;
                    cthis2 = cthis3;
                }
            }
            this.f34024else = cthisArr;
            double d2 = i;
            Double.isNaN(d2);
            this.f34029goto = (int) (d2 * 0.75d);
        }
        int i4 = cthis.f34092goto;
        Cthis[] cthisArr2 = this.f34024else;
        int length2 = i4 % cthisArr2.length;
        cthis.f34095this = cthisArr2[length2];
        cthisArr2[length2] = cthis;
    }

    /* renamed from: strictfp, reason: not valid java name */
    private Cthis m37983strictfp(Cthis cthis) {
        short s = (short) (this.f34026final + 1);
        this.f34026final = s;
        Cthis cthis2 = new Cthis(s, this.f34046this);
        m37982private(cthis2);
        if (this.f34021const == null) {
            this.f34021const = new Cthis[16];
        }
        short s2 = this.f34026final;
        Cthis[] cthisArr = this.f34021const;
        if (s2 == cthisArr.length) {
            Cthis[] cthisArr2 = new Cthis[cthisArr.length * 2];
            System.arraycopy(cthisArr, 0, cthisArr2, 0, cthisArr.length);
            this.f34021const = cthisArr2;
        }
        this.f34021const[this.f34026final] = cthis2;
        return cthis2;
    }

    public int a(String str) {
        return m37987continue(str).f34089do;
    }

    /* renamed from: abstract, reason: not valid java name */
    public int m37984abstract(String str) {
        this.f34046this.m38049try(30, str, null, null);
        Cthis cthisM37978default = m37978default(this.f34046this);
        if (cthisM37978default == null) {
            cthisM37978default = m37983strictfp(this.f34046this);
        }
        return cthisM37978default.f34089do;
    }

    public int b(String str, String str2) {
        return m37996return(str, str2).f34089do;
    }

    @Override // android.support.v4.bm
    /* renamed from: break */
    public final d2 mo568break(int i, p92 p92Var, String str, boolean z) {
        ee eeVar = new ee();
        Cdo.m37958else(i, p92Var, eeVar);
        eeVar.m1807this(c(str)).m1807this(0);
        Cdo cdo = new Cdo(this, true, eeVar, eeVar, eeVar.f1403if - 2);
        if (z) {
            cdo.f34005this = this.f34036package;
            this.f34036package = cdo;
        } else {
            cdo.f34005this = this.f34037private;
            this.f34037private = cdo;
        }
        return cdo;
    }

    public int c(String str) {
        this.f34046this.m38049try(1, str, null, null);
        Cthis cthisM37978default = m37978default(this.f34046this);
        if (cthisM37978default == null) {
            this.f34018case.m1808try(1).m1800break(str);
            int i = this.f34050try;
            this.f34050try = i + 1;
            cthisM37978default = new Cthis(i, this.f34046this);
            m37982private(cthisM37978default);
        }
        return cthisM37978default.f34089do;
    }

    @Override // android.support.v4.bm
    /* renamed from: case */
    public final void mo569case(String str, String str2, String str3, int i) {
        if (this.f34042strictfp == null) {
            this.f34042strictfp = new ee();
        }
        Cthis cthisM37995public = m37995public(str);
        if (cthisM37995public.f34091for == 0) {
            this.f34022continue++;
            this.f34042strictfp.m1807this(cthisM37995public.f34089do);
            this.f34042strictfp.m1807this(str2 == null ? 0 : m37992interface(str2));
            this.f34042strictfp.m1807this(str3 != null ? c(str3) : 0);
            this.f34042strictfp.m1807this(i);
            cthisM37995public.f34091for = this.f34022continue;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public int m37985class(int i, int i2) {
        Cthis cthis = this.f34017break;
        cthis.f34093if = 32;
        cthis.f34094new = i | (i2 << 32);
        cthis.f34092goto = (i + 32 + i2) & Integer.MAX_VALUE;
        Cthis cthisM37978default = m37978default(cthis);
        if (cthisM37978default == null) {
            Cthis[] cthisArr = this.f34021const;
            this.f34017break.f34091for = m37984abstract(m38004volatile(cthisArr[i].f34096try, cthisArr[i2].f34096try));
            cthisM37978default = new Cthis(0, this.f34017break);
            m37982private(cthisM37978default);
        }
        return cthisM37978default.f34091for;
    }

    /* renamed from: const, reason: not valid java name */
    public int m37986const(String str, int i) {
        Cthis cthis = this.f34046this;
        cthis.f34093if = 31;
        cthis.f34091for = i;
        cthis.f34096try = str;
        cthis.f34092goto = (str.hashCode() + 31 + i) & Integer.MAX_VALUE;
        Cthis cthisM37978default = m37978default(this.f34046this);
        if (cthisM37978default == null) {
            cthisM37978default = m37983strictfp(this.f34046this);
        }
        return cthisM37978default.f34089do;
    }

    /* renamed from: continue, reason: not valid java name */
    public Cthis m37987continue(String str) {
        this.f34017break.m38049try(16, str, null, null);
        Cthis cthisM37978default = m37978default(this.f34017break);
        if (cthisM37978default != null) {
            return cthisM37978default;
        }
        this.f34018case.m1804for(16, c(str));
        int i = this.f34050try;
        this.f34050try = i + 1;
        Cthis cthis = new Cthis(i, this.f34017break);
        m37982private(cthis);
        return cthis;
    }

    public byte[] d() {
        int i;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        int i2;
        ee eeVar;
        if (this.f34050try > 65535) {
            throw new RuntimeException("Class file too large!");
        }
        int iM37960case = (this.f34039public * 2) + 24;
        int i3 = 0;
        for (Ccase ccase = this.f34038protected; ccase != null; ccase = (Ccase) ccase.f3584if) {
            i3++;
            iM37960case += ccase.m37949try();
        }
        int i4 = 0;
        for (Ccatch ccatch = this.f34030implements; ccatch != null; ccatch = (Ccatch) ccatch.f8065if) {
            i4++;
            iM37960case += ccatch.m37957strictfp();
        }
        ee eeVar2 = this.f34033interface;
        if (eeVar2 != null) {
            iM37960case += eeVar2.f1403if + 8;
            c("BootstrapMethods");
            i = 1;
        } else {
            i = 0;
        }
        if (this.f34031import != 0) {
            i++;
            iM37960case += 8;
            c("Signature");
        }
        if (this.f34041static != 0) {
            i++;
            iM37960case += 8;
            c("SourceFile");
        }
        ee eeVar3 = this.f34044switch;
        if (eeVar3 != null) {
            i++;
            iM37960case += eeVar3.f1403if + 6;
            c("SourceDebugExtension");
        }
        if (this.f34048throws != 0) {
            i++;
            iM37960case += 10;
            c("EnclosingMethod");
        }
        if ((this.f34043super & 131072) != 0) {
            i++;
            iM37960case += 6;
            c("Deprecated");
        }
        int i5 = this.f34043super;
        if ((i5 & 4096) != 0 && ((this.f34035new & 65535) < 49 || (i5 & 262144) != 0)) {
            i++;
            iM37960case += 6;
            c("Synthetic");
        }
        ee eeVar4 = this.f34042strictfp;
        if (eeVar4 != null) {
            i++;
            iM37960case += eeVar4.f1403if + 8;
            c("InnerClasses");
        }
        Cdo cdo = this.f34025extends;
        if (cdo != null) {
            i++;
            iM37960case += cdo.m37960case() + 8;
            c("RuntimeVisibleAnnotations");
        }
        Cdo cdo2 = this.f34027finally;
        if (cdo2 != null) {
            i++;
            iM37960case += cdo2.m37960case() + 8;
            c("RuntimeInvisibleAnnotations");
        }
        Cdo cdo3 = this.f34036package;
        if (cdo3 != null) {
            i++;
            iM37960case += cdo3.m37960case() + 8;
            c("RuntimeVisibleTypeAnnotations");
        }
        Cdo cdo4 = this.f34037private;
        if (cdo4 != null) {
            i++;
            iM37960case += cdo4.m37960case() + 8;
            c("RuntimeInvisibleTypeAnnotations");
        }
        int iM5460if = iM37960case;
        o4 o4Var = this.f34016abstract;
        if (o4Var != null) {
            int iM5456do = i + o4Var.m5456do();
            str = "Deprecated";
            str2 = "EnclosingMethod";
            str3 = "RuntimeVisibleTypeAnnotations";
            str4 = "RuntimeInvisibleAnnotations";
            str5 = "SourceDebugExtension";
            iM5460if += this.f34016abstract.m5460if(this, null, 0, -1, -1);
            i = iM5456do;
        } else {
            str = "Deprecated";
            str2 = "EnclosingMethod";
            str3 = "RuntimeVisibleTypeAnnotations";
            str4 = "RuntimeInvisibleAnnotations";
            str5 = "SourceDebugExtension";
        }
        ee eeVar5 = new ee(iM5460if + this.f34018case.f1403if);
        eeVar5.m1803else(-889275714).m1803else(this.f34035new);
        ee eeVarM1807this = eeVar5.m1807this(this.f34050try);
        ee eeVar6 = this.f34018case;
        eeVarM1807this.m1801case(eeVar6.f1402do, 0, eeVar6.f1403if);
        int i6 = this.f34043super;
        eeVar5.m1807this(((393216 | ((i6 & 262144) / 64)) ^ (-1)) & i6).m1807this(this.f34047throw).m1807this(this.f34034native);
        eeVar5.m1807this(this.f34039public);
        for (int i7 = 0; i7 < this.f34039public; i7++) {
            eeVar5.m1807this(this.f34040return[i7]);
        }
        eeVar5.m1807this(i3);
        for (Ccase ccase2 = this.f34038protected; ccase2 != null; ccase2 = (Ccase) ccase2.f3584if) {
            ccase2.m37948case(eeVar5);
        }
        eeVar5.m1807this(i4);
        for (Ccatch ccatch2 = this.f34030implements; ccatch2 != null; ccatch2 = (Ccatch) ccatch2.f8065if) {
            ccatch2.m37956instanceof(eeVar5);
        }
        eeVar5.m1807this(i);
        if (this.f34033interface != null) {
            eeVar5.m1807this(c("BootstrapMethods"));
            eeVar5.m1803else(this.f34033interface.f1403if + 2).m1807this(this.f34051volatile);
            ee eeVar7 = this.f34033interface;
            eeVar5.m1801case(eeVar7.f1402do, 0, eeVar7.f1403if);
        }
        if (this.f34031import != 0) {
            i2 = 2;
            eeVar5.m1807this(c("Signature")).m1803else(2).m1807this(this.f34031import);
        } else {
            i2 = 2;
        }
        if (this.f34041static != 0) {
            eeVar5.m1807this(c("SourceFile")).m1803else(i2).m1807this(this.f34041static);
        }
        ee eeVar8 = this.f34044switch;
        if (eeVar8 != null) {
            int i8 = eeVar8.f1403if;
            eeVar5.m1807this(c(str5)).m1803else(i8);
            eeVar5.m1801case(this.f34044switch.f1402do, 0, i8);
        }
        if (this.f34048throws != 0) {
            eeVar5.m1807this(c(str2)).m1803else(4);
            eeVar5.m1807this(this.f34048throws).m1807this(this.f34023default);
        }
        if ((this.f34043super & 131072) != 0) {
            eeVar5.m1807this(c(str)).m1803else(0);
        }
        int i9 = this.f34043super;
        if ((i9 & 4096) != 0 && ((this.f34035new & 65535) < 49 || (i9 & 262144) != 0)) {
            eeVar5.m1807this(c("Synthetic")).m1803else(0);
        }
        if (this.f34042strictfp != null) {
            eeVar5.m1807this(c("InnerClasses"));
            eeVar5.m1803else(this.f34042strictfp.f1403if + 2).m1807this(this.f34022continue);
            ee eeVar9 = this.f34042strictfp;
            eeVar5.m1801case(eeVar9.f1402do, 0, eeVar9.f1403if);
        }
        if (this.f34025extends != null) {
            eeVar5.m1807this(c("RuntimeVisibleAnnotations"));
            this.f34025extends.m37961goto(eeVar5);
        }
        if (this.f34027finally != null) {
            eeVar5.m1807this(c(str4));
            this.f34027finally.m37961goto(eeVar5);
        }
        if (this.f34036package != null) {
            eeVar5.m1807this(c(str3));
            this.f34036package.m37961goto(eeVar5);
        }
        if (this.f34037private != null) {
            eeVar5.m1807this(c("RuntimeInvisibleTypeAnnotations"));
            this.f34037private.m37961goto(eeVar5);
        }
        o4 o4Var2 = this.f34016abstract;
        if (o4Var2 != null) {
            eeVar = eeVar5;
            o4Var2.m5458for(this, null, 0, -1, -1, eeVar);
        } else {
            eeVar = eeVar5;
        }
        if (!this.b) {
            return eeVar.f1402do;
        }
        this.f34025extends = null;
        this.f34027finally = null;
        this.f34016abstract = null;
        this.f34022continue = 0;
        this.f34042strictfp = null;
        this.f34051volatile = 0;
        this.f34033interface = null;
        this.f34038protected = null;
        this.f34049transient = null;
        this.f34030implements = null;
        this.f34032instanceof = null;
        this.f34045synchronized = false;
        this.a = true;
        this.b = false;
        new Cif(eeVar.f1402do).m38038throw(this, 4);
        return d();
    }

    @Override // android.support.v4.bm
    /* renamed from: do */
    public final void mo570do(int i, int i2, String str, String str2, String str3, String[] strArr) {
        this.f34035new = i;
        this.f34043super = i2;
        this.f34047throw = m37992interface(str);
        this.f34052while = str;
        if (str2 != null) {
            this.f34031import = c(str2);
        }
        this.f34034native = str3 == null ? 0 : m37992interface(str3);
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        int length = strArr.length;
        this.f34039public = length;
        this.f34040return = new int[length];
        for (int i3 = 0; i3 < this.f34039public; i3++) {
            this.f34040return[i3] = m37992interface(strArr[i3]);
        }
    }

    @Override // android.support.v4.bm
    /* renamed from: else */
    public final xz0 mo571else(int i, String str, String str2, String str3, String[] strArr) {
        return new Ccatch(this, i, str, str2, str3, strArr, this.f34045synchronized, this.a);
    }

    /* renamed from: final, reason: not valid java name */
    public Cthis m37988final(double d2) {
        this.f34046this.m38043do(d2);
        Cthis cthisM37978default = m37978default(this.f34046this);
        if (cthisM37978default != null) {
            return cthisM37978default;
        }
        this.f34018case.m1808try(6).m1805goto(this.f34046this.f34094new);
        Cthis cthis = new Cthis(this.f34050try, this.f34046this);
        this.f34050try += 2;
        m37982private(cthis);
        return cthis;
    }

    @Override // android.support.v4.bm
    /* renamed from: for */
    public final void mo572for(o4 o4Var) {
        o4Var.f4409for = this.f34016abstract;
        this.f34016abstract = o4Var;
    }

    @Override // android.support.v4.bm
    /* renamed from: goto */
    public final void mo573goto(String str, String str2, String str3) {
        this.f34048throws = m37992interface(str);
        if (str2 == null || str3 == null) {
            return;
        }
        this.f34023default = b(str2, str3);
    }

    @Override // android.support.v4.bm
    /* renamed from: if */
    public final d2 mo574if(String str, boolean z) {
        ee eeVar = new ee();
        eeVar.m1807this(c(str)).m1807this(0);
        Cdo cdo = new Cdo(this, true, eeVar, eeVar, 2);
        if (z) {
            cdo.f34005this = this.f34025extends;
            this.f34025extends = cdo;
        } else {
            cdo.f34005this = this.f34027finally;
            this.f34027finally = cdo;
        }
        return cdo;
    }

    /* renamed from: implements, reason: not valid java name */
    public int m37989implements(int i, String str, String str2, String str3) {
        return m38005while(i, str, str2, str3).f34089do;
    }

    /* renamed from: import, reason: not valid java name */
    public Cthis m37990import(long j) {
        this.f34046this.m38042case(j);
        Cthis cthisM37978default = m37978default(this.f34046this);
        if (cthisM37978default != null) {
            return cthisM37978default;
        }
        this.f34018case.m1808try(5).m1805goto(j);
        Cthis cthis = new Cthis(this.f34050try, this.f34046this);
        this.f34050try += 2;
        m37982private(cthis);
        return cthis;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public int m37991instanceof(String str, String str2, ti0 ti0Var, Object... objArr) {
        return m37997static(str, str2, ti0Var, objArr).f34089do;
    }

    /* renamed from: interface, reason: not valid java name */
    public int m37992interface(String str) {
        return m37995public(str).f34089do;
    }

    /* renamed from: native, reason: not valid java name */
    public Cthis m37993native(Object obj) {
        if (obj instanceof Integer) {
            return m38001throw(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return m38001throw(((Byte) obj).intValue());
        }
        if (obj instanceof Character) {
            return m38001throw(((Character) obj).charValue());
        }
        if (obj instanceof Short) {
            return m38001throw(((Short) obj).intValue());
        }
        if (obj instanceof Boolean) {
            return m38001throw(((Boolean) obj).booleanValue() ? 1 : 0);
        }
        if (obj instanceof Float) {
            return m37998super(((Float) obj).floatValue());
        }
        if (obj instanceof Long) {
            return m37990import(((Long) obj).longValue());
        }
        if (obj instanceof Double) {
            return m37988final(((Double) obj).doubleValue());
        }
        if (obj instanceof String) {
            return m37980finally((String) obj);
        }
        if (obj instanceof f92) {
            f92 f92Var = (f92) obj;
            int iM2225package = f92Var.m2225package();
            if (iM2225package == 10) {
                return m37995public(f92Var.m2228throw());
            }
            String strM2221class = f92Var.m2221class();
            return iM2225package == 11 ? m37987continue(strM2221class) : m37995public(strM2221class);
        }
        if (obj instanceof ti0) {
            ti0 ti0Var = (ti0) obj;
            return m38005while(ti0Var.f6572do, ti0Var.f6574if, ti0Var.f6573for, ti0Var.f6575new);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("value ");
        stringBuffer.append(obj);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    @Override // android.support.v4.bm
    /* renamed from: new */
    public final void mo575new() {
    }

    /* renamed from: protected, reason: not valid java name */
    public int m37994protected(Object obj) {
        return m37993native(obj).f34089do;
    }

    /* renamed from: public, reason: not valid java name */
    public Cthis m37995public(String str) {
        this.f34017break.m38049try(7, str, null, null);
        Cthis cthisM37978default = m37978default(this.f34017break);
        if (cthisM37978default != null) {
            return cthisM37978default;
        }
        this.f34018case.m1804for(7, c(str));
        int i = this.f34050try;
        this.f34050try = i + 1;
        Cthis cthis = new Cthis(i, this.f34017break);
        m37982private(cthis);
        return cthis;
    }

    /* renamed from: return, reason: not valid java name */
    public Cthis m37996return(String str, String str2) {
        this.f34017break.m38049try(12, str, str2, null);
        Cthis cthisM37978default = m37978default(this.f34017break);
        if (cthisM37978default != null) {
            return cthisM37978default;
        }
        m37979extends(12, c(str), c(str2));
        int i = this.f34050try;
        this.f34050try = i + 1;
        Cthis cthis = new Cthis(i, this.f34017break);
        m37982private(cthis);
        return cthis;
    }

    /* renamed from: static, reason: not valid java name */
    public Cthis m37997static(String str, String str2, ti0 ti0Var, Object... objArr) {
        int i;
        ee eeVar = this.f34033interface;
        if (eeVar == null) {
            eeVar = new ee();
            this.f34033interface = eeVar;
        }
        int i2 = eeVar.f1403if;
        int iHashCode = ti0Var.hashCode();
        eeVar.m1807this(m37989implements(ti0Var.f6572do, ti0Var.f6574if, ti0Var.f6573for, ti0Var.f6575new));
        int length = objArr.length;
        eeVar.m1807this(length);
        for (Object obj : objArr) {
            iHashCode ^= obj.hashCode();
            eeVar.m1807this(m37994protected(obj));
        }
        byte[] bArr = eeVar.f1402do;
        int i3 = (length + 2) << 1;
        int i4 = iHashCode & Integer.MAX_VALUE;
        Cthis[] cthisArr = this.f34024else;
        Cthis cthis = cthisArr[i4 % cthisArr.length];
        loop1: while (cthis != null) {
            if (cthis.f34093if == 33 && cthis.f34092goto == i4) {
                int i5 = cthis.f34091for;
                for (int i6 = 0; i6 < i3; i6++) {
                    if (bArr[i2 + i6] != bArr[i5 + i6]) {
                        break;
                    }
                }
                break loop1;
            }
            cthis = cthis.f34095this;
        }
        if (cthis != null) {
            i = cthis.f34089do;
            eeVar.f1403if = i2;
        } else {
            i = this.f34051volatile;
            this.f34051volatile = i + 1;
            Cthis cthis2 = new Cthis(i);
            cthis2.m38048new(i2, i4);
            m37982private(cthis2);
        }
        this.f34019catch.m38044else(str, str2, i);
        Cthis cthisM37978default = m37978default(this.f34019catch);
        if (cthisM37978default != null) {
            return cthisM37978default;
        }
        m37979extends(18, i, b(str, str2));
        int i7 = this.f34050try;
        this.f34050try = i7 + 1;
        Cthis cthis3 = new Cthis(i7, this.f34019catch);
        m37982private(cthis3);
        return cthis3;
    }

    /* renamed from: super, reason: not valid java name */
    public Cthis m37998super(float f) {
        this.f34046this.m38047if(f);
        Cthis cthisM37978default = m37978default(this.f34046this);
        if (cthisM37978default != null) {
            return cthisM37978default;
        }
        this.f34018case.m1808try(4).m1803else(this.f34046this.f34091for);
        int i = this.f34050try;
        this.f34050try = i + 1;
        Cthis cthis = new Cthis(i, this.f34046this);
        m37982private(cthis);
        return cthis;
    }

    /* renamed from: switch, reason: not valid java name */
    public Cthis m37999switch(String str, String str2, String str3) {
        this.f34019catch.m38049try(9, str, str2, str3);
        Cthis cthisM37978default = m37978default(this.f34019catch);
        if (cthisM37978default != null) {
            return cthisM37978default;
        }
        m37979extends(9, m37992interface(str), b(str2, str3));
        int i = this.f34050try;
        this.f34050try = i + 1;
        Cthis cthis = new Cthis(i, this.f34019catch);
        m37982private(cthis);
        return cthis;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public int m38000synchronized(String str, String str2, String str3, boolean z) {
        return m38002throws(str, str2, str3, z).f34089do;
    }

    @Override // android.support.v4.bm
    /* renamed from: this */
    public final void mo576this(String str, String str2) {
        if (str != null) {
            this.f34041static = c(str);
        }
        if (str2 != null) {
            this.f34044switch = new ee().m1806new(str2, 0, Integer.MAX_VALUE);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public Cthis m38001throw(int i) {
        this.f34046this.m38045for(i);
        Cthis cthisM37978default = m37978default(this.f34046this);
        if (cthisM37978default != null) {
            return cthisM37978default;
        }
        this.f34018case.m1808try(3).m1803else(i);
        int i2 = this.f34050try;
        this.f34050try = i2 + 1;
        Cthis cthis = new Cthis(i2, this.f34046this);
        m37982private(cthis);
        return cthis;
    }

    /* renamed from: throws, reason: not valid java name */
    public Cthis m38002throws(String str, String str2, String str3, boolean z) {
        int i = z ? 11 : 10;
        this.f34019catch.m38049try(i, str, str2, str3);
        Cthis cthisM37978default = m37978default(this.f34019catch);
        if (cthisM37978default != null) {
            return cthisM37978default;
        }
        m37979extends(i, m37992interface(str), b(str2, str3));
        int i2 = this.f34050try;
        this.f34050try = i2 + 1;
        Cthis cthis = new Cthis(i2, this.f34019catch);
        m37982private(cthis);
        return cthis;
    }

    /* renamed from: transient, reason: not valid java name */
    public int m38003transient(String str, String str2, String str3) {
        return m37999switch(str, str2, str3).f34089do;
    }

    @Override // android.support.v4.bm
    /* renamed from: try */
    public final la0 mo577try(int i, String str, String str2, String str3, Object obj) {
        return new Ccase(this, i, str, str2, str3, obj);
    }

    /* renamed from: volatile, reason: not valid java name */
    public String m38004volatile(String str, String str2) throws ClassNotFoundException {
        ClassLoader classLoader = getClass().getClassLoader();
        try {
            Class<?> cls = Class.forName(str.replace(Attributes.InternalPrefix, Ctry.f28883do), false, classLoader);
            Class<?> cls2 = Class.forName(str2.replace(Attributes.InternalPrefix, Ctry.f28883do), false, classLoader);
            if (cls.isAssignableFrom(cls2)) {
                return str;
            }
            if (cls2.isAssignableFrom(cls)) {
                return str2;
            }
            if (cls.isInterface() || cls2.isInterface()) {
                return "java/lang/Object";
            }
            do {
                cls = cls.getSuperclass();
            } while (!cls.isAssignableFrom(cls2));
            return cls.getName().replace(Ctry.f28883do, Attributes.InternalPrefix);
        } catch (Exception e2) {
            throw new RuntimeException(e2.toString());
        }
    }

    /* renamed from: while, reason: not valid java name */
    public Cthis m38005while(int i, String str, String str2, String str3) {
        int iM38000synchronized;
        this.f34020class.m38049try(i + 20, str, str2, str3);
        Cthis cthisM37978default = m37978default(this.f34020class);
        if (cthisM37978default != null) {
            return cthisM37978default;
        }
        if (i <= 4) {
            iM38000synchronized = m38003transient(str, str2, str3);
        } else {
            iM38000synchronized = m38000synchronized(str, str2, str3, i == 9);
        }
        m37981package(15, i, iM38000synchronized);
        int i2 = this.f34050try;
        this.f34050try = i2 + 1;
        Cthis cthis = new Cthis(i2, this.f34020class);
        m37982private(cthis);
        return cthis;
    }
}
