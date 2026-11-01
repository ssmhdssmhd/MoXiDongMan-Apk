package android.support.v4;

import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.Cif;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.engines.Cfinal;

/* loaded from: classes3.dex */
public class v61 extends Cfinal {
    public v61(BasicAgreement basicAgreement, DerivationFunction derivationFunction, Mac mac) {
        super(basicAgreement, derivationFunction, mac);
    }

    public v61(BasicAgreement basicAgreement, DerivationFunction derivationFunction, Mac mac, Cif cif) {
        super(basicAgreement, derivationFunction, mac, cif);
    }

    @Override // org.bouncycastle.crypto.engines.Cfinal
    /* renamed from: try, reason: not valid java name */
    public byte[] mo8755try(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        if (bArr != null) {
            ib1.m3348case(bArr.length * 8, bArr2, 0);
        }
        return bArr2;
    }
}
