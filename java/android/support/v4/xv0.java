package android.support.v4;

import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.digests.EncodableDigest;
import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public abstract class xv0 implements ExtendedDigest, Memoable, EncodableDigest {

    /* renamed from: super, reason: not valid java name */
    private static final int f8031super = 128;

    /* renamed from: throw, reason: not valid java name */
    public static final long[] f8032throw = {4794697086780616226L, 8158064640168781261L, -5349999486874862801L, -1606136188198331460L, 4131703408338449720L, 6480981068601479193L, -7908458776815382629L, -6116909921290321640L, -2880145864133508542L, 1334009975649890238L, 2608012711638119052L, 6128411473006802146L, 8268148722764581231L, -9160688886553864527L, -7215885187991268811L, -4495734319001033068L, -1973867731355612462L, -1171420211273849373L, 1135362057144423861L, 2597628984639134821L, 3308224258029322869L, 5365058923640841347L, 6679025012923562964L, 8573033837759648693L, -7476448914759557205L, -6327057829258317296L, -5763719355590565569L, -4658551843659510044L, -4116276920077217854L, -3051310485924567259L, 489312712824947311L, 1452737877330783856L, 2861767655752347644L, 3322285676063803686L, 5560940570517711597L, 5996557281743188959L, 7280758554555802590L, 8532644243296465576L, -9096487096722542874L, -7894198246740708037L, -6719396339535248540L, -6333637450476146687L, -4446306890439682159L, -4076793802049405392L, -3345356375505022440L, -2983346525034927856L, -860691631967231958L, 1182934255886127544L, 1847814050463011016L, 2177327727835720531L, 2830643537854262169L, 3796741975233480872L, 4115178125766777443L, 5681478168544905931L, 6601373596472566643L, 7507060721942968483L, 8399075790359081724L, 8693463985226723168L, -8878714635349349518L, -8302665154208450068L, -8016688836872298968L, -6606660893046293015L, -4685533653050689259L, -4147400797238176981L, -3880063495543823972L, -3348786107499101689L, -1523767162380948706L, -757361751448694408L, 500013540394364858L, 748580250866718886L, 1242879168328830382L, 1977374033974150939L, 2944078676154940804L, 3659926193048069267L, 4368137639120453308L, 4836135668995329356L, 5532061633213252278L, 6448918945643986474L, 6902733635092675308L, 7801388544844847127L};

    /* renamed from: break, reason: not valid java name */
    public long f8033break;

    /* renamed from: case, reason: not valid java name */
    public long f8034case;

    /* renamed from: catch, reason: not valid java name */
    public long f8035catch;

    /* renamed from: class, reason: not valid java name */
    public long f8036class;

    /* renamed from: const, reason: not valid java name */
    private long[] f8037const;

    /* renamed from: do, reason: not valid java name */
    private byte[] f8038do;

    /* renamed from: else, reason: not valid java name */
    public long f8039else;

    /* renamed from: final, reason: not valid java name */
    private int f8040final;

    /* renamed from: for, reason: not valid java name */
    private long f8041for;

    /* renamed from: goto, reason: not valid java name */
    public long f8042goto;

    /* renamed from: if, reason: not valid java name */
    private int f8043if;

    /* renamed from: new, reason: not valid java name */
    private long f8044new;

    /* renamed from: this, reason: not valid java name */
    public long f8045this;

    /* renamed from: try, reason: not valid java name */
    public long f8046try;

    public xv0() {
        this.f8038do = new byte[8];
        this.f8037const = new long[80];
        this.f8043if = 0;
        reset();
    }

    public xv0(xv0 xv0Var) {
        this.f8038do = new byte[8];
        this.f8037const = new long[80];
        m9600goto(xv0Var);
    }

    /* renamed from: case, reason: not valid java name */
    private long m9588case(long j) {
        return ((j >>> 41) | (j << 23)) ^ (((j << 50) | (j >>> 14)) ^ ((j << 46) | (j >>> 18)));
    }

    /* renamed from: do, reason: not valid java name */
    private long m9589do(long j, long j2, long j3) {
        return ((j ^ (-1)) & j3) ^ (j2 & j);
    }

    /* renamed from: else, reason: not valid java name */
    private void m9590else() {
        long j = this.f8041for;
        if (j > 2305843009213693951L) {
            this.f8044new += j >>> 61;
            this.f8041for = j & 2305843009213693951L;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private long m9591for(long j) {
        return (j >>> 7) ^ (((j << 63) | (j >>> 1)) ^ ((j << 56) | (j >>> 8)));
    }

    /* renamed from: if, reason: not valid java name */
    private long m9592if(long j, long j2, long j3) {
        return ((j & j3) ^ (j & j2)) ^ (j2 & j3);
    }

    /* renamed from: new, reason: not valid java name */
    private long m9593new(long j) {
        return (j >>> 6) ^ (((j << 45) | (j >>> 19)) ^ ((j << 3) | (j >>> 61)));
    }

    /* renamed from: try, reason: not valid java name */
    private long m9594try(long j) {
        return ((j >>> 39) | (j << 25)) ^ (((j << 36) | (j >>> 28)) ^ ((j << 30) | (j >>> 34)));
    }

    /* renamed from: break, reason: not valid java name */
    public int m9595break() {
        return (this.f8040final * 8) + 96;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m9596catch(byte[] bArr) {
        System.arraycopy(this.f8038do, 0, bArr, 0, this.f8043if);
        ib1.m3348case(this.f8043if, bArr, 8);
        ib1.m3369static(this.f8041for, bArr, 12);
        ib1.m3369static(this.f8044new, bArr, 20);
        ib1.m3369static(this.f8046try, bArr, 28);
        ib1.m3369static(this.f8034case, bArr, 36);
        ib1.m3369static(this.f8039else, bArr, 44);
        ib1.m3369static(this.f8042goto, bArr, 52);
        ib1.m3369static(this.f8045this, bArr, 60);
        ib1.m3369static(this.f8033break, bArr, 68);
        ib1.m3369static(this.f8035catch, bArr, 76);
        ib1.m3369static(this.f8036class, bArr, 84);
        ib1.m3348case(this.f8040final, bArr, 92);
        for (int i = 0; i < this.f8040final; i++) {
            ib1.m3369static(this.f8037const[i], bArr, (i * 8) + 96);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m9597class() {
        m9590else();
        for (int i = 16; i <= 79; i++) {
            long[] jArr = this.f8037const;
            long jM9593new = m9593new(jArr[i - 2]);
            long[] jArr2 = this.f8037const;
            jArr[i] = jM9593new + jArr2[i - 7] + m9591for(jArr2[i - 15]) + this.f8037const[i - 16];
        }
        long j = this.f8046try;
        long j2 = this.f8034case;
        long j3 = this.f8039else;
        long j4 = this.f8042goto;
        long j5 = this.f8045this;
        long j6 = this.f8033break;
        long j7 = this.f8035catch;
        long j8 = j6;
        long j9 = j4;
        int i2 = 0;
        long jM9594try = j2;
        long j10 = j3;
        long j11 = j5;
        int i3 = 0;
        long j12 = this.f8036class;
        long j13 = j;
        long j14 = j7;
        while (i3 < 10) {
            long j15 = j11;
            long jM9588case = m9588case(j11) + m9589do(j11, j8, j14);
            long[] jArr3 = f8032throw;
            int i4 = i2 + 1;
            long j16 = j12 + jM9588case + jArr3[i2] + this.f8037const[i2];
            long j17 = j9 + j16;
            long jM9594try2 = j16 + m9594try(j13) + m9592if(j13, jM9594try, j10);
            int i5 = i4 + 1;
            long jM9588case2 = j14 + m9588case(j17) + m9589do(j17, j15, j8) + jArr3[i4] + this.f8037const[i4];
            long j18 = j10 + jM9588case2;
            long jM9594try3 = jM9588case2 + m9594try(jM9594try2) + m9592if(jM9594try2, j13, jM9594try);
            int i6 = i5 + 1;
            long jM9588case3 = j8 + m9588case(j18) + m9589do(j18, j17, j15) + jArr3[i5] + this.f8037const[i5];
            long j19 = jM9594try + jM9588case3;
            long jM9594try4 = jM9588case3 + m9594try(jM9594try3) + m9592if(jM9594try3, jM9594try2, j13);
            int i7 = i6 + 1;
            long jM9588case4 = j15 + m9588case(j19) + m9589do(j19, j18, j17) + jArr3[i6] + this.f8037const[i6];
            long j20 = j13 + jM9588case4;
            long jM9594try5 = jM9588case4 + m9594try(jM9594try4) + m9592if(jM9594try4, jM9594try3, jM9594try2);
            int i8 = i7 + 1;
            long jM9588case5 = j17 + m9588case(j20) + m9589do(j20, j19, j18) + jArr3[i7] + this.f8037const[i7];
            long j21 = jM9594try2 + jM9588case5;
            long jM9594try6 = jM9588case5 + m9594try(jM9594try5) + m9592if(jM9594try5, jM9594try4, jM9594try3);
            int i9 = i8 + 1;
            long jM9588case6 = j18 + m9588case(j21) + m9589do(j21, j20, j19) + jArr3[i8] + this.f8037const[i8];
            long j22 = jM9594try3 + jM9588case6;
            long jM9594try7 = jM9588case6 + m9594try(jM9594try6) + m9592if(jM9594try6, jM9594try5, jM9594try4);
            j14 = j22;
            int i10 = i9 + 1;
            long jM9588case7 = j19 + m9588case(j22) + m9589do(j22, j21, j20) + jArr3[i9] + this.f8037const[i9];
            long j23 = jM9594try4 + jM9588case7;
            j8 = j23;
            jM9594try = jM9588case7 + m9594try(jM9594try7) + m9592if(jM9594try7, jM9594try6, jM9594try5);
            long jM9588case8 = j20 + m9588case(j23) + m9589do(j23, j14, j21) + jArr3[i10] + this.f8037const[i10];
            long jM9594try8 = jM9588case8 + m9594try(jM9594try) + m9592if(jM9594try, jM9594try7, jM9594try6);
            i3++;
            j11 = jM9594try5 + jM9588case8;
            j10 = jM9594try7;
            j12 = j21;
            j9 = jM9594try6;
            i2 = i10 + 1;
            j13 = jM9594try8;
        }
        this.f8046try += j13;
        this.f8034case += jM9594try;
        this.f8039else += j10;
        this.f8042goto += j9;
        this.f8045this += j11;
        this.f8033break += j8;
        this.f8035catch += j14;
        this.f8036class += j12;
        this.f8040final = 0;
        for (int i11 = 0; i11 < 16; i11++) {
            this.f8037const[i11] = 0;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m9598const(long j, long j2) {
        if (this.f8040final > 14) {
            m9597class();
        }
        long[] jArr = this.f8037const;
        jArr[14] = j2;
        jArr[15] = j;
    }

    /* renamed from: final, reason: not valid java name */
    public void m9599final(byte[] bArr, int i) {
        this.f8037const[this.f8040final] = ib1.m3359for(bArr, i);
        int i2 = this.f8040final + 1;
        this.f8040final = i2;
        if (i2 == 16) {
            m9597class();
        }
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 128;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m9600goto(xv0 xv0Var) {
        byte[] bArr = xv0Var.f8038do;
        System.arraycopy(bArr, 0, this.f8038do, 0, bArr.length);
        this.f8043if = xv0Var.f8043if;
        this.f8041for = xv0Var.f8041for;
        this.f8044new = xv0Var.f8044new;
        this.f8046try = xv0Var.f8046try;
        this.f8034case = xv0Var.f8034case;
        this.f8039else = xv0Var.f8039else;
        this.f8042goto = xv0Var.f8042goto;
        this.f8045this = xv0Var.f8045this;
        this.f8033break = xv0Var.f8033break;
        this.f8035catch = xv0Var.f8035catch;
        this.f8036class = xv0Var.f8036class;
        long[] jArr = xv0Var.f8037const;
        System.arraycopy(jArr, 0, this.f8037const, 0, jArr.length);
        this.f8040final = xv0Var.f8040final;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.f8041for = 0L;
        this.f8044new = 0L;
        int i = 0;
        this.f8043if = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f8038do;
            if (i2 >= bArr.length) {
                break;
            }
            bArr[i2] = 0;
            i2++;
        }
        this.f8040final = 0;
        while (true) {
            long[] jArr = this.f8037const;
            if (i == jArr.length) {
                return;
            }
            jArr[i] = 0;
            i++;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public void m9601super(byte[] bArr) {
        int iM3354do = ib1.m3354do(bArr, 8);
        this.f8043if = iM3354do;
        System.arraycopy(bArr, 0, this.f8038do, 0, iM3354do);
        this.f8041for = ib1.m3359for(bArr, 12);
        this.f8044new = ib1.m3359for(bArr, 20);
        this.f8046try = ib1.m3359for(bArr, 28);
        this.f8034case = ib1.m3359for(bArr, 36);
        this.f8039else = ib1.m3359for(bArr, 44);
        this.f8042goto = ib1.m3359for(bArr, 52);
        this.f8045this = ib1.m3359for(bArr, 60);
        this.f8033break = ib1.m3359for(bArr, 68);
        this.f8035catch = ib1.m3359for(bArr, 76);
        this.f8036class = ib1.m3359for(bArr, 84);
        this.f8040final = ib1.m3354do(bArr, 92);
        for (int i = 0; i < this.f8040final; i++) {
            this.f8037const[i] = ib1.m3359for(bArr, (i * 8) + 96);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m9602this() {
        m9590else();
        long j = this.f8041for << 3;
        long j2 = this.f8044new;
        byte b = Byte.MIN_VALUE;
        while (true) {
            update(b);
            if (this.f8043if == 0) {
                m9598const(j, j2);
                m9597class();
                return;
            }
            b = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        byte[] bArr = this.f8038do;
        int i = this.f8043if;
        int i2 = i + 1;
        this.f8043if = i2;
        bArr[i] = b;
        if (i2 == bArr.length) {
            m9599final(bArr, 0);
            this.f8043if = 0;
        }
        this.f8041for++;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        while (this.f8043if != 0 && i2 > 0) {
            update(bArr[i]);
            i++;
            i2--;
        }
        while (i2 > this.f8038do.length) {
            m9599final(bArr, i);
            byte[] bArr2 = this.f8038do;
            i += bArr2.length;
            i2 -= bArr2.length;
            this.f8041for += bArr2.length;
        }
        while (i2 > 0) {
            update(bArr[i]);
            i++;
            i2--;
        }
    }
}
