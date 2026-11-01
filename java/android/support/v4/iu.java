package android.support.v4;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class iu implements DerivationFunction {

    /* renamed from: do, reason: not valid java name */
    private final Digest f2879do;

    /* renamed from: for, reason: not valid java name */
    private int f2880for;

    /* renamed from: if, reason: not valid java name */
    private Ccatch f2881if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f2882new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f2883try;

    public iu(Digest digest) {
        this.f2879do = digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws tw, IllegalArgumentException {
        boolean z;
        int i3 = i2;
        int i4 = i;
        if (bArr.length - i3 < i4) {
            throw new f91("output buffer too small");
        }
        long j = i3;
        int digestSize = this.f2879do.getDigestSize();
        if (j > 8589934591L) {
            throw new IllegalArgumentException("Output length too large");
        }
        long j2 = digestSize;
        int i5 = (int) (((j + j2) - 1) / j2);
        byte[] bArr2 = new byte[this.f2879do.getDigestSize()];
        int i6 = 0;
        int i7 = 0;
        int i8 = 1;
        while (i7 < i5) {
            Digest digest = this.f2879do;
            byte[] bArr3 = this.f2882new;
            digest.update(bArr3, i6, bArr3.length);
            Cimport cimport = new Cimport();
            Cimport cimport2 = new Cimport();
            cimport2.m3516do(this.f2881if);
            cimport2.m3516do(new org.bouncycastle.asn1.j(ib1.m3360goto(i8)));
            cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
            if (this.f2883try != null) {
                z = true;
                cimport.m3516do(new org.bouncycastle.asn1.u(true, i6, new org.bouncycastle.asn1.j(this.f2883try)));
            } else {
                z = true;
            }
            cimport.m3516do(new org.bouncycastle.asn1.u(z, 2, new org.bouncycastle.asn1.j(ib1.m3360goto(this.f2880for))));
            try {
                byte[] bArrM32764do = new org.bouncycastle.asn1.n(cimport).m32764do(ASN1Encoding.DER);
                this.f2879do.update(bArrM32764do, 0, bArrM32764do.length);
                this.f2879do.doFinal(bArr2, 0);
                if (i3 > digestSize) {
                    System.arraycopy(bArr2, 0, bArr, i4, digestSize);
                    i4 += digestSize;
                    i3 -= digestSize;
                } else {
                    System.arraycopy(bArr2, 0, bArr, i4, i3);
                }
                i8++;
                i7++;
                i6 = 0;
            } catch (IOException e) {
                throw new IllegalArgumentException("unable to encode parameter info: " + e.getMessage());
            }
        }
        this.f2879do.reset();
        return (int) j;
    }

    public Digest getDigest() {
        return this.f2879do;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        hu huVar = (hu) derivationParameters;
        this.f2881if = huVar.m3123do();
        this.f2880for = huVar.m3124for();
        this.f2882new = huVar.m3126new();
        this.f2883try = huVar.m3125if();
    }
}
