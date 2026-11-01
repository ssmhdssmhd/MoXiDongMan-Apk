package org.bouncycastle.asn1;

import android.support.v4.Cimport;
import android.support.v4.Cnative;
import android.support.v4.a22;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: org.bouncycastle.asn1.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends FilterInputStream implements BERTags {

    /* renamed from: do, reason: not valid java name */
    private final int f29058do;

    /* renamed from: for, reason: not valid java name */
    private final byte[][] f29059for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f29060if;

    public Celse(InputStream inputStream) {
        this(inputStream, m0.m33083for(inputStream));
    }

    public Celse(InputStream inputStream, int i) {
        this(inputStream, i, false);
    }

    public Celse(InputStream inputStream, int i, boolean z) {
        super(inputStream);
        this.f29058do = i;
        this.f29060if = z;
        this.f29059for = new byte[11][];
    }

    public Celse(InputStream inputStream, boolean z) {
        this(inputStream, m0.m33083for(inputStream), z);
    }

    public Celse(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }

    public Celse(byte[] bArr, boolean z) {
        this(new ByteArrayInputStream(bArr), bArr.length, z);
    }

    /* renamed from: case, reason: not valid java name */
    private static byte[] m32997case(h0 h0Var, byte[][] bArr) throws IOException {
        int iMo33045do = h0Var.mo33045do();
        if (h0Var.mo33045do() >= bArr.length) {
            return h0Var.m33046for();
        }
        byte[] bArr2 = bArr[iMo33045do];
        if (bArr2 == null) {
            bArr2 = new byte[iMo33045do];
            bArr[iMo33045do] = bArr2;
        }
        a22.m17case(h0Var, bArr2);
        return bArr2;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m32998catch(InputStream inputStream, int i) throws IOException {
        int i2 = i & 31;
        if (i2 != 31) {
            return i2;
        }
        int i3 = 0;
        int i4 = inputStream.read();
        if ((i4 & 127) == 0) {
            throw new IOException("corrupted stream - invalid high tag number found");
        }
        while (i4 >= 0 && (i4 & 128) != 0) {
            i3 = (i3 | (i4 & 127)) << 7;
            i4 = inputStream.read();
        }
        if (i4 >= 0) {
            return i3 | (i4 & 127);
        }
        throw new EOFException("EOF found inside tag value.");
    }

    /* renamed from: new, reason: not valid java name */
    public static Cfinal m32999new(int i, h0 h0Var, byte[][] bArr) throws IOException {
        if (i == 10) {
            return Cnew.m33092catch(m32997case(h0Var, bArr));
        }
        if (i == 12) {
            return new v(h0Var.m33046for());
        }
        if (i == 30) {
            return new Cimplements(m33001try(h0Var));
        }
        switch (i) {
            case 1:
                return Cfor.m33017catch(m32997case(h0Var, bArr));
            case 2:
                return new Cgoto(h0Var.m33046for(), false);
            case 3:
                return Cif.m33054class(h0Var.mo33045do(), h0Var);
            case 4:
                return new j(h0Var.m33046for());
            case 5:
                return h.f29080do;
            case 6:
                return Ccatch.m32784const(m32997case(h0Var, bArr));
            default:
                switch (i) {
                    case 18:
                        return new i(h0Var.m33046for());
                    case 19:
                        return new m(h0Var.m33046for());
                    case 20:
                        return new s(h0Var.m33046for());
                    case 21:
                        return new x(h0Var.m33046for());
                    case 22:
                        return new g(h0Var.m33046for());
                    case 23:
                        return new Cnative(h0Var.m33046for());
                    case 24:
                        return new Ccase(h0Var.m33046for());
                    case 25:
                        return new f(h0Var.m33046for());
                    case 26:
                        return new y(h0Var.m33046for());
                    case 27:
                        return new c(h0Var.m33046for());
                    case 28:
                        return new w(h0Var.m33046for());
                    default:
                        throw new IOException("unknown tag " + i + " encountered");
                }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static int m33000this(InputStream inputStream, int i) throws IOException {
        int i2 = inputStream.read();
        if (i2 < 0) {
            throw new EOFException("EOF found when length expected");
        }
        if (i2 == 128) {
            return -1;
        }
        if (i2 <= 127) {
            return i2;
        }
        int i3 = i2 & 127;
        if (i3 > 4) {
            throw new IOException("DER length more than 4 bytes: " + i3);
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = inputStream.read();
            if (i6 < 0) {
                throw new EOFException("EOF found reading length");
            }
            i4 = (i4 << 8) + i6;
        }
        if (i4 < 0) {
            throw new IOException("corrupted stream - negative length found");
        }
        if (i4 < i) {
            return i4;
        }
        throw new IOException("corrupted stream - out of bounds length found");
    }

    /* renamed from: try, reason: not valid java name */
    private static char[] m33001try(h0 h0Var) throws IOException {
        int i;
        int iMo33045do = h0Var.mo33045do() / 2;
        char[] cArr = new char[iMo33045do];
        for (int i2 = 0; i2 < iMo33045do; i2++) {
            int i3 = h0Var.read();
            if (i3 < 0 || (i = h0Var.read()) < 0) {
                break;
            }
            cArr[i2] = (char) ((i3 << 8) | (i & 255));
        }
        return cArr;
    }

    /* renamed from: break, reason: not valid java name */
    public Cfinal m33002break() throws IOException {
        int i = read();
        if (i <= 0) {
            if (i != 0) {
                return null;
            }
            throw new IOException("unexpected end-of-contents marker");
        }
        int iM32998catch = m32998catch(this, i);
        boolean z = (i & 32) != 0;
        int iM33006goto = m33006goto();
        if (iM33006goto >= 0) {
            try {
                return m33005for(i, iM32998catch, iM33006goto);
            } catch (IllegalArgumentException e) {
                throw new Cnative("corrupted stream detected", e);
            }
        }
        if (!z) {
            throw new IOException("indefinite-length primitive encoding encountered");
        }
        Cwhile cwhile = new Cwhile(new i0(this, this.f29058do), this.f29058do);
        if ((i & 64) != 0) {
            return new Creturn(iM32998catch, cwhile).getLoadedObject();
        }
        if ((i & 128) != 0) {
            return new Cinterface(true, iM32998catch, cwhile).getLoadedObject();
        }
        if (iM32998catch == 4) {
            return new Cextends(cwhile).getLoadedObject();
        }
        if (iM32998catch == 8) {
            return new a(cwhile).getLoadedObject();
        }
        if (iM32998catch == 16) {
            return new Cabstract(cwhile).getLoadedObject();
        }
        if (iM32998catch == 17) {
            return new Cstrictfp(cwhile).getLoadedObject();
        }
        throw new IOException("unknown BER object encountered");
    }

    /* renamed from: do, reason: not valid java name */
    public Cimport m33003do(h0 h0Var) throws IOException {
        return new Celse(h0Var).m33007if();
    }

    /* renamed from: else, reason: not valid java name */
    public int m33004else() {
        return this.f29058do;
    }

    /* renamed from: for, reason: not valid java name */
    public Cfinal m33005for(int i, int i2, int i3) throws IOException {
        boolean z = (i & 32) != 0;
        h0 h0Var = new h0(this, i3);
        if ((i & 64) != 0) {
            return new z(z, i2, h0Var.m33046for());
        }
        if ((i & 128) != 0) {
            return new Cwhile(h0Var).m33186new(z, i2);
        }
        if (!z) {
            return m32999new(i2, h0Var, this.f29059for);
        }
        if (i2 == 4) {
            Cimport cimportM33003do = m33003do(h0Var);
            int iM3519new = cimportM33003do.m3519new();
            Cclass[] cclassArr = new Cclass[iM3519new];
            for (int i4 = 0; i4 != iM3519new; i4++) {
                cclassArr[i4] = (Cclass) cimportM33003do.m3517for(i4);
            }
            return new Cthrows(cclassArr);
        }
        if (i2 == 8) {
            return new b0(m33003do(h0Var));
        }
        if (i2 == 16) {
            return this.f29060if ? new k0(h0Var.m33046for()) : b.m32761do(m33003do(h0Var));
        }
        if (i2 == 17) {
            return b.m32762if(m33003do(h0Var));
        }
        throw new IOException("unknown tag " + i2 + " encountered");
    }

    /* renamed from: goto, reason: not valid java name */
    public int m33006goto() throws IOException {
        return m33000this(this, this.f29058do);
    }

    /* renamed from: if, reason: not valid java name */
    public Cimport m33007if() throws IOException {
        Cimport cimport = new Cimport();
        while (true) {
            Cfinal cfinalM33002break = m33002break();
            if (cfinalM33002break == null) {
                return cimport;
            }
            cimport.m3516do(cfinalM33002break);
        }
    }

    public void readFully(byte[] bArr) throws IOException {
        if (a22.m17case(this, bArr) != bArr.length) {
            throw new EOFException("EOF encountered in middle of object");
        }
    }
}
