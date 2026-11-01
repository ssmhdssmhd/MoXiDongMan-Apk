package org.bouncycastle.asn1;

import android.support.v4.Cimport;
import android.support.v4.Cnative;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: org.bouncycastle.asn1.while, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cwhile {

    /* renamed from: do, reason: not valid java name */
    private final InputStream f29213do;

    /* renamed from: for, reason: not valid java name */
    private final byte[][] f29214for;

    /* renamed from: if, reason: not valid java name */
    private final int f29215if;

    public Cwhile(InputStream inputStream) {
        this(inputStream, m0.m33083for(inputStream));
    }

    public Cwhile(InputStream inputStream, int i) {
        this.f29213do = inputStream;
        this.f29215if = i;
        this.f29214for = new byte[11][];
    }

    public Cwhile(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }

    /* renamed from: case, reason: not valid java name */
    private void m33182case(boolean z) {
        InputStream inputStream = this.f29213do;
        if (inputStream instanceof i0) {
            ((i0) inputStream).m33052new(z);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public ASN1Encodable m33183do(boolean z, int i) throws IOException {
        InputStream inputStream = this.f29213do;
        if (inputStream instanceof i0) {
            if (z) {
                return m33185if(i);
            }
            throw new IOException("indefinite-length primitive encoding encountered");
        }
        if (z) {
            if (i == 4) {
                return new Cextends(this);
            }
            if (i == 16) {
                return new p(this);
            }
            if (i == 17) {
                return new r(this);
            }
        } else {
            if (i == 4) {
                return new k((h0) inputStream);
            }
            if (i == 16) {
                throw new Cnative("sets must use constructed encoding (see X.690 8.11.1/8.12.1)");
            }
            if (i == 17) {
                throw new Cnative("sequences must use constructed encoding (see X.690 8.9.1/8.10.1)");
            }
        }
        throw new Cnative("implicit tagging not implemented");
    }

    /* renamed from: for, reason: not valid java name */
    public ASN1Encodable m33184for() throws IOException {
        int i = this.f29213do.read();
        if (i == -1) {
            return null;
        }
        m33182case(false);
        int iM32998catch = Celse.m32998catch(this.f29213do, i);
        boolean z = (i & 32) != 0;
        int iM33000this = Celse.m33000this(this.f29213do, this.f29215if);
        if (iM33000this < 0) {
            if (!z) {
                throw new IOException("indefinite-length primitive encoding encountered");
            }
            Cwhile cwhile = new Cwhile(new i0(this.f29213do, this.f29215if), this.f29215if);
            return (i & 64) != 0 ? new Creturn(iM32998catch, cwhile) : (i & 128) != 0 ? new Cinterface(true, iM32998catch, cwhile) : cwhile.m33185if(iM32998catch);
        }
        h0 h0Var = new h0(this.f29213do, iM33000this);
        if ((i & 64) != 0) {
            return new z(z, iM32998catch, h0Var.m33046for());
        }
        if ((i & 128) != 0) {
            return new Cinterface(z, iM32998catch, new Cwhile(h0Var));
        }
        if (!z) {
            if (iM32998catch == 4) {
                return new k(h0Var);
            }
            try {
                return Celse.m32999new(iM32998catch, h0Var, this.f29214for);
            } catch (IllegalArgumentException e) {
                throw new Cnative("corrupted stream detected", e);
            }
        }
        if (iM32998catch == 4) {
            return new Cextends(new Cwhile(h0Var));
        }
        if (iM32998catch == 8) {
            return new a(new Cwhile(h0Var));
        }
        if (iM32998catch == 16) {
            return new p(new Cwhile(h0Var));
        }
        if (iM32998catch == 17) {
            return new r(new Cwhile(h0Var));
        }
        throw new IOException("unknown tag " + iM32998catch + " encountered");
    }

    /* renamed from: if, reason: not valid java name */
    public ASN1Encodable m33185if(int i) throws IOException {
        if (i == 4) {
            return new Cextends(this);
        }
        if (i == 8) {
            return new a(this);
        }
        if (i == 16) {
            return new Cabstract(this);
        }
        if (i == 17) {
            return new Cstrictfp(this);
        }
        throw new Cnative("unknown BER object encountered: 0x" + Integer.toHexString(i));
    }

    /* renamed from: new, reason: not valid java name */
    public Cfinal m33186new(boolean z, int i) throws IOException {
        if (!z) {
            return new u(false, i, new j(((h0) this.f29213do).m33046for()));
        }
        Cimport cimportM33187try = m33187try();
        return this.f29213do instanceof i0 ? cimportM33187try.m3519new() == 1 ? new Cvolatile(true, i, cimportM33187try.m3517for(0)) : new Cvolatile(false, i, Cstatic.m33127do(cimportM33187try)) : cimportM33187try.m3519new() == 1 ? new u(true, i, cimportM33187try.m3517for(0)) : new u(false, i, b.m32761do(cimportM33187try));
    }

    /* renamed from: try, reason: not valid java name */
    public Cimport m33187try() throws IOException {
        Cimport cimport = new Cimport();
        while (true) {
            ASN1Encodable aSN1EncodableM33184for = m33184for();
            if (aSN1EncodableM33184for == null) {
                return cimport;
            }
            cimport.m3516do(aSN1EncodableM33184for instanceof InMemoryRepresentable ? ((InMemoryRepresentable) aSN1EncodableM33184for).getLoadedObject() : aSN1EncodableM33184for.toASN1Primitive());
        }
    }
}
