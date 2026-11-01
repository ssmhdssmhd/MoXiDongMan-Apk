package org.bouncycastle.asn1.cms;

import android.support.v4.b1;
import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.ASN1TaggedObjectParser;
import org.bouncycastle.asn1.Ccatch;

/* renamed from: org.bouncycastle.asn1.cms.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f28978do;

    /* renamed from: for, reason: not valid java name */
    private ASN1TaggedObjectParser f28979for;

    /* renamed from: if, reason: not valid java name */
    private b1 f28980if;

    public Ctry(ASN1SequenceParser aSN1SequenceParser) throws IOException {
        this.f28978do = (Ccatch) aSN1SequenceParser.readObject();
        this.f28980if = b1.m418try(aSN1SequenceParser.readObject().toASN1Primitive());
        this.f28979for = (ASN1TaggedObjectParser) aSN1SequenceParser.readObject();
    }

    /* renamed from: do, reason: not valid java name */
    public b1 m32895do() {
        return this.f28980if;
    }

    /* renamed from: for, reason: not valid java name */
    public ASN1Encodable m32896for(int i) throws IOException {
        return this.f28979for.getObjectParser(i, false);
    }

    /* renamed from: if, reason: not valid java name */
    public Ccatch m32897if() {
        return this.f28978do;
    }
}
