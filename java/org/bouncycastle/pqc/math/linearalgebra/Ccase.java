package org.bouncycastle.pqc.math.linearalgebra;

import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.q3;
import android.support.v4.ur;
import freemarker.core.o3;
import java.math.BigInteger;
import java.security.SecureRandom;
import kotlin.time.Ctry;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.lang3.Cclass;

/* renamed from: org.bouncycastle.pqc.math.linearalgebra.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends Cnew {

    /* renamed from: case, reason: not valid java name */
    private static final long[] f32604case = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH, 4096, PlaybackStateCompat.ACTION_PLAY_FROM_URI, 16384, PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID, PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH, PlaybackStateCompat.ACTION_PREPARE_FROM_URI, PlaybackStateCompat.ACTION_SET_REPEAT_MODE, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED, 1048576, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, ur.f6966do, 2147483648L, o3.f24027catch, o3.f24028class, 17179869184L, 34359738368L, 68719476736L, 137438953472L, 274877906944L, 549755813888L, 1099511627776L, 2199023255552L, 4398046511104L, 8796093022208L, 17592186044416L, 35184372088832L, 70368744177664L, 140737488355328L, 281474976710656L, 562949953421312L, 1125899906842624L, 2251799813685248L, 4503599627370496L, 9007199254740992L, 18014398509481984L, 36028797018963968L, 72057594037927936L, 144115188075855872L, 288230376151711744L, 576460752303423488L, 1152921504606846976L, 2305843009213693952L, 4611686018427387904L, Long.MIN_VALUE};

    /* renamed from: else, reason: not valid java name */
    private static final long[] f32605else = {1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, WebSocketProtocol.PAYLOAD_SHORT_MAX, 131071, 262143, 524287, 1048575, 2097151, 4194303, 8388607, 16777215, 33554431, 67108863, 134217727, 268435455, 536870911, 1073741823, 2147483647L, 4294967295L, 8589934591L, 17179869183L, 34359738367L, 68719476735L, 137438953471L, 274877906943L, 549755813887L, 1099511627775L, 2199023255551L, 4398046511103L, 8796093022207L, 17592186044415L, 35184372088831L, 70368744177663L, 140737488355327L, 281474976710655L, 562949953421311L, 1125899906842623L, 2251799813685247L, 4503599627370495L, 9007199254740991L, 18014398509481983L, 36028797018963967L, 72057594037927935L, 144115188075855871L, 288230376151711743L, 576460752303423487L, 1152921504606846975L, 2305843009213693951L, Ctry.f28072for, Long.MAX_VALUE, -1};

    /* renamed from: goto, reason: not valid java name */
    private static final int[] f32606goto = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5};

    /* renamed from: this, reason: not valid java name */
    private static final int f32607this = 64;

    /* renamed from: for, reason: not valid java name */
    private int f32608for;

    /* renamed from: new, reason: not valid java name */
    private int f32609new;

    /* renamed from: try, reason: not valid java name */
    private long[] f32610try;

    public Ccase(Ccase ccase) {
        Ctry ctry = ccase.f32635do;
        this.f32635do = ctry;
        this.f32636if = ctry.m36306new();
        this.f32608for = ((Celse) this.f32635do).m36206class();
        this.f32609new = ((Celse) this.f32635do).m36205catch();
        this.f32610try = new long[this.f32608for];
        m36130native(ccase.m36131public());
    }

    public Ccase(Celse celse, BigInteger bigInteger) {
        this.f32635do = celse;
        this.f32636if = celse.m36306new();
        this.f32608for = celse.m36206class();
        this.f32609new = celse.m36205catch();
        this.f32610try = new long[this.f32608for];
        m36135while(bigInteger);
    }

    public Ccase(Celse celse, SecureRandom secureRandom) {
        this.f32635do = celse;
        this.f32636if = celse.m36306new();
        this.f32608for = celse.m36206class();
        this.f32609new = celse.m36205catch();
        int i = this.f32608for;
        long[] jArr = new long[i];
        this.f32610try = jArr;
        if (i <= 1) {
            jArr[0] = secureRandom.nextLong();
            long[] jArr2 = this.f32610try;
            jArr2[0] = jArr2[0] >>> (64 - this.f32609new);
        } else {
            for (int i2 = 0; i2 < this.f32608for - 1; i2++) {
                this.f32610try[i2] = secureRandom.nextLong();
            }
            this.f32610try[this.f32608for - 1] = secureRandom.nextLong() >>> (64 - this.f32609new);
        }
    }

    public Ccase(Celse celse, byte[] bArr) {
        this.f32635do = celse;
        this.f32636if = celse.m36306new();
        this.f32608for = celse.m36206class();
        this.f32609new = celse.m36205catch();
        this.f32610try = new long[this.f32608for];
        m36129import(bArr);
    }

    private Ccase(Celse celse, long[] jArr) {
        this.f32635do = celse;
        this.f32636if = celse.m36306new();
        this.f32608for = celse.m36206class();
        this.f32609new = celse.m36205catch();
        this.f32610try = jArr;
    }

    /* renamed from: import, reason: not valid java name */
    private void m36129import(byte[] bArr) {
        this.f32610try = new long[this.f32608for];
        for (int i = 0; i < bArr.length; i++) {
            long[] jArr = this.f32610try;
            int i2 = i >>> 3;
            jArr[i2] = jArr[i2] | ((bArr[(bArr.length - 1) - i] & 255) << ((i & 7) << 3));
        }
    }

    /* renamed from: native, reason: not valid java name */
    private void m36130native(long[] jArr) {
        System.arraycopy(jArr, 0, this.f32610try, 0, this.f32608for);
    }

    /* renamed from: public, reason: not valid java name */
    private long[] m36131public() {
        long[] jArr = this.f32610try;
        long[] jArr2 = new long[jArr.length];
        System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        return jArr2;
    }

    /* renamed from: return, reason: not valid java name */
    private long[] m36132return() {
        long[] jArr = new long[this.f32610try.length];
        int i = 0;
        while (true) {
            if (i >= this.f32636if) {
                return jArr;
            }
            if (mo36139class((r2 - i) - 1)) {
                int i2 = i >>> 6;
                jArr[i2] = jArr[i2] | f32604case[i & 63];
            }
            i++;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static Ccase m36133super(Celse celse) {
        int iM36206class = celse.m36206class();
        long[] jArr = new long[iM36206class];
        int i = 0;
        while (true) {
            int i2 = iM36206class - 1;
            if (i >= i2) {
                jArr[i2] = f32605else[celse.m36205catch() - 1];
                return new Ccase(celse, jArr);
            }
            jArr[i] = -1;
            i++;
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static Ccase m36134throw(Celse celse) {
        return new Ccase(celse, new long[celse.m36206class()]);
    }

    /* renamed from: while, reason: not valid java name */
    private void m36135while(BigInteger bigInteger) {
        m36129import(bigInteger.toByteArray());
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public GFElement add(GFElement gFElement) throws RuntimeException {
        Ccase ccase = new Ccase(this);
        ccase.addToThis(gFElement);
        return ccase;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public void addToThis(GFElement gFElement) throws RuntimeException {
        if (!(gFElement instanceof Ccase)) {
            throw new RuntimeException();
        }
        Ccase ccase = (Ccase) gFElement;
        if (!this.f32635do.equals(ccase.f32635do)) {
            throw new RuntimeException();
        }
        for (int i = 0; i < this.f32608for; i++) {
            long[] jArr = this.f32610try;
            jArr[i] = jArr[i] ^ ccase.f32610try[i];
        }
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: break, reason: not valid java name */
    public void mo36136break() {
        long[] jArrM36131public = m36131public();
        int i = this.f32608for - 1;
        int i2 = this.f32609new - 1;
        long j = f32604case[63];
        boolean z = (jArrM36131public[0] & 1) != 0;
        int i3 = i;
        while (i3 >= 0) {
            boolean z2 = (jArrM36131public[i3] & 1) != 0;
            jArrM36131public[i3] = jArrM36131public[i3] >>> 1;
            if (z) {
                if (i3 == i) {
                    jArrM36131public[i3] = jArrM36131public[i3] ^ f32604case[i2];
                } else {
                    jArrM36131public[i3] = jArrM36131public[i3] ^ j;
                }
            }
            i3--;
            z = z2;
        }
        m36130native(jArrM36131public);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: case, reason: not valid java name */
    public void mo36137case() throws RuntimeException {
        addToThis(m36133super((Celse) this.f32635do));
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: catch, reason: not valid java name */
    public void mo36138catch() {
        long[] jArrM36131public = m36131public();
        int i = this.f32608for - 1;
        int i2 = this.f32609new - 1;
        long[] jArr = f32604case;
        long j = jArr[63];
        boolean z = (jArrM36131public[i] & jArr[i2]) != 0;
        int i3 = 0;
        while (i3 < i) {
            boolean z2 = (jArrM36131public[i3] & j) != 0;
            jArrM36131public[i3] = jArrM36131public[i3] << 1;
            if (z) {
                jArrM36131public[i3] = 1 ^ jArrM36131public[i3];
            }
            i3++;
            z = z2;
        }
        long j2 = jArrM36131public[i];
        long[] jArr2 = f32604case;
        boolean z3 = (j2 & jArr2[i2]) != 0;
        jArrM36131public[i] = jArrM36131public[i] << 1;
        if (z) {
            jArrM36131public[i] = jArrM36131public[i] ^ 1;
        }
        if (z3) {
            jArrM36131public[i] = jArr2[i2 + 1] ^ jArrM36131public[i];
        }
        m36130native(jArrM36131public);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: class, reason: not valid java name */
    public boolean mo36139class(int i) {
        return i >= 0 && i <= this.f32636if && (this.f32610try[i >>> 6] & f32604case[i & 63]) != 0;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew, org.bouncycastle.pqc.math.linearalgebra.GFElement
    public Object clone() {
        return new Ccase(this);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: const, reason: not valid java name */
    public boolean mo36140const() {
        return (this.f32610try[this.f32608for - 1] & f32604case[this.f32609new - 1]) != 0;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: do, reason: not valid java name */
    public void mo36141do() {
        int i = 0;
        while (true) {
            int i2 = this.f32608for;
            if (i >= i2 - 1) {
                this.f32610try[i2 - 1] = f32605else[this.f32609new - 1];
                return;
            } else {
                this.f32610try[i] = -1;
                i++;
            }
        }
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: else, reason: not valid java name */
    public Cnew mo36142else() throws RuntimeException {
        int i;
        if (mo36143final() == 1) {
            throw new RuntimeException();
        }
        long j = f32604case[63];
        long[] jArr = new long[this.f32608for];
        int i2 = 0;
        long j2 = 0;
        while (true) {
            i = this.f32608for;
            if (i2 >= i - 1) {
                break;
            }
            for (int i3 = 1; i3 < 64; i3++) {
                long[] jArr2 = f32604case;
                long j3 = jArr2[i3];
                long[] jArr3 = this.f32610try;
                if (((j3 & jArr3[i2]) == 0 || (jArr2[i3 - 1] & j2) == 0) && ((jArr3[i2] & jArr2[i3]) != 0 || (jArr2[i3 - 1] & j2) != 0)) {
                    j2 ^= jArr2[i3];
                }
            }
            jArr[i2] = j2;
            long j4 = j2 & j;
            j2 = ((j4 == 0 || (this.f32610try[i2 + 1] & 1) != 1) && !(j4 == 0 && (this.f32610try[i2 + 1] & 1) == 0)) ? 1L : 0L;
            i2++;
        }
        int i4 = this.f32636if & 63;
        long j5 = this.f32610try[i - 1];
        for (int i5 = 1; i5 < i4; i5++) {
            long[] jArr4 = f32604case;
            if (((jArr4[i5] & j5) == 0 || (jArr4[i5 - 1] & j2) == 0) && ((jArr4[i5] & j5) != 0 || (jArr4[i5 - 1] & j2) != 0)) {
                j2 = jArr4[i5] ^ j2;
            }
        }
        jArr[this.f32608for - 1] = j2;
        return new Ccase((Celse) this.f32635do, jArr);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Ccase)) {
            return false;
        }
        Ccase ccase = (Ccase) obj;
        for (int i = 0; i < this.f32608for; i++) {
            if (this.f32610try[i] != ccase.f32610try[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: final, reason: not valid java name */
    public int mo36143final() {
        int i = this.f32608for - 1;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < 64; i4++) {
                if ((this.f32610try[i3] & f32604case[i4]) != 0) {
                    i2 ^= 1;
                }
            }
        }
        int i5 = this.f32609new;
        for (int i6 = 0; i6 < i5; i6++) {
            if ((this.f32610try[i] & f32604case[i6]) != 0) {
                i2 ^= 1;
            }
        }
        return i2;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: goto, reason: not valid java name */
    public Cnew mo36144goto() {
        Ccase ccase = new Ccase(this);
        ccase.mo36138catch();
        return ccase;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public int hashCode() {
        return q3.s(this.f32610try);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: if, reason: not valid java name */
    public void mo36145if() {
        this.f32610try = new long[this.f32608for];
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public GFElement invert() throws RuntimeException {
        Ccase ccase = new Ccase(this);
        ccase.m36146static();
        return ccase;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public boolean isOne() {
        int i;
        boolean z = false;
        int i2 = 0;
        boolean z2 = true;
        while (true) {
            i = this.f32608for;
            if (i2 >= i - 1 || !z2) {
                break;
            }
            z2 = z2 && (this.f32610try[i2] & (-1)) == -1;
            i2++;
        }
        if (!z2) {
            return z2;
        }
        if (z2) {
            long j = this.f32610try[i - 1];
            long[] jArr = f32605else;
            int i3 = this.f32609new;
            if ((j & jArr[i3 - 1]) == jArr[i3 - 1]) {
                z = true;
            }
        }
        return z;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public boolean isZero() {
        boolean z = true;
        for (int i = 0; i < this.f32608for && z; i++) {
            z = z && (this.f32610try[i] & (-1)) == 0;
        }
        return z;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public GFElement multiply(GFElement gFElement) throws RuntimeException {
        Ccase ccase = new Ccase(this);
        ccase.multiplyThisBy(gFElement);
        return ccase;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0096 A[PHI: r15
      0x0096: PHI (r15v2 boolean) = (r15v1 boolean), (r15v4 boolean) binds: [B:16:0x0065, B:21:0x007a] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void multiplyThisBy(GFElement gFElement) throws RuntimeException {
        if (!(gFElement instanceof Ccase)) {
            throw new RuntimeException("The elements have different representation: not yet implemented");
        }
        Ccase ccase = (Ccase) gFElement;
        if (!this.f32635do.equals(ccase.f32635do)) {
            throw new RuntimeException();
        }
        if (equals(gFElement)) {
            mo36138catch();
            return;
        }
        long[] jArr = this.f32610try;
        long[] jArr2 = ccase.f32610try;
        int i = this.f32608for;
        long[] jArr3 = new long[i];
        int[][] iArr = ((Celse) this.f32635do).f32623this;
        int i2 = i - 1;
        int i3 = this.f32609new - 1;
        long[] jArr4 = f32604case;
        long j = jArr4[63];
        long j2 = jArr4[i3];
        char c = 0;
        int i4 = 0;
        while (i4 < this.f32636if) {
            int i5 = 0;
            boolean z = false;
            while (i5 < this.f32636if) {
                int[] iArr2 = f32606goto;
                int i6 = iArr2[i5];
                int i7 = iArr2[iArr[i5][c]];
                int i8 = iArr[i5][c] & 63;
                long j3 = jArr[i6];
                long[] jArr5 = f32604case;
                if ((j3 & jArr5[i5 & 63]) != 0) {
                    if ((jArr2[i7] & jArr5[i8]) != 0) {
                        z = !z;
                    }
                    if (iArr[i5][1] != -1) {
                        if ((jArr2[iArr2[iArr[i5][1]]] & jArr5[iArr[i5][1] & 63]) != 0) {
                            z = !z;
                        }
                    }
                }
                i5++;
                c = 0;
            }
            int i9 = f32606goto[i4];
            int i10 = i4 & 63;
            if (z) {
                jArr3[i9] = jArr3[i9] ^ f32604case[i10];
            }
            if (this.f32608for > 1) {
                boolean z2 = (jArr[i2] & 1) == 1;
                int i11 = i2 - 1;
                int i12 = i11;
                while (i12 >= 0) {
                    boolean z3 = (jArr[i12] & 1) != 0;
                    jArr[i12] = jArr[i12] >>> 1;
                    if (z2) {
                        jArr[i12] = jArr[i12] ^ j;
                    }
                    i12--;
                    z2 = z3;
                }
                jArr[i2] = jArr[i2] >>> 1;
                if (z2) {
                    jArr[i2] = jArr[i2] ^ j2;
                }
                boolean z4 = (jArr2[i2] & 1) == 1;
                while (i11 >= 0) {
                    boolean z5 = (jArr2[i11] & 1) != 0;
                    jArr2[i11] = jArr2[i11] >>> 1;
                    if (z4) {
                        jArr2[i11] = jArr2[i11] ^ j;
                    }
                    i11--;
                    z4 = z5;
                }
                jArr2[i2] = jArr2[i2] >>> 1;
                if (z4) {
                    jArr2[i2] = jArr2[i2] ^ j2;
                }
            } else {
                boolean z6 = (jArr[0] & 1) == 1;
                jArr[0] = jArr[0] >>> 1;
                if (z6) {
                    jArr[0] = jArr[0] ^ j2;
                }
                boolean z7 = (jArr2[0] & 1) == 1;
                jArr2[0] = jArr2[0] >>> 1;
                if (z7) {
                    jArr2[0] = jArr2[0] ^ j2;
                }
            }
            i4++;
            c = 0;
        }
        m36130native(jArr3);
    }

    /* renamed from: static, reason: not valid java name */
    public void m36146static() throws RuntimeException {
        if (isZero()) {
            throw new ArithmeticException();
        }
        int i = 31;
        boolean z = false;
        while (!z && i >= 0) {
            if (((this.f32636if - 1) & f32604case[i]) != 0) {
                z = true;
            }
            i--;
        }
        m36134throw((Celse) this.f32635do);
        Ccase ccase = new Ccase(this);
        int i2 = 1;
        for (int i3 = (i + 1) - 1; i3 >= 0; i3--) {
            Cnew cnew = (Cnew) ccase.clone();
            for (int i4 = 1; i4 <= i2; i4++) {
                cnew.mo36138catch();
            }
            ccase.multiplyThisBy(cnew);
            i2 <<= 1;
            if (((this.f32636if - 1) & f32604case[i3]) != 0) {
                ccase.mo36138catch();
                ccase.multiplyThisBy(this);
                i2++;
            }
        }
        ccase.mo36138catch();
    }

    /* renamed from: switch, reason: not valid java name */
    public void m36147switch() {
        this.f32610try = m36132return();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: this, reason: not valid java name */
    public Cnew mo36148this() {
        Ccase ccase = new Ccase(this);
        ccase.mo36136break();
        return ccase;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public byte[] toByteArray() {
        int i = ((this.f32636if - 1) >> 3) + 1;
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = (i2 & 7) << 3;
            bArr[(i - i2) - 1] = (byte) ((this.f32610try[i2 >>> 3] & (255 << i3)) >>> i3);
        }
        return bArr;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public BigInteger toFlexiBigInt() {
        return new BigInteger(1, toByteArray());
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public String toString() {
        return toString(16);
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.GFElement
    public String toString(int i) {
        StringBuilder sb;
        long[] jArrM36131public = m36131public();
        int i2 = this.f32609new;
        String string = "";
        if (i == 2) {
            while (true) {
                i2--;
                if (i2 < 0) {
                    break;
                }
                string = (jArrM36131public[jArrM36131public.length - 1] & (1 << i2)) == 0 ? string + "0" : string + "1";
            }
            for (int length = jArrM36131public.length - 2; length >= 0; length--) {
                for (int i3 = 63; i3 >= 0; i3--) {
                    if ((jArrM36131public[length] & f32604case[i3]) == 0) {
                        sb = new StringBuilder();
                        sb.append(string);
                        sb.append("0");
                    } else {
                        sb = new StringBuilder();
                        sb.append(string);
                        sb.append("1");
                    }
                    string = sb.toString();
                }
            }
        } else if (i == 16) {
            char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
            for (int length2 = jArrM36131public.length - 1; length2 >= 0; length2--) {
                string = ((((((((((((((((string + cArr[((int) (jArrM36131public[length2] >>> 60)) & 15]) + cArr[((int) (jArrM36131public[length2] >>> 56)) & 15]) + cArr[((int) (jArrM36131public[length2] >>> 52)) & 15]) + cArr[((int) (jArrM36131public[length2] >>> 48)) & 15]) + cArr[((int) (jArrM36131public[length2] >>> 44)) & 15]) + cArr[((int) (jArrM36131public[length2] >>> 40)) & 15]) + cArr[((int) (jArrM36131public[length2] >>> 36)) & 15]) + cArr[((int) (jArrM36131public[length2] >>> 32)) & 15]) + cArr[((int) (jArrM36131public[length2] >>> 28)) & 15]) + cArr[((int) (jArrM36131public[length2] >>> 24)) & 15]) + cArr[((int) (jArrM36131public[length2] >>> 20)) & 15]) + cArr[((int) (jArrM36131public[length2] >>> 16)) & 15]) + cArr[((int) (jArrM36131public[length2] >>> 12)) & 15]) + cArr[((int) (jArrM36131public[length2] >>> 8)) & 15]) + cArr[((int) (jArrM36131public[length2] >>> 4)) & 15]) + cArr[((int) jArrM36131public[length2]) & 15]) + Cclass.f28652do;
            }
        }
        return string;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Cnew
    /* renamed from: try, reason: not valid java name */
    public Cnew mo36149try() throws RuntimeException {
        Ccase ccase = new Ccase(this);
        ccase.mo36137case();
        return ccase;
    }
}
