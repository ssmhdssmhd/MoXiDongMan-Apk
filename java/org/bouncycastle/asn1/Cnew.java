package org.bouncycastle.asn1;

import android.support.v4.q3;
import java.io.IOException;
import java.math.BigInteger;
import org.bouncycastle.util.Cif;

/* renamed from: org.bouncycastle.asn1.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends Cfinal {

    /* renamed from: if, reason: not valid java name */
    private static Cnew[] f29111if = new Cnew[12];

    /* renamed from: do, reason: not valid java name */
    private final byte[] f29112do;

    public Cnew(int i) {
        this.f29112do = BigInteger.valueOf(i).toByteArray();
    }

    public Cnew(BigInteger bigInteger) {
        this.f29112do = bigInteger.toByteArray();
    }

    public Cnew(byte[] bArr) {
        if (!Cif.m36370try("org.bouncycastle.asn1.allow_unsafe_integer") && Cgoto.m33042super(bArr)) {
            throw new IllegalArgumentException("malformed enumerated");
        }
        this.f29112do = q3.m6371final(bArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cnew m33092catch(byte[] bArr) {
        if (bArr.length > 1) {
            return new Cnew(bArr);
        }
        if (bArr.length == 0) {
            throw new IllegalArgumentException("ENUMERATED has zero length");
        }
        int i = bArr[0] & 255;
        Cnew[] cnewArr = f29111if;
        if (i >= cnewArr.length) {
            return new Cnew(q3.m6371final(bArr));
        }
        Cnew cnew = cnewArr[i];
        if (cnew != null) {
            return cnew;
        }
        Cnew cnew2 = new Cnew(q3.m6371final(bArr));
        cnewArr[i] = cnew2;
        return cnew2;
    }

    /* renamed from: class, reason: not valid java name */
    public static Cnew m33093class(Object obj) {
        if (obj == null || (obj instanceof Cnew)) {
            return (Cnew) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (Cnew) Cfinal.m33015else((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static Cnew m33094const(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof Cnew)) ? m33093class(cfinalM33065const) : m33092catch(((Cclass) cfinalM33065const).mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        return m0.m33082do(this.f29112do.length) + 1 + this.f29112do.length;
    }

    /* renamed from: final, reason: not valid java name */
    public BigInteger m33095final() {
        return new BigInteger(this.f29112do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return q3.n(this.f29112do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (cfinal instanceof Cnew) {
            return q3.m6362case(this.f29112do, ((Cnew) cfinal).f29112do);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32909this(10, this.f29112do);
    }
}
