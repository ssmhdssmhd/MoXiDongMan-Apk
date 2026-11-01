package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class o extends e {

    /* renamed from: try, reason: not valid java name */
    private final ByteArrayOutputStream f29113try;

    public o(OutputStream outputStream) throws IOException {
        super(outputStream);
        this.f29113try = new ByteArrayOutputStream();
    }

    public o(OutputStream outputStream, int i, boolean z) throws IOException {
        super(outputStream, i, z);
        this.f29113try = new ByteArrayOutputStream();
    }

    /* renamed from: case, reason: not valid java name */
    public void m33096case() throws IOException {
        m32924if(48, this.f29113try.toByteArray());
    }

    @Override // android.support.v4.Cpublic
    /* renamed from: do */
    public OutputStream mo6222do() {
        return this.f29113try;
    }

    /* renamed from: try, reason: not valid java name */
    public void m33097try(ASN1Encodable aSN1Encodable) throws IOException {
        aSN1Encodable.toASN1Primitive().mo32750try(new l(this.f29113try));
    }
}
