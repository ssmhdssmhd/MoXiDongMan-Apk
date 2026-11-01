package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;

/* renamed from: org.bouncycastle.asn1.protected, reason: invalid class name */
/* loaded from: classes3.dex */
class Cprotected extends InputStream {

    /* renamed from: do, reason: not valid java name */
    private final Cwhile f29120do;

    /* renamed from: for, reason: not valid java name */
    private InputStream f29121for;

    /* renamed from: if, reason: not valid java name */
    private boolean f29122if = true;

    public Cprotected(Cwhile cwhile) {
        this.f29120do = cwhile;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        ASN1OctetStringParser aSN1OctetStringParser;
        if (this.f29121for == null) {
            if (!this.f29122if || (aSN1OctetStringParser = (ASN1OctetStringParser) this.f29120do.m33184for()) == null) {
                return -1;
            }
            this.f29122if = false;
            this.f29121for = aSN1OctetStringParser.getOctetStream();
        }
        while (true) {
            int i = this.f29121for.read();
            if (i >= 0) {
                return i;
            }
            ASN1OctetStringParser aSN1OctetStringParser2 = (ASN1OctetStringParser) this.f29120do.m33184for();
            if (aSN1OctetStringParser2 == null) {
                this.f29121for = null;
                return -1;
            }
            this.f29121for = aSN1OctetStringParser2.getOctetStream();
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        ASN1OctetStringParser aSN1OctetStringParser;
        int i3 = 0;
        if (this.f29121for == null) {
            if (!this.f29122if || (aSN1OctetStringParser = (ASN1OctetStringParser) this.f29120do.m33184for()) == null) {
                return -1;
            }
            this.f29122if = false;
            this.f29121for = aSN1OctetStringParser.getOctetStream();
        }
        while (true) {
            int i4 = this.f29121for.read(bArr, i + i3, i2 - i3);
            if (i4 >= 0) {
                i3 += i4;
                if (i3 == i2) {
                    return i3;
                }
            } else {
                ASN1OctetStringParser aSN1OctetStringParser2 = (ASN1OctetStringParser) this.f29120do.m33184for();
                if (aSN1OctetStringParser2 == null) {
                    this.f29121for = null;
                    if (i3 < 1) {
                        return -1;
                    }
                    return i3;
                }
                this.f29121for = aSN1OctetStringParser2.getOctetStream();
            }
        }
    }
}
