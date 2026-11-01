package org.bouncycastle.crypto.macs;

import android.support.v4.gr0;
import android.support.v4.ib1;
import android.support.v4.tw;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;

/* renamed from: org.bouncycastle.crypto.macs.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis implements Mac {

    /* renamed from: break, reason: not valid java name */
    public int f29964break;

    /* renamed from: case, reason: not valid java name */
    public long f29965case;

    /* renamed from: catch, reason: not valid java name */
    public int f29966catch;

    /* renamed from: do, reason: not valid java name */
    public final int f29967do;

    /* renamed from: else, reason: not valid java name */
    public long f29968else;

    /* renamed from: for, reason: not valid java name */
    public long f29969for;

    /* renamed from: goto, reason: not valid java name */
    public long f29970goto;

    /* renamed from: if, reason: not valid java name */
    public final int f29971if;

    /* renamed from: new, reason: not valid java name */
    public long f29972new;

    /* renamed from: this, reason: not valid java name */
    public long f29973this;

    /* renamed from: try, reason: not valid java name */
    public long f29974try;

    public Cthis() {
        this.f29973this = 0L;
        this.f29964break = 0;
        this.f29966catch = 0;
        this.f29967do = 2;
        this.f29971if = 4;
    }

    public Cthis(int i, int i2) {
        this.f29973this = 0L;
        this.f29964break = 0;
        this.f29966catch = 0;
        this.f29967do = i;
        this.f29971if = i2;
    }

    /* renamed from: new, reason: not valid java name */
    public static long m33697new(long j, int i) {
        return (j >>> (-i)) | (j << i);
    }

    /* renamed from: do, reason: not valid java name */
    public void m33698do(int i) {
        long jM33697new = this.f29974try;
        long jM33697new2 = this.f29965case;
        long jM33697new3 = this.f29968else;
        long jM33697new4 = this.f29970goto;
        for (int i2 = 0; i2 < i; i2++) {
            long j = jM33697new + jM33697new2;
            long j2 = jM33697new3 + jM33697new4;
            long jM33697new5 = m33697new(jM33697new2, 13) ^ j;
            long jM33697new6 = m33697new(jM33697new4, 16) ^ j2;
            long j3 = j2 + jM33697new5;
            jM33697new = m33697new(j, 32) + jM33697new6;
            jM33697new2 = m33697new(jM33697new5, 17) ^ j3;
            jM33697new4 = m33697new(jM33697new6, 21) ^ jM33697new;
            jM33697new3 = m33697new(j3, 32);
        }
        this.f29974try = jM33697new;
        this.f29965case = jM33697new2;
        this.f29968else = jM33697new3;
        this.f29970goto = jM33697new4;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw {
        ib1.m3356extends(m33700if(), bArr, i);
        return 8;
    }

    /* renamed from: for, reason: not valid java name */
    public void m33699for() {
        this.f29966catch++;
        this.f29970goto ^= this.f29973this;
        m33698do(this.f29967do);
        this.f29974try ^= this.f29973this;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "SipHash-" + this.f29967do + "-" + this.f29971if;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 8;
    }

    /* renamed from: if, reason: not valid java name */
    public long m33700if() throws IllegalStateException, tw {
        long j = this.f29973this >>> ((7 - this.f29964break) << 3);
        this.f29973this = j;
        long j2 = j >>> 8;
        this.f29973this = j2;
        this.f29973this = j2 | ((((this.f29966catch << 3) + r2) & 255) << 56);
        m33699for();
        this.f29968else ^= 255;
        m33698do(this.f29971if);
        long j3 = ((this.f29974try ^ this.f29965case) ^ this.f29968else) ^ this.f29970goto;
        reset();
        return j3;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof gr0)) {
            throw new IllegalArgumentException("'params' must be an instance of KeyParameter");
        }
        byte[] bArrM2770do = ((gr0) cipherParameters).m2770do();
        if (bArrM2770do.length != 16) {
            throw new IllegalArgumentException("'params' must be a 128-bit key");
        }
        this.f29969for = ib1.m3362import(bArrM2770do, 0);
        this.f29972new = ib1.m3362import(bArrM2770do, 8);
        reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        long j = this.f29969for;
        this.f29974try = 8317987319222330741L ^ j;
        long j2 = this.f29972new;
        this.f29965case = 7237128888997146477L ^ j2;
        this.f29968else = j ^ 7816392313619706465L;
        this.f29970goto = 8387220255154660723L ^ j2;
        this.f29973this = 0L;
        this.f29964break = 0;
        this.f29966catch = 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException {
        long j = this.f29973this >>> 8;
        this.f29973this = j;
        this.f29973this = j | ((b & 255) << 56);
        int i = this.f29964break + 1;
        this.f29964break = i;
        if (i == 8) {
            m33699for();
            this.f29964break = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        int i3 = i2 & (-8);
        int i4 = this.f29964break;
        int i5 = 0;
        if (i4 == 0) {
            while (i5 < i3) {
                this.f29973this = ib1.m3362import(bArr, i + i5);
                m33699for();
                i5 += 8;
            }
            while (i5 < i2) {
                long j = this.f29973this >>> 8;
                this.f29973this = j;
                this.f29973this = j | ((bArr[i + i5] & 255) << 56);
                i5++;
            }
            this.f29964break = i2 - i3;
            return;
        }
        int i6 = i4 << 3;
        int i7 = 0;
        while (i7 < i3) {
            long jM3362import = ib1.m3362import(bArr, i + i7);
            this.f29973this = (this.f29973this >>> (-i6)) | (jM3362import << i6);
            m33699for();
            this.f29973this = jM3362import;
            i7 += 8;
        }
        while (i7 < i2) {
            long j2 = this.f29973this >>> 8;
            this.f29973this = j2;
            this.f29973this = j2 | ((bArr[i + i7] & 255) << 56);
            int i8 = this.f29964break + 1;
            this.f29964break = i8;
            if (i8 == 8) {
                m33699for();
                this.f29964break = 0;
            }
            i7++;
        }
    }
}
