package android.support.v4;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.DigestDerivationFunction;

/* loaded from: classes3.dex */
public class a40 implements DigestDerivationFunction {

    /* renamed from: do, reason: not valid java name */
    private DigestDerivationFunction f30do;

    /* renamed from: for, reason: not valid java name */
    private int f31for;

    /* renamed from: if, reason: not valid java name */
    private Ccatch f32if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f33new;

    public a40(Digest digest) {
        this.f30do = new gq0(digest);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws tw, IllegalArgumentException {
        if (i + i2 > bArr.length) {
            throw new tw("output buffer too small");
        }
        Cimport cimport = new Cimport();
        cimport.m3516do(new b1(this.f32if, org.bouncycastle.asn1.h.f29080do));
        cimport.m3516do(new org.bouncycastle.asn1.u(true, 2, new org.bouncycastle.asn1.j(ib1.m3360goto(this.f31for))));
        try {
            this.f30do.init(new kq0(this.f33new, new org.bouncycastle.asn1.n(cimport).m32764do(ASN1Encoding.DER)));
            return this.f30do.generateBytes(bArr, i, i2);
        } catch (IOException e) {
            throw new IllegalArgumentException("unable to initialise kdf: " + e.getMessage());
        }
    }

    @Override // org.bouncycastle.crypto.DigestDerivationFunction
    public Digest getDigest() {
        return this.f30do.getDigest();
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        hu huVar = (hu) derivationParameters;
        this.f32if = huVar.m3123do();
        this.f31for = huVar.m3124for();
        this.f33new = huVar.m3126new();
    }
}
