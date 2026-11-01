package org.bouncycastle.crypto.tls;

import android.support.v4.cz1;
import android.support.v4.n72;
import android.support.v4.r72;
import androidx.core.view.InputDeviceCompat;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes3.dex */
class b {

    /* renamed from: default, reason: not valid java name */
    public static final int f30502default = 3;

    /* renamed from: return, reason: not valid java name */
    private static int f30503return = 16384;

    /* renamed from: static, reason: not valid java name */
    public static final int f30504static = 5;

    /* renamed from: switch, reason: not valid java name */
    public static final int f30505switch = 0;

    /* renamed from: throws, reason: not valid java name */
    public static final int f30506throws = 1;

    /* renamed from: break, reason: not valid java name */
    private Cif f30507break;

    /* renamed from: case, reason: not valid java name */
    private TlsCompression f30508case;

    /* renamed from: catch, reason: not valid java name */
    private Cif f30509catch;

    /* renamed from: do, reason: not valid java name */
    private a0 f30512do;

    /* renamed from: for, reason: not valid java name */
    private OutputStream f30515for;

    /* renamed from: if, reason: not valid java name */
    private InputStream f30517if;

    /* renamed from: import, reason: not valid java name */
    private int f30518import;

    /* renamed from: native, reason: not valid java name */
    private int f30519native;

    /* renamed from: public, reason: not valid java name */
    private int f30521public;

    /* renamed from: try, reason: not valid java name */
    private TlsCompression f30525try;

    /* renamed from: new, reason: not valid java name */
    private TlsCompression f30520new = null;

    /* renamed from: else, reason: not valid java name */
    private TlsCipher f30513else = null;

    /* renamed from: goto, reason: not valid java name */
    private TlsCipher f30516goto = null;

    /* renamed from: this, reason: not valid java name */
    private TlsCipher f30523this = null;

    /* renamed from: class, reason: not valid java name */
    private ByteArrayOutputStream f30510class = new ByteArrayOutputStream();

    /* renamed from: const, reason: not valid java name */
    private TlsHandshakeHash f30511const = null;

    /* renamed from: final, reason: not valid java name */
    private cz1 f30514final = new Cdo();

    /* renamed from: super, reason: not valid java name */
    private a f30522super = null;

    /* renamed from: throw, reason: not valid java name */
    private a f30524throw = null;

    /* renamed from: while, reason: not valid java name */
    private boolean f30526while = true;

    /* renamed from: org.bouncycastle.crypto.tls.b$do, reason: invalid class name */
    public class Cdo extends cz1 {
        public Cdo() {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            b.this.f30511const.update(bArr, i, i2);
        }
    }

    /* renamed from: org.bouncycastle.crypto.tls.b$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private long f30528do;

        /* renamed from: if, reason: not valid java name */
        private boolean f30529if;

        private Cif() {
            this.f30528do = 0L;
            this.f30529if = false;
        }

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        /* renamed from: do, reason: not valid java name */
        public synchronized long m34010do(short s) throws n72 {
            long j;
            if (this.f30529if) {
                throw new n72(s);
            }
            j = this.f30528do;
            long j2 = 1 + j;
            this.f30528do = j2;
            if (j2 == 0) {
                this.f30529if = true;
            }
            return j;
        }
    }

    public b(a0 a0Var, InputStream inputStream, OutputStream outputStream) {
        Cdo cdo = null;
        this.f30525try = null;
        this.f30508case = null;
        this.f30507break = new Cif(cdo);
        this.f30509catch = new Cif(cdo);
        this.f30512do = a0Var;
        this.f30517if = inputStream;
        this.f30515for = outputStream;
        r72 r72Var = new r72();
        this.f30525try = r72Var;
        this.f30508case = r72Var;
    }

    /* renamed from: goto, reason: not valid java name */
    private byte[] m33986goto() {
        byte[] byteArray = this.f30510class.toByteArray();
        this.f30510class.reset();
        return byteArray;
    }

    /* renamed from: if, reason: not valid java name */
    private static void m33987if(int i, int i2, short s) throws IOException {
        if (i > i2) {
            throw new n72(s);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static void m33988new(short s, short s2) throws IOException {
        switch (s) {
            case 20:
            case 21:
            case 22:
            case 23:
                return;
            default:
                throw new n72(s2);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public OutputStream m33989break() {
        return this.f30514final;
    }

    /* renamed from: case, reason: not valid java name */
    public void m33990case() throws IOException {
        TlsCompression tlsCompression = this.f30525try;
        TlsCompression tlsCompression2 = this.f30520new;
        if (tlsCompression == tlsCompression2 && this.f30508case == tlsCompression2) {
            TlsCipher tlsCipher = this.f30516goto;
            TlsCipher tlsCipher2 = this.f30513else;
            if (tlsCipher == tlsCipher2 && this.f30523this == tlsCipher2) {
                this.f30520new = null;
                this.f30513else = null;
                return;
            }
        }
        throw new n72((short) 40);
    }

    /* renamed from: catch, reason: not valid java name */
    public int m33991catch() {
        return this.f30518import;
    }

    /* renamed from: class, reason: not valid java name */
    public a m33992class() {
        return this.f30522super;
    }

    /* renamed from: const, reason: not valid java name */
    public void m33993const(TlsContext tlsContext) {
        x xVar = new x(tlsContext);
        this.f30516goto = xVar;
        this.f30523this = xVar;
        Ccontinue ccontinue = new Ccontinue();
        this.f30511const = ccontinue;
        ccontinue.init(tlsContext);
        m34001return(f30503return);
    }

    /* renamed from: default, reason: not valid java name */
    public void m33994default(short s, byte[] bArr, int i, int i2) throws IOException {
        byte[] bArrEncodePlaintext;
        if (this.f30524throw == null) {
            return;
        }
        m33988new(s, (short) 80);
        m33987if(i2, this.f30518import, (short) 80);
        if (i2 < 1 && s != 23) {
            throw new n72((short) 80);
        }
        OutputStream outputStreamCompress = this.f30508case.compress(this.f30510class);
        long jM34010do = this.f30509catch.m34010do((short) 80);
        if (outputStreamCompress == this.f30510class) {
            bArrEncodePlaintext = this.f30523this.encodePlaintext(jM34010do, s, bArr, i, i2);
        } else {
            outputStreamCompress.write(bArr, i, i2);
            outputStreamCompress.flush();
            byte[] bArrM33986goto = m33986goto();
            m33987if(bArrM33986goto.length, i2 + 1024, (short) 80);
            bArrEncodePlaintext = this.f30523this.encodePlaintext(jM34010do, s, bArrM33986goto, 0, bArrM33986goto.length);
        }
        m33987if(bArrEncodePlaintext.length, this.f30521public, (short) 80);
        byte[] bArr2 = new byte[bArrEncodePlaintext.length + 5];
        l0.I0(s, bArr2, 0);
        l0.O0(this.f30524throw, bArr2, 1);
        l0.s0(bArrEncodePlaintext.length, bArr2, 3);
        System.arraycopy(bArrEncodePlaintext, 0, bArr2, 5, bArrEncodePlaintext.length);
        this.f30515for.write(bArr2);
        this.f30515for.flush();
    }

    /* renamed from: else, reason: not valid java name */
    public void m33995else() throws IOException {
        this.f30515for.flush();
    }

    /* renamed from: final, reason: not valid java name */
    public void m33996final() {
        this.f30511const = this.f30511const.notifyPRFDetermined();
    }

    /* renamed from: for, reason: not valid java name */
    public void m33997for(byte[] bArr) throws IOException {
        m33988new(l0.d0(bArr, 0), (short) 10);
        if (this.f30526while) {
            a aVarG0 = l0.g0(bArr, 1);
            a aVar = this.f30522super;
            if (aVar != null && !aVarG0.m33939do(aVar)) {
                throw new n72((short) 47);
            }
        } else if ((l0.i0(bArr, 1) & InputDeviceCompat.SOURCE_ANY) != 768) {
            throw new n72((short) 47);
        }
        m33987if(l0.U(bArr, 3), this.f30521public, (short) 22);
    }

    /* renamed from: import, reason: not valid java name */
    public void m33998import() {
        try {
            this.f30517if.close();
        } catch (IOException unused) {
        }
        try {
            this.f30515for.close();
        } catch (IOException unused2) {
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m33999native() throws IOException {
        TlsCipher tlsCipher;
        TlsCompression tlsCompression = this.f30520new;
        if (tlsCompression == null || (tlsCipher = this.f30513else) == null) {
            throw new n72((short) 40);
        }
        this.f30508case = tlsCompression;
        this.f30523this = tlsCipher;
        this.f30509catch = new Cif(null);
    }

    /* renamed from: public, reason: not valid java name */
    public void m34000public(TlsCompression tlsCompression, TlsCipher tlsCipher) {
        this.f30520new = tlsCompression;
        this.f30513else = tlsCipher;
    }

    /* renamed from: return, reason: not valid java name */
    public void m34001return(int i) {
        this.f30518import = i;
        int i2 = i + 1024;
        this.f30519native = i2;
        this.f30521public = i2 + 1024;
    }

    /* renamed from: static, reason: not valid java name */
    public void m34002static(a aVar) {
        this.f30522super = aVar;
    }

    /* renamed from: super, reason: not valid java name */
    public TlsHandshakeHash m34003super() {
        TlsHandshakeHash tlsHandshakeHash = this.f30511const;
        this.f30511const = tlsHandshakeHash.stopTracking();
        return tlsHandshakeHash;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m34004switch(boolean z) {
        this.f30526while = z;
    }

    /* renamed from: this, reason: not valid java name */
    public TlsHandshakeHash m34005this() {
        return this.f30511const;
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m34006throw() throws IOException {
        byte[] bArrL = l0.L(5, this.f30517if);
        if (bArrL == null) {
            return false;
        }
        short sD0 = l0.d0(bArrL, 0);
        m33988new(sD0, (short) 10);
        if (this.f30526while) {
            a aVarG0 = l0.g0(bArrL, 1);
            a aVar = this.f30522super;
            if (aVar == null) {
                this.f30522super = aVarG0;
            } else if (!aVarG0.m33939do(aVar)) {
                throw new n72((short) 47);
            }
        } else if ((l0.i0(bArrL, 1) & InputDeviceCompat.SOURCE_ANY) != 768) {
            throw new n72((short) 47);
        }
        int iU = l0.U(bArrL, 3);
        m33987if(iU, this.f30521public, (short) 22);
        byte[] bArrM34008try = m34008try(sD0, this.f30517if, iU);
        this.f30512do.b(sD0, bArrM34008try, 0, bArrM34008try.length);
        return true;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m34007throws(a aVar) {
        this.f30524throw = aVar;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m34008try(short s, InputStream inputStream, int i) throws IOException {
        byte[] bArrO = l0.O(i, inputStream);
        byte[] bArrDecodeCiphertext = this.f30516goto.decodeCiphertext(this.f30507break.m34010do((short) 10), s, bArrO, 0, bArrO.length);
        m33987if(bArrDecodeCiphertext.length, this.f30519native, (short) 22);
        OutputStream outputStreamDecompress = this.f30525try.decompress(this.f30510class);
        if (outputStreamDecompress != this.f30510class) {
            outputStreamDecompress.write(bArrDecodeCiphertext, 0, bArrDecodeCiphertext.length);
            outputStreamDecompress.flush();
            bArrDecodeCiphertext = m33986goto();
        }
        m33987if(bArrDecodeCiphertext.length, this.f30518import, (short) 30);
        if (bArrDecodeCiphertext.length >= 1 || s == 23) {
            return bArrDecodeCiphertext;
        }
        throw new n72((short) 47);
    }

    /* renamed from: while, reason: not valid java name */
    public void m34009while() throws IOException {
        TlsCipher tlsCipher;
        TlsCompression tlsCompression = this.f30520new;
        if (tlsCompression == null || (tlsCipher = this.f30513else) == null) {
            throw new n72((short) 40);
        }
        this.f30525try = tlsCompression;
        this.f30516goto = tlsCipher;
        this.f30507break = new Cif(null);
    }
}
