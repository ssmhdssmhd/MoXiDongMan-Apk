package org.bouncycastle.asn1.cms;

import android.support.v4.o81;
import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.ASN1SetParser;
import org.bouncycastle.asn1.ASN1TaggedObjectParser;
import org.bouncycastle.asn1.Cgoto;

/* renamed from: org.bouncycastle.asn1.cms.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase {

    /* renamed from: do, reason: not valid java name */
    private ASN1SequenceParser f28942do;

    /* renamed from: for, reason: not valid java name */
    private ASN1Encodable f28943for;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f28944if;

    /* renamed from: new, reason: not valid java name */
    private boolean f28945new;

    public Ccase(ASN1SequenceParser aSN1SequenceParser) throws IOException {
        this.f28942do = aSN1SequenceParser;
        this.f28944if = Cgoto.m33040catch(aSN1SequenceParser.readObject());
    }

    /* renamed from: do, reason: not valid java name */
    public Ctry m32849do() throws IOException {
        if (this.f28943for == null) {
            this.f28943for = this.f28942do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28943for;
        if (aSN1Encodable == null) {
            return null;
        }
        this.f28943for = null;
        return new Ctry((ASN1SequenceParser) aSN1Encodable);
    }

    /* renamed from: for, reason: not valid java name */
    public ASN1SetParser m32850for() throws IOException {
        if (!this.f28945new) {
            m32851if();
        }
        if (this.f28943for == null) {
            this.f28943for = this.f28942do.readObject();
        }
        ASN1SetParser aSN1SetParser = (ASN1SetParser) this.f28943for;
        this.f28943for = null;
        return aSN1SetParser;
    }

    /* renamed from: if, reason: not valid java name */
    public o81 m32851if() throws IOException {
        this.f28945new = true;
        if (this.f28943for == null) {
            this.f28943for = this.f28942do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28943for;
        if (!(aSN1Encodable instanceof ASN1TaggedObjectParser) || ((ASN1TaggedObjectParser) aSN1Encodable).getTagNo() != 0) {
            return null;
        }
        ASN1SequenceParser aSN1SequenceParser = (ASN1SequenceParser) ((ASN1TaggedObjectParser) this.f28943for).getObjectParser(16, false);
        this.f28943for = null;
        return o81.m5502case(aSN1SequenceParser.toASN1Primitive());
    }

    /* renamed from: new, reason: not valid java name */
    public ASN1SetParser m32852new() throws IOException {
        if (this.f28943for == null) {
            this.f28943for = this.f28942do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28943for;
        if (aSN1Encodable == null) {
            return null;
        }
        this.f28943for = null;
        return (ASN1SetParser) ((ASN1TaggedObjectParser) aSN1Encodable).getObjectParser(17, false);
    }

    /* renamed from: try, reason: not valid java name */
    public Cgoto m32853try() {
        return this.f28944if;
    }
}
