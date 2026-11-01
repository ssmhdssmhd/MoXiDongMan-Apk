package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* renamed from: org.bouncycastle.asn1.finally, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinally extends l {
    public Cfinally(OutputStream outputStream) {
        super(outputStream);
    }

    /* renamed from: super, reason: not valid java name */
    public void m33016super(Object obj) throws IOException {
        Cfinal aSN1Primitive;
        if (obj == null) {
            m32901class();
            return;
        }
        if (obj instanceof Cfinal) {
            aSN1Primitive = (Cfinal) obj;
        } else {
            if (!(obj instanceof ASN1Encodable)) {
                throw new IOException("object not BEREncodable");
            }
            aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
        }
        aSN1Primitive.mo32750try(this);
    }
}
