package org.bouncycastle.asn1.cms;

import android.support.v4.Creturn;
import android.support.v4.o81;
import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.ASN1SetParser;
import org.bouncycastle.asn1.ASN1TaggedObjectParser;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cgoto;

/* renamed from: org.bouncycastle.asn1.cms.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    private ASN1SequenceParser f28946do;

    /* renamed from: for, reason: not valid java name */
    private ASN1Encodable f28947for;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f28948if;

    /* renamed from: new, reason: not valid java name */
    private boolean f28949new;

    /* renamed from: try, reason: not valid java name */
    private Ctry f28950try;

    public Cdo(ASN1SequenceParser aSN1SequenceParser) throws IOException {
        this.f28946do = aSN1SequenceParser;
        Cgoto cgotoM33040catch = Cgoto.m33040catch(aSN1SequenceParser.readObject());
        this.f28948if = cgotoM33040catch;
        if (cgotoM33040catch.m33044final().intValue() != 0) {
            throw new Creturn("AuthEnvelopedData version number must be 0");
        }
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1SetParser m32854case() throws IOException {
        if (this.f28947for == null) {
            this.f28947for = this.f28946do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28947for;
        if (aSN1Encodable == null) {
            return null;
        }
        this.f28947for = null;
        return (ASN1SetParser) ((ASN1TaggedObjectParser) aSN1Encodable).getObjectParser(17, false);
    }

    /* renamed from: do, reason: not valid java name */
    public ASN1SetParser m32855do() throws IOException {
        if (this.f28947for == null) {
            this.f28947for = this.f28946do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28947for;
        if (aSN1Encodable instanceof ASN1TaggedObjectParser) {
            this.f28947for = null;
            return (ASN1SetParser) ((ASN1TaggedObjectParser) aSN1Encodable).getObjectParser(17, false);
        }
        if (this.f28950try.m32897if().equals(CMSObjectIdentifiers.data)) {
            return null;
        }
        throw new Creturn("authAttrs must be present with non-data content");
    }

    /* renamed from: else, reason: not valid java name */
    public Cgoto m32856else() {
        return this.f28948if;
    }

    /* renamed from: for, reason: not valid java name */
    public Cclass m32857for() throws IOException {
        if (this.f28947for == null) {
            this.f28947for = this.f28946do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28947for;
        this.f28947for = null;
        return Cclass.m32796catch(aSN1Encodable.toASN1Primitive());
    }

    /* renamed from: if, reason: not valid java name */
    public Ctry m32858if() throws IOException {
        if (this.f28947for == null) {
            this.f28947for = this.f28946do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28947for;
        if (aSN1Encodable == null) {
            return null;
        }
        this.f28947for = null;
        Ctry ctry = new Ctry((ASN1SequenceParser) aSN1Encodable);
        this.f28950try = ctry;
        return ctry;
    }

    /* renamed from: new, reason: not valid java name */
    public o81 m32859new() throws IOException {
        this.f28949new = true;
        if (this.f28947for == null) {
            this.f28947for = this.f28946do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28947for;
        if (!(aSN1Encodable instanceof ASN1TaggedObjectParser) || ((ASN1TaggedObjectParser) aSN1Encodable).getTagNo() != 0) {
            return null;
        }
        ASN1SequenceParser aSN1SequenceParser = (ASN1SequenceParser) ((ASN1TaggedObjectParser) this.f28947for).getObjectParser(16, false);
        this.f28947for = null;
        return o81.m5502case(aSN1SequenceParser.toASN1Primitive());
    }

    /* renamed from: try, reason: not valid java name */
    public ASN1SetParser m32860try() throws IOException {
        if (!this.f28949new) {
            m32859new();
        }
        if (this.f28947for == null) {
            this.f28947for = this.f28946do.readObject();
        }
        ASN1SetParser aSN1SetParser = (ASN1SetParser) this.f28947for;
        this.f28947for = null;
        return aSN1SetParser;
    }
}
