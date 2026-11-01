package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class eq1 {

    /* renamed from: case, reason: not valid java name */
    private e40 f1555case;

    /* renamed from: do, reason: not valid java name */
    private final Digest f1556do;

    /* renamed from: else, reason: not valid java name */
    private int f1557else;

    /* renamed from: for, reason: not valid java name */
    private h50 f1558for;

    /* renamed from: goto, reason: not valid java name */
    private h50 f1559goto;

    /* renamed from: if, reason: not valid java name */
    private byte[] f1560if;

    /* renamed from: new, reason: not valid java name */
    private Cnew f1561new;

    /* renamed from: this, reason: not valid java name */
    private boolean f1562this;

    /* renamed from: try, reason: not valid java name */
    private Cnew f1563try;

    public eq1() {
        this(new lq1());
    }

    public eq1(Digest digest) {
        this.f1556do = digest;
    }

    /* renamed from: break, reason: not valid java name */
    private byte[] m1983break(Digest digest, byte[] bArr, Cnew cnew) {
        m1990new(digest, bArr);
        m1987for(digest, this.f1555case.m1646do().m35443throw());
        m1987for(digest, this.f1555case.m1646do().m35432import());
        m1987for(digest, this.f1555case.m1648if().m35456case());
        m1987for(digest, this.f1555case.m1648if().m35462else());
        m1987for(digest, cnew.m35456case());
        m1987for(digest, cnew.m35462else());
        return m1991this();
    }

    /* renamed from: class, reason: not valid java name */
    private byte[] m1984class(Cnew cnew, byte[] bArr, byte[] bArr2, int i) {
        Memoable memoableCopy;
        int digestSize = this.f1556do.getDigestSize();
        byte[] bArr3 = new byte[Math.max(4, digestSize)];
        int i2 = (i + 7) / 8;
        byte[] bArr4 = new byte[i2];
        Digest digest = this.f1556do;
        Memoable memoable = null;
        if (digest instanceof Memoable) {
            m1987for(digest, cnew.m35456case());
            m1987for(this.f1556do, cnew.m35462else());
            this.f1556do.update(bArr, 0, bArr.length);
            this.f1556do.update(bArr2, 0, bArr2.length);
            memoable = (Memoable) this.f1556do;
            memoableCopy = memoable.copy();
        } else {
            memoableCopy = null;
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            if (memoable != null) {
                memoable.reset(memoableCopy);
            } else {
                m1987for(this.f1556do, cnew.m35456case());
                m1987for(this.f1556do, cnew.m35462else());
                this.f1556do.update(bArr, 0, bArr.length);
                this.f1556do.update(bArr2, 0, bArr2.length);
            }
            i4++;
            ib1.m3348case(i4, bArr3, 0);
            this.f1556do.update(bArr3, 0, 4);
            this.f1556do.doFinal(bArr3, 0);
            int iMin = Math.min(digestSize, i2 - i3);
            System.arraycopy(bArr3, 0, bArr4, i3, iMin);
            i3 += iMin;
        }
        return bArr4;
    }

    /* renamed from: const, reason: not valid java name */
    private BigInteger m1985const(BigInteger bigInteger) {
        return bigInteger.and(BigInteger.valueOf(1L).shiftLeft(this.f1557else).subtract(BigInteger.valueOf(1L))).setBit(this.f1557else);
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m1986do(Digest digest, Cnew cnew, byte[] bArr) {
        digest.update((byte) 2);
        m1987for(digest, cnew.m35462else());
        digest.update(bArr, 0, bArr.length);
        return m1991this();
    }

    /* renamed from: for, reason: not valid java name */
    private void m1987for(Digest digest, Cfor cfor) {
        byte[] bArrM35379try = cfor.m35379try();
        digest.update(bArrM35379try, 0, bArrM35379try.length);
    }

    /* renamed from: goto, reason: not valid java name */
    private Cnew m1988goto(gq1 gq1Var) {
        e40 e40VarM7258if = this.f1558for.m7258if();
        Cnew cnewM35358do = Cdo.m35358do(e40VarM7258if.m1646do(), gq1Var.m2769if().m4252for());
        Cnew cnewM35358do2 = Cdo.m35358do(e40VarM7258if.m1646do(), gq1Var.m2768do().m4252for());
        BigInteger bigIntegerM1985const = m1985const(this.f1563try.m35456case().mo339static());
        BigInteger bigIntegerM1985const2 = m1985const(cnewM35358do2.m35456case().mo339static());
        BigInteger bigIntegerMod = this.f1555case.m1647for().multiply(this.f1558for.m2948for().add(bigIntegerM1985const.multiply(this.f1559goto.m2948for()))).mod(this.f1555case.m1650try());
        return Cdo.m35368return(cnewM35358do, bigIntegerMod, cnewM35358do2, bigIntegerMod.multiply(bigIntegerM1985const2).mod(this.f1555case.m1650try())).m35454abstract();
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m1989if(Digest digest, Cnew cnew, byte[] bArr) {
        digest.update((byte) 3);
        m1987for(digest, cnew.m35462else());
        digest.update(bArr, 0, bArr.length);
        return m1991this();
    }

    /* renamed from: new, reason: not valid java name */
    private void m1990new(Digest digest, byte[] bArr) {
        int length = bArr.length * 8;
        digest.update((byte) (length >>> 8));
        digest.update((byte) length);
        digest.update(bArr, 0, bArr.length);
    }

    /* renamed from: this, reason: not valid java name */
    private byte[] m1991this() {
        byte[] bArr = new byte[this.f1556do.getDigestSize()];
        this.f1556do.doFinal(bArr, 0);
        return bArr;
    }

    /* renamed from: try, reason: not valid java name */
    private byte[] m1992try(Digest digest, Cnew cnew, byte[] bArr, byte[] bArr2, Cnew cnew2, Cnew cnew3) {
        m1987for(digest, cnew.m35456case());
        digest.update(bArr, 0, bArr.length);
        digest.update(bArr2, 0, bArr2.length);
        m1987for(digest, cnew2.m35456case());
        m1987for(digest, cnew2.m35462else());
        m1987for(digest, cnew3.m35456case());
        m1987for(digest, cnew3.m35462else());
        return m1991this();
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m1993case(int i, CipherParameters cipherParameters) {
        gq1 gq1Var;
        byte[] bArrM175do;
        if (cipherParameters instanceof ac1) {
            ac1 ac1Var = (ac1) cipherParameters;
            gq1Var = (gq1) ac1Var.m176if();
            bArrM175do = ac1Var.m175do();
        } else {
            gq1Var = (gq1) cipherParameters;
            bArrM175do = new byte[0];
        }
        byte[] bArrM1983break = m1983break(this.f1556do, this.f1560if, this.f1561new);
        byte[] bArrM1983break2 = m1983break(this.f1556do, bArrM175do, gq1Var.m2769if().m4252for());
        Cnew cnewM1988goto = m1988goto(gq1Var);
        return this.f1562this ? m1984class(cnewM1988goto, bArrM1983break, bArrM1983break2, i) : m1984class(cnewM1988goto, bArrM1983break2, bArrM1983break, i);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m1994catch(CipherParameters cipherParameters) {
        fq1 fq1Var;
        if (cipherParameters instanceof ac1) {
            ac1 ac1Var = (ac1) cipherParameters;
            fq1Var = (fq1) ac1Var.m176if();
            this.f1560if = ac1Var.m175do();
        } else {
            fq1Var = (fq1) cipherParameters;
            this.f1560if = new byte[0];
        }
        this.f1562this = fq1Var.m2387try();
        this.f1558for = fq1Var.m2384for();
        this.f1559goto = fq1Var.m2383do();
        this.f1555case = this.f1558for.m7258if();
        this.f1561new = fq1Var.m2386new();
        this.f1563try = fq1Var.m2385if();
        this.f1557else = (this.f1555case.m1646do().mo35334switch() / 2) - 1;
    }

    /* renamed from: else, reason: not valid java name */
    public byte[][] m1995else(int i, byte[] bArr, CipherParameters cipherParameters) {
        gq1 gq1Var;
        byte[] bArrM175do;
        if (cipherParameters instanceof ac1) {
            ac1 ac1Var = (ac1) cipherParameters;
            gq1Var = (gq1) ac1Var.m176if();
            bArrM175do = ac1Var.m175do();
        } else {
            gq1Var = (gq1) cipherParameters;
            bArrM175do = new byte[0];
        }
        if (this.f1562this && bArr == null) {
            throw new IllegalArgumentException("if initiating, confirmationTag must be set");
        }
        byte[] bArrM1983break = m1983break(this.f1556do, this.f1560if, this.f1561new);
        byte[] bArrM1983break2 = m1983break(this.f1556do, bArrM175do, gq1Var.m2769if().m4252for());
        Cnew cnewM1988goto = m1988goto(gq1Var);
        if (!this.f1562this) {
            byte[] bArrM1984class = m1984class(cnewM1988goto, bArrM1983break2, bArrM1983break, i);
            byte[] bArrM1992try = m1992try(this.f1556do, cnewM1988goto, bArrM1983break2, bArrM1983break, gq1Var.m2768do().m4252for(), this.f1563try);
            return new byte[][]{bArrM1984class, m1986do(this.f1556do, cnewM1988goto, bArrM1992try), m1989if(this.f1556do, cnewM1988goto, bArrM1992try)};
        }
        byte[] bArrM1984class2 = m1984class(cnewM1988goto, bArrM1983break, bArrM1983break2, i);
        byte[] bArrM1992try2 = m1992try(this.f1556do, cnewM1988goto, bArrM1983break, bArrM1983break2, this.f1563try, gq1Var.m2768do().m4252for());
        if (q3.m6360abstract(m1986do(this.f1556do, cnewM1988goto, bArrM1992try2), bArr)) {
            return new byte[][]{bArrM1984class2, m1989if(this.f1556do, cnewM1988goto, bArrM1992try2)};
        }
        throw new IllegalStateException("confirmation tag mismatch");
    }
}
