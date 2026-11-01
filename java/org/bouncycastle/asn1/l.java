package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class l extends Cconst {
    public l(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // org.bouncycastle.asn1.Cconst
    /* renamed from: const */
    public void mo32770const(ASN1Encodable aSN1Encodable) throws IOException {
        if (aSN1Encodable == null) {
            throw new IOException("null object detected");
        }
        aSN1Encodable.toASN1Primitive().mo32780this().mo32750try(this);
    }

    @Override // org.bouncycastle.asn1.Cconst
    /* renamed from: for */
    public Cconst mo32905for() {
        return this;
    }

    @Override // org.bouncycastle.asn1.Cconst
    /* renamed from: new */
    public Cconst mo32908new() {
        return this;
    }
}
