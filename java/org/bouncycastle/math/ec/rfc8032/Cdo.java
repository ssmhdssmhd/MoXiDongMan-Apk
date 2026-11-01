package org.bouncycastle.math.ec.rfc8032;

import android.support.v4.bq1;
import android.support.v4.jg2;
import android.support.v4.k21;
import android.support.v4.lg2;
import android.support.v4.ln0;
import android.support.v4.q21;
import android.support.v4.q3;
import android.support.v4.t3;
import com.google.common.primitives.Cfinal;
import java.security.SecureRandom;
import java.util.Objects;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.math.ec.rfc8032.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo {

    /* renamed from: case, reason: not valid java name */
    public static final int f32061case = 64;

    /* renamed from: const, reason: not valid java name */
    private static final int f32064const = -50998291;

    /* renamed from: default, reason: not valid java name */
    private static final int f32066default = 4;

    /* renamed from: do, reason: not valid java name */
    private static final long f32067do = 268435455;

    /* renamed from: else, reason: not valid java name */
    public static final int f32068else = 32;

    /* renamed from: extends, reason: not valid java name */
    private static final int f32069extends = 8;

    /* renamed from: final, reason: not valid java name */
    private static final int f32070final = 19280294;

    /* renamed from: finally, reason: not valid java name */
    private static final int f32071finally = 8;

    /* renamed from: for, reason: not valid java name */
    private static final int f32072for = 32;

    /* renamed from: goto, reason: not valid java name */
    public static final int f32073goto = 32;

    /* renamed from: if, reason: not valid java name */
    private static final long f32074if = 4294967295L;

    /* renamed from: new, reason: not valid java name */
    private static final int f32077new = 8;

    /* renamed from: package, reason: not valid java name */
    private static final int f32078package = 7;

    /* renamed from: super, reason: not valid java name */
    private static final int f32083super = 127719000;

    /* renamed from: switch, reason: not valid java name */
    private static final int f32084switch = 7;

    /* renamed from: this, reason: not valid java name */
    public static final int f32085this = 64;

    /* renamed from: throw, reason: not valid java name */
    private static final int f32086throw = -6428113;

    /* renamed from: throws, reason: not valid java name */
    private static final int f32087throws = 8;

    /* renamed from: try, reason: not valid java name */
    private static final int f32088try = 32;

    /* renamed from: while, reason: not valid java name */
    private static final int f32089while = 5343;

    /* renamed from: break, reason: not valid java name */
    private static final byte[] f32060break = org.bouncycastle.util.Cfor.m36358goto("SigEd25519 no Ed25519 collisions");

    /* renamed from: catch, reason: not valid java name */
    private static final int[] f32062catch = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};

    /* renamed from: class, reason: not valid java name */
    private static final int[] f32063class = {1559614445, 1477600026, -1560830762, 350157278, 0, 0, 0, 268435456};

    /* renamed from: import, reason: not valid java name */
    private static final int[] f32075import = {52811034, 25909283, 8072341, 50637101, 13785486, 30858332, 20483199, 20966410, 43936626, 4379245};

    /* renamed from: native, reason: not valid java name */
    private static final int[] f32076native = {40265304, 26843545, 6710886, 53687091, 13421772, 40265318, 26843545, 6710886, 53687091, 13421772};

    /* renamed from: public, reason: not valid java name */
    private static final int[] f32080public = {56195235, 47411844, 25868126, 40503822, 57364, 58321048, 30416477, 31930572, 57760639, 10749657};

    /* renamed from: return, reason: not valid java name */
    private static final int[] f32081return = {45281625, 27714825, 18181821, 13898781, 114729, 49533232, 60832955, 30306712, 48412415, 4722099};

    /* renamed from: static, reason: not valid java name */
    private static final int[] f32082static = {23454386, 55429651, 2809210, 27797563, 229458, 31957600, 54557047, 27058993, 29715967, 9444199};

    /* renamed from: private, reason: not valid java name */
    private static Object f32079private = new Object();

    /* renamed from: abstract, reason: not valid java name */
    private static Cnew[] f32059abstract = null;

    /* renamed from: continue, reason: not valid java name */
    private static int[] f32065continue = null;

    /* renamed from: org.bouncycastle.math.ec.rfc8032.do$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public int[] f32090do;

        /* renamed from: for, reason: not valid java name */
        public int[] f32091for;

        /* renamed from: if, reason: not valid java name */
        public int[] f32092if;

        /* renamed from: new, reason: not valid java name */
        public int[] f32093new;

        /* renamed from: try, reason: not valid java name */
        public int[] f32094try;

        private Cfor() {
            this.f32090do = lg2.m4666goto();
            this.f32092if = lg2.m4666goto();
            this.f32091for = lg2.m4666goto();
            this.f32093new = lg2.m4666goto();
            this.f32094try = lg2.m4666goto();
        }
    }

    /* renamed from: org.bouncycastle.math.ec.rfc8032.do$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final int f32095do = 0;

        /* renamed from: for, reason: not valid java name */
        public static final int f32096for = 2;

        /* renamed from: if, reason: not valid java name */
        public static final int f32097if = 1;
    }

    /* renamed from: org.bouncycastle.math.ec.rfc8032.do$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        public int[] f32098do;

        /* renamed from: for, reason: not valid java name */
        public int[] f32099for;

        /* renamed from: if, reason: not valid java name */
        public int[] f32100if;

        /* renamed from: new, reason: not valid java name */
        public int[] f32101new;

        private Cnew() {
            this.f32098do = lg2.m4666goto();
            this.f32100if = lg2.m4666goto();
            this.f32099for = lg2.m4666goto();
            this.f32101new = lg2.m4666goto();
        }
    }

    /* renamed from: org.bouncycastle.math.ec.rfc8032.do$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public int[] f32102do;

        /* renamed from: for, reason: not valid java name */
        public int[] f32103for;

        /* renamed from: if, reason: not valid java name */
        public int[] f32104if;

        private Ctry() {
            this.f32102do = lg2.m4666goto();
            this.f32104if = lg2.m4666goto();
            this.f32103for = lg2.m4666goto();
        }
    }

    private static void a(byte[] bArr, byte[] bArr2, int i) {
        Cfor cfor = new Cfor();
        m35515synchronized(bArr, cfor);
        m35517throw(cfor, bArr2, i);
    }

    /* renamed from: abstract, reason: not valid java name */
    private static void m35484abstract(Cfor cfor) {
        lg2.m4677switch(cfor.f32091for);
        lg2.m4661else(cfor.f32090do, 0, cfor.f32093new, 0);
        lg2.m4661else(cfor.f32092if, 0, cfor.f32094try, 0);
    }

    public static void b(jg2.Cdo cdo, byte[] bArr, int i, int[] iArr, int[] iArr2) {
        Objects.requireNonNull(cdo, "This method is only for use by X25519");
        byte[] bArr2 = new byte[32];
        m35500implements(bArr, i, bArr2);
        Cfor cfor = new Cfor();
        m35515synchronized(bArr2, cfor);
        lg2.m4661else(cfor.f32092if, 0, iArr, 0);
        lg2.m4661else(cfor.f32091for, 0, iArr2, 0);
    }

    /* renamed from: break, reason: not valid java name */
    private static boolean m35485break(byte[] bArr, int i, boolean z, Cnew cnew) {
        byte[] bArrM6378instanceof = q3.m6378instanceof(bArr, i, i + 32);
        if (!m35497for(bArrM6378instanceof)) {
            return false;
        }
        int i2 = (bArrM6378instanceof[31] & 128) >>> 7;
        bArrM6378instanceof[31] = (byte) (bArrM6378instanceof[31] & Byte.MAX_VALUE);
        lg2.m4655catch(bArrM6378instanceof, 0, cnew.f32100if);
        int[] iArrM4666goto = lg2.m4666goto();
        int[] iArrM4666goto2 = lg2.m4666goto();
        lg2.m4664finally(cnew.f32100if, iArrM4666goto);
        lg2.m4673public(f32080public, iArrM4666goto, iArrM4666goto2);
        lg2.m4652abstract(iArrM4666goto);
        lg2.m4667if(iArrM4666goto2);
        if (!lg2.m4671package(iArrM4666goto, iArrM4666goto2, cnew.f32098do)) {
            return false;
        }
        lg2.m4675static(cnew.f32098do);
        if (i2 == 1 && lg2.m4668import(cnew.f32098do)) {
            return false;
        }
        int[] iArr = cnew.f32098do;
        if (z ^ (i2 != (iArr[0] & 1))) {
            lg2.m4674return(iArr, iArr);
        }
        m35490continue(cnew);
        return true;
    }

    private static void c(int[] iArr, int[] iArr2, Cnew cnew, Cfor cfor) {
        m35519transient();
        byte[] bArrM35504native = m35504native(iArr, 7);
        byte[] bArrM35504native2 = m35504native(iArr2, 5);
        Cnew[] cnewArrM35521volatile = m35521volatile(cnew, 8);
        m35503interface(cfor);
        int i = 255;
        while (i > 0 && (bArrM35504native[i] | bArrM35504native2[i]) == 0) {
            i--;
        }
        while (true) {
            byte b = bArrM35504native[i];
            if (b != 0) {
                int i2 = b >> t3.f6399protected;
                m35491default(i2 != 0, f32059abstract[(b ^ i2) >>> 1], cfor);
            }
            byte b2 = bArrM35504native2[i];
            if (b2 != 0) {
                int i3 = b2 >> t3.f6399protected;
                m35491default(i3 != 0, cnewArrM35521volatile[(b2 ^ i3) >>> 1], cfor);
            }
            i--;
            if (i < 0) {
                return;
            } else {
                m35507private(cfor);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static Digest m35486case() {
        return m35520try();
    }

    /* renamed from: catch, reason: not valid java name */
    private static void m35487catch(byte[] bArr, int i, int[] iArr) {
        m35516this(bArr, i, iArr, 0, 8);
    }

    /* renamed from: class, reason: not valid java name */
    private static void m35488class(Digest digest, byte b, byte[] bArr) {
        if (bArr != null) {
            byte[] bArr2 = f32060break;
            digest.update(bArr2, 0, bArr2.length);
            digest.update(b);
            digest.update((byte) bArr.length);
            digest.update(bArr, 0, bArr.length);
        }
    }

    /* renamed from: const, reason: not valid java name */
    private static void m35489const(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        int i3 = i2 + 1;
        bArr[i3] = (byte) (i >>> 8);
        bArr[i3 + 1] = (byte) (i >>> 16);
    }

    /* renamed from: continue, reason: not valid java name */
    private static void m35490continue(Cnew cnew) {
        lg2.m4677switch(cnew.f32099for);
        lg2.m4673public(cnew.f32098do, cnew.f32100if, cnew.f32101new);
    }

    public static void d(byte[] bArr, int i, byte[] bArr2, int i2, int i3, byte[] bArr3, int i4) {
        m35510return(bArr, i, null, (byte) 0, bArr2, i2, i3, bArr3, i4);
    }

    /* renamed from: default, reason: not valid java name */
    private static void m35491default(boolean z, Cnew cnew, Cfor cfor) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] iArrM4666goto = lg2.m4666goto();
        int[] iArrM4666goto2 = lg2.m4666goto();
        int[] iArrM4666goto3 = lg2.m4666goto();
        int[] iArrM4666goto4 = lg2.m4666goto();
        int[] iArr5 = cfor.f32093new;
        int[] iArrM4666goto5 = lg2.m4666goto();
        int[] iArrM4666goto6 = lg2.m4666goto();
        int[] iArr6 = cfor.f32094try;
        if (z) {
            iArr2 = iArrM4666goto3;
            iArr = iArrM4666goto4;
            iArr4 = iArrM4666goto5;
            iArr3 = iArrM4666goto6;
        } else {
            iArr = iArrM4666goto3;
            iArr2 = iArrM4666goto4;
            iArr3 = iArrM4666goto5;
            iArr4 = iArrM4666goto6;
        }
        lg2.m4670new(cfor.f32092if, cfor.f32090do, iArrM4666goto2, iArrM4666goto);
        lg2.m4670new(cnew.f32100if, cnew.f32098do, iArr2, iArr);
        lg2.m4673public(iArrM4666goto, iArrM4666goto3, iArrM4666goto);
        lg2.m4673public(iArrM4666goto2, iArrM4666goto4, iArrM4666goto2);
        lg2.m4673public(cfor.f32093new, cfor.f32094try, iArrM4666goto3);
        lg2.m4673public(iArrM4666goto3, cnew.f32101new, iArrM4666goto3);
        lg2.m4673public(iArrM4666goto3, f32081return, iArrM4666goto3);
        lg2.m4673public(cfor.f32091for, cnew.f32099for, iArrM4666goto4);
        lg2.m4660do(iArrM4666goto4, iArrM4666goto4, iArrM4666goto4);
        lg2.m4670new(iArrM4666goto2, iArrM4666goto, iArr6, iArr5);
        lg2.m4670new(iArrM4666goto4, iArrM4666goto3, iArr4, iArr3);
        lg2.m4681try(iArr4);
        lg2.m4673public(iArr5, iArrM4666goto5, cfor.f32090do);
        lg2.m4673public(iArrM4666goto6, iArr6, cfor.f32092if);
        lg2.m4673public(iArrM4666goto5, iArrM4666goto6, cfor.f32091for);
    }

    /* renamed from: do, reason: not valid java name */
    private static byte[] m35492do(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int[] iArr = new int[16];
        m35487catch(bArr, 0, iArr);
        int[] iArr2 = new int[8];
        m35487catch(bArr2, 0, iArr2);
        int[] iArr3 = new int[8];
        m35487catch(bArr3, 0, iArr3);
        k21.m4195interface(iArr2, iArr3, iArr);
        byte[] bArr4 = new byte[64];
        for (int i = 0; i < 16; i++) {
            m35495final(iArr[i], bArr4, i * 4);
        }
        return m35502instanceof(bArr4);
    }

    public static void e(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3, int i4, byte[] bArr4, int i5) {
        m35511static(bArr, i, bArr2, i2, null, (byte) 0, bArr3, i3, i4, bArr4, i5);
    }

    /* renamed from: else, reason: not valid java name */
    private static int m35493else(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = i + 1;
        return ((bArr[i3 + 1] & 255) << 16) | i2 | ((bArr[i3] & 255) << 8);
    }

    /* renamed from: extends, reason: not valid java name */
    private static void m35494extends(boolean z, Cnew cnew, Cnew cnew2, Cnew cnew3) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int[] iArrM4666goto = lg2.m4666goto();
        int[] iArrM4666goto2 = lg2.m4666goto();
        int[] iArrM4666goto3 = lg2.m4666goto();
        int[] iArrM4666goto4 = lg2.m4666goto();
        int[] iArrM4666goto5 = lg2.m4666goto();
        int[] iArrM4666goto6 = lg2.m4666goto();
        int[] iArrM4666goto7 = lg2.m4666goto();
        int[] iArrM4666goto8 = lg2.m4666goto();
        if (z) {
            iArr2 = iArrM4666goto3;
            iArr = iArrM4666goto4;
            iArr4 = iArrM4666goto6;
            iArr3 = iArrM4666goto7;
        } else {
            iArr = iArrM4666goto3;
            iArr2 = iArrM4666goto4;
            iArr3 = iArrM4666goto6;
            iArr4 = iArrM4666goto7;
        }
        lg2.m4670new(cnew.f32100if, cnew.f32098do, iArrM4666goto2, iArrM4666goto);
        lg2.m4670new(cnew2.f32100if, cnew2.f32098do, iArr2, iArr);
        lg2.m4673public(iArrM4666goto, iArrM4666goto3, iArrM4666goto);
        lg2.m4673public(iArrM4666goto2, iArrM4666goto4, iArrM4666goto2);
        lg2.m4673public(cnew.f32101new, cnew2.f32101new, iArrM4666goto3);
        lg2.m4673public(iArrM4666goto3, f32081return, iArrM4666goto3);
        lg2.m4673public(cnew.f32099for, cnew2.f32099for, iArrM4666goto4);
        lg2.m4660do(iArrM4666goto4, iArrM4666goto4, iArrM4666goto4);
        lg2.m4670new(iArrM4666goto2, iArrM4666goto, iArrM4666goto8, iArrM4666goto5);
        lg2.m4670new(iArrM4666goto4, iArrM4666goto3, iArr4, iArr3);
        lg2.m4681try(iArr4);
        lg2.m4673public(iArrM4666goto5, iArrM4666goto6, cnew3.f32098do);
        lg2.m4673public(iArrM4666goto7, iArrM4666goto8, cnew3.f32100if);
        lg2.m4673public(iArrM4666goto6, iArrM4666goto7, cnew3.f32099for);
        lg2.m4673public(iArrM4666goto5, iArrM4666goto8, cnew3.f32101new);
    }

    public static void f(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, byte[] bArr4, int i3, int i4, byte[] bArr5, int i5) {
        m35511static(bArr, i, bArr2, i2, bArr3, (byte) 0, bArr4, i3, i4, bArr5, i5);
    }

    /* renamed from: final, reason: not valid java name */
    private static void m35495final(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        int i3 = i2 + 1;
        bArr[i3] = (byte) (i >>> 8);
        int i4 = i3 + 1;
        bArr[i4] = (byte) (i >>> 16);
        bArr[i4 + 1] = (byte) (i >>> 24);
    }

    /* renamed from: finally, reason: not valid java name */
    private static Cnew m35496finally(Cfor cfor) {
        Cnew cnew = new Cnew();
        lg2.m4661else(cfor.f32090do, 0, cnew.f32098do, 0);
        lg2.m4661else(cfor.f32092if, 0, cnew.f32100if, 0);
        lg2.m4661else(cfor.f32091for, 0, cnew.f32099for, 0);
        lg2.m4673public(cfor.f32093new, cfor.f32094try, cnew.f32101new);
        return cnew;
    }

    /* renamed from: for, reason: not valid java name */
    private static boolean m35497for(byte[] bArr) {
        int[] iArr = new int[8];
        m35516this(bArr, 0, iArr, 0, 8);
        iArr[7] = iArr[7] & Integer.MAX_VALUE;
        return !k21.m4206switch(iArr, f32062catch);
    }

    public static void g(byte[] bArr, int i, byte[] bArr2, byte[] bArr3, int i2, int i3, byte[] bArr4, int i4) {
        m35510return(bArr, i, bArr2, (byte) 0, bArr3, i2, i3, bArr4, i4);
    }

    /* renamed from: goto, reason: not valid java name */
    private static int m35498goto(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = i + 1;
        int i4 = i2 | ((bArr[i3] & 255) << 8);
        int i5 = i3 + 1;
        return (bArr[i5 + 1] << t3.f6397package) | i4 | ((bArr[i5] & 255) << 16);
    }

    public static void h(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, Digest digest, byte[] bArr4, int i3) {
        byte[] bArr5 = new byte[64];
        if (64 != digest.doFinal(bArr5, 0)) {
            throw new IllegalArgumentException("ph");
        }
        m35511static(bArr, i, bArr2, i2, bArr3, (byte) 1, bArr5, 0, 64, bArr4, i3);
    }

    public static void i(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, byte[] bArr4, int i3, byte[] bArr5, int i4) {
        m35511static(bArr, i, bArr2, i2, bArr3, (byte) 1, bArr4, i3, 64, bArr5, i4);
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m35499if(byte[] bArr, byte b) {
        return (bArr == null && b == 0) || (bArr != null && bArr.length < 256);
    }

    /* renamed from: implements, reason: not valid java name */
    private static void m35500implements(byte[] bArr, int i, byte[] bArr2) {
        System.arraycopy(bArr, i, bArr2, 0, 32);
        bArr2[0] = (byte) (bArr2[0] & 248);
        bArr2[31] = (byte) (bArr2[31] & Byte.MAX_VALUE);
        bArr2[31] = (byte) (bArr2[31] | Cfinal.f15506do);
    }

    /* renamed from: import, reason: not valid java name */
    public static void m35501import(byte[] bArr, int i, byte[] bArr2, int i2) {
        Digest digestM35520try = m35520try();
        byte[] bArr3 = new byte[digestM35520try.getDigestSize()];
        digestM35520try.update(bArr, i, 32);
        digestM35520try.doFinal(bArr3, 0);
        byte[] bArr4 = new byte[32];
        m35500implements(bArr3, 0, bArr4);
        a(bArr4, bArr2, i2);
    }

    /* renamed from: instanceof, reason: not valid java name */
    private static byte[] m35502instanceof(byte[] bArr) {
        long jM35498goto = m35498goto(bArr, 49) & 4294967295L;
        long jM35498goto2 = m35498goto(bArr, 56) & 4294967295L;
        long j = bArr[63] & 255;
        long jM35493else = (4294967295L & (m35493else(bArr, 60) << 4)) + (jM35498goto2 >> 28);
        long j2 = jM35498goto2 & f32067do;
        long jM35498goto3 = (m35498goto(bArr, 28) & 4294967295L) - (jM35493else * (-50998291));
        long jM35493else2 = (((m35493else(bArr, 32) << 4) & 4294967295L) - (j * (-50998291))) - (jM35493else * 19280294);
        long jM35498goto4 = ((m35498goto(bArr, 35) & 4294967295L) - (j * 19280294)) - (jM35493else * 127719000);
        long jM35493else3 = (((m35493else(bArr, 39) << 4) & 4294967295L) - (j * 127719000)) - (jM35493else * (-6428113));
        long jM35498goto5 = ((m35498goto(bArr, 42) & 4294967295L) - (j * (-6428113))) - (jM35493else * 5343);
        long jM35493else4 = ((m35493else(bArr, 25) << 4) & 4294967295L) - (j2 * (-50998291));
        long j3 = jM35498goto3 - (j2 * 19280294);
        long j4 = jM35493else2 - (j2 * 127719000);
        long j5 = jM35498goto4 - (j2 * (-6428113));
        long j6 = jM35493else3 - (j2 * 5343);
        long jM35493else5 = ((m35493else(bArr, 53) << 4) & 4294967295L) + (jM35498goto >> 28);
        long j7 = jM35498goto & f32067do;
        long jM35498goto6 = (m35498goto(bArr, 21) & 4294967295L) - (jM35493else5 * (-50998291));
        long j8 = jM35493else4 - (jM35493else5 * 19280294);
        long j9 = j3 - (jM35493else5 * 127719000);
        long j10 = j5 - (jM35493else5 * 5343);
        long j11 = (j4 - (jM35493else5 * (-6428113))) - (j7 * 5343);
        long jM35493else6 = (((m35493else(bArr, 46) << 4) & 4294967295L) - (j * 5343)) + (jM35498goto5 >> 28);
        long jM35498goto7 = (m35498goto(bArr, 14) & 4294967295L) - (jM35493else6 * (-50998291));
        long jM35493else7 = (((m35493else(bArr, 18) << 4) & 4294967295L) - (j7 * (-50998291))) - (jM35493else6 * 19280294);
        long j12 = (jM35498goto6 - (j7 * 19280294)) - (jM35493else6 * 127719000);
        long j13 = (j8 - (j7 * 127719000)) - (jM35493else6 * (-6428113));
        long j14 = (j9 - (j7 * (-6428113))) - (jM35493else6 * 5343);
        long j15 = (jM35498goto5 & f32067do) + (j6 >> 28);
        long jM35493else8 = ((m35493else(bArr, 11) << 4) & 4294967295L) - (j15 * (-50998291));
        long j16 = jM35498goto7 - (j15 * 19280294);
        long j17 = jM35493else7 - (j15 * 127719000);
        long j18 = j12 - (j15 * (-6428113));
        long j19 = j13 - (j15 * 5343);
        long j20 = (j6 & f32067do) + (j10 >> 28);
        long j21 = j18 - (j20 * 5343);
        long j22 = (j10 & f32067do) + (j11 >> 28);
        long j23 = j11 & f32067do;
        long jM35493else9 = ((m35493else(bArr, 4) << 4) & 4294967295L) - (j22 * (-50998291));
        long jM35498goto8 = ((m35498goto(bArr, 7) & 4294967295L) - (j20 * (-50998291))) - (j22 * 19280294);
        long j24 = (jM35493else8 - (j20 * 19280294)) - (j22 * 127719000);
        long j25 = (j16 - (j20 * 127719000)) - (j22 * (-6428113));
        long j26 = (j17 - (j20 * (-6428113))) - (j22 * 5343);
        long j27 = j14 + (j19 >> 28);
        long j28 = j19 & f32067do;
        long j29 = j27 & f32067do;
        long j30 = j29 >>> 27;
        long j31 = j23 + (j27 >> 28) + j30;
        long jM35498goto9 = (m35498goto(bArr, 0) & 4294967295L) - (j31 * (-50998291));
        long j32 = (jM35493else9 - (j31 * 19280294)) + (jM35498goto9 >> 28);
        long j33 = jM35498goto9 & f32067do;
        long j34 = (jM35498goto8 - (j31 * 127719000)) + (j32 >> 28);
        long j35 = j32 & f32067do;
        long j36 = (j24 - (j31 * (-6428113))) + (j34 >> 28);
        long j37 = j34 & f32067do;
        long j38 = (j25 - (j31 * 5343)) + (j36 >> 28);
        long j39 = j36 & f32067do;
        long j40 = j26 + (j38 >> 28);
        long j41 = j38 & f32067do;
        long j42 = j21 + (j40 >> 28);
        long j43 = j40 & f32067do;
        long j44 = j28 + (j42 >> 28);
        long j45 = j42 & f32067do;
        long j46 = j29 + (j44 >> 28);
        long j47 = j44 & f32067do;
        long j48 = j46 >> 28;
        long j49 = j46 & f32067do;
        long j50 = j48 - j30;
        long j51 = j33 + (j50 & (-50998291));
        long j52 = j35 + (j50 & 19280294) + (j51 >> 28);
        long j53 = j51 & f32067do;
        long j54 = j37 + (j50 & 127719000) + (j52 >> 28);
        long j55 = j52 & f32067do;
        long j56 = j39 + (j50 & (-6428113)) + (j54 >> 28);
        long j57 = j54 & f32067do;
        long j58 = j41 + (j50 & 5343) + (j56 >> 28);
        long j59 = j56 & f32067do;
        long j60 = j43 + (j58 >> 28);
        long j61 = j58 & f32067do;
        long j62 = j45 + (j60 >> 28);
        long j63 = j60 & f32067do;
        long j64 = j47 + (j62 >> 28);
        long j65 = j62 & f32067do;
        long j66 = j49 + (j64 >> 28);
        long j67 = j64 & f32067do;
        byte[] bArr2 = new byte[32];
        m35513super(j53 | (j55 << 28), bArr2, 0);
        m35513super((j59 << 28) | j57, bArr2, 7);
        m35513super(j61 | (j63 << 28), bArr2, 14);
        m35513super(j65 | (j67 << 28), bArr2, 21);
        m35495final((int) j66, bArr2, 28);
        return bArr2;
    }

    /* renamed from: interface, reason: not valid java name */
    private static void m35503interface(Cfor cfor) {
        lg2.m4658continue(cfor.f32090do);
        lg2.m4677switch(cfor.f32092if);
        lg2.m4677switch(cfor.f32091for);
        lg2.m4658continue(cfor.f32093new);
        lg2.m4677switch(cfor.f32094try);
    }

    public static void j(byte[] bArr, int i, byte[] bArr2, Digest digest, byte[] bArr3, int i2) {
        byte[] bArr4 = new byte[64];
        if (64 != digest.doFinal(bArr4, 0)) {
            throw new IllegalArgumentException("ph");
        }
        m35510return(bArr, i, bArr2, (byte) 1, bArr4, 0, 64, bArr3, i2);
    }

    public static void k(byte[] bArr, int i, byte[] bArr2, byte[] bArr3, int i2, byte[] bArr4, int i3) {
        m35510return(bArr, i, bArr2, (byte) 1, bArr3, i2, 64, bArr4, i3);
    }

    public static boolean l(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3, int i4) {
        return m35514switch(bArr, i, bArr2, i2, null, (byte) 0, bArr3, i3, i4);
    }

    public static boolean m(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, byte[] bArr4, int i3, int i4) {
        return m35514switch(bArr, i, bArr2, i2, bArr3, (byte) 0, bArr4, i3, i4);
    }

    public static boolean n(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, Digest digest) {
        byte[] bArr4 = new byte[64];
        if (64 == digest.doFinal(bArr4, 0)) {
            return m35514switch(bArr, i, bArr2, i2, bArr3, (byte) 1, bArr4, 0, 64);
        }
        throw new IllegalArgumentException("ph");
    }

    /* renamed from: native, reason: not valid java name */
    private static byte[] m35504native(int[] iArr, int i) {
        int[] iArr2 = new int[16];
        int i2 = 0;
        int i3 = 8;
        int i4 = 16;
        int i5 = 0;
        while (true) {
            i3--;
            if (i3 < 0) {
                break;
            }
            int i6 = iArr[i3];
            int i7 = i4 - 1;
            iArr2[i7] = (i5 << 16) | (i6 >>> 16);
            i4 = i7 - 1;
            iArr2[i4] = i6;
            i5 = i6;
        }
        byte[] bArr = new byte[256];
        int i8 = 1 << i;
        int i9 = i8 - 1;
        int i10 = i8 >>> 1;
        int i11 = 0;
        int i12 = 0;
        while (i2 < 16) {
            int i13 = iArr2[i2];
            while (i11 < 16) {
                int i14 = i13 >>> i11;
                if ((i14 & 1) == i12) {
                    i11++;
                } else {
                    int i15 = (i14 & i9) + i12;
                    int i16 = i15 & i10;
                    int i17 = i15 - (i16 << 1);
                    i12 = i16 >>> (i - 1);
                    bArr[(i2 << 4) + i11] = (byte) i17;
                    i11 += i;
                }
            }
            i2++;
            i11 -= 16;
        }
        return bArr;
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m35505new(byte[] bArr) {
        m35487catch(bArr, 0, new int[8]);
        return !k21.m4206switch(r0, f32063class);
    }

    public static boolean o(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, byte[] bArr4, int i3) {
        return m35514switch(bArr, i, bArr2, i2, bArr3, (byte) 1, bArr4, i3, 64);
    }

    /* renamed from: package, reason: not valid java name */
    private static Cnew m35506package(Cnew cnew) {
        Cnew cnew2 = new Cnew();
        lg2.m4661else(cnew.f32098do, 0, cnew2.f32098do, 0);
        lg2.m4661else(cnew.f32100if, 0, cnew2.f32100if, 0);
        lg2.m4661else(cnew.f32099for, 0, cnew2.f32099for, 0);
        lg2.m4661else(cnew.f32101new, 0, cnew2.f32101new, 0);
        return cnew2;
    }

    /* renamed from: private, reason: not valid java name */
    private static void m35507private(Cfor cfor) {
        int[] iArrM4666goto = lg2.m4666goto();
        int[] iArrM4666goto2 = lg2.m4666goto();
        int[] iArrM4666goto3 = lg2.m4666goto();
        int[] iArr = cfor.f32093new;
        int[] iArrM4666goto4 = lg2.m4666goto();
        int[] iArrM4666goto5 = lg2.m4666goto();
        int[] iArr2 = cfor.f32094try;
        lg2.m4664finally(cfor.f32090do, iArrM4666goto);
        lg2.m4664finally(cfor.f32092if, iArrM4666goto2);
        lg2.m4664finally(cfor.f32091for, iArrM4666goto3);
        lg2.m4660do(iArrM4666goto3, iArrM4666goto3, iArrM4666goto3);
        lg2.m4670new(iArrM4666goto, iArrM4666goto2, iArr2, iArrM4666goto5);
        lg2.m4660do(cfor.f32090do, cfor.f32092if, iArr);
        lg2.m4664finally(iArr, iArr);
        lg2.m4672private(iArr2, iArr, iArr);
        lg2.m4660do(iArrM4666goto3, iArrM4666goto5, iArrM4666goto4);
        lg2.m4681try(iArrM4666goto4);
        lg2.m4673public(iArr, iArrM4666goto4, cfor.f32090do);
        lg2.m4673public(iArrM4666goto5, iArr2, cfor.f32092if);
        lg2.m4673public(iArrM4666goto4, iArrM4666goto5, cfor.f32091for);
    }

    /* renamed from: protected, reason: not valid java name */
    private static void m35508protected(Cnew cnew) {
        lg2.m4658continue(cnew.f32098do);
        lg2.m4677switch(cnew.f32100if);
        lg2.m4677switch(cnew.f32099for);
        lg2.m4658continue(cnew.f32101new);
    }

    /* renamed from: public, reason: not valid java name */
    private static void m35509public(Digest digest, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, byte[] bArr4, byte b, byte[] bArr5, int i2, int i3, byte[] bArr6, int i4) {
        m35488class(digest, b, bArr4);
        digest.update(bArr, 32, 32);
        digest.update(bArr5, i2, i3);
        digest.doFinal(bArr, 0);
        byte[] bArrM35502instanceof = m35502instanceof(bArr);
        byte[] bArr7 = new byte[32];
        a(bArrM35502instanceof, bArr7, 0);
        m35488class(digest, b, bArr4);
        digest.update(bArr7, 0, 32);
        digest.update(bArr3, i, 32);
        digest.update(bArr5, i2, i3);
        digest.doFinal(bArr, 0);
        byte[] bArrM35492do = m35492do(bArrM35502instanceof, m35502instanceof(bArr), bArr2);
        System.arraycopy(bArr7, 0, bArr6, i4, 32);
        System.arraycopy(bArrM35492do, 0, bArr6, i4 + 32, 32);
    }

    /* renamed from: return, reason: not valid java name */
    private static void m35510return(byte[] bArr, int i, byte[] bArr2, byte b, byte[] bArr3, int i2, int i3, byte[] bArr4, int i4) {
        if (!m35499if(bArr2, b)) {
            throw new IllegalArgumentException("ctx");
        }
        Digest digestM35520try = m35520try();
        byte[] bArr5 = new byte[digestM35520try.getDigestSize()];
        digestM35520try.update(bArr, i, 32);
        digestM35520try.doFinal(bArr5, 0);
        byte[] bArr6 = new byte[32];
        m35500implements(bArr5, 0, bArr6);
        byte[] bArr7 = new byte[32];
        a(bArr6, bArr7, 0);
        m35509public(digestM35520try, bArr5, bArr6, bArr7, 0, bArr2, b, bArr3, i2, i3, bArr4, i4);
    }

    /* renamed from: static, reason: not valid java name */
    private static void m35511static(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, byte b, byte[] bArr4, int i3, int i4, byte[] bArr5, int i5) {
        if (!m35499if(bArr3, b)) {
            throw new IllegalArgumentException("ctx");
        }
        Digest digestM35520try = m35520try();
        byte[] bArr6 = new byte[digestM35520try.getDigestSize()];
        digestM35520try.update(bArr, i, 32);
        digestM35520try.doFinal(bArr6, 0);
        byte[] bArr7 = new byte[32];
        m35500implements(bArr6, 0, bArr7);
        m35509public(digestM35520try, bArr6, bArr7, bArr2, i2, bArr3, b, bArr4, i3, i4, bArr5, i5);
    }

    /* renamed from: strictfp, reason: not valid java name */
    private static void m35512strictfp(int i, int i2, Ctry ctry) {
        int i3 = i * 8 * 3 * 10;
        for (int i4 = 0; i4 < 8; i4++) {
            int i5 = ((i4 ^ i2) - 1) >> 31;
            q21.m6341native(10, i5, f32065continue, i3, ctry.f32102do, 0);
            int i6 = i3 + 10;
            q21.m6341native(10, i5, f32065continue, i6, ctry.f32104if, 0);
            int i7 = i6 + 10;
            q21.m6341native(10, i5, f32065continue, i7, ctry.f32103for, 0);
            i3 = i7 + 10;
        }
    }

    /* renamed from: super, reason: not valid java name */
    private static void m35513super(long j, byte[] bArr, int i) {
        m35495final((int) j, bArr, i);
        m35489const((int) (j >>> 32), bArr, i + 4);
    }

    /* renamed from: switch, reason: not valid java name */
    private static boolean m35514switch(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, byte b, byte[] bArr4, int i3, int i4) {
        if (!m35499if(bArr3, b)) {
            throw new IllegalArgumentException("ctx");
        }
        int i5 = i + 32;
        byte[] bArrM6378instanceof = q3.m6378instanceof(bArr, i, i5);
        byte[] bArrM6378instanceof2 = q3.m6378instanceof(bArr, i5, i + 64);
        if (!m35497for(bArrM6378instanceof) || !m35505new(bArrM6378instanceof2)) {
            return false;
        }
        Cnew cnew = new Cnew();
        if (!m35485break(bArr2, i2, true, cnew)) {
            return false;
        }
        Digest digestM35520try = m35520try();
        byte[] bArr5 = new byte[digestM35520try.getDigestSize()];
        m35488class(digestM35520try, b, bArr3);
        digestM35520try.update(bArrM6378instanceof, 0, 32);
        digestM35520try.update(bArr2, i2, 32);
        digestM35520try.update(bArr4, i3, i4);
        digestM35520try.doFinal(bArr5, 0);
        byte[] bArrM35502instanceof = m35502instanceof(bArr5);
        int[] iArr = new int[8];
        m35487catch(bArrM6378instanceof2, 0, iArr);
        int[] iArr2 = new int[8];
        m35487catch(bArrM35502instanceof, 0, iArr2);
        Cfor cfor = new Cfor();
        c(iArr, iArr2, cnew, cfor);
        byte[] bArr6 = new byte[32];
        m35517throw(cfor, bArr6, 0);
        return q3.m6362case(bArr6, bArrM6378instanceof);
    }

    /* renamed from: synchronized, reason: not valid java name */
    private static void m35515synchronized(byte[] bArr, Cfor cfor) {
        m35519transient();
        m35503interface(cfor);
        int[] iArr = new int[8];
        m35487catch(bArr, 0, iArr);
        q21.m6338import(8, (iArr[0] ^ (-1)) & 1, iArr, f32063class, iArr);
        q21.k(8, iArr, 1);
        for (int i = 0; i < 8; i++) {
            iArr[i] = ln0.m4716goto(iArr[i]);
        }
        Ctry ctry = new Ctry();
        int i2 = 28;
        while (true) {
            for (int i3 = 0; i3 < 8; i3++) {
                int i4 = iArr[i3] >>> i2;
                int i5 = (i4 >>> 3) & 1;
                m35512strictfp(i3, (i4 ^ (-i5)) & 7, ctry);
                lg2.m4653break(i5, ctry.f32102do, ctry.f32104if);
                lg2.m4654case(i5, ctry.f32103for);
                m35518throws(ctry, cfor);
            }
            i2 -= 4;
            if (i2 < 0) {
                return;
            } else {
                m35507private(cfor);
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static void m35516this(byte[] bArr, int i, int[] iArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            iArr[i2 + i4] = m35498goto(bArr, (i4 * 4) + i);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private static void m35517throw(Cfor cfor, byte[] bArr, int i) {
        int[] iArrM4666goto = lg2.m4666goto();
        int[] iArrM4666goto2 = lg2.m4666goto();
        lg2.m4682while(cfor.f32091for, iArrM4666goto2);
        lg2.m4673public(cfor.f32090do, iArrM4666goto2, iArrM4666goto);
        lg2.m4673public(cfor.f32092if, iArrM4666goto2, iArrM4666goto2);
        lg2.m4675static(iArrM4666goto);
        lg2.m4675static(iArrM4666goto2);
        lg2.m4663final(iArrM4666goto2, bArr, i);
        int i2 = (i + 32) - 1;
        bArr[i2] = (byte) (bArr[i2] | ((iArrM4666goto[0] & 1) << 7));
    }

    /* renamed from: throws, reason: not valid java name */
    private static void m35518throws(Ctry ctry, Cfor cfor) {
        int[] iArrM4666goto = lg2.m4666goto();
        int[] iArrM4666goto2 = lg2.m4666goto();
        int[] iArrM4666goto3 = lg2.m4666goto();
        int[] iArr = cfor.f32093new;
        int[] iArrM4666goto4 = lg2.m4666goto();
        int[] iArrM4666goto5 = lg2.m4666goto();
        int[] iArr2 = cfor.f32094try;
        lg2.m4670new(cfor.f32092if, cfor.f32090do, iArrM4666goto2, iArrM4666goto);
        lg2.m4673public(iArrM4666goto, ctry.f32104if, iArrM4666goto);
        lg2.m4673public(iArrM4666goto2, ctry.f32102do, iArrM4666goto2);
        lg2.m4673public(cfor.f32093new, cfor.f32094try, iArrM4666goto3);
        lg2.m4673public(iArrM4666goto3, ctry.f32103for, iArrM4666goto3);
        lg2.m4670new(iArrM4666goto2, iArrM4666goto, iArr2, iArr);
        lg2.m4670new(cfor.f32091for, iArrM4666goto3, iArrM4666goto5, iArrM4666goto4);
        lg2.m4681try(iArrM4666goto5);
        lg2.m4673public(iArr, iArrM4666goto4, cfor.f32090do);
        lg2.m4673public(iArrM4666goto5, iArr2, cfor.f32092if);
        lg2.m4673public(iArrM4666goto4, iArrM4666goto5, cfor.f32091for);
    }

    /* renamed from: transient, reason: not valid java name */
    public static void m35519transient() {
        int i;
        synchronized (f32079private) {
            if (f32065continue != null) {
                return;
            }
            Cnew cnew = new Cnew();
            int[] iArr = f32075import;
            lg2.m4661else(iArr, 0, cnew.f32098do, 0);
            int[] iArr2 = f32076native;
            lg2.m4661else(iArr2, 0, cnew.f32100if, 0);
            m35490continue(cnew);
            f32059abstract = m35521volatile(cnew, 32);
            Cfor cfor = new Cfor();
            lg2.m4661else(iArr, 0, cfor.f32090do, 0);
            lg2.m4661else(iArr2, 0, cfor.f32092if, 0);
            m35484abstract(cfor);
            f32065continue = new int[1920];
            int i2 = 0;
            for (int i3 = 0; i3 < 8; i3++) {
                Cnew[] cnewArr = new Cnew[4];
                Cnew cnew2 = new Cnew();
                m35508protected(cnew2);
                int i4 = 0;
                while (true) {
                    i = 1;
                    if (i4 >= 4) {
                        break;
                    }
                    m35494extends(true, cnew2, m35496finally(cfor), cnew2);
                    m35507private(cfor);
                    cnewArr[i4] = m35496finally(cfor);
                    if (i3 + i4 != 10) {
                        while (i < 8) {
                            m35507private(cfor);
                            i++;
                        }
                    }
                    i4++;
                }
                Cnew[] cnewArr2 = new Cnew[8];
                cnewArr2[0] = cnew2;
                int i5 = 0;
                int i6 = 1;
                while (i5 < 3) {
                    int i7 = i << i5;
                    int i8 = 0;
                    while (i8 < i7) {
                        Cnew cnew3 = cnewArr2[i6 - i7];
                        Cnew cnew4 = cnewArr[i5];
                        Cnew cnew5 = new Cnew();
                        cnewArr2[i6] = cnew5;
                        m35494extends(false, cnew3, cnew4, cnew5);
                        i8++;
                        i6++;
                    }
                    i5++;
                    i = 1;
                }
                for (int i9 = 0; i9 < 8; i9++) {
                    Cnew cnew6 = cnewArr2[i9];
                    int[] iArrM4666goto = lg2.m4666goto();
                    int[] iArrM4666goto2 = lg2.m4666goto();
                    int[] iArr3 = cnew6.f32099for;
                    lg2.m4660do(iArr3, iArr3, iArrM4666goto);
                    lg2.m4682while(iArrM4666goto, iArrM4666goto2);
                    lg2.m4673public(cnew6.f32098do, iArrM4666goto2, iArrM4666goto);
                    lg2.m4673public(cnew6.f32100if, iArrM4666goto2, iArrM4666goto2);
                    Ctry ctry = new Ctry();
                    lg2.m4670new(iArrM4666goto2, iArrM4666goto, ctry.f32102do, ctry.f32104if);
                    lg2.m4673public(iArrM4666goto, iArrM4666goto2, ctry.f32103for);
                    int[] iArr4 = ctry.f32103for;
                    lg2.m4673public(iArr4, f32082static, iArr4);
                    lg2.m4675static(ctry.f32102do);
                    lg2.m4675static(ctry.f32104if);
                    lg2.m4661else(ctry.f32102do, 0, f32065continue, i2);
                    int i10 = i2 + 10;
                    lg2.m4661else(ctry.f32104if, 0, f32065continue, i10);
                    int i11 = i10 + 10;
                    lg2.m4661else(ctry.f32103for, 0, f32065continue, i11);
                    i2 = i11 + 10;
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static Digest m35520try() {
        return new bq1();
    }

    /* renamed from: volatile, reason: not valid java name */
    private static Cnew[] m35521volatile(Cnew cnew, int i) {
        Cnew cnew2 = new Cnew();
        m35494extends(false, cnew, cnew, cnew2);
        Cnew[] cnewArr = new Cnew[i];
        cnewArr[0] = m35506package(cnew);
        for (int i2 = 1; i2 < i; i2++) {
            Cnew cnew3 = cnewArr[i2 - 1];
            Cnew cnew4 = new Cnew();
            cnewArr[i2] = cnew4;
            m35494extends(false, cnew3, cnew2, cnew4);
        }
        return cnewArr;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m35522while(SecureRandom secureRandom, byte[] bArr) {
        secureRandom.nextBytes(bArr);
    }
}
