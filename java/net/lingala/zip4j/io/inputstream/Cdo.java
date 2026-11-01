package net.lingala.zip4j.io.inputstream;

import android.support.v4.hq;
import android.support.v4.mj2;
import android.support.v4.mu0;
import android.support.v4.rj2;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* renamed from: net.lingala.zip4j.io.inputstream.do, reason: invalid class name */
/* loaded from: classes3.dex */
class Cdo extends Cif<net.lingala.zip4j.crypto.Cdo> {

    /* renamed from: break, reason: not valid java name */
    private int f28117break;

    /* renamed from: case, reason: not valid java name */
    private byte[] f28118case;

    /* renamed from: catch, reason: not valid java name */
    private int f28119catch;

    /* renamed from: class, reason: not valid java name */
    private int f28120class;

    /* renamed from: const, reason: not valid java name */
    private int f28121const;

    /* renamed from: else, reason: not valid java name */
    private byte[] f28122else;

    /* renamed from: final, reason: not valid java name */
    private int f28123final;

    /* renamed from: goto, reason: not valid java name */
    private int f28124goto;

    /* renamed from: this, reason: not valid java name */
    private int f28125this;

    public Cdo(Cgoto cgoto, mu0 mu0Var, char[] cArr) throws IOException {
        super(cgoto, mu0Var, cArr);
        this.f28118case = new byte[1];
        this.f28122else = new byte[16];
        this.f28124goto = 0;
        this.f28125this = 0;
        this.f28117break = 0;
        this.f28119catch = 0;
        this.f28120class = 0;
        this.f28121const = 0;
        this.f28123final = 0;
    }

    /* renamed from: break, reason: not valid java name */
    private void m31457break(byte[] bArr, int i) {
        int i2 = this.f28117break;
        int i3 = this.f28125this;
        if (i2 >= i3) {
            i2 = i3;
        }
        this.f28121const = i2;
        System.arraycopy(this.f28122else, this.f28124goto, bArr, i, i2);
        m31461final(this.f28121const);
        m31458catch(this.f28121const);
        int i4 = this.f28120class;
        int i5 = this.f28121const;
        this.f28120class = i4 + i5;
        this.f28117break -= i5;
        this.f28119catch += i5;
    }

    /* renamed from: catch, reason: not valid java name */
    private void m31458catch(int i) {
        int i2 = this.f28125this - i;
        this.f28125this = i2;
        if (i2 <= 0) {
            this.f28125this = 0;
        }
    }

    /* renamed from: class, reason: not valid java name */
    private byte[] m31459class() throws IOException {
        byte[] bArr = new byte[2];
        m31476this(bArr);
        return bArr;
    }

    /* renamed from: const, reason: not valid java name */
    private byte[] m31460const(mu0 mu0Var) throws IOException {
        if (mu0Var.m8078for() == null) {
            throw new IOException("invalid aes extra data record");
        }
        byte[] bArr = new byte[mu0Var.m8078for().m2758for().getSaltLength()];
        m31476this(bArr);
        return bArr;
    }

    /* renamed from: final, reason: not valid java name */
    private void m31461final(int i) {
        int i2 = this.f28124goto + i;
        this.f28124goto = i2;
        if (i2 >= 15) {
            this.f28124goto = 15;
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m31462while(byte[] bArr) throws IOException {
        if (m31473case().m8081import() && hq.DEFLATE.equals(mj2.m4938new(m31473case()))) {
            return;
        }
        byte[] bArr2 = new byte[10];
        System.arraycopy(m31475new().m31439if(), 0, bArr2, 0, 10);
        if (!Arrays.equals(bArr, bArr2)) {
            throw new IOException("Reached end of data for this entry, but aes verification failed");
        }
    }

    @Override // net.lingala.zip4j.io.inputstream.Cif
    /* renamed from: if, reason: not valid java name */
    public void mo31463if(InputStream inputStream) throws IOException {
        m31462while(m31465throw(inputStream));
    }

    @Override // net.lingala.zip4j.io.inputstream.Cif, java.io.InputStream
    public int read() throws IOException {
        if (read(this.f28118case) == -1) {
            return -1;
        }
        return this.f28118case[0];
    }

    @Override // net.lingala.zip4j.io.inputstream.Cif
    /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
    public net.lingala.zip4j.crypto.Cdo mo31453goto(mu0 mu0Var, char[] cArr) throws IOException {
        return new net.lingala.zip4j.crypto.Cdo(mu0Var.m8078for(), cArr, m31460const(mu0Var), m31459class());
    }

    /* renamed from: throw, reason: not valid java name */
    public byte[] m31465throw(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[10];
        if (inputStream.read(bArr) == 10) {
            return bArr;
        }
        throw new rj2("Invalid AES Mac bytes. Could not read sufficient data");
    }

    @Override // net.lingala.zip4j.io.inputstream.Cif, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.io.inputstream.Cif, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        this.f28117break = i2;
        this.f28119catch = i;
        this.f28120class = 0;
        if (this.f28125this != 0) {
            m31457break(bArr, i);
            int i3 = this.f28120class;
            if (i3 == i2) {
                return i3;
            }
        }
        if (this.f28117break < 16) {
            byte[] bArr2 = this.f28122else;
            int i4 = super.read(bArr2, 0, bArr2.length);
            this.f28123final = i4;
            this.f28124goto = 0;
            if (i4 == -1) {
                this.f28125this = 0;
                int i5 = this.f28120class;
                if (i5 > 0) {
                    return i5;
                }
                return -1;
            }
            this.f28125this = i4;
            m31457break(bArr, this.f28119catch);
            int i6 = this.f28120class;
            if (i6 == i2) {
                return i6;
            }
        }
        int i7 = this.f28119catch;
        int i8 = this.f28117break;
        int i9 = super.read(bArr, i7, i8 - (i8 % 16));
        if (i9 == -1) {
            int i10 = this.f28120class;
            if (i10 > 0) {
                return i10;
            }
            return -1;
        }
        return i9 + this.f28120class;
    }
}
