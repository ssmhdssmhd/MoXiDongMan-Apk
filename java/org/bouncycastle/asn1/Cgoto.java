package org.bouncycastle.asn1;

import android.support.v4.q3;
import java.io.IOException;
import java.math.BigInteger;
import org.bouncycastle.util.Cif;

/* renamed from: org.bouncycastle.asn1.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto extends Cfinal {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f29079do;

    public Cgoto(long j) {
        this.f29079do = BigInteger.valueOf(j).toByteArray();
    }

    public Cgoto(BigInteger bigInteger) {
        this.f29079do = bigInteger.toByteArray();
    }

    public Cgoto(byte[] bArr) {
        this(bArr, true);
    }

    public Cgoto(byte[] bArr, boolean z) {
        if (!Cif.m36370try("org.bouncycastle.asn1.allow_unsafe_integer") && m33042super(bArr)) {
            throw new IllegalArgumentException("malformed integer");
        }
        this.f29079do = z ? q3.m6371final(bArr) : bArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cgoto m33040catch(Object obj) {
        if (obj == null || (obj instanceof Cgoto)) {
            return (Cgoto) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (Cgoto) Cfinal.m33015else((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static Cgoto m33041class(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof Cgoto)) ? m33040catch(cfinalM33065const) : new Cgoto(Cclass.m32796catch(cfinalM33065const).mo5490const());
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m33042super(byte[] bArr) {
        if (bArr.length > 1) {
            if (bArr[0] == 0 && (bArr[1] & 128) == 0) {
                return true;
            }
            if (bArr[0] == -1 && (bArr[1] & 128) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        return m0.m33082do(this.f29079do.length) + 1 + this.f29079do.length;
    }

    /* renamed from: const, reason: not valid java name */
    public BigInteger m33043const() {
        return new BigInteger(1, this.f29079do);
    }

    /* renamed from: final, reason: not valid java name */
    public BigInteger m33044final() {
        return new BigInteger(this.f29079do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f29079do;
            if (i == bArr.length) {
                return i2;
            }
            i2 ^= (bArr[i] & 255) << (i % 4);
            i++;
        }
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (cfinal instanceof Cgoto) {
            return q3.m6362case(this.f29079do, ((Cgoto) cfinal).f29079do);
        }
        return false;
    }

    public String toString() {
        return m33044final().toString();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32909this(2, this.f29079do);
    }
}
