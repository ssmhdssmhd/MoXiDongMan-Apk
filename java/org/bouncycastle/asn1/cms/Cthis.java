package org.bouncycastle.asn1.cms;

import android.support.v4.n80;
import android.support.v4.wz0;
import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1OctetStringParser;
import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.g;

/* renamed from: org.bouncycastle.asn1.cms.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis {

    /* renamed from: case, reason: not valid java name */
    private ASN1SequenceParser f28972case;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f28973do;

    /* renamed from: for, reason: not valid java name */
    private wz0 f28974for;

    /* renamed from: if, reason: not valid java name */
    private g f28975if;

    /* renamed from: new, reason: not valid java name */
    private ASN1OctetStringParser f28976new;

    /* renamed from: try, reason: not valid java name */
    private n80 f28977try;

    private Cthis(ASN1SequenceParser aSN1SequenceParser) throws IOException {
        this.f28972case = aSN1SequenceParser;
        this.f28973do = Cgoto.m33040catch(aSN1SequenceParser.readObject());
        ASN1Encodable object = aSN1SequenceParser.readObject();
        if (object instanceof g) {
            this.f28975if = g.m33023catch(object);
            object = aSN1SequenceParser.readObject();
        }
        if ((object instanceof wz0) || (object instanceof ASN1SequenceParser)) {
            this.f28974for = wz0.m9314try(object.toASN1Primitive());
            object = aSN1SequenceParser.readObject();
        }
        if (object instanceof ASN1OctetStringParser) {
            this.f28976new = (ASN1OctetStringParser) object;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Cthis m32890for(Object obj) throws IOException {
        if (obj instanceof Csuper) {
            return new Cthis(((Csuper) obj).m33132throw());
        }
        if (obj instanceof ASN1SequenceParser) {
            return new Cthis((ASN1SequenceParser) obj);
        }
        return null;
    }

    /* renamed from: do, reason: not valid java name */
    public ASN1OctetStringParser m32891do() {
        return this.f28976new;
    }

    /* renamed from: if, reason: not valid java name */
    public g m32892if() {
        return this.f28975if;
    }

    /* renamed from: new, reason: not valid java name */
    public wz0 m32893new() {
        return this.f28974for;
    }

    /* renamed from: try, reason: not valid java name */
    public n80 m32894try() throws IOException {
        if (this.f28977try == null) {
            this.f28977try = n80.m5121new(this.f28972case.readObject().toASN1Primitive());
        }
        return this.f28977try;
    }
}
