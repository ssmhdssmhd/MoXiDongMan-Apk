package org.bouncycastle.asn1;

import android.support.v4.Creturn;
import java.io.IOException;
import java.util.Enumeration;

/* loaded from: classes3.dex */
class j0 implements Enumeration {

    /* renamed from: do, reason: not valid java name */
    private Celse f29101do;

    /* renamed from: if, reason: not valid java name */
    private Object f29102if = m33073do();

    public j0(byte[] bArr) {
        this.f29101do = new Celse(bArr, true);
    }

    /* renamed from: do, reason: not valid java name */
    private Object m33073do() {
        try {
            return this.f29101do.m33002break();
        } catch (IOException e) {
            throw new Creturn("malformed DER construction: " + e, e);
        }
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        return this.f29102if != null;
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        Object obj = this.f29102if;
        this.f29102if = m33073do();
        return obj;
    }
}
