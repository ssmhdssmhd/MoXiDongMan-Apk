package org.bouncycastle.asn1;

import java.io.IOException;

/* renamed from: org.bouncycastle.asn1.abstract, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cabstract implements ASN1SequenceParser {

    /* renamed from: do, reason: not valid java name */
    private Cwhile f28900do;

    public Cabstract(Cwhile cwhile) {
        this.f28900do = cwhile;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public Cfinal getLoadedObject() throws IOException {
        return new Cpackage(this.f28900do.m33187try());
    }

    @Override // org.bouncycastle.asn1.ASN1SequenceParser
    public ASN1Encodable readObject() throws IOException {
        return this.f28900do.m33184for();
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
