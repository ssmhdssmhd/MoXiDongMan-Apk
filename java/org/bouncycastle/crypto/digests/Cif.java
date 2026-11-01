package org.bouncycastle.crypto.digests;

import android.support.v4.f91;
import android.support.v4.hn0;
import android.support.v4.q3;
import android.support.v4.tw;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.crypto.engines.Cabstract;
import org.bouncycastle.crypto.params.Ccase;
import org.bouncycastle.util.Memoable;

/* renamed from: org.bouncycastle.crypto.digests.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements Memoable {

    /* renamed from: break, reason: not valid java name */
    public static final int f29385break = 256;

    /* renamed from: catch, reason: not valid java name */
    public static final int f29386catch = 512;

    /* renamed from: class, reason: not valid java name */
    public static final int f29387class = 1024;

    /* renamed from: const, reason: not valid java name */
    private static final int f29388const = 0;

    /* renamed from: final, reason: not valid java name */
    private static final int f29389final = 4;

    /* renamed from: super, reason: not valid java name */
    private static final int f29390super = 48;

    /* renamed from: throw, reason: not valid java name */
    private static final int f29391throw = 63;

    /* renamed from: while, reason: not valid java name */
    private static final Hashtable f29392while = new Hashtable();

    /* renamed from: case, reason: not valid java name */
    private C0403if[] f29393case;

    /* renamed from: do, reason: not valid java name */
    public final Cabstract f29394do;

    /* renamed from: else, reason: not valid java name */
    private C0403if[] f29395else;

    /* renamed from: for, reason: not valid java name */
    public long[] f29396for;

    /* renamed from: goto, reason: not valid java name */
    private final Cfor f29397goto;

    /* renamed from: if, reason: not valid java name */
    private final int f29398if;

    /* renamed from: new, reason: not valid java name */
    private long[] f29399new;

    /* renamed from: this, reason: not valid java name */
    private final byte[] f29400this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f29401try;

    /* renamed from: org.bouncycastle.crypto.digests.if$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private byte[] f29402do;

        public Cdo(long j) {
            byte[] bArr = new byte[32];
            this.f29402do = bArr;
            bArr[0] = 83;
            bArr[1] = 72;
            bArr[2] = 65;
            bArr[3] = 51;
            bArr[4] = 1;
            bArr[5] = 0;
            Cabstract.m33391catch(j, bArr, 8);
        }

        /* renamed from: do, reason: not valid java name */
        public byte[] m33329do() {
            return this.f29402do;
        }
    }

    /* renamed from: org.bouncycastle.crypto.digests.if$for, reason: invalid class name */
    public class Cfor {

        /* renamed from: do, reason: not valid java name */
        private final Cnew f29403do = new Cnew();

        /* renamed from: for, reason: not valid java name */
        private int f29404for;

        /* renamed from: if, reason: not valid java name */
        private byte[] f29405if;

        /* renamed from: new, reason: not valid java name */
        private long[] f29406new;

        public Cfor(int i) {
            byte[] bArr = new byte[i];
            this.f29405if = bArr;
            this.f29406new = new long[bArr.length / 8];
        }

        /* renamed from: if, reason: not valid java name */
        private void m33330if(long[] jArr) throws IllegalStateException, tw {
            long[] jArr2;
            Cif cif = Cif.this;
            cif.f29394do.m33400case(true, cif.f29396for, this.f29403do.m33341for());
            int i = 0;
            while (true) {
                jArr2 = this.f29406new;
                if (i >= jArr2.length) {
                    break;
                }
                jArr2[i] = Cabstract.m33399try(this.f29405if, i * 8);
                i++;
            }
            Cif.this.f29394do.m33401else(jArr2, jArr);
            for (int i2 = 0; i2 < jArr.length; i2++) {
                jArr[i2] = jArr[i2] ^ this.f29406new[i2];
            }
        }

        /* renamed from: do, reason: not valid java name */
        public void m33331do(long[] jArr) throws IllegalStateException, tw {
            int i = this.f29404for;
            while (true) {
                byte[] bArr = this.f29405if;
                if (i >= bArr.length) {
                    this.f29403do.m33342goto(true);
                    m33330if(jArr);
                    return;
                } else {
                    bArr[i] = 0;
                    i++;
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m33332for(int i) {
            this.f29403do.m33338case();
            this.f29403do.m33337break(i);
            this.f29404for = 0;
        }

        /* renamed from: new, reason: not valid java name */
        public void m33333new(Cfor cfor) {
            this.f29405if = q3.m6389super(cfor.f29405if, this.f29405if);
            this.f29404for = cfor.f29404for;
            this.f29406new = q3.m6380native(cfor.f29406new, this.f29406new);
            this.f29403do.m33340else(cfor.f29403do);
        }

        /* renamed from: try, reason: not valid java name */
        public void m33334try(byte[] bArr, int i, int i2, long[] jArr) throws IllegalStateException, tw {
            int i3 = 0;
            while (i2 > i3) {
                if (this.f29404for == this.f29405if.length) {
                    m33330if(jArr);
                    this.f29403do.m33345this(false);
                    this.f29404for = 0;
                }
                int iMin = Math.min(i2 - i3, this.f29405if.length - this.f29404for);
                System.arraycopy(bArr, i + i3, this.f29405if, this.f29404for, iMin);
                i3 += iMin;
                this.f29404for += iMin;
                this.f29403do.m33339do(iMin);
            }
        }
    }

    /* renamed from: org.bouncycastle.crypto.digests.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0403if {

        /* renamed from: do, reason: not valid java name */
        private int f29408do;

        /* renamed from: if, reason: not valid java name */
        private byte[] f29409if;

        public C0403if(int i, byte[] bArr) {
            this.f29408do = i;
            this.f29409if = bArr;
        }

        /* renamed from: do, reason: not valid java name */
        public int m33335do() {
            return this.f29408do;
        }

        /* renamed from: if, reason: not valid java name */
        public byte[] m33336if() {
            return this.f29409if;
        }
    }

    /* renamed from: org.bouncycastle.crypto.digests.if$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: for, reason: not valid java name */
        private static final long f29410for = 9223372034707292160L;

        /* renamed from: new, reason: not valid java name */
        private static final long f29411new = Long.MIN_VALUE;

        /* renamed from: try, reason: not valid java name */
        private static final long f29412try = 4611686018427387904L;

        /* renamed from: do, reason: not valid java name */
        private long[] f29413do = new long[2];

        /* renamed from: if, reason: not valid java name */
        private boolean f29414if;

        public Cnew() {
            m33338case();
        }

        /* renamed from: break, reason: not valid java name */
        public void m33337break(int i) {
            long[] jArr = this.f29413do;
            jArr[1] = (jArr[1] & (-274877906944L)) | ((i & 63) << 56);
        }

        /* renamed from: case, reason: not valid java name */
        public void m33338case() {
            long[] jArr = this.f29413do;
            jArr[0] = 0;
            jArr[1] = 0;
            this.f29414if = false;
            m33345this(true);
        }

        /* renamed from: do, reason: not valid java name */
        public void m33339do(int i) {
            if (!this.f29414if) {
                long[] jArr = this.f29413do;
                long j = jArr[0] + i;
                jArr[0] = j;
                if (j > f29410for) {
                    this.f29414if = true;
                    return;
                }
                return;
            }
            long[] jArr2 = new long[3];
            long[] jArr3 = this.f29413do;
            jArr2[0] = jArr3[0] & 4294967295L;
            jArr2[1] = (jArr3[0] >>> 32) & 4294967295L;
            jArr2[2] = jArr3[1] & 4294967295L;
            long j2 = i;
            for (int i2 = 0; i2 < 3; i2++) {
                long j3 = j2 + jArr2[i2];
                jArr2[i2] = j3;
                j2 = j3 >>> 32;
            }
            long[] jArr4 = this.f29413do;
            jArr4[0] = ((jArr2[1] & 4294967295L) << 32) | (jArr2[0] & 4294967295L);
            jArr4[1] = (jArr2[2] & 4294967295L) | (jArr4[1] & (-4294967296L));
        }

        /* renamed from: else, reason: not valid java name */
        public void m33340else(Cnew cnew) {
            this.f29413do = q3.m6380native(cnew.f29413do, this.f29413do);
            this.f29414if = cnew.f29414if;
        }

        /* renamed from: for, reason: not valid java name */
        public long[] m33341for() {
            return this.f29413do;
        }

        /* renamed from: goto, reason: not valid java name */
        public void m33342goto(boolean z) {
            if (z) {
                long[] jArr = this.f29413do;
                jArr[1] = jArr[1] | Long.MIN_VALUE;
            } else {
                long[] jArr2 = this.f29413do;
                jArr2[1] = jArr2[1] & Long.MAX_VALUE;
            }
        }

        /* renamed from: if, reason: not valid java name */
        public int m33343if() {
            return (int) ((this.f29413do[1] >>> 56) & 63);
        }

        /* renamed from: new, reason: not valid java name */
        public boolean m33344new() {
            return (this.f29413do[1] & Long.MIN_VALUE) != 0;
        }

        /* renamed from: this, reason: not valid java name */
        public void m33345this(boolean z) {
            if (z) {
                long[] jArr = this.f29413do;
                jArr[1] = jArr[1] | 4611686018427387904L;
            } else {
                long[] jArr2 = this.f29413do;
                jArr2[1] = jArr2[1] & (-4611686018427387905L);
            }
        }

        public String toString() {
            return m33343if() + " first: " + m33346try() + ", final: " + m33344new();
        }

        /* renamed from: try, reason: not valid java name */
        public boolean m33346try() {
            return (this.f29413do[1] & 4611686018427387904L) != 0;
        }
    }

    static {
        m33310break(256, 128, new long[]{-2228972824489528736L, -8629553674646093540L, 1155188648486244218L, -3677226592081559102L});
        m33310break(256, 160, new long[]{1450197650740764312L, 3081844928540042640L, -3136097061834271170L, 3301952811952417661L});
        m33310break(256, 224, new long[]{-4176654842910610933L, -8688192972455077604L, -7364642305011795836L, 4056579644589979102L});
        m33310break(256, 256, new long[]{-243853671043386295L, 3443677322885453875L, -5531612722399640561L, 7662005193972177513L});
        m33310break(512, 128, new long[]{-6288014694233956526L, 2204638249859346602L, 3502419045458743507L, -4829063503441264548L, 983504137758028059L, 1880512238245786339L, -6715892782214108542L, 7602827311880509485L});
        m33310break(512, 160, new long[]{2934123928682216849L, -4399710721982728305L, 1684584802963255058L, 5744138295201861711L, 2444857010922934358L, -2807833639722848072L, -5121587834665610502L, 118355523173251694L});
        m33310break(512, 224, new long[]{-3688341020067007964L, -3772225436291745297L, -8300862168937575580L, 4146387520469897396L, 1106145742801415120L, 7455425944880474941L, -7351063101234211863L, -7048981346965512457L});
        m33310break(512, 384, new long[]{-6631894876634615969L, -5692838220127733084L, -7099962856338682626L, -2911352911530754598L, 2000907093792408677L, 9140007292425499655L, 6093301768906360022L, 2769176472213098488L});
        m33310break(512, 512, new long[]{5261240102383538638L, 978932832955457283L, -8083517948103779378L, -7339365279355032399L, 6752626034097301424L, -1531723821829733388L, -7417126464950782685L, -5901786942805128141L});
    }

    public Cif(int i, int i2) {
        this.f29400this = new byte[1];
        if (i2 % 8 != 0) {
            throw new IllegalArgumentException("Output size must be a multiple of 8 bits. :" + i2);
        }
        this.f29398if = i2 / 8;
        Cabstract cabstract = new Cabstract(i);
        this.f29394do = cabstract;
        this.f29397goto = new Cfor(cabstract.getBlockSize());
    }

    public Cif(Cif cif) {
        this(cif.m33322case() * 8, cif.m33324else() * 8);
        m33315for(cif);
    }

    /* renamed from: break, reason: not valid java name */
    private static void m33310break(int i, int i2, long[] jArr) {
        f29392while.put(m33317native(i / 8, i2 / 8), jArr);
    }

    /* renamed from: catch, reason: not valid java name */
    private void m33311catch(long j, byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        byte[] bArr2 = new byte[8];
        Cabstract.m33391catch(j, bArr2, 0);
        long[] jArr = new long[this.f29396for.length];
        m33321throw(63);
        this.f29397goto.m33334try(bArr2, 0, 8, jArr);
        this.f29397goto.m33331do(jArr);
        int i3 = ((i2 + 8) - 1) / 8;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i4 * 8;
            int iMin = Math.min(8, i2 - i5);
            if (iMin == 8) {
                Cabstract.m33391catch(jArr[i4], bArr, i5 + i);
            } else {
                Cabstract.m33391catch(jArr[i4], bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, i5 + i, iMin);
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    private static void m33312const(C0403if[] c0403ifArr) {
        if (c0403ifArr == null) {
            return;
        }
        for (int i = 1; i < c0403ifArr.length; i++) {
            C0403if c0403if = c0403ifArr[i];
            int i2 = i;
            while (i2 > 0) {
                int i3 = i2 - 1;
                if (c0403if.m33335do() < c0403ifArr[i3].m33335do()) {
                    c0403ifArr[i2] = c0403ifArr[i3];
                    i2 = i3;
                }
            }
            c0403ifArr[i2] = c0403if;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m33313do() {
        if (this.f29397goto == null) {
            throw new IllegalArgumentException("Skein engine is not initialised.");
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m33314final(int i, byte[] bArr) throws IllegalStateException, tw {
        m33321throw(i);
        this.f29397goto.m33334try(bArr, 0, bArr.length, this.f29396for);
        m33319super();
    }

    /* renamed from: for, reason: not valid java name */
    private void m33315for(Cif cif) {
        this.f29397goto.m33333new(cif.f29397goto);
        this.f29396for = q3.m6380native(cif.f29396for, this.f29396for);
        this.f29399new = q3.m6380native(cif.f29399new, this.f29399new);
        this.f29401try = q3.m6389super(cif.f29401try, this.f29401try);
        this.f29393case = m33316if(cif.f29393case, this.f29393case);
        this.f29395else = m33316if(cif.f29395else, this.f29395else);
    }

    /* renamed from: if, reason: not valid java name */
    private static C0403if[] m33316if(C0403if[] c0403ifArr, C0403if[] c0403ifArr2) {
        if (c0403ifArr == null) {
            return null;
        }
        if (c0403ifArr2 == null || c0403ifArr2.length != c0403ifArr.length) {
            c0403ifArr2 = new C0403if[c0403ifArr.length];
        }
        System.arraycopy(c0403ifArr, 0, c0403ifArr2, 0, c0403ifArr2.length);
        return c0403ifArr2;
    }

    /* renamed from: native, reason: not valid java name */
    private static Integer m33317native(int i, int i2) {
        return hn0.m3072for(i | (i2 << 16));
    }

    /* renamed from: new, reason: not valid java name */
    private void m33318new() throws IllegalStateException, tw {
        long[] jArr = (long[]) f29392while.get(m33317native(m33322case(), m33324else()));
        int i = 0;
        if (this.f29401try != null || jArr == null) {
            this.f29396for = new long[m33322case() / 8];
            byte[] bArr = this.f29401try;
            if (bArr != null) {
                m33314final(0, bArr);
            }
            m33314final(4, new Cdo(this.f29398if * 8).m33329do());
        } else {
            this.f29396for = q3.m6377import(jArr);
        }
        if (this.f29393case != null) {
            while (true) {
                C0403if[] c0403ifArr = this.f29393case;
                if (i >= c0403ifArr.length) {
                    break;
                }
                C0403if c0403if = c0403ifArr[i];
                m33314final(c0403if.m33335do(), c0403if.m33336if());
                i++;
            }
        }
        this.f29399new = q3.m6377import(this.f29396for);
    }

    /* renamed from: super, reason: not valid java name */
    private void m33319super() throws IllegalStateException, tw {
        this.f29397goto.m33331do(this.f29396for);
    }

    /* renamed from: this, reason: not valid java name */
    private void m33320this(Hashtable hashtable) {
        Enumeration enumerationKeys = hashtable.keys();
        Vector vector = new Vector();
        Vector vector2 = new Vector();
        while (enumerationKeys.hasMoreElements()) {
            Integer num = (Integer) enumerationKeys.nextElement();
            byte[] bArr = (byte[]) hashtable.get(num);
            if (num.intValue() == 0) {
                this.f29401try = bArr;
            } else if (num.intValue() < 48) {
                vector.addElement(new C0403if(num.intValue(), bArr));
            } else {
                vector2.addElement(new C0403if(num.intValue(), bArr));
            }
        }
        C0403if[] c0403ifArr = new C0403if[vector.size()];
        this.f29393case = c0403ifArr;
        vector.copyInto(c0403ifArr);
        m33312const(this.f29393case);
        C0403if[] c0403ifArr2 = new C0403if[vector2.size()];
        this.f29395else = c0403ifArr2;
        vector2.copyInto(c0403ifArr2);
        m33312const(this.f29395else);
    }

    /* renamed from: throw, reason: not valid java name */
    private void m33321throw(int i) {
        this.f29397goto.m33332for(i);
    }

    /* renamed from: case, reason: not valid java name */
    public int m33322case() {
        return this.f29394do.getBlockSize();
    }

    /* renamed from: class, reason: not valid java name */
    public void m33323class() {
        long[] jArr = this.f29399new;
        long[] jArr2 = this.f29396for;
        System.arraycopy(jArr, 0, jArr2, 0, jArr2.length);
        m33321throw(48);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new Cif(this);
    }

    /* renamed from: else, reason: not valid java name */
    public int m33324else() {
        return this.f29398if;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m33325goto(Ccase ccase) throws IllegalStateException, tw {
        this.f29396for = null;
        this.f29401try = null;
        this.f29393case = null;
        this.f29395else = null;
        if (ccase != null) {
            if (ccase.m33808if().length < 16) {
                throw new IllegalArgumentException("Skein key must be at least 128 bits.");
            }
            m33320this(ccase.m33810try());
        }
        m33318new();
        m33321throw(48);
    }

    /* renamed from: import, reason: not valid java name */
    public void m33326import(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        m33313do();
        this.f29397goto.m33334try(bArr, i, i2, this.f29396for);
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        Cif cif = (Cif) memoable;
        if (m33322case() != cif.m33322case() || this.f29398if != cif.f29398if) {
            throw new IllegalArgumentException("Incompatible parameters in provided SkeinEngine.");
        }
        m33315for(cif);
    }

    /* renamed from: try, reason: not valid java name */
    public int m33327try(byte[] bArr, int i) throws IllegalStateException, tw {
        m33313do();
        if (bArr.length < this.f29398if + i) {
            throw new f91("Output buffer is too short to hold output");
        }
        m33319super();
        if (this.f29395else != null) {
            int i2 = 0;
            while (true) {
                C0403if[] c0403ifArr = this.f29395else;
                if (i2 >= c0403ifArr.length) {
                    break;
                }
                C0403if c0403if = c0403ifArr[i2];
                m33314final(c0403if.m33335do(), c0403if.m33336if());
                i2++;
            }
        }
        int iM33322case = m33322case();
        int i3 = ((this.f29398if + iM33322case) - 1) / iM33322case;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i4 * iM33322case;
            m33311catch(i4, bArr, i + i5, Math.min(iM33322case, this.f29398if - i5));
        }
        m33323class();
        return this.f29398if;
    }

    /* renamed from: while, reason: not valid java name */
    public void m33328while(byte b) throws IllegalStateException, tw {
        byte[] bArr = this.f29400this;
        bArr[0] = b;
        m33326import(bArr, 0, 1);
    }
}
