package org.bouncycastle.crypto.generators;

import android.support.v4.ib1;
import android.support.v4.q3;
import android.support.v4.x9;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.crypto.generators.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: break, reason: not valid java name */
    private static final int f29836break = 72;

    /* renamed from: case, reason: not valid java name */
    private static final int f29837case = 1024;

    /* renamed from: catch, reason: not valid java name */
    private static final int f29838catch = 4;

    /* renamed from: class, reason: not valid java name */
    private static final int f29839class = 1;

    /* renamed from: const, reason: not valid java name */
    private static final int f29840const = 16777216;

    /* renamed from: else, reason: not valid java name */
    private static final int f29841else = 128;

    /* renamed from: final, reason: not valid java name */
    private static final int f29842final = 4;

    /* renamed from: goto, reason: not valid java name */
    private static final int f29843goto = 128;

    /* renamed from: super, reason: not valid java name */
    private static final int f29844super = 1;

    /* renamed from: this, reason: not valid java name */
    private static final int f29845this = 64;

    /* renamed from: do, reason: not valid java name */
    private Cif[] f29846do;

    /* renamed from: for, reason: not valid java name */
    private int f29847for;

    /* renamed from: if, reason: not valid java name */
    private int f29848if;

    /* renamed from: new, reason: not valid java name */
    private org.bouncycastle.crypto.params.Cdo f29849new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f29850try;

    /* renamed from: org.bouncycastle.crypto.generators.do$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public int f29851do;

        /* renamed from: for, reason: not valid java name */
        public int f29852for;

        /* renamed from: if, reason: not valid java name */
        public int f29853if;

        /* renamed from: new, reason: not valid java name */
        public int f29854new;

        public Cfor(int i, int i2, int i3, int i4) {
            this.f29851do = i;
            this.f29853if = i2;
            this.f29852for = i3;
            this.f29854new = i4;
        }
    }

    /* renamed from: org.bouncycastle.crypto.generators.do$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private long[] f29855do;

        private Cif() {
            this.f29855do = new long[128];
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: case, reason: not valid java name */
        public void m33656case(Cif cif) {
            long[] jArr = cif.f29855do;
            long[] jArr2 = this.f29855do;
            System.arraycopy(jArr, 0, jArr2, 0, jArr2.length);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: catch, reason: not valid java name */
        public void m33657catch(Cif cif) {
            int i = 0;
            while (true) {
                long[] jArr = this.f29855do;
                if (i >= jArr.length) {
                    return;
                }
                jArr[i] = jArr[i] ^ cif.f29855do[i];
                i++;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: this, reason: not valid java name */
        public void m33662this(Cif cif, Cif cif2) {
            int i = 0;
            while (true) {
                long[] jArr = this.f29855do;
                if (i >= jArr.length) {
                    return;
                }
                jArr[i] = cif.f29855do[i] ^ cif2.f29855do[i];
                i++;
            }
        }

        /* renamed from: break, reason: not valid java name */
        public void m33663break(Cif cif, Cif cif2, Cif cif3) {
            int i = 0;
            while (true) {
                long[] jArr = this.f29855do;
                if (i >= jArr.length) {
                    return;
                }
                jArr[i] = (cif.f29855do[i] ^ cif2.f29855do[i]) ^ cif3.f29855do[i];
                i++;
            }
        }

        /* renamed from: else, reason: not valid java name */
        public void m33664else(byte[] bArr) {
            if (bArr.length != 1024) {
                throw new IllegalArgumentException("input shorter than blocksize");
            }
            int i = 0;
            while (true) {
                long[] jArr = this.f29855do;
                if (i >= jArr.length) {
                    return;
                }
                jArr[i] = ib1.m3362import(bArr, i * 8);
                i++;
            }
        }

        /* renamed from: goto, reason: not valid java name */
        public byte[] m33665goto() {
            byte[] bArr = new byte[1024];
            int i = 0;
            while (true) {
                long[] jArr = this.f29855do;
                if (i >= jArr.length) {
                    return bArr;
                }
                ib1.m3356extends(jArr[i], bArr, i * 8);
                i++;
            }
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            int i = 0;
            while (true) {
                long[] jArr = this.f29855do;
                if (i >= jArr.length) {
                    return stringBuffer.toString();
                }
                stringBuffer.append(org.bouncycastle.util.encoders.Cfor.m36331goto(ib1.m3366private(jArr[i])));
                i++;
            }
        }

        /* renamed from: try, reason: not valid java name */
        public void m33666try() {
            q3.j(this.f29855do, 0L);
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    private void m33622abstract(Cif cif, Cif cif2, Cif cif3) {
        long[] jArr = cif2.f29855do;
        jArr[6] = jArr[6] + 1;
        m33628else(cif, cif2, cif3, false);
        m33628else(cif, cif3, cif3, false);
    }

    /* renamed from: break, reason: not valid java name */
    private void m33623break(Cfor cfor) {
        Cif cif;
        Cif cif2;
        Cif cif3;
        boolean zM33638package = m33638package(cfor);
        int iM33640public = m33640public(cfor);
        int i = (cfor.f29853if * this.f29847for) + (cfor.f29852for * this.f29848if) + iM33640public;
        int iM33646throw = m33646throw(i);
        if (zM33638package) {
            Cif cif4 = new Cif();
            Cif cif5 = new Cif();
            Cif cif6 = new Cif();
            m33644switch(cfor, cif5, cif6, cif4);
            cif = cif4;
            cif3 = cif5;
            cif2 = cif6;
        } else {
            cif = null;
            cif2 = null;
            cif3 = null;
        }
        cfor.f29854new = iM33640public;
        int i2 = i;
        while (cfor.f29854new < this.f29848if) {
            int iM33642strictfp = m33642strictfp(i2, iM33646throw);
            long jM33650while = m33650while(cfor, cif, cif2, cif3, iM33642strictfp, zM33638package);
            int iM33636native = m33636native(cfor, jM33650while);
            int iM33634import = m33634import(cfor, jM33650while, iM33636native == cfor.f29853if);
            Cif[] cifArr = this.f29846do;
            m33628else(cifArr[iM33642strictfp], cifArr[(this.f29847for * iM33636native) + iM33634import], cifArr[i2], m33639private(cfor));
            cfor.f29854new++;
            i2++;
            iM33646throw = iM33642strictfp + 1;
        }
    }

    /* renamed from: case, reason: not valid java name */
    private void m33624case(Cif cif, int i, int i2) {
        cif.f29855do[i] = cif.f29855do[i] + cif.f29855do[i2] + ((cif.f29855do[i] & 4294967295L) * (4294967295L & cif.f29855do[i2]) * 2);
    }

    /* renamed from: continue, reason: not valid java name */
    private void m33625continue() {
        int i = 0;
        while (true) {
            Cif[] cifArr = this.f29846do;
            if (i >= cifArr.length) {
                this.f29846do = null;
                q3.c(this.f29850try, (byte) 0);
                m33648try(this.f29849new);
                return;
            }
            cifArr[i].m33666try();
            i++;
        }
    }

    /* renamed from: default, reason: not valid java name */
    private byte[] m33626default(org.bouncycastle.crypto.params.Cdo cdo, int i, byte[] bArr) {
        x9 x9Var = new x9(512);
        m33631for(x9Var, cdo.m33829try());
        m33631for(x9Var, i);
        m33631for(x9Var, cdo.m33821case());
        m33631for(x9Var, cdo.m33827new());
        m33631for(x9Var, cdo.m33820break());
        m33631for(x9Var, cdo.m33828this());
        m33633if(x9Var, bArr);
        m33633if(x9Var, cdo.m33823else());
        m33633if(x9Var, cdo.m33825goto());
        m33633if(x9Var, cdo.m33826if());
        byte[] bArr2 = new byte[x9Var.getDigestSize()];
        x9Var.doFinal(bArr2, 0);
        return bArr2;
    }

    /* renamed from: do, reason: not valid java name */
    private void m33627do(Cif cif, int i, int i2, int i3, int i4) {
        m33624case(cif, i, i2);
        m33649volatile(cif, i4, i, 32L);
        m33624case(cif, i3, i4);
        m33649volatile(cif, i2, i3, 24L);
        m33624case(cif, i, i2);
        m33649volatile(cif, i4, i, 16L);
        m33624case(cif, i3, i4);
        m33649volatile(cif, i2, i3, 63L);
    }

    /* renamed from: else, reason: not valid java name */
    private void m33628else(Cif cif, Cif cif2, Cif cif3, boolean z) {
        int i;
        Cif cif4 = new Cif();
        Cif cif5 = new Cif();
        cif4.m33662this(cif, cif2);
        cif5.m33656case(cif4);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= 8) {
                break;
            }
            int i4 = i3 * 16;
            m33635interface(cif5, i4, i4 + 1, i4 + 2, i4 + 3, i4 + 4, i4 + 5, i4 + 6, i4 + 7, i4 + 8, i4 + 9, i4 + 10, i4 + 11, i4 + 12, i4 + 13, i4 + 14, i4 + 15);
            i3++;
        }
        for (i = 8; i2 < i; i = 8) {
            int i5 = i2 * 2;
            m33635interface(cif5, i5, i5 + 1, i5 + 16, i5 + 17, i5 + 32, i5 + 33, i5 + 48, i5 + 49, i5 + 64, i5 + 65, i5 + 80, i5 + 81, i5 + 96, i5 + 97, i5 + 112, i5 + 113);
            i2++;
        }
        if (z) {
            cif3.m33663break(cif4, cif5, cif3);
        } else {
            cif3.m33662this(cif4, cif5);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    private void m33629extends(byte[] bArr, int i) {
        m33632goto(m33626default(this.f29849new, i, bArr));
    }

    /* renamed from: finally, reason: not valid java name */
    private long m33630finally(int i) {
        return i & 4294967295L;
    }

    /* renamed from: for, reason: not valid java name */
    private static void m33631for(Digest digest, int i) {
        digest.update((byte) i);
        digest.update((byte) (i >>> 8));
        digest.update((byte) (i >>> 16));
        digest.update((byte) (i >>> 24));
    }

    /* renamed from: goto, reason: not valid java name */
    private void m33632goto(byte[] bArr) {
        byte[] bArrM33643super = m33643super(bArr, new byte[]{0, 0, 0, 0});
        byte[] bArrM33643super2 = m33643super(bArr, new byte[]{1, 0, 0, 0});
        for (int i = 0; i < this.f29849new.m33829try(); i++) {
            ib1.m3347break(i, bArrM33643super, 68);
            ib1.m3347break(i, bArrM33643super2, 68);
            this.f29846do[(this.f29847for * i) + 0].m33664else(m33641return(bArrM33643super, 1024));
            this.f29846do[(this.f29847for * i) + 1].m33664else(m33641return(bArrM33643super2, 1024));
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static void m33633if(Digest digest, byte[] bArr) {
        if (bArr == null) {
            m33631for(digest, 0);
        } else {
            m33631for(digest, bArr.length);
            digest.update(bArr, 0, bArr.length);
        }
    }

    /* renamed from: import, reason: not valid java name */
    private int m33634import(Cfor cfor, long j, boolean z) {
        int i;
        int i2 = 0;
        if (cfor.f29851do != 0) {
            int i3 = cfor.f29852for + 1;
            int i4 = this.f29848if;
            int i5 = this.f29847for;
            int i6 = (i3 * i4) % i5;
            int i7 = i5 - i4;
            int i8 = cfor.f29854new;
            if (z) {
                i = (i7 + i8) - 1;
            } else {
                i = i7 + (i8 != 0 ? 0 : -1);
            }
            i2 = i6;
        } else if (z) {
            i = ((cfor.f29852for * this.f29848if) + cfor.f29854new) - 1;
        } else {
            i = (cfor.f29852for * this.f29848if) + (cfor.f29854new != 0 ? 0 : -1);
        }
        long j2 = j & 4294967295L;
        return ((int) (i2 + ((i - 1) - ((i * ((j2 * j2) >>> 32)) >>> 32)))) % this.f29847for;
    }

    /* renamed from: interface, reason: not valid java name */
    private void m33635interface(Cif cif, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        m33627do(cif, i, i5, i9, i13);
        m33627do(cif, i2, i6, i10, i14);
        m33627do(cif, i3, i7, i11, i15);
        m33627do(cif, i4, i8, i12, i16);
        m33627do(cif, i, i6, i11, i16);
        m33627do(cif, i2, i7, i12, i13);
        m33627do(cif, i3, i8, i9, i14);
        m33627do(cif, i4, i5, i10, i15);
    }

    /* renamed from: native, reason: not valid java name */
    private int m33636native(Cfor cfor, long j) {
        int iM33829try = (int) ((j >>> 32) % this.f29849new.m33829try());
        return (cfor.f29851do == 0 && cfor.f29852for == 0) ? cfor.f29853if : iM33829try;
    }

    /* renamed from: new, reason: not valid java name */
    private void m33637new(int i) {
        Cif cif = this.f29846do[this.f29847for - 1];
        for (int i2 = 1; i2 < this.f29849new.m33829try(); i2++) {
            int i3 = this.f29847for;
            cif.m33657catch(this.f29846do[(i2 * i3) + (i3 - 1)]);
        }
        this.f29850try = m33641return(cif.m33665goto(), i);
    }

    /* renamed from: package, reason: not valid java name */
    private boolean m33638package(Cfor cfor) {
        if (this.f29849new.m33828this() != 1) {
            return this.f29849new.m33828this() == 2 && cfor.f29851do == 0 && cfor.f29852for < 2;
        }
        return true;
    }

    /* renamed from: private, reason: not valid java name */
    private boolean m33639private(Cfor cfor) {
        return (cfor.f29851do == 0 || this.f29849new.m33820break() == 16) ? false : true;
    }

    /* renamed from: public, reason: not valid java name */
    private static int m33640public(Cfor cfor) {
        return (cfor.f29851do == 0 && cfor.f29852for == 0) ? 2 : 0;
    }

    /* renamed from: return, reason: not valid java name */
    private byte[] m33641return(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        byte[] bArrM3350class = ib1.m3350class(i);
        if (i <= 64) {
            x9 x9Var = new x9(i * 8);
            x9Var.update(bArrM3350class, 0, bArrM3350class.length);
            x9Var.update(bArr, 0, bArr.length);
            x9Var.doFinal(bArr2, 0);
        } else {
            x9 x9Var2 = new x9(512);
            byte[] bArr3 = new byte[64];
            x9Var2.update(bArrM3350class, 0, bArrM3350class.length);
            x9Var2.update(bArr, 0, bArr.length);
            x9Var2.doFinal(bArr3, 0);
            System.arraycopy(bArr3, 0, bArr2, 0, 32);
            int i2 = 2;
            int i3 = ((i + 31) / 32) - 2;
            int i4 = 32;
            while (i2 <= i3) {
                x9Var2.update(bArr3, 0, 64);
                x9Var2.doFinal(bArr3, 0);
                System.arraycopy(bArr3, 0, bArr2, i4, 32);
                i2++;
                i4 += 32;
            }
            x9 x9Var3 = new x9((i - (i3 * 32)) * 8);
            x9Var3.update(bArr3, 0, 64);
            x9Var3.doFinal(bArr2, i4);
        }
        return bArr2;
    }

    /* renamed from: strictfp, reason: not valid java name */
    private int m33642strictfp(int i, int i2) {
        return i % this.f29847for == 1 ? i - 1 : i2;
    }

    /* renamed from: super, reason: not valid java name */
    private byte[] m33643super(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[72];
        System.arraycopy(bArr, 0, bArr3, 0, 64);
        System.arraycopy(bArr2, 0, bArr3, 64, 4);
        return bArr3;
    }

    /* renamed from: switch, reason: not valid java name */
    private void m33644switch(Cfor cfor, Cif cif, Cif cif2, Cif cif3) {
        cif2.f29855do[0] = m33630finally(cfor.f29851do);
        cif2.f29855do[1] = m33630finally(cfor.f29853if);
        cif2.f29855do[2] = m33630finally(cfor.f29852for);
        cif2.f29855do[3] = m33630finally(this.f29846do.length);
        cif2.f29855do[4] = m33630finally(this.f29849new.m33827new());
        cif2.f29855do[5] = m33630finally(this.f29849new.m33828this());
        if (cfor.f29851do == 0 && cfor.f29852for == 0) {
            m33622abstract(cif, cif2, cif3);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m33645this() {
        for (int i = 0; i < this.f29849new.m33827new(); i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                for (int i3 = 0; i3 < this.f29849new.m33829try(); i3++) {
                    m33623break(new Cfor(i, i3, i2, 0));
                }
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private int m33646throw(int i) {
        return i % this.f29847for == 0 ? (i + r0) - 1 : i - 1;
    }

    /* renamed from: throws, reason: not valid java name */
    private void m33647throws(int i) {
        this.f29846do = new Cif[i];
        int i2 = 0;
        while (true) {
            Cif[] cifArr = this.f29846do;
            if (i2 >= cifArr.length) {
                return;
            }
            cifArr[i2] = new Cif();
            i2++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m33648try(org.bouncycastle.crypto.params.Cdo cdo) {
        int iM33821case = cdo.m33821case();
        if (iM33821case < cdo.m33829try() * 8) {
            iM33821case = cdo.m33829try() * 8;
        }
        int iM33829try = iM33821case / (cdo.m33829try() * 4);
        this.f29848if = iM33829try;
        this.f29847for = iM33829try * 4;
        m33647throws(iM33829try * cdo.m33829try() * 4);
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m33649volatile(Cif cif, int i, int i2, long j) {
        long j2 = cif.f29855do[i] ^ cif.f29855do[i2];
        cif.f29855do[i] = (j2 << ((int) (64 - j))) | (j2 >>> ((int) j));
    }

    /* renamed from: while, reason: not valid java name */
    private long m33650while(Cfor cfor, Cif cif, Cif cif2, Cif cif3, int i, boolean z) {
        if (!z) {
            return this.f29846do[i].f29855do[0];
        }
        if (cfor.f29854new % 128 == 0) {
            m33622abstract(cif3, cif2, cif);
        }
        return cif.f29855do[cfor.f29854new % 128];
    }

    /* renamed from: catch, reason: not valid java name */
    public int m33651catch(byte[] bArr, byte[] bArr2) {
        return m33652class(bArr, bArr2, 0, bArr2.length);
    }

    /* renamed from: class, reason: not valid java name */
    public int m33652class(byte[] bArr, byte[] bArr2, int i, int i2) {
        if (i2 < 4) {
            throw new IllegalStateException("output length less than 4");
        }
        m33629extends(bArr, i2);
        m33645this();
        m33637new(i2);
        System.arraycopy(this.f29850try, 0, bArr2, i, i2);
        m33625continue();
        return i2;
    }

    /* renamed from: const, reason: not valid java name */
    public int m33653const(char[] cArr, byte[] bArr) {
        return m33651catch(this.f29849new.m33824for().convert(cArr), bArr);
    }

    /* renamed from: final, reason: not valid java name */
    public int m33654final(char[] cArr, byte[] bArr, int i, int i2) {
        return m33652class(this.f29849new.m33824for().convert(cArr), bArr, i, i2);
    }

    /* renamed from: static, reason: not valid java name */
    public void m33655static(org.bouncycastle.crypto.params.Cdo cdo) {
        this.f29849new = cdo;
        if (cdo.m33829try() < 1) {
            throw new IllegalStateException("lanes must be greater than 1");
        }
        if (cdo.m33829try() > 16777216) {
            throw new IllegalStateException("lanes must be less than 16777216");
        }
        if (cdo.m33821case() >= cdo.m33829try() * 2) {
            if (cdo.m33827new() < 1) {
                throw new IllegalStateException("iterations is less than: 1");
            }
            m33648try(cdo);
        } else {
            throw new IllegalStateException("memory is less than: " + (cdo.m33829try() * 2) + " expected " + (cdo.m33829try() * 2));
        }
    }
}
