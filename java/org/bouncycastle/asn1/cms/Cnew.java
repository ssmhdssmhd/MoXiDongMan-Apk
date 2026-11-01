package org.bouncycastle.asn1.cms;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.ASN1TaggedObjectParser;
import org.bouncycastle.asn1.Ccatch;

/* renamed from: org.bouncycastle.asn1.cms.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f28970do;

    /* renamed from: if, reason: not valid java name */
    private ASN1TaggedObjectParser f28971if;

    public Cnew(ASN1SequenceParser aSN1SequenceParser) throws IOException {
        this.f28970do = (Ccatch) aSN1SequenceParser.readObject();
        this.f28971if = (ASN1TaggedObjectParser) aSN1SequenceParser.readObject();
    }

    /* renamed from: do, reason: not valid java name */
    public ASN1Encodable m32888do(int i) throws IOException {
        ASN1TaggedObjectParser aSN1TaggedObjectParser = this.f28971if;
        if (aSN1TaggedObjectParser != null) {
            return aSN1TaggedObjectParser.getObjectParser(i, true);
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public Ccatch m32889if() {
        return this.f28970do;
    }
}
