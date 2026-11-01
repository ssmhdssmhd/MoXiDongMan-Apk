package org.bouncycastle.asn1;

import java.io.InputStream;

/* loaded from: classes3.dex */
abstract class l0 extends InputStream {

    /* renamed from: do, reason: not valid java name */
    public final InputStream f29105do;

    /* renamed from: if, reason: not valid java name */
    private int f29106if;

    public l0(InputStream inputStream, int i) {
        this.f29105do = inputStream;
        this.f29106if = i;
    }

    /* renamed from: do */
    public int mo33045do() {
        return this.f29106if;
    }

    /* renamed from: if, reason: not valid java name */
    public void m33077if(boolean z) {
        InputStream inputStream = this.f29105do;
        if (inputStream instanceof i0) {
            ((i0) inputStream).m33052new(z);
        }
    }
}
