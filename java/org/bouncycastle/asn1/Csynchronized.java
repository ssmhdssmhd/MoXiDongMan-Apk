package org.bouncycastle.asn1;

import android.support.v4.Cimport;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* renamed from: org.bouncycastle.asn1.synchronized, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csynchronized extends Ctry {
    public Csynchronized(Cimport cimport) {
        super(cimport);
    }

    public Csynchronized(Ccatch ccatch, Cgoto cgoto, Cfinal cfinal, int i, Cfinal cfinal2) {
        super(ccatch, cgoto, cfinal, i, cfinal2);
    }

    public Csynchronized(Ccatch ccatch, Cgoto cgoto, Cfinal cfinal, u uVar) {
        this(ccatch, cgoto, cfinal, uVar.getTagNo(), uVar.toASN1Primitive());
    }

    @Override // org.bouncycastle.asn1.Ctry, org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() throws IOException {
        return getEncoded().length;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Ccatch ccatch = this.f29204do;
        if (ccatch != null) {
            byteArrayOutputStream.write(ccatch.m32764do(ASN1Encoding.DER));
        }
        Cgoto cgoto = this.f29206if;
        if (cgoto != null) {
            byteArrayOutputStream.write(cgoto.m32764do(ASN1Encoding.DER));
        }
        Cfinal cfinal = this.f29205for;
        if (cfinal != null) {
            byteArrayOutputStream.write(cfinal.m32764do(ASN1Encoding.DER));
        }
        byteArrayOutputStream.write(new u(true, this.f29207new, this.f29208try).m32764do(ASN1Encoding.DER));
        cconst.m32906goto(32, 8, byteArrayOutputStream.toByteArray());
    }
}
