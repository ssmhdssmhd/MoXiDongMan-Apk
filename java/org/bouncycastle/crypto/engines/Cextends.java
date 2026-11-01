package org.bouncycastle.crypto.engines;

import android.support.v4.cc1;
import android.support.v4.e40;
import android.support.v4.h50;
import android.support.v4.ib1;
import android.support.v4.ic0;
import android.support.v4.k50;
import android.support.v4.lq1;
import android.support.v4.q3;
import android.support.v4.s40;
import android.support.v4.tn0;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.util.Cdo;
import org.bouncycastle.util.Memoable;

/* renamed from: org.bouncycastle.crypto.engines.extends, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cextends {

    /* renamed from: case, reason: not valid java name */
    private SecureRandom f29672case;

    /* renamed from: do, reason: not valid java name */
    private final Digest f29673do;

    /* renamed from: for, reason: not valid java name */
    private s40 f29674for;

    /* renamed from: if, reason: not valid java name */
    private boolean f29675if;

    /* renamed from: new, reason: not valid java name */
    private e40 f29676new;

    /* renamed from: try, reason: not valid java name */
    private int f29677try;

    public Cextends() {
        this(new lq1());
    }

    public Cextends(Digest digest) {
        this.f29673do = digest;
    }

    /* renamed from: catch, reason: not valid java name */
    private void m33483catch(byte[] bArr, byte[] bArr2, int i, int i2) {
        for (int i3 = 0; i3 != i2; i3++) {
            int i4 = i + i3;
            bArr[i4] = (byte) (bArr[i4] ^ bArr2[i3]);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m33484do(Digest digest, Cfor cfor) {
        byte[] bArrM36309do = Cdo.m36309do(this.f29677try, cfor.mo339static());
        digest.update(bArrM36309do, 0, bArrM36309do.length);
    }

    /* renamed from: else, reason: not valid java name */
    private void m33485else(Digest digest, Cnew cnew, byte[] bArr) {
        Memoable memoableCopy;
        int digestSize = digest.getDigestSize();
        byte[] bArr2 = new byte[Math.max(4, digestSize)];
        Memoable memoable = null;
        if (digest instanceof Memoable) {
            m33484do(digest, cnew.m35456case());
            m33484do(digest, cnew.m35462else());
            memoable = (Memoable) digest;
            memoableCopy = memoable.copy();
        } else {
            memoableCopy = null;
        }
        int i = 0;
        int i2 = 0;
        while (i < bArr.length) {
            if (memoable != null) {
                memoable.reset(memoableCopy);
            } else {
                m33484do(digest, cnew.m35456case());
                m33484do(digest, cnew.m35462else());
            }
            i2++;
            ib1.m3348case(i2, bArr2, 0);
            digest.update(bArr2, 0, 4);
            digest.doFinal(bArr2, 0);
            int iMin = Math.min(digestSize, bArr.length - i);
            m33483catch(bArr, bArr2, i, iMin);
            i += iMin;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private byte[] m33486for(byte[] bArr, int i, int i2) throws tn0 {
        int i3 = (this.f29677try * 2) + 1;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i, bArr2, 0, i3);
        Cnew cnewM35421class = this.f29676new.m1646do().m35421class(bArr2);
        if (cnewM35421class.m35470package(this.f29676new.m1647for()).m35479throws()) {
            throw new tn0("[h]C1 at infinity");
        }
        Cnew cnewM35454abstract = cnewM35421class.m35470package(((h50) this.f29674for).m2948for()).m35454abstract();
        int digestSize = (i2 - i3) - this.f29673do.getDigestSize();
        byte[] bArr3 = new byte[digestSize];
        int i4 = i + i3;
        System.arraycopy(bArr, i4, bArr3, 0, digestSize);
        m33485else(this.f29673do, cnewM35454abstract, bArr3);
        int digestSize2 = this.f29673do.getDigestSize();
        byte[] bArr4 = new byte[digestSize2];
        m33484do(this.f29673do, cnewM35454abstract.m35456case());
        this.f29673do.update(bArr3, 0, digestSize);
        m33484do(this.f29673do, cnewM35454abstract.m35462else());
        this.f29673do.doFinal(bArr4, 0);
        int i5 = 0;
        for (int i6 = 0; i6 != digestSize2; i6++) {
            i5 |= bArr4[i6] ^ bArr[(i4 + digestSize) + i6];
        }
        q3.c(bArr2, (byte) 0);
        q3.c(bArr4, (byte) 0);
        if (i5 == 0) {
            return bArr3;
        }
        q3.c(bArr3, (byte) 0);
        throw new tn0("invalid cipher text");
    }

    /* renamed from: goto, reason: not valid java name */
    private BigInteger m33487goto() {
        int iBitLength = this.f29676new.m1650try().bitLength();
        while (true) {
            BigInteger bigIntegerM36314new = Cdo.m36314new(iBitLength, this.f29672case);
            if (!bigIntegerM36314new.equals(ECConstants.ZERO) && bigIntegerM36314new.compareTo(this.f29676new.m1650try()) < 0) {
                return bigIntegerM36314new;
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    private byte[] m33488new(byte[] bArr, int i, int i2) throws tn0 {
        byte[] bArrM35459const;
        Cnew cnewM35454abstract;
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        ECMultiplier eCMultiplierM33492if = m33492if();
        do {
            BigInteger bigIntegerM33487goto = m33487goto();
            bArrM35459const = eCMultiplierM33492if.multiply(this.f29676new.m1648if(), bigIntegerM33487goto).m35454abstract().m35459const(false);
            cnewM35454abstract = ((k50) this.f29674for).m4252for().m35470package(bigIntegerM33487goto).m35454abstract();
            m33485else(this.f29673do, cnewM35454abstract, bArr2);
        } while (m33489this(bArr2, bArr, i));
        byte[] bArr3 = new byte[this.f29673do.getDigestSize()];
        m33484do(this.f29673do, cnewM35454abstract.m35456case());
        this.f29673do.update(bArr, i, i2);
        m33484do(this.f29673do, cnewM35454abstract.m35462else());
        this.f29673do.doFinal(bArr3, 0);
        return q3.m6370extends(bArrM35459const, bArr2, bArr3);
    }

    /* renamed from: this, reason: not valid java name */
    private boolean m33489this(byte[] bArr, byte[] bArr2, int i) {
        for (int i2 = 0; i2 != bArr.length; i2++) {
            if (bArr[i2] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: break, reason: not valid java name */
    public byte[] m33490break(byte[] bArr, int i, int i2) throws tn0 {
        return this.f29675if ? m33488new(bArr, i, i2) : m33486for(bArr, i, i2);
    }

    /* renamed from: case, reason: not valid java name */
    public void m33491case(boolean z, CipherParameters cipherParameters) {
        this.f29675if = z;
        if (z) {
            cc1 cc1Var = (cc1) cipherParameters;
            s40 s40Var = (s40) cc1Var.m846do();
            this.f29674for = s40Var;
            this.f29676new = s40Var.m7258if();
            if (((k50) this.f29674for).m4252for().m35470package(this.f29676new.m1647for()).m35479throws()) {
                throw new IllegalArgumentException("invalid key: [h]Q at infinity");
            }
            this.f29672case = cc1Var.m847if();
        } else {
            s40 s40Var2 = (s40) cipherParameters;
            this.f29674for = s40Var2;
            this.f29676new = s40Var2.m7258if();
        }
        this.f29677try = (this.f29676new.m1646do().mo35334switch() + 7) / 8;
    }

    /* renamed from: if, reason: not valid java name */
    public ECMultiplier m33492if() {
        return new ic0();
    }

    /* renamed from: try, reason: not valid java name */
    public int m33493try(int i) {
        return (this.f29677try * 2) + 1 + i + this.f29673do.getDigestSize();
    }
}
