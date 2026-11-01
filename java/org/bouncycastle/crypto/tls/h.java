package org.bouncycastle.crypto.tls;

import android.support.v4.q3;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Hashtable;

/* loaded from: classes3.dex */
public final class h {

    /* renamed from: case, reason: not valid java name */
    private byte[] f30612case;

    /* renamed from: do, reason: not valid java name */
    private int f30613do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f30614else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f30615for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f30616goto;

    /* renamed from: if, reason: not valid java name */
    private short f30617if;

    /* renamed from: new, reason: not valid java name */
    private Cbreak f30618new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f30619try;

    /* renamed from: org.bouncycastle.crypto.tls.h$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private int f30621do = -1;

        /* renamed from: if, reason: not valid java name */
        private short f30625if = -1;

        /* renamed from: for, reason: not valid java name */
        private byte[] f30623for = null;

        /* renamed from: new, reason: not valid java name */
        private Cbreak f30626new = null;

        /* renamed from: try, reason: not valid java name */
        private byte[] f30627try = null;

        /* renamed from: case, reason: not valid java name */
        private byte[] f30620case = null;

        /* renamed from: else, reason: not valid java name */
        private byte[] f30622else = null;

        /* renamed from: goto, reason: not valid java name */
        private boolean f30624goto = false;

        /* renamed from: catch, reason: not valid java name */
        private void m34140catch(boolean z, String str) {
            if (z) {
                return;
            }
            throw new IllegalStateException("Required session parameter '" + str + "' not configured");
        }

        /* renamed from: break, reason: not valid java name */
        public Cif m34141break(Hashtable hashtable) throws IOException {
            if (hashtable == null) {
                this.f30622else = null;
            } else {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                a0.t(byteArrayOutputStream, hashtable);
                this.f30622else = byteArrayOutputStream.toByteArray();
            }
            return this;
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m34142case(byte[] bArr) {
            this.f30627try = bArr;
            return this;
        }

        /* renamed from: do, reason: not valid java name */
        public h m34143do() {
            m34140catch(this.f30621do >= 0, "cipherSuite");
            m34140catch(this.f30625if >= 0, "compressionAlgorithm");
            m34140catch(this.f30623for != null, "masterSecret");
            return new h(this.f30621do, this.f30625if, this.f30623for, this.f30626new, this.f30627try, this.f30620case, this.f30622else, this.f30624goto);
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m34144else(Cbreak cbreak) {
            this.f30626new = cbreak;
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m34145for(short s) {
            this.f30625if = s;
            return this;
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m34146goto(byte[] bArr) {
            this.f30627try = bArr;
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m34147if(int i) {
            this.f30621do = i;
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cif m34148new(boolean z) {
            this.f30624goto = z;
            return this;
        }

        /* renamed from: this, reason: not valid java name */
        public Cif m34149this(byte[] bArr) {
            this.f30620case = bArr;
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cif m34150try(byte[] bArr) {
            this.f30623for = bArr;
            return this;
        }
    }

    private h(int i, short s, byte[] bArr, Cbreak cbreak, byte[] bArr2, byte[] bArr3, byte[] bArr4, boolean z) {
        this.f30619try = null;
        this.f30612case = null;
        this.f30613do = i;
        this.f30617if = s;
        this.f30615for = q3.m6371final(bArr);
        this.f30618new = cbreak;
        this.f30619try = q3.m6371final(bArr2);
        this.f30612case = q3.m6371final(bArr3);
        this.f30614else = bArr4;
        this.f30616goto = z;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m34129break() {
        return this.f30616goto;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m34130case() {
        return this.f30619try;
    }

    /* renamed from: catch, reason: not valid java name */
    public Hashtable m34131catch() throws IOException {
        if (this.f30614else == null) {
            return null;
        }
        return a0.f(new ByteArrayInputStream(this.f30614else));
    }

    /* renamed from: do, reason: not valid java name */
    public void m34132do() {
        byte[] bArr = this.f30615for;
        if (bArr != null) {
            q3.c(bArr, (byte) 0);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public Cbreak m34133else() {
        return this.f30618new;
    }

    /* renamed from: for, reason: not valid java name */
    public int m34134for() {
        return this.f30613do;
    }

    /* renamed from: goto, reason: not valid java name */
    public byte[] m34135goto() {
        return this.f30619try;
    }

    /* renamed from: if, reason: not valid java name */
    public h m34136if() {
        return new h(this.f30613do, this.f30617if, this.f30615for, this.f30618new, this.f30619try, this.f30612case, this.f30614else, this.f30616goto);
    }

    /* renamed from: new, reason: not valid java name */
    public short m34137new() {
        return this.f30617if;
    }

    /* renamed from: this, reason: not valid java name */
    public byte[] m34138this() {
        return this.f30612case;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m34139try() {
        return this.f30615for;
    }
}
