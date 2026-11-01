package org.bouncycastle.crypto.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.crypto.util.super, reason: invalid class name */
/* loaded from: classes3.dex */
class Csuper {

    /* renamed from: do, reason: not valid java name */
    private final ByteArrayOutputStream f30893do = new ByteArrayOutputStream();

    /* renamed from: do, reason: not valid java name */
    public byte[] m34501do() {
        return this.f30893do.toByteArray();
    }

    /* renamed from: for, reason: not valid java name */
    public void m34502for(long j) {
        this.f30893do.write((int) ((j >>> 24) & 255));
        this.f30893do.write((int) ((j >>> 16) & 255));
        this.f30893do.write((int) ((j >>> 8) & 255));
        this.f30893do.write((int) (j & 255));
    }

    /* renamed from: if, reason: not valid java name */
    public void m34503if(byte[] bArr) {
        m34502for(bArr.length);
        try {
            this.f30893do.write(bArr);
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage(), e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m34504new(byte[] bArr) {
        try {
            this.f30893do.write(bArr);
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage(), e);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m34505try(String str) {
        m34503if(Cfor.m36358goto(str));
    }
}
