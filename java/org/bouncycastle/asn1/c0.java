package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class c0 extends Cconst {
    public c0(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // org.bouncycastle.asn1.Cconst
    /* renamed from: const, reason: not valid java name */
    public void mo32770const(ASN1Encodable aSN1Encodable) throws IOException {
        if (aSN1Encodable == null) {
            throw new IOException("null object detected");
        }
        aSN1Encodable.toASN1Primitive().mo32798break().mo32750try(this);
    }
}
