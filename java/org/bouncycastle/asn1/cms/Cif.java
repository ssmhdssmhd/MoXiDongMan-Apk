package org.bouncycastle.asn1.cms;

import android.support.v4.b1;
import android.support.v4.o81;
import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.ASN1SetParser;
import org.bouncycastle.asn1.ASN1TaggedObjectParser;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;

/* renamed from: org.bouncycastle.asn1.cms.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: do, reason: not valid java name */
    private ASN1SequenceParser f28966do;

    /* renamed from: for, reason: not valid java name */
    private ASN1Encodable f28967for;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f28968if;

    /* renamed from: new, reason: not valid java name */
    private boolean f28969new;

    public Cif(ASN1SequenceParser aSN1SequenceParser) throws IOException {
        this.f28966do = aSN1SequenceParser;
        this.f28968if = Cgoto.m33040catch(aSN1SequenceParser.readObject());
    }

    /* renamed from: case, reason: not valid java name */
    public o81 m32879case() throws IOException {
        this.f28969new = true;
        if (this.f28967for == null) {
            this.f28967for = this.f28966do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28967for;
        if (!(aSN1Encodable instanceof ASN1TaggedObjectParser) || ((ASN1TaggedObjectParser) aSN1Encodable).getTagNo() != 0) {
            return null;
        }
        ASN1SequenceParser aSN1SequenceParser = (ASN1SequenceParser) ((ASN1TaggedObjectParser) this.f28967for).getObjectParser(16, false);
        this.f28967for = null;
        return o81.m5502case(aSN1SequenceParser.toASN1Primitive());
    }

    /* renamed from: do, reason: not valid java name */
    public ASN1SetParser m32880do() throws IOException {
        if (this.f28967for == null) {
            this.f28967for = this.f28966do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28967for;
        if (!(aSN1Encodable instanceof ASN1TaggedObjectParser)) {
            return null;
        }
        this.f28967for = null;
        return (ASN1SetParser) ((ASN1TaggedObjectParser) aSN1Encodable).getObjectParser(17, false);
    }

    /* renamed from: else, reason: not valid java name */
    public ASN1SetParser m32881else() throws IOException {
        if (!this.f28969new) {
            m32879case();
        }
        if (this.f28967for == null) {
            this.f28967for = this.f28966do.readObject();
        }
        ASN1SetParser aSN1SetParser = (ASN1SetParser) this.f28967for;
        this.f28967for = null;
        return aSN1SetParser;
    }

    /* renamed from: for, reason: not valid java name */
    public Cnew m32882for() throws IOException {
        if (this.f28967for == null) {
            this.f28967for = this.f28966do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28967for;
        if (aSN1Encodable == null) {
            return null;
        }
        this.f28967for = null;
        return new Cnew((ASN1SequenceParser) aSN1Encodable);
    }

    /* renamed from: goto, reason: not valid java name */
    public ASN1SetParser m32883goto() throws IOException {
        if (this.f28967for == null) {
            this.f28967for = this.f28966do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28967for;
        if (aSN1Encodable == null) {
            return null;
        }
        this.f28967for = null;
        return (ASN1SetParser) ((ASN1TaggedObjectParser) aSN1Encodable).getObjectParser(17, false);
    }

    /* renamed from: if, reason: not valid java name */
    public b1 m32884if() throws IOException {
        if (this.f28967for == null) {
            this.f28967for = this.f28966do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28967for;
        if (!(aSN1Encodable instanceof ASN1TaggedObjectParser)) {
            return null;
        }
        b1 b1VarM417case = b1.m417case((Cimport) aSN1Encodable.toASN1Primitive(), false);
        this.f28967for = null;
        return b1VarM417case;
    }

    /* renamed from: new, reason: not valid java name */
    public Cclass m32885new() throws IOException {
        if (this.f28967for == null) {
            this.f28967for = this.f28966do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28967for;
        this.f28967for = null;
        return Cclass.m32796catch(aSN1Encodable.toASN1Primitive());
    }

    /* renamed from: this, reason: not valid java name */
    public Cgoto m32886this() {
        return this.f28968if;
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m32887try() throws IOException {
        if (this.f28967for == null) {
            this.f28967for = this.f28966do.readObject();
        }
        ASN1Encodable aSN1Encodable = this.f28967for;
        if (aSN1Encodable == null) {
            return null;
        }
        this.f28967for = null;
        return b1.m418try(((ASN1SequenceParser) aSN1Encodable).toASN1Primitive());
    }
}
