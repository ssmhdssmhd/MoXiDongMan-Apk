package org.bouncycastle.crypto.signers;

import android.support.v4.ac1;
import android.support.v4.cc1;
import android.support.v4.e40;
import android.support.v4.fl1;
import android.support.v4.h50;
import android.support.v4.ic0;
import android.support.v4.k50;
import android.support.v4.lq1;
import android.support.v4.s40;
import android.support.v4.xs;
import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECMultiplier;

/* renamed from: org.bouncycastle.crypto.signers.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis implements Signer, ECConstants {

    /* renamed from: case, reason: not valid java name */
    private s40 f30417case;

    /* renamed from: do, reason: not valid java name */
    private final DSAKCalculator f30418do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f30419else;

    /* renamed from: for, reason: not valid java name */
    private final DSAEncoding f30420for;

    /* renamed from: if, reason: not valid java name */
    private final lq1 f30421if;

    /* renamed from: new, reason: not valid java name */
    private e40 f30422new;

    /* renamed from: try, reason: not valid java name */
    private Cnew f30423try;

    public Cthis() {
        this(Cbreak.f30346do);
    }

    public Cthis(DSAEncoding dSAEncoding) {
        this.f30418do = new fl1();
        this.f30421if = new lq1();
        this.f30420for = dSAEncoding;
    }

    /* renamed from: case, reason: not valid java name */
    private byte[] m33921case(byte[] bArr) {
        this.f30421if.reset();
        m33924if(this.f30421if, bArr);
        m33922do(this.f30421if, this.f30422new.m1646do().m35443throw());
        m33922do(this.f30421if, this.f30422new.m1646do().m35432import());
        m33922do(this.f30421if, this.f30422new.m1648if().m35456case());
        m33922do(this.f30421if, this.f30422new.m1648if().m35462else());
        m33922do(this.f30421if, this.f30423try.m35456case());
        m33922do(this.f30421if, this.f30423try.m35462else());
        byte[] bArr2 = new byte[this.f30421if.getDigestSize()];
        this.f30421if.doFinal(bArr2, 0);
        return bArr2;
    }

    /* renamed from: do, reason: not valid java name */
    private void m33922do(Digest digest, Cfor cfor) {
        byte[] bArrM35379try = cfor.m35379try();
        digest.update(bArrM35379try, 0, bArrM35379try.length);
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m33923else(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigIntegerM1650try = this.f30422new.m1650try();
        BigInteger bigInteger3 = ECConstants.ONE;
        if (bigInteger.compareTo(bigInteger3) < 0 || bigInteger.compareTo(bigIntegerM1650try) >= 0 || bigInteger2.compareTo(bigInteger3) < 0 || bigInteger2.compareTo(bigIntegerM1650try) >= 0) {
            return false;
        }
        BigInteger bigIntegerM33926for = m33926for(m33925try());
        BigInteger bigIntegerMod = bigInteger.add(bigInteger2).mod(bigIntegerM1650try);
        if (bigIntegerMod.equals(ECConstants.ZERO)) {
            return false;
        }
        Cnew cnewM35454abstract = Cdo.m35368return(this.f30422new.m1648if(), bigInteger2, ((k50) this.f30417case).m4252for(), bigIntegerMod).m35454abstract();
        if (cnewM35454abstract.m35479throws()) {
            return false;
        }
        return bigIntegerM33926for.add(cnewM35454abstract.m35456case().mo339static()).mod(bigIntegerM1650try).equals(bigInteger);
    }

    /* renamed from: if, reason: not valid java name */
    private void m33924if(Digest digest, byte[] bArr) {
        int length = bArr.length * 8;
        digest.update((byte) ((length >> 8) & 255));
        digest.update((byte) (length & 255));
        digest.update(bArr, 0, bArr.length);
    }

    /* renamed from: try, reason: not valid java name */
    private byte[] m33925try() {
        byte[] bArr = new byte[this.f30421if.getDigestSize()];
        this.f30421if.doFinal(bArr, 0);
        reset();
        return bArr;
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m33926for(byte[] bArr) {
        return new BigInteger(1, bArr);
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() throws xs {
        byte[] bArrM33925try = m33925try();
        BigInteger bigIntegerM1650try = this.f30422new.m1650try();
        BigInteger bigIntegerM33926for = m33926for(bArrM33925try);
        BigInteger bigIntegerM2948for = ((h50) this.f30417case).m2948for();
        ECMultiplier eCMultiplierM33927new = m33927new();
        while (true) {
            BigInteger bigIntegerNextK = this.f30418do.nextK();
            BigInteger bigIntegerMod = bigIntegerM33926for.add(eCMultiplierM33927new.multiply(this.f30422new.m1648if(), bigIntegerNextK).m35454abstract().m35456case().mo339static()).mod(bigIntegerM1650try);
            BigInteger bigInteger = ECConstants.ZERO;
            if (!bigIntegerMod.equals(bigInteger) && !bigIntegerMod.add(bigIntegerNextK).equals(bigIntegerM1650try)) {
                BigInteger bigIntegerMod2 = bigIntegerM2948for.add(ECConstants.ONE).modInverse(bigIntegerM1650try).multiply(bigIntegerNextK.subtract(bigIntegerMod.multiply(bigIntegerM2948for)).mod(bigIntegerM1650try)).mod(bigIntegerM1650try);
                if (!bigIntegerMod2.equals(bigInteger)) {
                    try {
                        return this.f30420for.encode(this.f30422new.m1650try(), bigIntegerMod, bigIntegerMod2);
                    } catch (Exception e) {
                        throw new xs("unable to encode signature: " + e.getMessage(), e);
                    }
                }
            }
        }
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        byte[] bArrM36332if;
        Cnew cnewM4252for;
        if (cipherParameters instanceof ac1) {
            ac1 ac1Var = (ac1) cipherParameters;
            CipherParameters cipherParametersM176if = ac1Var.m176if();
            bArrM36332if = ac1Var.m175do();
            cipherParameters = cipherParametersM176if;
        } else {
            bArrM36332if = org.bouncycastle.util.encoders.Cfor.m36332if("31323334353637383132333435363738");
        }
        if (z) {
            if (cipherParameters instanceof cc1) {
                cc1 cc1Var = (cc1) cipherParameters;
                s40 s40Var = (s40) cc1Var.m846do();
                this.f30417case = s40Var;
                e40 e40VarM7258if = s40Var.m7258if();
                this.f30422new = e40VarM7258if;
                this.f30418do.init(e40VarM7258if.m1650try(), cc1Var.m847if());
            } else {
                s40 s40Var2 = (s40) cipherParameters;
                this.f30417case = s40Var2;
                e40 e40VarM7258if2 = s40Var2.m7258if();
                this.f30422new = e40VarM7258if2;
                this.f30418do.init(e40VarM7258if2.m1650try(), org.bouncycastle.crypto.Cfor.m33599case());
            }
            cnewM4252for = m33927new().multiply(this.f30422new.m1648if(), ((h50) this.f30417case).m2948for()).m35454abstract();
        } else {
            s40 s40Var3 = (s40) cipherParameters;
            this.f30417case = s40Var3;
            this.f30422new = s40Var3.m7258if();
            cnewM4252for = ((k50) this.f30417case).m4252for();
        }
        this.f30423try = cnewM4252for;
        byte[] bArrM33921case = m33921case(bArrM36332if);
        this.f30419else = bArrM33921case;
        this.f30421if.update(bArrM33921case, 0, bArrM33921case.length);
    }

    /* renamed from: new, reason: not valid java name */
    public ECMultiplier m33927new() {
        return new ic0();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.f30421if.reset();
        byte[] bArr = this.f30419else;
        if (bArr != null) {
            this.f30421if.update(bArr, 0, bArr.length);
        }
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.f30421if.update(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.f30421if.update(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        try {
            BigInteger[] bigIntegerArrDecode = this.f30420for.decode(this.f30422new.m1650try(), bArr);
            return m33923else(bigIntegerArrDecode[0], bigIntegerArrDecode[1]);
        } catch (Exception unused) {
            return false;
        }
    }
}
