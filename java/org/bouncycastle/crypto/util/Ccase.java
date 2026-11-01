package org.bouncycastle.crypto.util;

import android.support.v4.q3;
import java.io.IOException;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.j;

/* renamed from: org.bouncycastle.crypto.util.case, reason: invalid class name */
/* loaded from: classes3.dex */
class Ccase {

    /* renamed from: org.bouncycastle.crypto.util.case$do, reason: invalid class name */
    public static class Cdo extends IllegalStateException {
        public final /* synthetic */ IOException val$e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(String str, IOException iOException) {
            super(str);
            this.val$e = iOException;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            return this.val$e;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Cclass m34464do(byte[] bArr) {
        return bArr == null ? new j(new byte[0]) : new j(q3.m6371final(bArr));
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m34465if(Cfinal cfinal) {
        try {
            return cfinal.getEncoded();
        } catch (IOException e) {
            throw new Cdo("Cannot get encoding: " + e.getMessage(), e);
        }
    }
}
