package org.bouncycastle.crypto.util;

import android.support.v4.b1;
import java.io.IOException;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.u;

/* renamed from: org.bouncycastle.crypto.util.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry {

    /* renamed from: do, reason: not valid java name */
    private final n f30906do;

    /* renamed from: org.bouncycastle.crypto.util.try$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private final b1 f30907do;

        /* renamed from: for, reason: not valid java name */
        private final Cclass f30908for;

        /* renamed from: if, reason: not valid java name */
        private final Cclass f30909if;

        /* renamed from: new, reason: not valid java name */
        private Cimport f30910new;

        /* renamed from: try, reason: not valid java name */
        private Cimport f30911try;

        public Cif(b1 b1Var, byte[] bArr, byte[] bArr2) {
            this.f30907do = b1Var;
            this.f30909if = Ccase.m34464do(bArr);
            this.f30908for = Ccase.m34464do(bArr2);
        }

        /* renamed from: do, reason: not valid java name */
        public Ctry m34521do() {
            android.support.v4.Cimport cimport = new android.support.v4.Cimport();
            cimport.m3516do(this.f30907do);
            cimport.m3516do(this.f30909if);
            cimport.m3516do(this.f30908for);
            Cimport cimport2 = this.f30910new;
            if (cimport2 != null) {
                cimport.m3516do(cimport2);
            }
            Cimport cimport3 = this.f30911try;
            if (cimport3 != null) {
                cimport.m3516do(cimport3);
            }
            return new Ctry(new n(cimport));
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m34522for(byte[] bArr) {
            this.f30910new = new u(false, 0, Ccase.m34464do(bArr));
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m34523if(byte[] bArr) {
            this.f30911try = new u(false, 1, Ccase.m34464do(bArr));
            return this;
        }
    }

    private Ctry(n nVar) {
        this.f30906do = nVar;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m34520do() throws IOException {
        return this.f30906do.getEncoded();
    }
}
