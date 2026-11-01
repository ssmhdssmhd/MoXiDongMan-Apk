package org.bouncycastle.crypto.tls;

import android.support.v4.bc1;
import android.support.v4.ch;
import android.support.v4.gr0;
import android.support.v4.ib1;
import android.support.v4.n72;
import android.support.v4.q3;
import android.support.v4.tw;
import java.io.IOException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.macs.Cgoto;

/* renamed from: org.bouncycastle.crypto.tls.super, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csuper implements TlsCipher {

    /* renamed from: case, reason: not valid java name */
    private static final byte[] f30763case = new byte[15];

    /* renamed from: do, reason: not valid java name */
    public TlsContext f30764do;

    /* renamed from: for, reason: not valid java name */
    public ch f30765for;

    /* renamed from: if, reason: not valid java name */
    public ch f30766if;

    /* renamed from: new, reason: not valid java name */
    public byte[] f30767new;

    /* renamed from: try, reason: not valid java name */
    public byte[] f30768try;

    public Csuper(TlsContext tlsContext) throws IOException {
        if (!l0.w(tlsContext)) {
            throw new n72((short) 80);
        }
        this.f30764do = tlsContext;
        byte[] bArrM34216try = l0.m34216try(tlsContext, 88);
        gr0 gr0Var = new gr0(bArrM34216try, 0, 32);
        gr0 gr0Var2 = new gr0(bArrM34216try, 32, 32);
        byte[] bArrM6378instanceof = q3.m6378instanceof(bArrM34216try, 64, 76);
        byte[] bArrM6378instanceof2 = q3.m6378instanceof(bArrM34216try, 76, 88);
        this.f30766if = new ch();
        this.f30765for = new ch();
        if (tlsContext.isServer()) {
            this.f30767new = bArrM6378instanceof2;
            this.f30768try = bArrM6378instanceof;
            gr0Var2 = gr0Var;
            gr0Var = gr0Var2;
        } else {
            this.f30767new = bArrM6378instanceof;
            this.f30768try = bArrM6378instanceof2;
        }
        this.f30766if.init(true, new bc1(gr0Var, this.f30767new));
        this.f30765for.init(false, new bc1(gr0Var2, this.f30768try));
    }

    /* renamed from: case, reason: not valid java name */
    public void m34357case(Mac mac, int i) throws IllegalStateException, tw {
        byte[] bArrM3366private = ib1.m3366private(i & 4294967295L);
        mac.update(bArrM3366private, 0, bArrM3366private.length);
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public byte[] decodeCiphertext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        if (getPlaintextLimit(i2) < 0) {
            throw new n72((short) 50);
        }
        int i3 = i2 - 16;
        if (!q3.m6360abstract(m34361if(m34363try(this.f30765for, false, j, this.f30768try), m34362new(j, s, i3), bArr, i, i3), q3.m6378instanceof(bArr, i + i3, i + i2))) {
            throw new n72((short) 20);
        }
        byte[] bArr2 = new byte[i3];
        this.f30765for.processBytes(bArr, i, i3, bArr2, 0);
        return bArr2;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m34358do(long j, byte[] bArr) {
        byte[] bArr2 = new byte[12];
        l0.E0(j, bArr2, 4);
        for (int i = 0; i < 12; i++) {
            bArr2[i] = (byte) (bArr2[i] ^ bArr[i]);
        }
        return bArr2;
    }

    /* renamed from: else, reason: not valid java name */
    public void m34359else(Mac mac, byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        mac.update(bArr, i, i2);
        int i3 = i2 % 16;
        if (i3 != 0) {
            mac.update(f30763case, 0, 16 - i3);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public byte[] encodePlaintext(long j, short s, byte[] bArr, int i, int i2) throws IllegalStateException, tw, IOException, IllegalArgumentException {
        gr0 gr0VarM34363try = m34363try(this.f30766if, true, j, this.f30767new);
        byte[] bArr2 = new byte[i2 + 16];
        this.f30766if.processBytes(bArr, i, i2, bArr2, 0);
        byte[] bArrM34361if = m34361if(gr0VarM34363try, m34362new(j, s, i2), bArr2, 0, i2);
        System.arraycopy(bArrM34361if, 0, bArr2, i2, bArrM34361if.length);
        return bArr2;
    }

    /* renamed from: for, reason: not valid java name */
    public gr0 m34360for(StreamCipher streamCipher) throws tw {
        byte[] bArr = new byte[64];
        streamCipher.processBytes(bArr, 0, 64, bArr, 0);
        gr0 gr0Var = new gr0(bArr, 0, 32);
        q3.c(bArr, (byte) 0);
        return gr0Var;
    }

    @Override // org.bouncycastle.crypto.tls.TlsCipher
    public int getPlaintextLimit(int i) {
        return i - 16;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m34361if(gr0 gr0Var, byte[] bArr, byte[] bArr2, int i, int i2) throws IllegalStateException, tw, IllegalArgumentException {
        Cgoto cgoto = new Cgoto();
        cgoto.init(gr0Var);
        m34359else(cgoto, bArr, 0, bArr.length);
        m34359else(cgoto, bArr2, i, i2);
        m34357case(cgoto, bArr.length);
        m34357case(cgoto, i2);
        byte[] bArr3 = new byte[cgoto.getMacSize()];
        cgoto.doFinal(bArr3, 0);
        return bArr3;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m34362new(long j, short s, int i) throws IOException {
        byte[] bArr = new byte[13];
        l0.E0(j, bArr, 0);
        l0.I0(s, bArr, 8);
        l0.O0(this.f30764do.getServerVersion(), bArr, 9);
        l0.s0(i, bArr, 11);
        return bArr;
    }

    /* renamed from: try, reason: not valid java name */
    public gr0 m34363try(StreamCipher streamCipher, boolean z, long j, byte[] bArr) throws IllegalArgumentException {
        streamCipher.init(z, new bc1(null, m34358do(j, bArr)));
        return m34360for(streamCipher);
    }
}
