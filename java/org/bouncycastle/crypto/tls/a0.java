package org.bouncycastle.crypto.tls;

import android.support.v4.ae;
import android.support.v4.dy0;
import android.support.v4.g32;
import android.support.v4.hn0;
import android.support.v4.mw1;
import android.support.v4.n72;
import android.support.v4.n90;
import android.support.v4.o72;
import android.support.v4.q3;
import android.support.v4.q72;
import android.support.v4.vl;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.prng.RandomGenerator;
import org.bouncycastle.crypto.tls.h;

/* loaded from: classes3.dex */
public abstract class a0 {
    public static final short a = 7;
    public static final short b = 8;
    public static final short c = 9;
    public static final short d = 10;
    public static final short e = 11;
    public static final short f = 12;
    public static final short g = 13;
    public static final short h = 14;
    public static final short i = 15;

    /* renamed from: implements, reason: not valid java name */
    public static final short f30458implements = 4;

    /* renamed from: instanceof, reason: not valid java name */
    public static final short f30459instanceof = 5;

    /* renamed from: interface, reason: not valid java name */
    public static final short f30460interface = 1;
    public static final short j = 16;
    public static final short k = 0;
    public static final short l = 1;
    public static final short m = 2;

    /* renamed from: protected, reason: not valid java name */
    public static final short f30461protected = 2;

    /* renamed from: synchronized, reason: not valid java name */
    public static final short f30463synchronized = 6;

    /* renamed from: transient, reason: not valid java name */
    public static final short f30464transient = 3;

    /* renamed from: volatile, reason: not valid java name */
    public static final short f30465volatile = 0;

    /* renamed from: abstract, reason: not valid java name */
    public Cthis f30466abstract;

    /* renamed from: break, reason: not valid java name */
    private volatile boolean f30467break;

    /* renamed from: case, reason: not valid java name */
    private w f30468case;

    /* renamed from: catch, reason: not valid java name */
    private volatile boolean f30469catch;

    /* renamed from: class, reason: not valid java name */
    private volatile int f30470class;

    /* renamed from: const, reason: not valid java name */
    private byte[] f30471const;

    /* renamed from: default, reason: not valid java name */
    public boolean f30472default;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f30473do;

    /* renamed from: else, reason: not valid java name */
    private y f30474else;

    /* renamed from: extends, reason: not valid java name */
    public boolean f30475extends;

    /* renamed from: final, reason: not valid java name */
    public TlsSession f30476final;

    /* renamed from: finally, reason: not valid java name */
    public boolean f30477finally;

    /* renamed from: for, reason: not valid java name */
    private Cgoto f30478for;

    /* renamed from: goto, reason: not valid java name */
    private volatile boolean f30479goto;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f30480if;

    /* renamed from: import, reason: not valid java name */
    public int[] f30481import;

    /* renamed from: native, reason: not valid java name */
    public short[] f30482native;

    /* renamed from: new, reason: not valid java name */
    public b f30483new;

    /* renamed from: package, reason: not valid java name */
    public boolean f30484package;

    /* renamed from: private, reason: not valid java name */
    public ae f30485private;

    /* renamed from: public, reason: not valid java name */
    public Hashtable f30486public;

    /* renamed from: return, reason: not valid java name */
    public Hashtable f30487return;

    /* renamed from: static, reason: not valid java name */
    public short f30488static;

    /* renamed from: super, reason: not valid java name */
    public h f30489super;

    /* renamed from: switch, reason: not valid java name */
    public boolean f30490switch;

    /* renamed from: this, reason: not valid java name */
    private volatile boolean f30491this;

    /* renamed from: throw, reason: not valid java name */
    public mw1 f30492throw;

    /* renamed from: throws, reason: not valid java name */
    public boolean f30493throws;

    /* renamed from: try, reason: not valid java name */
    public SecureRandom f30494try;

    /* renamed from: while, reason: not valid java name */
    public Cbreak f30495while;

    /* renamed from: continue, reason: not valid java name */
    public static final Integer f30457continue = hn0.m3072for(65281);

    /* renamed from: strictfp, reason: not valid java name */
    public static final Integer f30462strictfp = hn0.m3072for(35);

    /* renamed from: org.bouncycastle.crypto.tls.a0$do, reason: invalid class name */
    public class Cdo extends ByteArrayOutputStream {
        public Cdo(a0 a0Var, short s) throws IOException {
            this(s, 60);
        }

        public Cdo(short s, int i) throws IOException {
            super(i + 4);
            l0.H0(s, this);
            ((ByteArrayOutputStream) this).count += 3;
        }

        /* renamed from: do, reason: not valid java name */
        public void m33984do() throws IOException {
            int i = ((ByteArrayOutputStream) this).count - 4;
            l0.m34184class(i);
            l0.y0(i, ((ByteArrayOutputStream) this).buf, 1);
            a0.this.u(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count);
            ((ByteArrayOutputStream) this).buf = null;
        }
    }

    public a0(InputStream inputStream, OutputStream outputStream, SecureRandom secureRandom) {
        this.f30473do = new Cgoto(0);
        this.f30480if = new Cgoto(2);
        this.f30478for = new Cgoto(0);
        this.f30468case = null;
        this.f30474else = null;
        this.f30479goto = false;
        this.f30491this = false;
        this.f30467break = false;
        this.f30469catch = true;
        this.f30470class = 0;
        this.f30471const = null;
        this.f30476final = null;
        this.f30489super = null;
        this.f30492throw = null;
        this.f30495while = null;
        this.f30481import = null;
        this.f30482native = null;
        this.f30486public = null;
        this.f30487return = null;
        this.f30488static = (short) 0;
        this.f30490switch = false;
        this.f30493throws = false;
        this.f30472default = false;
        this.f30475extends = false;
        this.f30477finally = false;
        this.f30484package = true;
        this.f30483new = new b(this, inputStream, outputStream);
        this.f30494try = secureRandom;
    }

    public a0(SecureRandom secureRandom) {
        this.f30473do = new Cgoto(0);
        this.f30480if = new Cgoto(2);
        this.f30478for = new Cgoto(0);
        this.f30468case = null;
        this.f30474else = null;
        this.f30479goto = false;
        this.f30491this = false;
        this.f30467break = false;
        this.f30469catch = true;
        this.f30470class = 0;
        this.f30471const = null;
        this.f30476final = null;
        this.f30489super = null;
        this.f30492throw = null;
        this.f30495while = null;
        this.f30481import = null;
        this.f30482native = null;
        this.f30486public = null;
        this.f30487return = null;
        this.f30488static = (short) 0;
        this.f30490switch = false;
        this.f30493throws = false;
        this.f30472default = false;
        this.f30475extends = false;
        this.f30477finally = false;
        this.f30484package = false;
        this.f30485private = new ae();
        this.f30466abstract = new Cthis();
        this.f30483new = new b(this, this.f30485private, this.f30466abstract);
        this.f30494try = secureRandom;
    }

    /* renamed from: break, reason: not valid java name */
    public static byte[] m33945break(boolean z, RandomGenerator randomGenerator) {
        byte[] bArr = new byte[32];
        randomGenerator.nextBytes(bArr);
        if (z) {
            l0.n0(bArr, 0);
        }
        return bArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static byte[] m33946catch(byte[] bArr) throws IOException {
        return l0.m34202package(bArr);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m33947const(TlsContext tlsContext, TlsKeyExchange tlsKeyExchange) throws IOException {
        byte[] bArrGeneratePremasterSecret = tlsKeyExchange.generatePremasterSecret();
        try {
            tlsContext.getSecurityParameters().f4049case = l0.m34189else(tlsContext, bArrGeneratePremasterSecret);
        } finally {
            if (bArrGeneratePremasterSecret != null) {
                q3.c(bArrGeneratePremasterSecret, (byte) 0);
            }
        }
    }

    public static Hashtable f(ByteArrayInputStream byteArrayInputStream) throws IOException {
        if (byteArrayInputStream.available() < 1) {
            return null;
        }
        byte[] bArrP = l0.P(byteArrayInputStream);
        m33948for(byteArrayInputStream);
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArrP);
        Hashtable hashtable = new Hashtable();
        while (byteArrayInputStream2.available() > 0) {
            if (hashtable.put(hn0.m3072for(l0.T(byteArrayInputStream2)), l0.P(byteArrayInputStream2)) != null) {
                throw new n72((short) 47);
            }
        }
        return hashtable;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m33948for(ByteArrayInputStream byteArrayInputStream) throws IOException {
        if (byteArrayInputStream.available() > 0) {
            throw new n72((short) 50);
        }
    }

    public static Vector i(ByteArrayInputStream byteArrayInputStream) throws IOException {
        byte[] bArrQ = l0.Q(byteArrayInputStream);
        m33948for(byteArrayInputStream);
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArrQ);
        Vector vector = new Vector();
        while (byteArrayInputStream2.available() > 0) {
            vector.addElement(new g32(l0.T(byteArrayInputStream2), l0.P(byteArrayInputStream2)));
        }
        return vector;
    }

    /* renamed from: implements, reason: not valid java name */
    private void m33949implements(byte[] bArr, int i2, int i3) throws IOException {
        for (int i4 = 0; i4 < i3; i4++) {
            if (l0.d0(bArr, i2 + i4) != 1) {
                throw new n72((short) 50);
            }
            if (this.f30493throws || this.f30480if.m34126if() > 0 || this.f30478for.m34126if() > 0) {
                throw new n72((short) 10);
            }
            this.f30483new.m34009while();
            this.f30493throws = true;
            m33962extends();
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static byte[] m33950native(TlsContext tlsContext, TlsHandshakeHash tlsHandshakeHash, byte[] bArr) {
        Digest digestForkPRFHash = tlsHandshakeHash.forkPRFHash();
        if (bArr != null && l0.q(tlsContext)) {
            digestForkPRFHash.update(bArr, 0, bArr.length);
        }
        byte[] bArr2 = new byte[digestForkPRFHash.getDigestSize()];
        digestForkPRFHash.doFinal(bArr2, 0);
        return bArr2;
    }

    /* renamed from: protected, reason: not valid java name */
    private void m33951protected() throws IOException {
        while (this.f30480if.m34126if() >= 2) {
            byte[] bArrM34127this = this.f30480if.m34127this(2, 0);
            m33980throws(bArrM34127this[0], bArrM34127this[1]);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x002f  */
    /* renamed from: static, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m33952static(TlsContext tlsContext, int i2) throws IOException {
        boolean zW = l0.w(tlsContext);
        switch (i2) {
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
                break;
            default:
                switch (i2) {
                    case 103:
                    case 104:
                    case 105:
                    case 106:
                    case 107:
                    case 108:
                    case 109:
                        break;
                    default:
                        switch (i2) {
                            case 156:
                            case 158:
                            case 160:
                            case 162:
                            case 164:
                            case 166:
                            case 168:
                            case 170:
                            case 172:
                                break;
                            case 157:
                            case 159:
                            case 161:
                            case 163:
                            case 165:
                            case 167:
                            case 169:
                            case 171:
                            case 173:
                                if (zW) {
                                    return 2;
                                }
                                throw new n72((short) 47);
                            default:
                                switch (i2) {
                                    case 175:
                                    case 177:
                                    case 179:
                                    case 181:
                                    case 183:
                                    case vl.O1 /* 49208 */:
                                    case vl.R1 /* 49211 */:
                                    case vl.C2 /* 49301 */:
                                    case vl.E2 /* 49303 */:
                                    case vl.G2 /* 49305 */:
                                        return zW ? 2 : 0;
                                    case vl.T1 /* 49266 */:
                                    case vl.V1 /* 49268 */:
                                    case vl.X1 /* 49270 */:
                                    case vl.Z1 /* 49272 */:
                                    case vl.b2 /* 49274 */:
                                    case vl.d2 /* 49276 */:
                                    case vl.f2 /* 49278 */:
                                    case vl.h2 /* 49280 */:
                                    case vl.j2 /* 49282 */:
                                    case vl.l2 /* 49284 */:
                                    case vl.n2 /* 49286 */:
                                    case vl.p2 /* 49288 */:
                                    case vl.r2 /* 49290 */:
                                    case vl.t2 /* 49292 */:
                                    case vl.v2 /* 49294 */:
                                    case vl.x2 /* 49296 */:
                                    case vl.z2 /* 49298 */:
                                        break;
                                    case vl.U1 /* 49267 */:
                                    case vl.W1 /* 49269 */:
                                    case vl.Y1 /* 49271 */:
                                    case vl.a2 /* 49273 */:
                                    case vl.c2 /* 49275 */:
                                    case vl.e2 /* 49277 */:
                                    case vl.g2 /* 49279 */:
                                    case vl.i2 /* 49281 */:
                                    case vl.k2 /* 49283 */:
                                    case vl.m2 /* 49285 */:
                                    case vl.o2 /* 49287 */:
                                    case vl.q2 /* 49289 */:
                                    case vl.s2 /* 49291 */:
                                    case vl.u2 /* 49293 */:
                                    case vl.w2 /* 49295 */:
                                    case vl.y2 /* 49297 */:
                                    case vl.A2 /* 49299 */:
                                        break;
                                    default:
                                        switch (i2) {
                                            case 185:
                                                break;
                                            case 186:
                                            case 187:
                                            case 188:
                                            case 189:
                                            case 190:
                                            case 191:
                                            case 192:
                                            case 193:
                                            case 194:
                                            case 195:
                                            case 196:
                                            case 197:
                                                break;
                                            default:
                                                switch (i2) {
                                                    case vl.b1 /* 49187 */:
                                                    case vl.d1 /* 49189 */:
                                                    case vl.f1 /* 49191 */:
                                                    case vl.h1 /* 49193 */:
                                                    case vl.j1 /* 49195 */:
                                                    case vl.l1 /* 49197 */:
                                                    case vl.n1 /* 49199 */:
                                                    case vl.p1 /* 49201 */:
                                                        break;
                                                    case vl.c1 /* 49188 */:
                                                    case vl.e1 /* 49190 */:
                                                    case vl.g1 /* 49192 */:
                                                    case vl.i1 /* 49194 */:
                                                    case vl.k1 /* 49196 */:
                                                    case vl.m1 /* 49198 */:
                                                    case vl.o1 /* 49200 */:
                                                    case vl.q1 /* 49202 */:
                                                        break;
                                                    default:
                                                        switch (i2) {
                                                            case vl.I2 /* 49307 */:
                                                                break;
                                                            case vl.J2 /* 49308 */:
                                                            case vl.K2 /* 49309 */:
                                                            case vl.L2 /* 49310 */:
                                                            case vl.M2 /* 49311 */:
                                                            case vl.N2 /* 49312 */:
                                                            case vl.O2 /* 49313 */:
                                                            case vl.P2 /* 49314 */:
                                                            case vl.Q2 /* 49315 */:
                                                            case vl.R2 /* 49316 */:
                                                            case vl.S2 /* 49317 */:
                                                            case vl.T2 /* 49318 */:
                                                            case vl.U2 /* 49319 */:
                                                            case vl.V2 /* 49320 */:
                                                            case vl.W2 /* 49321 */:
                                                            case vl.X2 /* 49322 */:
                                                            case vl.Y2 /* 49323 */:
                                                            case vl.Z2 /* 49324 */:
                                                            case vl.a3 /* 49325 */:
                                                            case vl.b3 /* 49326 */:
                                                            case vl.c3 /* 49327 */:
                                                                break;
                                                            default:
                                                                switch (i2) {
                                                                    case vl.e3 /* 52392 */:
                                                                    case vl.f3 /* 52393 */:
                                                                    case vl.g3 /* 52394 */:
                                                                    case vl.h3 /* 52395 */:
                                                                    case vl.i3 /* 52396 */:
                                                                    case vl.j3 /* 52397 */:
                                                                    case vl.k3 /* 52398 */:
                                                                        break;
                                                                    default:
                                                                        switch (i2) {
                                                                            case 65280:
                                                                            case 65281:
                                                                            case 65282:
                                                                            case vl.o3 /* 65283 */:
                                                                            case vl.p3 /* 65284 */:
                                                                            case vl.q3 /* 65285 */:
                                                                                break;
                                                                            default:
                                                                                switch (i2) {
                                                                                    case vl.r3 /* 65296 */:
                                                                                    case vl.s3 /* 65297 */:
                                                                                    case vl.t3 /* 65298 */:
                                                                                    case vl.u3 /* 65299 */:
                                                                                    case vl.v3 /* 65300 */:
                                                                                    case vl.w3 /* 65301 */:
                                                                                        break;
                                                                                    default:
                                                                                        return zW ? 1 : 0;
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
        if (zW) {
            return 1;
        }
        throw new n72((short) 47);
    }

    /* renamed from: synchronized, reason: not valid java name */
    private void m33953synchronized(Cgoto cgoto) throws IOException {
        while (cgoto.m34126if() >= 4) {
            byte[] bArr = new byte[4];
            cgoto.m34128try(bArr, 0, 4, 0);
            short sD0 = l0.d0(bArr, 0);
            int iX = l0.X(bArr, 1);
            int i2 = iX + 4;
            if (cgoto.m34126if() < i2) {
                return;
            }
            if (sD0 != 0) {
                if (20 == sD0) {
                    m33981try(true);
                    TlsContext tlsContextMo33983while = mo33983while();
                    if (this.f30471const == null && tlsContextMo33983while.getSecurityParameters().m5016case() != null) {
                        this.f30471const = m33957class(!tlsContextMo33983while.isServer());
                    }
                } else {
                    m33981try(this.f30488static == 16);
                }
                cgoto.m34124for(this.f30483new.m33989break(), i2);
            }
            cgoto.m34123else(4);
            mo33955abstract(sD0, cgoto.m34121case(iX));
        }
    }

    public static void t(OutputStream outputStream, Hashtable hashtable) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        v(byteArrayOutputStream, hashtable, true);
        v(byteArrayOutputStream, hashtable, false);
        l0.o0(byteArrayOutputStream.toByteArray(), outputStream);
    }

    /* renamed from: transient, reason: not valid java name */
    private void m33954transient() {
    }

    public static void v(OutputStream outputStream, Hashtable hashtable, boolean z) throws IOException {
        Enumeration enumerationKeys = hashtable.keys();
        while (enumerationKeys.hasMoreElements()) {
            Integer num = (Integer) enumerationKeys.nextElement();
            int iIntValue = num.intValue();
            byte[] bArr = (byte[]) hashtable.get(num);
            if (z == (bArr.length == 0)) {
                l0.m34181break(iIntValue);
                l0.r0(iIntValue, outputStream);
                l0.o0(bArr, outputStream);
            }
        }
    }

    public static void w(OutputStream outputStream, Vector vector) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i2 = 0; i2 < vector.size(); i2++) {
            g32 g32Var = (g32) vector.elementAt(i2);
            int iM2572if = g32Var.m2572if();
            l0.m34181break(iM2572if);
            l0.r0(iM2572if, byteArrayOutputStream);
            l0.o0(g32Var.m2571do(), byteArrayOutputStream);
        }
        l0.p0(byteArrayOutputStream.toByteArray(), outputStream);
    }

    public short a(Hashtable hashtable, Hashtable hashtable2, short s) throws IOException {
        short sM34417public = v.m34417public(hashtable2);
        if (sM34417public < 0 || (dy0.m1569do(sM34417public) && (this.f30490switch || sM34417public == v.m34417public(hashtable)))) {
            return sM34417public;
        }
        throw new n72(s);
    }

    /* renamed from: abstract, reason: not valid java name */
    public abstract void mo33955abstract(short s, ByteArrayInputStream byteArrayInputStream) throws IOException;

    public void b(short s, byte[] bArr, int i2, int i3) throws IOException {
        switch (s) {
            case 20:
                m33949implements(bArr, i2, i3);
                return;
            case 21:
                this.f30480if.m34122do(bArr, i2, i3);
                m33951protected();
                return;
            case 22:
                if (this.f30478for.m34126if() > 0) {
                    this.f30478for.m34122do(bArr, i2, i3);
                    m33953synchronized(this.f30478for);
                    return;
                }
                Cgoto cgoto = new Cgoto(bArr, i2, i3);
                m33953synchronized(cgoto);
                int iM34126if = cgoto.m34126if();
                if (iM34126if > 0) {
                    this.f30478for.m34122do(bArr, (i2 + i3) - iM34126if, iM34126if);
                    return;
                }
                return;
            case 23:
                if (!this.f30467break) {
                    throw new n72((short) 10);
                }
                this.f30473do.m34122do(bArr, i2, i3);
                m33954transient();
                return;
            default:
                throw new n72((short) 80);
        }
    }

    public void c(short s, String str, Throwable th) throws IOException {
        mo33977switch().notifyAlertRaised((short) 2, s, str, th);
        try {
            this.f30483new.m33994default((short) 21, new byte[]{2, (byte) s}, 0, 2);
        } catch (Exception unused) {
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void mo33956case() {
        byte[] bArr = this.f30471const;
        if (bArr != null) {
            q3.c(bArr, (byte) 0);
            this.f30471const = null;
        }
        this.f30492throw.m5020do();
        this.f30495while = null;
        this.f30481import = null;
        this.f30482native = null;
        this.f30486public = null;
        this.f30487return = null;
        this.f30490switch = false;
        this.f30493throws = false;
        this.f30472default = false;
        this.f30475extends = false;
        this.f30477finally = false;
    }

    /* renamed from: class, reason: not valid java name */
    public byte[] m33957class(boolean z) {
        TlsContext tlsContextMo33983while = mo33983while();
        return l0.m34212this(tlsContextMo33983while, z ? n90.f4151if : n90.f4147do, m33950native(tlsContextMo33983while, this.f30483new.m34005this(), z ? l0.f30676else : l0.f30674case));
    }

    /* renamed from: continue, reason: not valid java name */
    public void m33958continue() {
        h hVar = this.f30489super;
        if (hVar != null) {
            hVar.m34132do();
            this.f30489super = null;
        }
        TlsSession tlsSession = this.f30476final;
        if (tlsSession != null) {
            tlsSession.invalidate();
            this.f30476final = null;
        }
    }

    public void d(short s, String str) throws IOException {
        mo33977switch().notifyAlertRaised((short) 1, s, str, null);
        m((short) 21, new byte[]{1, (byte) s}, 0, 2);
    }

    /* renamed from: default, reason: not valid java name */
    public void mo33959default(short s) throws IOException {
        if (s == 0) {
            if (!this.f30467break) {
                throw new n72((short) 40);
            }
            m33964finally(false);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public int m33960do() {
        return this.f30473do.m34126if();
    }

    public int e(byte[] bArr, int i2, int i3) throws IOException {
        if (i3 < 1) {
            return 0;
        }
        while (this.f30473do.m34126if() == 0) {
            if (this.f30479goto) {
                if (this.f30491this) {
                    throw new IOException("Cannot read application data on failed TLS connection");
                }
                if (this.f30467break) {
                    return -1;
                }
                throw new IllegalStateException("Cannot read application data until initial handshake completed.");
            }
            l();
        }
        int iMin = Math.min(i3, this.f30473do.m34126if());
        this.f30473do.m34125goto(bArr, i2, iMin, 0);
        return iMin;
    }

    /* renamed from: else, reason: not valid java name */
    public void m33961else() throws IOException {
        m33964finally(true);
    }

    /* renamed from: extends, reason: not valid java name */
    public void m33962extends() throws IOException {
    }

    /* renamed from: final, reason: not valid java name */
    public void m33963final() throws IOException {
        this.f30483new.m33995else();
    }

    /* renamed from: finally, reason: not valid java name */
    public void m33964finally(boolean z) throws IOException {
        if (this.f30479goto) {
            return;
        }
        this.f30479goto = true;
        if (z && !this.f30467break) {
            d((short) 90, "User canceled handshake");
        }
        d((short) 0, "Connection closed");
        this.f30483new.m33998import();
        if (this.f30467break) {
            return;
        }
        mo33956case();
    }

    public int g(byte[] bArr, int i2, int i3) {
        if (this.f30484package) {
            throw new IllegalStateException("Cannot use readInput() in blocking mode! Use getInputStream() instead.");
        }
        try {
            return e(bArr, i2, Math.min(i3, m33960do()));
        } catch (IOException e2) {
            throw new RuntimeException(e2.toString());
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public void m33965goto() throws IOException {
        if (this.f30484package) {
            throw new IllegalStateException("Cannot use closeInput() in blocking mode!");
        }
        if (this.f30479goto) {
            return;
        }
        if (this.f30485private.available() > 0) {
            throw new EOFException();
        }
        if (!this.f30467break) {
            throw new n72((short) 40);
        }
        throw new q72();
    }

    public int h(byte[] bArr, int i2, int i3) {
        if (this.f30484package) {
            throw new IllegalStateException("Cannot use readOutput() in blocking mode! Use getOutputStream() instead.");
        }
        int iMin = Math.min(m33979throw(), i3);
        this.f30466abstract.m34371do().m34125goto(bArr, i2, iMin, 0);
        return iMin;
    }

    /* renamed from: if, reason: not valid java name */
    public void m33966if() throws IOException {
        short s = this.f30492throw.f4051class;
        if (s >= 0) {
            if (!dy0.m1569do(s)) {
                throw new n72((short) 80);
            }
            this.f30483new.m34001return(1 << (this.f30492throw.f4051class + 8));
        }
    }

    /* renamed from: import, reason: not valid java name */
    public abstract Cfor mo33967import();

    /* renamed from: instanceof, reason: not valid java name */
    public void m33968instanceof(ByteArrayInputStream byteArrayInputStream) throws IOException {
        byte[] bArr = this.f30471const;
        if (bArr == null) {
            throw new n72((short) 80);
        }
        byte[] bArrO = l0.O(bArr.length, byteArrayInputStream);
        m33948for(byteArrayInputStream);
        if (!q3.m6360abstract(this.f30471const, bArrO)) {
            throw new n72((short) 51);
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public void m33969interface(byte[] bArr, int i2, int i3) throws IOException {
        if (this.f30484package) {
            throw new IllegalStateException("Cannot use offerOutput() in blocking mode! Use getOutputStream() instead.");
        }
        if (!this.f30467break) {
            throw new IOException("Application data cannot be sent until the handshake is complete!");
        }
        s(bArr, i2, i3);
    }

    public void j() throws IOException {
        if (l0.q(mo33983while())) {
            throw new n72((short) 40);
        }
        d((short) 100, "Renegotiation not supported");
    }

    public void k(byte[] bArr) throws IOException {
        try {
            this.f30483new.m33997for(bArr);
        } catch (n72 e2) {
            m33971package(e2.getAlertDescription(), "Failed to read record", e2);
            throw e2;
        } catch (IOException e3) {
            m33971package((short) 80, "Failed to read record", e3);
            throw e3;
        } catch (RuntimeException e4) {
            m33971package((short) 80, "Failed to read record", e4);
            throw new n72((short) 80, e4);
        }
    }

    public void l() throws IOException {
        try {
            if (this.f30483new.m34006throw()) {
                return;
            }
            if (!this.f30467break) {
                throw new n72((short) 40);
            }
            m33972private();
            throw new q72();
        } catch (n72 e2) {
            m33971package(e2.getAlertDescription(), "Failed to read record", e2);
            throw e2;
        } catch (o72 e3) {
            throw e3;
        } catch (IOException e4) {
            m33971package((short) 80, "Failed to read record", e4);
            throw e4;
        } catch (RuntimeException e5) {
            m33971package((short) 80, "Failed to read record", e5);
            throw new n72((short) 80, e5);
        }
    }

    public void m(short s, byte[] bArr, int i2, int i3) throws IOException {
        try {
            this.f30483new.m33994default(s, bArr, i2, i3);
        } catch (n72 e2) {
            m33971package(e2.getAlertDescription(), "Failed to write record", e2);
            throw e2;
        } catch (IOException e3) {
            m33971package((short) 80, "Failed to write record", e3);
            throw e3;
        } catch (RuntimeException e4) {
            m33971package((short) 80, "Failed to write record", e4);
            throw new n72((short) 80, e4);
        }
    }

    public void n(Cbreak cbreak) throws IOException {
        if (cbreak == null) {
            cbreak = Cbreak.f30534if;
        }
        if (cbreak.m34013case() && !mo33983while().isServer()) {
            a serverVersion = mo33983while().getServerVersion();
            if (serverVersion.m33937catch()) {
                d((short) 41, serverVersion.toString() + " client didn't provide credentials");
                return;
            }
        }
        Cdo cdo = new Cdo(this, (short) 11);
        cbreak.m34016if(cdo);
        cdo.m33984do();
    }

    /* renamed from: new, reason: not valid java name */
    public void m33970new() throws IOException {
        if (this.f30484package) {
            while (this.f30488static != 16) {
                if (this.f30479goto) {
                    throw new n72((short) 80);
                }
                l();
            }
        }
    }

    public void o() throws IOException {
        m((short) 20, new byte[]{1}, 0, 1);
        this.f30483new.m33999native();
    }

    public void p() throws IOException {
        byte[] bArrM33957class = m33957class(mo33983while().isServer());
        Cdo cdo = new Cdo((short) 20, bArrM33957class.length);
        cdo.write(bArrM33957class);
        cdo.m33984do();
    }

    /* renamed from: package, reason: not valid java name */
    public void m33971package(short s, String str, Throwable th) throws IOException {
        if (this.f30479goto) {
            return;
        }
        c(s, str, th);
        m33972private();
    }

    /* renamed from: private, reason: not valid java name */
    public void m33972private() {
        this.f30479goto = true;
        this.f30491this = true;
        m33958continue();
        this.f30483new.m33998import();
        if (this.f30467break) {
            return;
        }
        mo33956case();
    }

    /* renamed from: public, reason: not valid java name */
    public InputStream m33973public() {
        if (this.f30484package) {
            return this.f30468case;
        }
        throw new IllegalStateException("Cannot use InputStream in non-blocking mode! Use offerInput() instead.");
    }

    public void q(Vector vector) throws IOException {
        Cdo cdo = new Cdo(this, (short) 23);
        w(cdo, vector);
        cdo.m33984do();
    }

    public void r(int i2) {
        if (i2 >= 0 && i2 <= 2) {
            this.f30470class = i2;
            return;
        }
        throw new IllegalArgumentException("Illegal appDataSplitMode mode: " + i2);
    }

    /* renamed from: return, reason: not valid java name */
    public OutputStream m33974return() {
        if (this.f30484package) {
            return this.f30474else;
        }
        throw new IllegalStateException("Cannot use OutputStream in non-blocking mode! Use offerOutput() instead.");
    }

    public void s(byte[] bArr, int i2, int i3) throws IOException {
        if (this.f30479goto) {
            throw new IOException("Cannot write application data on closed/failed TLS connection");
        }
        while (i3 > 0) {
            if (this.f30469catch) {
                int i4 = this.f30470class;
                if (i4 == 1) {
                    m((short) 23, l0.f30675do, 0, 0);
                } else if (i4 != 2) {
                    m((short) 23, bArr, i2, 1);
                    i2++;
                    i3--;
                } else {
                    this.f30469catch = false;
                    m((short) 23, l0.f30675do, 0, 0);
                }
            }
            if (i3 > 0) {
                int iMin = Math.min(i3, this.f30483new.m33991catch());
                m((short) 23, bArr, i2, iMin);
                i2 += iMin;
                i3 -= iMin;
            }
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public boolean m33975strictfp() {
        return this.f30479goto;
    }

    /* renamed from: super, reason: not valid java name */
    public int m33976super() {
        if (this.f30484package) {
            throw new IllegalStateException("Cannot use getAvailableInputBytes() in blocking mode! Use getInputStream().available() instead.");
        }
        return m33960do();
    }

    /* renamed from: switch, reason: not valid java name */
    public abstract TlsPeer mo33977switch();

    /* renamed from: this, reason: not valid java name */
    public void m33978this() throws IOException {
        try {
            this.f30488static = (short) 16;
            this.f30480if.m34120break();
            this.f30478for.m34120break();
            this.f30483new.m33990case();
            this.f30469catch = !l0.u(mo33983while());
            if (!this.f30467break) {
                this.f30467break = true;
                if (this.f30484package) {
                    this.f30468case = new w(this);
                    this.f30474else = new y(this);
                }
            }
            if (this.f30476final != null) {
                if (this.f30489super == null) {
                    this.f30489super = new h.Cif().m34147if(this.f30492throw.m5025if()).m34145for(this.f30492throw.m5026new()).m34148new(this.f30492throw.m5022final()).m34150try(this.f30492throw.m5016case()).m34144else(this.f30495while).m34142case(this.f30492throw.m5021else()).m34149this(this.f30492throw.m5015break()).m34141break(this.f30487return).m34143do();
                    this.f30476final = new j0(this.f30476final.getSessionID(), this.f30489super);
                }
                mo33967import().m34106for(this.f30476final);
            }
            mo33977switch().notifyHandshakeComplete();
        } finally {
            mo33956case();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public int m33979throw() {
        if (this.f30484package) {
            throw new IllegalStateException("Cannot use getAvailableOutputBytes() in blocking mode! Use getOutputStream() instead.");
        }
        return this.f30466abstract.m34371do().m34126if();
    }

    /* renamed from: throws, reason: not valid java name */
    public void m33980throws(short s, short s2) throws IOException {
        mo33977switch().notifyAlertReceived(s, s2);
        if (s == 1) {
            mo33959default(s2);
        } else {
            m33972private();
            throw new o72(s2);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m33981try(boolean z) throws IOException {
        if (z != this.f30493throws) {
            throw new n72((short) 10);
        }
    }

    public void u(byte[] bArr, int i2, int i3) throws IOException {
        if (i3 < 4) {
            throw new n72((short) 80);
        }
        if (l0.d0(bArr, i2) != 0) {
            this.f30483new.m33989break().write(bArr, i2, i3);
        }
        int i4 = 0;
        do {
            int iMin = Math.min(i3 - i4, this.f30483new.m33991catch());
            m((short) 22, bArr, i2 + i4, iMin);
            i4 += iMin;
        } while (i4 < i3);
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m33982volatile(byte[] bArr) throws IOException {
        if (this.f30484package) {
            throw new IllegalStateException("Cannot use offerInput() in blocking mode! Use getInputStream() instead.");
        }
        if (this.f30479goto) {
            throw new IOException("Connection is closed, cannot accept any more input");
        }
        this.f30485private.m184do(bArr);
        while (this.f30485private.available() >= 5) {
            byte[] bArr2 = new byte[5];
            this.f30485private.m185if(bArr2);
            if (this.f30485private.available() < l0.U(bArr2, 3) + 5) {
                k(bArr2);
                return;
            }
            l();
            if (this.f30479goto) {
                if (this.f30488static != 16) {
                    throw new n72((short) 80);
                }
                return;
            }
        }
    }

    /* renamed from: while, reason: not valid java name */
    public abstract TlsContext mo33983while();
}
