package org.bouncycastle.asn1.cms;

import android.support.v4.b1;
import java.io.IOException;
import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.Cgoto;

/* renamed from: org.bouncycastle.asn1.cms.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f28956do;

    /* renamed from: for, reason: not valid java name */
    private Cnew f28957for;

    /* renamed from: if, reason: not valid java name */
    private b1 f28958if;

    public Cfor(ASN1SequenceParser aSN1SequenceParser) throws IOException {
        this.f28956do = (Cgoto) aSN1SequenceParser.readObject();
        this.f28958if = b1.m418try(aSN1SequenceParser.readObject().toASN1Primitive());
        this.f28957for = new Cnew((ASN1SequenceParser) aSN1SequenceParser.readObject());
    }

    /* renamed from: do, reason: not valid java name */
    public b1 m32868do() {
        return this.f28958if;
    }

    /* renamed from: for, reason: not valid java name */
    public Cgoto m32869for() {
        return this.f28956do;
    }

    /* renamed from: if, reason: not valid java name */
    public Cnew m32870if() {
        return this.f28957for;
    }
}
