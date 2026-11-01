package org.bouncycastle.asn1.cms;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.ASN1SetParser;
import org.bouncycastle.asn1.ASN1TaggedObjectParser;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;

/* renamed from: org.bouncycastle.asn1.cms.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse {

    /* renamed from: do, reason: not valid java name */
    private ASN1SequenceParser f28951do;

    /* renamed from: for, reason: not valid java name */
    private Object f28952for;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f28953if;

    /* renamed from: new, reason: not valid java name */
    private boolean f28954new;

    /* renamed from: try, reason: not valid java name */
    private boolean f28955try;

    private Celse(ASN1SequenceParser aSN1SequenceParser) throws IOException {
        this.f28951do = aSN1SequenceParser;
        this.f28953if = (Cgoto) aSN1SequenceParser.readObject();
    }

    /* renamed from: try, reason: not valid java name */
    public static Celse m32861try(Object obj) throws IOException {
        if (obj instanceof Csuper) {
            return new Celse(((Csuper) obj).m33132throw());
        }
        if (obj instanceof ASN1SequenceParser) {
            return new Celse((ASN1SequenceParser) obj);
        }
        throw new IOException("unknown object encountered: " + obj.getClass().getName());
    }

    /* renamed from: case, reason: not valid java name */
    public ASN1SetParser m32862case() throws IOException {
        if (!this.f28954new || !this.f28955try) {
            throw new IOException("getCerts() and/or getCrls() has not been called.");
        }
        if (this.f28952for == null) {
            this.f28952for = this.f28951do.readObject();
        }
        return (ASN1SetParser) this.f28952for;
    }

    /* renamed from: do, reason: not valid java name */
    public ASN1SetParser m32863do() throws IOException {
        this.f28954new = true;
        ASN1Encodable object = this.f28951do.readObject();
        this.f28952for = object;
        if (!(object instanceof ASN1TaggedObjectParser) || ((ASN1TaggedObjectParser) object).getTagNo() != 0) {
            return null;
        }
        ASN1SetParser aSN1SetParser = (ASN1SetParser) ((ASN1TaggedObjectParser) this.f28952for).getObjectParser(17, false);
        this.f28952for = null;
        return aSN1SetParser;
    }

    /* renamed from: else, reason: not valid java name */
    public Cgoto m32864else() {
        return this.f28953if;
    }

    /* renamed from: for, reason: not valid java name */
    public ASN1SetParser m32865for() throws IOException {
        ASN1Encodable object = this.f28951do.readObject();
        return object instanceof Cthrow ? ((Cthrow) object).m33155import() : (ASN1SetParser) object;
    }

    /* renamed from: if, reason: not valid java name */
    public ASN1SetParser m32866if() throws IOException {
        if (!this.f28954new) {
            throw new IOException("getCerts() has not been called.");
        }
        this.f28955try = true;
        if (this.f28952for == null) {
            this.f28952for = this.f28951do.readObject();
        }
        Object obj = this.f28952for;
        if (!(obj instanceof ASN1TaggedObjectParser) || ((ASN1TaggedObjectParser) obj).getTagNo() != 1) {
            return null;
        }
        ASN1SetParser aSN1SetParser = (ASN1SetParser) ((ASN1TaggedObjectParser) this.f28952for).getObjectParser(17, false);
        this.f28952for = null;
        return aSN1SetParser;
    }

    /* renamed from: new, reason: not valid java name */
    public Cnew m32867new() throws IOException {
        return new Cnew((ASN1SequenceParser) this.f28951do.readObject());
    }
}
