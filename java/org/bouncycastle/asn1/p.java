package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes3.dex */
public class p implements ASN1SequenceParser {

    /* renamed from: do, reason: not valid java name */
    private Cwhile f29114do;

    public p(Cwhile cwhile) {
        this.f29114do = cwhile;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public Cfinal getLoadedObject() throws IOException {
        return new n(this.f29114do.m33187try());
    }

    @Override // org.bouncycastle.asn1.ASN1SequenceParser
    public ASN1Encodable readObject() throws IOException {
        return this.f29114do.m33184for();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }
}
