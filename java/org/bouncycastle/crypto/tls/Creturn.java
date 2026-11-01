package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import java.io.IOException;

/* renamed from: org.bouncycastle.crypto.tls.return, reason: invalid class name */
/* loaded from: classes3.dex */
class Creturn implements DatagramTransport {

    /* renamed from: import, reason: not valid java name */
    private static final int f30725import = 13;

    /* renamed from: native, reason: not valid java name */
    private static final int f30726native = 16384;

    /* renamed from: public, reason: not valid java name */
    private static final long f30727public = 120000;

    /* renamed from: return, reason: not valid java name */
    private static final long f30728return = 240000;

    /* renamed from: break, reason: not valid java name */
    private volatile int f30729break;

    /* renamed from: catch, reason: not valid java name */
    private Cimport f30731catch;

    /* renamed from: class, reason: not valid java name */
    private Cimport f30732class;

    /* renamed from: const, reason: not valid java name */
    private Cimport f30733const;

    /* renamed from: do, reason: not valid java name */
    private final DatagramTransport f30734do;

    /* renamed from: final, reason: not valid java name */
    private Cimport f30736final;

    /* renamed from: for, reason: not valid java name */
    private final TlsPeer f30737for;

    /* renamed from: if, reason: not valid java name */
    private final TlsContext f30739if;

    /* renamed from: new, reason: not valid java name */
    private final Cgoto f30740new = new Cgoto();

    /* renamed from: try, reason: not valid java name */
    private volatile boolean f30744try = false;

    /* renamed from: case, reason: not valid java name */
    private volatile boolean f30730case = false;

    /* renamed from: else, reason: not valid java name */
    private volatile a f30735else = null;

    /* renamed from: goto, reason: not valid java name */
    private volatile a f30738goto = null;

    /* renamed from: super, reason: not valid java name */
    private DTLSHandshakeRetransmit f30741super = null;

    /* renamed from: throw, reason: not valid java name */
    private Cimport f30743throw = null;

    /* renamed from: while, reason: not valid java name */
    private long f30745while = 0;

    /* renamed from: this, reason: not valid java name */
    private volatile boolean f30742this = true;

    public Creturn(DatagramTransport datagramTransport, TlsContext tlsContext, TlsPeer tlsPeer, short s) {
        this.f30734do = datagramTransport;
        this.f30739if = tlsContext;
        this.f30737for = tlsPeer;
        Cimport cimport = new Cimport(0, new x(tlsContext));
        this.f30731catch = cimport;
        this.f30732class = null;
        this.f30733const = cimport;
        this.f30736final = cimport;
        m34284const(16384);
    }

    /* renamed from: break, reason: not valid java name */
    private int m34277break(byte[] bArr, int i, int i2, int i3) throws IOException {
        int iU;
        int iU2;
        if (this.f30740new.m34126if() <= 0) {
            int iReceive = this.f30734do.receive(bArr, i, i2, i3);
            if (iReceive < 13 || iReceive <= (iU = l0.U(bArr, i + 11) + 13)) {
                return iReceive;
            }
            this.f30740new.m34122do(bArr, i + iU, iReceive - iU);
            return iU;
        }
        if (this.f30740new.m34126if() >= 13) {
            byte[] bArr2 = new byte[2];
            this.f30740new.m34128try(bArr2, 0, 2, 11);
            iU2 = l0.U(bArr2, 0);
        } else {
            iU2 = 0;
        }
        int iMin = Math.min(this.f30740new.m34126if(), iU2 + 13);
        this.f30740new.m34125goto(bArr, i, iMin, 0);
        return iMin;
    }

    /* renamed from: class, reason: not valid java name */
    private void m34278class(short s, byte[] bArr, int i, int i2) throws IOException {
        if (this.f30738goto == null) {
            return;
        }
        if (i2 > this.f30729break) {
            throw new n72((short) 80);
        }
        if (i2 < 1 && s != 23) {
            throw new n72((short) 80);
        }
        int iM34163for = this.f30736final.m34163for();
        long jM34162do = this.f30736final.m34162do();
        byte[] bArrEncodePlaintext = this.f30736final.m34164if().encodePlaintext(m34280new(iM34163for, jM34162do), s, bArr, i, i2);
        int length = bArrEncodePlaintext.length + 13;
        byte[] bArr2 = new byte[length];
        l0.I0(s, bArr2, 0);
        l0.O0(this.f30738goto, bArr2, 1);
        l0.s0(iM34163for, bArr2, 3);
        l0.C0(jM34162do, bArr2, 5);
        l0.s0(bArrEncodePlaintext.length, bArr2, 11);
        System.arraycopy(bArrEncodePlaintext, 0, bArr2, 13, bArrEncodePlaintext.length);
        this.f30734do.send(bArr2, 0, length);
    }

    /* renamed from: do, reason: not valid java name */
    private void m34279do() {
        if (this.f30744try) {
            return;
        }
        try {
            if (!this.f30730case) {
                m34291throw((short) 0, null);
            }
            this.f30734do.close();
        } catch (Exception unused) {
        }
        this.f30744try = true;
    }

    /* renamed from: new, reason: not valid java name */
    private static long m34280new(int i, long j) {
        return j | ((i & 4294967295L) << 48);
    }

    /* renamed from: this, reason: not valid java name */
    private void m34281this(short s, short s2, String str, Throwable th) throws IOException {
        this.f30737for.notifyAlertRaised(s, s2, str, th);
        m34278class((short) 21, new byte[]{(byte) s, (byte) s2}, 0, 2);
    }

    /* renamed from: case, reason: not valid java name */
    public a m34282case() {
        return this.f30735else;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m34283catch() {
        Cimport cimport = this.f30743throw;
        if (cimport == null) {
            cimport = this.f30731catch;
        }
        this.f30736final = cimport;
    }

    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    public void close() throws IOException {
        if (this.f30744try) {
            return;
        }
        if (this.f30742this) {
            m34291throw((short) 90, "User canceled handshake");
        }
        m34279do();
    }

    /* renamed from: const, reason: not valid java name */
    public void m34284const(int i) {
        this.f30729break = i;
    }

    /* renamed from: else, reason: not valid java name */
    public void m34285else(DTLSHandshakeRetransmit dTLSHandshakeRetransmit) {
        Cimport cimport = this.f30733const;
        Cimport cimport2 = this.f30731catch;
        if (cimport == cimport2 || this.f30736final == cimport2) {
            throw new IllegalStateException();
        }
        if (dTLSHandshakeRetransmit != null) {
            this.f30741super = dTLSHandshakeRetransmit;
            this.f30743throw = cimport2;
            this.f30745while = System.currentTimeMillis() + f30728return;
        }
        this.f30742this = false;
        this.f30731catch = this.f30732class;
        this.f30732class = null;
    }

    /* renamed from: final, reason: not valid java name */
    public void m34286final(a aVar) {
        this.f30735else = aVar;
    }

    /* renamed from: for, reason: not valid java name */
    public void m34287for() {
        if (this.f30744try) {
            return;
        }
        this.f30730case = true;
        m34279do();
    }

    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    public int getReceiveLimit() throws IOException {
        return Math.min(this.f30729break, this.f30733const.m34164if().getPlaintextLimit(this.f30734do.getReceiveLimit() - 13));
    }

    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    public int getSendLimit() throws IOException {
        return Math.min(this.f30729break, this.f30736final.m34164if().getPlaintextLimit(this.f30734do.getSendLimit() - 13));
    }

    /* renamed from: goto, reason: not valid java name */
    public void m34288goto(TlsCipher tlsCipher) {
        if (this.f30732class != null) {
            throw new IllegalStateException();
        }
        this.f30732class = new Cimport(this.f30736final.m34163for() + 1, tlsCipher);
    }

    /* renamed from: if, reason: not valid java name */
    public void m34289if(short s) {
        if (this.f30744try) {
            return;
        }
        try {
            m34281this((short) 2, s, null, null);
        } catch (Exception unused) {
        }
        this.f30730case = true;
        m34279do();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0122, code lost:
    
        if (r18.f30742this != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0126, code lost:
    
        if (r18.f30741super == null) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0128, code lost:
    
        r18.f30741super = null;
        r18.f30743throw = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x012d, code lost:
    
        java.lang.System.arraycopy(r3, 0, r19, r20, r3.length);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0137, code lost:
    
        return r3.length;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0074 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0075 A[Catch: IOException -> 0x0138, TryCatch #0 {IOException -> 0x0138, blocks: (B:8:0x0018, B:10:0x001c, B:12:0x0026, B:13:0x002a, B:18:0x003b, B:21:0x0045, B:22:0x0049, B:24:0x004d, B:26:0x005a, B:38:0x0075, B:41:0x0085, B:44:0x0091, B:46:0x0095, B:49:0x009e, B:52:0x00cc, B:54:0x00d0, B:55:0x00d2, B:83:0x0120, B:85:0x0124, B:87:0x0128, B:88:0x012d, B:57:0x00d6, B:60:0x00db, B:62:0x00df, B:64:0x00e3, B:65:0x00e9, B:67:0x00ed, B:70:0x00fe, B:71:0x0102, B:72:0x010a, B:74:0x010d, B:76:0x0110, B:82:0x011d, B:79:0x0117, B:81:0x011b, B:30:0x0063, B:32:0x0067, B:34:0x006d), top: B:94:0x0018 }] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [org.bouncycastle.crypto.tls.DTLSHandshakeRetransmit, org.bouncycastle.crypto.tls.import] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v3 */
    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int receive(byte[] bArr, int i, int i2, int i3) throws IOException {
        Cimport cimport;
        Cimport cimport2;
        Cimport cimport3;
        Cimport cimport4;
        ?? r0 = 0;
        byte[] bArr2 = null;
        while (true) {
            int iMin = Math.min(i2, getReceiveLimit()) + 13;
            if (bArr2 == null || bArr2.length < iMin) {
                bArr2 = new byte[iMin];
            }
            try {
                if (this.f30741super != null && System.currentTimeMillis() > this.f30745while) {
                    this.f30741super = r0;
                    this.f30743throw = r0;
                }
                int iM34277break = m34277break(bArr2, 0, iMin, i3);
                if (iM34277break < 0) {
                    return iM34277break;
                }
                if (iM34277break >= 13 && iM34277break == l0.U(bArr2, 11) + 13) {
                    short sD0 = l0.d0(bArr2, 0);
                    switch (sD0) {
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                            int iU = l0.U(bArr2, 3);
                            if (iU == this.f30733const.m34163for()) {
                                cimport3 = this.f30733const;
                            } else if (sD0 != 22 || (cimport2 = this.f30743throw) == null || iU != cimport2.m34163for()) {
                                cimport = r0;
                                if (cimport == null) {
                                    long jB0 = l0.b0(bArr2, 5);
                                    if (!cimport.m34165new().m34365for(jB0)) {
                                        a aVarG0 = l0.g0(bArr2, 1);
                                        if (aVarG0.m33941goto() && (this.f30735else == null || this.f30735else.m33939do(aVarG0))) {
                                            byte[] bArrDecodeCiphertext = cimport.m34164if().decodeCiphertext(m34280new(cimport.m34163for(), jB0), sD0, bArr2, 13, iM34277break - 13);
                                            cimport.m34165new().m34364do(jB0);
                                            if (bArrDecodeCiphertext.length <= this.f30729break) {
                                                if (this.f30735else == null) {
                                                    this.f30735else = aVarG0;
                                                }
                                                switch (sD0) {
                                                    case 20:
                                                        for (int i4 = 0; i4 < bArrDecodeCiphertext.length; i4++) {
                                                            if (l0.d0(bArrDecodeCiphertext, i4) == 1 && (cimport4 = this.f30732class) != null) {
                                                                this.f30733const = cimport4;
                                                            }
                                                        }
                                                        break;
                                                    case 21:
                                                        if (bArrDecodeCiphertext.length == 2) {
                                                            short s = bArrDecodeCiphertext[0];
                                                            short s2 = bArrDecodeCiphertext[1];
                                                            this.f30737for.notifyAlertReceived(s, s2);
                                                            if (s == 2) {
                                                                m34287for();
                                                                throw new n72(s2);
                                                            }
                                                            if (s2 == 0) {
                                                                m34279do();
                                                                break;
                                                            }
                                                        }
                                                        break;
                                                    case 22:
                                                        if (this.f30742this) {
                                                            break;
                                                        } else {
                                                            DTLSHandshakeRetransmit dTLSHandshakeRetransmit = this.f30741super;
                                                            if (dTLSHandshakeRetransmit != null) {
                                                                dTLSHandshakeRetransmit.receivedHandshakeRecord(iU, bArrDecodeCiphertext, 0, bArrDecodeCiphertext.length);
                                                                break;
                                                            }
                                                        }
                                                        break;
                                                    case 23:
                                                        if (this.f30742this) {
                                                            break;
                                                        } else {
                                                            break;
                                                        }
                                                }
                                            }
                                            r0 = 0;
                                            break;
                                        }
                                    }
                                }
                                break;
                            } else {
                                cimport3 = this.f30743throw;
                            }
                            cimport = cimport3;
                            if (cimport == null) {
                            }
                            break;
                    }
                }
            } catch (IOException e) {
                throw e;
            }
        }
    }

    @Override // org.bouncycastle.crypto.tls.DatagramTransport
    public void send(byte[] bArr, int i, int i2) throws IOException {
        short s;
        if (this.f30742this || this.f30736final == this.f30743throw) {
            s = 22;
            if (l0.d0(bArr, i) == 20) {
                Cimport cimport = null;
                if (this.f30742this) {
                    cimport = this.f30732class;
                } else if (this.f30736final == this.f30743throw) {
                    cimport = this.f30731catch;
                }
                if (cimport == null) {
                    throw new IllegalStateException();
                }
                m34278class((short) 20, new byte[]{1}, 0, 1);
                this.f30736final = cimport;
            }
        } else {
            s = 23;
        }
        m34278class(s, bArr, i, i2);
    }

    /* renamed from: super, reason: not valid java name */
    public void m34290super(a aVar) {
        this.f30738goto = aVar;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m34291throw(short s, String str) throws IOException {
        m34281this((short) 1, s, str, null);
    }

    /* renamed from: try, reason: not valid java name */
    public int m34292try() {
        return this.f30733const.m34163for();
    }
}
