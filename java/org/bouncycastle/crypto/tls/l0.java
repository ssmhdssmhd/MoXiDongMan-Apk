package org.bouncycastle.crypto.tls;

import android.support.v4.a22;
import android.support.v4.a4;
import android.support.v4.bq1;
import android.support.v4.ck1;
import android.support.v4.gr0;
import android.support.v4.hn0;
import android.support.v4.k50;
import android.support.v4.k72;
import android.support.v4.kv;
import android.support.v4.l72;
import android.support.v4.lr0;
import android.support.v4.mw1;
import android.support.v4.n72;
import android.support.v4.n90;
import android.support.v4.ow0;
import android.support.v4.pi0;
import android.support.v4.q3;
import android.support.v4.rg;
import android.support.v4.ux1;
import android.support.v4.vl;
import android.support.v4.wp1;
import android.support.v4.xp1;
import android.support.v4.y90;
import android.support.v4.yp1;
import android.support.v4.zi0;
import android.support.v4.zp1;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Hashtable;
import java.util.Vector;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.util.Cconst;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class l0 {

    /* renamed from: do, reason: not valid java name */
    public static final byte[] f30675do = new byte[0];

    /* renamed from: if, reason: not valid java name */
    public static final short[] f30679if = new short[0];

    /* renamed from: for, reason: not valid java name */
    public static final int[] f30677for = new int[0];

    /* renamed from: new, reason: not valid java name */
    public static final long[] f30680new = new long[0];

    /* renamed from: try, reason: not valid java name */
    public static final Integer f30681try = hn0.m3072for(13);

    /* renamed from: case, reason: not valid java name */
    public static final byte[] f30674case = {67, 76, 78, 84};

    /* renamed from: else, reason: not valid java name */
    public static final byte[] f30676else = {83, 82, 86, 82};

    /* renamed from: goto, reason: not valid java name */
    public static final byte[][] f30678goto = m34208strictfp();

    public static boolean A(long j) {
        return (WebSocketProtocol.PAYLOAD_SHORT_MAX & j) == j;
    }

    public static void A0(long j, byte[] bArr, int i) {
        bArr[i] = (byte) (j >>> 24);
        bArr[i + 1] = (byte) (j >>> 16);
        bArr[i + 2] = (byte) (j >>> 8);
        bArr[i + 3] = (byte) j;
    }

    public static boolean B(int i) {
        return (16777215 & i) == i;
    }

    public static void B0(long j, OutputStream outputStream) throws IOException {
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) j);
    }

    public static boolean C(long j) {
        return (16777215 & j) == j;
    }

    public static void C0(long j, byte[] bArr, int i) {
        bArr[i] = (byte) (j >>> 40);
        bArr[i + 1] = (byte) (j >>> 32);
        bArr[i + 2] = (byte) (j >>> 24);
        bArr[i + 3] = (byte) (j >>> 16);
        bArr[i + 4] = (byte) (j >>> 8);
        bArr[i + 5] = (byte) j;
    }

    public static boolean D(long j) {
        return (4294967295L & j) == j;
    }

    public static void D0(long j, OutputStream outputStream) throws IOException {
        outputStream.write((byte) (j >>> 56));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) j);
    }

    public static boolean E(long j) {
        return (281474976710655L & j) == j;
    }

    public static void E0(long j, byte[] bArr, int i) {
        bArr[i] = (byte) (j >>> 56);
        bArr[i + 1] = (byte) (j >>> 48);
        bArr[i + 2] = (byte) (j >>> 40);
        bArr[i + 3] = (byte) (j >>> 32);
        bArr[i + 4] = (byte) (j >>> 24);
        bArr[i + 5] = (byte) (j >>> 16);
        bArr[i + 6] = (byte) (j >>> 8);
        bArr[i + 7] = (byte) j;
    }

    public static boolean F(long j) {
        return true;
    }

    public static void F0(int i, OutputStream outputStream) throws IOException {
        outputStream.write(i);
    }

    public static boolean G(int i) {
        return (i & 255) == i;
    }

    public static void G0(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
    }

    public static boolean H(long j) {
        return (255 & j) == j;
    }

    public static void H0(short s, OutputStream outputStream) throws IOException {
        outputStream.write(s);
    }

    public static boolean I(short s) {
        return (s & 255) == s;
    }

    public static void I0(short s, byte[] bArr, int i) {
        bArr[i] = (byte) s;
    }

    public static Vector J(boolean z, InputStream inputStream) throws IOException {
        int iT = T(inputStream);
        if (iT < 2 || (iT & 1) != 0) {
            throw new n72((short) 50);
        }
        int i = iT / 2;
        Vector vector = new Vector(i);
        for (int i2 = 0; i2 < i; i2++) {
            i iVarM34151new = i.m34151new(inputStream);
            if (!z && iVarM34151new.m34153for() == 0) {
                throw new n72((short) 47);
            }
            vector.addElement(iVarM34151new);
        }
        return vector;
    }

    public static void J0(short[] sArr, OutputStream outputStream) throws IOException {
        for (short s : sArr) {
            H0(s, outputStream);
        }
    }

    public static Cfinal K(byte[] bArr) throws IOException {
        Celse celse = new Celse(bArr);
        Cfinal cfinalM33002break = celse.m33002break();
        if (cfinalM33002break == null) {
            throw new n72((short) 50);
        }
        if (celse.m33002break() == null) {
            return cfinalM33002break;
        }
        throw new n72((short) 50);
    }

    public static void K0(short[] sArr, byte[] bArr, int i) throws IOException {
        for (short s : sArr) {
            I0(s, bArr, i);
            i++;
        }
    }

    public static byte[] L(int i, InputStream inputStream) throws IOException {
        if (i < 1) {
            return f30675do;
        }
        byte[] bArr = new byte[i];
        int iM17case = a22.m17case(inputStream, bArr);
        if (iM17case == 0) {
            return null;
        }
        if (iM17case == i) {
            return bArr;
        }
        throw new EOFException();
    }

    public static void L0(short[] sArr, OutputStream outputStream) throws IOException {
        m34218while(sArr.length);
        F0(sArr.length, outputStream);
        J0(sArr, outputStream);
    }

    public static Cfinal M(byte[] bArr) throws IOException {
        Cfinal cfinalK = K(bArr);
        if (q3.m6362case(cfinalK.m32764do(ASN1Encoding.DER), bArr)) {
            return cfinalK;
        }
        throw new n72((short) 50);
    }

    public static void M0(short[] sArr, byte[] bArr, int i) throws IOException {
        m34218while(sArr.length);
        G0(sArr.length, bArr, i);
        K0(sArr, bArr, i + 1);
    }

    public static void N(byte[] bArr, InputStream inputStream) throws IOException {
        int length = bArr.length;
        if (length > 0 && length != a22.m17case(inputStream, bArr)) {
            throw new EOFException();
        }
    }

    public static void N0(a aVar, OutputStream outputStream) throws IOException {
        outputStream.write(aVar.m33944try());
        outputStream.write(aVar.m33936case());
    }

    public static byte[] O(int i, InputStream inputStream) throws IOException {
        if (i < 1) {
            return f30675do;
        }
        byte[] bArr = new byte[i];
        if (i == a22.m17case(inputStream, bArr)) {
            return bArr;
        }
        throw new EOFException();
    }

    public static void O0(a aVar, byte[] bArr, int i) {
        bArr[i] = (byte) aVar.m33944try();
        bArr[i + 1] = (byte) aVar.m33936case();
    }

    public static byte[] P(InputStream inputStream) throws IOException {
        return O(T(inputStream), inputStream);
    }

    public static byte[] Q(InputStream inputStream) throws IOException {
        return O(W(inputStream), inputStream);
    }

    public static byte[] R(InputStream inputStream) throws IOException {
        return O(c0(inputStream), inputStream);
    }

    public static Vector S(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        Vector vectorJ = J(false, byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        return vectorJ;
    }

    public static int T(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        int i2 = inputStream.read();
        if (i2 >= 0) {
            return i2 | (i << 8);
        }
        throw new EOFException();
    }

    public static int U(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    public static int[] V(int i, InputStream inputStream) throws IOException {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = T(inputStream);
        }
        return iArr;
    }

    public static int W(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        int i2 = inputStream.read();
        int i3 = inputStream.read();
        if (i3 >= 0) {
            return i3 | (i << 16) | (i2 << 8);
        }
        throw new EOFException();
    }

    public static int X(byte[] bArr, int i) {
        int i2 = (bArr[i] & 255) << 16;
        int i3 = i + 1;
        return (bArr[i3 + 1] & 255) | i2 | ((bArr[i3] & 255) << 8);
    }

    public static long Y(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        int i2 = inputStream.read();
        int i3 = inputStream.read();
        if (inputStream.read() >= 0) {
            return (r4 | (i << 24) | (i2 << 16) | (i3 << 8)) & 4294967295L;
        }
        throw new EOFException();
    }

    public static long Z(byte[] bArr, int i) {
        int i2 = (bArr[i] & 255) << 24;
        int i3 = i + 1;
        int i4 = i2 | ((bArr[i3] & 255) << 16);
        int i5 = i3 + 1;
        return ((bArr[i5 + 1] & 255) | i4 | ((bArr[i5] & 255) << 8)) & 4294967295L;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x004b A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(int i) throws IOException {
        if (i != 1 && i != 2) {
            if (i != 4 && i != 5) {
                switch (i) {
                    case 10:
                    case 13:
                    case 16:
                    case 19:
                    case 22:
                    case 27:
                    case 139:
                    case 143:
                    case 147:
                        return 7;
                    case 24:
                    case 138:
                    case 142:
                    case 146:
                        break;
                    case 132:
                    case 133:
                    case 134:
                    case 135:
                    case 136:
                    case 137:
                    case 192:
                    case 193:
                    case 194:
                    case 195:
                    case 196:
                    case 197:
                        return 13;
                    case 140:
                    case 144:
                    case 148:
                    case 174:
                    case 178:
                    case 182:
                        return 8;
                    case 141:
                    case 145:
                    case 149:
                    case 175:
                    case 179:
                    case 183:
                        return 9;
                    case 150:
                    case 151:
                    case 152:
                    case 153:
                    case 154:
                    case 155:
                        return 14;
                    case 156:
                    case 158:
                    case 160:
                    case 162:
                    case 164:
                    case 166:
                    case 168:
                    case 170:
                    case 172:
                        return 10;
                    case 157:
                    case 159:
                    case 161:
                    case 163:
                    case 165:
                    case 167:
                    case 169:
                    case 171:
                    case 173:
                        return 11;
                    case 176:
                    case 177:
                    case 180:
                    case 181:
                    case 184:
                    case 185:
                        return 0;
                    case 186:
                    case 187:
                    case 188:
                    case 189:
                    case 190:
                    case 191:
                        return 12;
                    default:
                        switch (i) {
                            case 44:
                            case 45:
                            case 46:
                                break;
                            case 47:
                            case 48:
                            case 49:
                            case 50:
                            case 51:
                            case 52:
                            case 60:
                            case 62:
                            case 63:
                            case 64:
                                return 8;
                            case 53:
                            case 54:
                            case 55:
                            case 56:
                            case 57:
                            case 58:
                            case 61:
                                return 9;
                            case 59:
                                break;
                            case 65:
                            case 66:
                            case 67:
                            case 68:
                            case 69:
                            case 70:
                                return 12;
                            default:
                                switch (i) {
                                    case 103:
                                    case 108:
                                        return 8;
                                    case 104:
                                    case 105:
                                    case 106:
                                    case 107:
                                    case 109:
                                        return 9;
                                    default:
                                        switch (i) {
                                            case vl.R /* 49153 */:
                                            case vl.W /* 49158 */:
                                            case vl.b0 /* 49163 */:
                                            case vl.g0 /* 49168 */:
                                            case vl.l0 /* 49173 */:
                                            case vl.P1 /* 49209 */:
                                                break;
                                            case vl.S /* 49154 */:
                                            case vl.X /* 49159 */:
                                            case vl.c0 /* 49164 */:
                                            case vl.h0 /* 49169 */:
                                            case vl.m0 /* 49174 */:
                                            case vl.J1 /* 49203 */:
                                                break;
                                            case vl.T /* 49155 */:
                                            case vl.Y /* 49160 */:
                                            case vl.d0 /* 49165 */:
                                            case vl.i0 /* 49170 */:
                                            case vl.n0 /* 49175 */:
                                            case vl.t0 /* 49178 */:
                                            case vl.u0 /* 49179 */:
                                            case vl.v0 /* 49180 */:
                                            case vl.K1 /* 49204 */:
                                                return 7;
                                            case vl.U /* 49156 */:
                                            case vl.Z /* 49161 */:
                                            case vl.e0 /* 49166 */:
                                            case vl.j0 /* 49171 */:
                                            case vl.o0 /* 49176 */:
                                            case vl.w0 /* 49181 */:
                                            case vl.x0 /* 49182 */:
                                            case vl.y0 /* 49183 */:
                                            case vl.b1 /* 49187 */:
                                            case vl.d1 /* 49189 */:
                                            case vl.f1 /* 49191 */:
                                            case vl.h1 /* 49193 */:
                                            case vl.L1 /* 49205 */:
                                            case vl.N1 /* 49207 */:
                                                return 8;
                                            case vl.V /* 49157 */:
                                            case vl.a0 /* 49162 */:
                                            case vl.f0 /* 49167 */:
                                            case vl.k0 /* 49172 */:
                                            case vl.p0 /* 49177 */:
                                            case vl.z0 /* 49184 */:
                                            case vl.A0 /* 49185 */:
                                            case vl.B0 /* 49186 */:
                                            case vl.c1 /* 49188 */:
                                            case vl.e1 /* 49190 */:
                                            case vl.g1 /* 49192 */:
                                            case vl.i1 /* 49194 */:
                                            case vl.M1 /* 49206 */:
                                            case vl.O1 /* 49208 */:
                                                return 9;
                                            case vl.j1 /* 49195 */:
                                            case vl.l1 /* 49197 */:
                                            case vl.n1 /* 49199 */:
                                            case vl.p1 /* 49201 */:
                                                return 10;
                                            case vl.k1 /* 49196 */:
                                            case vl.m1 /* 49198 */:
                                            case vl.o1 /* 49200 */:
                                            case vl.q1 /* 49202 */:
                                                return 11;
                                            case vl.Q1 /* 49210 */:
                                            case vl.R1 /* 49211 */:
                                                break;
                                            default:
                                                switch (i) {
                                                    case vl.T1 /* 49266 */:
                                                    case vl.V1 /* 49268 */:
                                                    case vl.X1 /* 49270 */:
                                                    case vl.Z1 /* 49272 */:
                                                    case vl.B2 /* 49300 */:
                                                    case vl.D2 /* 49302 */:
                                                    case vl.F2 /* 49304 */:
                                                    case vl.H2 /* 49306 */:
                                                        return 12;
                                                    case vl.U1 /* 49267 */:
                                                    case vl.W1 /* 49269 */:
                                                    case vl.Y1 /* 49271 */:
                                                    case vl.a2 /* 49273 */:
                                                    case vl.C2 /* 49301 */:
                                                    case vl.E2 /* 49303 */:
                                                    case vl.G2 /* 49305 */:
                                                    case vl.I2 /* 49307 */:
                                                        return 13;
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
                                                        return 19;
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
                                                        return 20;
                                                    case vl.J2 /* 49308 */:
                                                    case vl.L2 /* 49310 */:
                                                    case vl.R2 /* 49316 */:
                                                    case vl.T2 /* 49318 */:
                                                    case vl.Z2 /* 49324 */:
                                                        return 15;
                                                    case vl.K2 /* 49309 */:
                                                    case vl.M2 /* 49311 */:
                                                    case vl.S2 /* 49317 */:
                                                    case vl.U2 /* 49319 */:
                                                    case vl.a3 /* 49325 */:
                                                        return 17;
                                                    case vl.N2 /* 49312 */:
                                                    case vl.P2 /* 49314 */:
                                                    case vl.V2 /* 49320 */:
                                                    case vl.X2 /* 49322 */:
                                                    case vl.b3 /* 49326 */:
                                                        return 16;
                                                    case vl.O2 /* 49313 */:
                                                    case vl.Q2 /* 49315 */:
                                                    case vl.W2 /* 49321 */:
                                                    case vl.Y2 /* 49323 */:
                                                    case vl.c3 /* 49327 */:
                                                        return 18;
                                                    default:
                                                        switch (i) {
                                                            case vl.e3 /* 52392 */:
                                                            case vl.f3 /* 52393 */:
                                                            case vl.g3 /* 52394 */:
                                                            case vl.h3 /* 52395 */:
                                                            case vl.i3 /* 52396 */:
                                                            case vl.j3 /* 52397 */:
                                                            case vl.k3 /* 52398 */:
                                                                return 21;
                                                            default:
                                                                switch (i) {
                                                                    case 65280:
                                                                    case 65282:
                                                                    case vl.p3 /* 65284 */:
                                                                        return 103;
                                                                    case 65281:
                                                                    case vl.o3 /* 65283 */:
                                                                    case vl.q3 /* 65285 */:
                                                                        return 104;
                                                                    default:
                                                                        switch (i) {
                                                                            case vl.r3 /* 65296 */:
                                                                            case vl.t3 /* 65298 */:
                                                                            case vl.v3 /* 65300 */:
                                                                                return 103;
                                                                            case vl.s3 /* 65297 */:
                                                                            case vl.u3 /* 65299 */:
                                                                            case vl.w3 /* 65301 */:
                                                                                return 104;
                                                                            default:
                                                                                throw new n72((short) 80);
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
            }
            return 2;
        }
        return 0;
    }

    public static long a0(InputStream inputStream) throws IOException {
        return ((W(inputStream) & 4294967295L) << 24) | (4294967295L & W(inputStream));
    }

    /* renamed from: abstract, reason: not valid java name */
    public static byte[] m34180abstract(int[] iArr) throws IOException {
        byte[] bArr = new byte[(iArr.length * 2) + 2];
        w0(iArr, bArr, 0);
        return bArr;
    }

    public static byte[] b(Hashtable hashtable, Integer num) {
        if (hashtable == null) {
            return null;
        }
        return (byte[]) hashtable.get(num);
    }

    public static long b0(byte[] bArr, int i) {
        return (X(bArr, i + 3) & 4294967295L) | ((X(bArr, i) & 4294967295L) << 24);
    }

    /* renamed from: break, reason: not valid java name */
    public static void m34181break(int i) throws IOException {
        if (!z(i)) {
            throw new n72((short) 80);
        }
    }

    public static short c(int i) {
        if (i == 0) {
            throw new IllegalArgumentException("legacy PRF not a valid algorithm");
        }
        if (i == 1) {
            return (short) 4;
        }
        if (i == 2) {
            return (short) 5;
        }
        throw new IllegalArgumentException("unknown PRFAlgorithm");
    }

    public static short c0(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i >= 0) {
            return (short) i;
        }
        throw new EOFException();
    }

    /* renamed from: case, reason: not valid java name */
    public static byte[] m34182case(byte[] bArr, byte[] bArr2, int i) {
        Digest digestM34214throws = m34214throws((short) 1);
        Digest digestM34214throws2 = m34214throws((short) 2);
        int digestSize = digestM34214throws.getDigestSize();
        int digestSize2 = digestM34214throws2.getDigestSize();
        byte[] bArr3 = new byte[digestSize2];
        byte[] bArr4 = new byte[i + digestSize];
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            byte[] bArr5 = f30678goto[i3];
            digestM34214throws2.update(bArr5, 0, bArr5.length);
            digestM34214throws2.update(bArr, 0, bArr.length);
            digestM34214throws2.update(bArr2, 0, bArr2.length);
            digestM34214throws2.doFinal(bArr3, 0);
            digestM34214throws.update(bArr, 0, bArr.length);
            digestM34214throws.update(bArr3, 0, digestSize2);
            digestM34214throws.doFinal(bArr4, i2);
            i2 += digestSize;
            i3++;
        }
        return q3.m6378instanceof(bArr4, 0, i);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m34183catch(long j) throws IOException {
        if (!A(j)) {
            throw new n72((short) 80);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m34184class(int i) throws IOException {
        if (!B(i)) {
            throw new n72((short) 80);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m34185const(long j) throws IOException {
        if (!C(j)) {
            throw new n72((short) 80);
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public static byte[] m34186continue(short[] sArr) throws IOException {
        byte[] bArr = new byte[sArr.length + 1];
        M0(sArr, bArr, 0);
        return bArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0053 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int d(int i) throws IOException {
        if (i != 1 && i != 2 && i != 4 && i != 5) {
            switch (i) {
                case 10:
                case 132:
                case 150:
                case 156:
                case 157:
                case 186:
                case 192:
                    break;
                case 13:
                case 133:
                case 151:
                case 164:
                case 165:
                case 187:
                case 193:
                    return 7;
                case 16:
                case 134:
                case 152:
                case 160:
                case 161:
                case 188:
                case 194:
                    return 9;
                case 19:
                case 135:
                case 153:
                case 162:
                case 163:
                case 189:
                case 195:
                    return 3;
                case 22:
                case 136:
                case 154:
                case 158:
                case 159:
                case 190:
                case 196:
                    return 5;
                case 24:
                case 27:
                case 137:
                case 155:
                case 166:
                case 167:
                case 191:
                case 197:
                    return 11;
                case 138:
                case 139:
                case 140:
                case 141:
                case 168:
                case 169:
                case 174:
                case 175:
                case 176:
                case 177:
                    return 13;
                case 142:
                case 143:
                case 144:
                case 145:
                case 170:
                case 171:
                case 178:
                case 179:
                case 180:
                case 181:
                    return 14;
                case 146:
                case 147:
                case 148:
                case 149:
                case 172:
                case 173:
                case 182:
                case 183:
                case 184:
                case 185:
                    return 15;
                default:
                    switch (i) {
                        case 44:
                            return 13;
                        case 45:
                            return 14;
                        case 46:
                            return 15;
                        case 47:
                        case 53:
                        case 59:
                        case 60:
                        case 61:
                        case 65:
                            break;
                        case 48:
                        case 54:
                        case 62:
                        case 66:
                            return 7;
                        case 49:
                        case 55:
                        case 63:
                        case 67:
                            return 9;
                        case 50:
                        case 56:
                        case 64:
                        case 68:
                            return 3;
                        case 51:
                        case 57:
                        case 69:
                            break;
                        case 52:
                        case 58:
                        case 70:
                            return 11;
                        default:
                            switch (i) {
                                case 103:
                                case 107:
                                    break;
                                case 104:
                                    return 7;
                                case 105:
                                    return 9;
                                case 106:
                                    return 3;
                                case 108:
                                case 109:
                                    return 11;
                                default:
                                    switch (i) {
                                        case vl.R /* 49153 */:
                                        case vl.S /* 49154 */:
                                        case vl.T /* 49155 */:
                                        case vl.U /* 49156 */:
                                        case vl.V /* 49157 */:
                                        case vl.d1 /* 49189 */:
                                        case vl.e1 /* 49190 */:
                                        case vl.l1 /* 49197 */:
                                        case vl.m1 /* 49198 */:
                                            return 16;
                                        case vl.W /* 49158 */:
                                        case vl.X /* 49159 */:
                                        case vl.Y /* 49160 */:
                                        case vl.Z /* 49161 */:
                                        case vl.a0 /* 49162 */:
                                        case vl.b1 /* 49187 */:
                                        case vl.c1 /* 49188 */:
                                        case vl.j1 /* 49195 */:
                                        case vl.k1 /* 49196 */:
                                            return 17;
                                        case vl.b0 /* 49163 */:
                                        case vl.c0 /* 49164 */:
                                        case vl.d0 /* 49165 */:
                                        case vl.e0 /* 49166 */:
                                        case vl.f0 /* 49167 */:
                                        case vl.h1 /* 49193 */:
                                        case vl.i1 /* 49194 */:
                                        case vl.p1 /* 49201 */:
                                        case vl.q1 /* 49202 */:
                                            return 18;
                                        case vl.g0 /* 49168 */:
                                        case vl.h0 /* 49169 */:
                                        case vl.i0 /* 49170 */:
                                        case vl.j0 /* 49171 */:
                                        case vl.k0 /* 49172 */:
                                        case vl.f1 /* 49191 */:
                                        case vl.g1 /* 49192 */:
                                        case vl.n1 /* 49199 */:
                                        case vl.o1 /* 49200 */:
                                            return 19;
                                        case vl.l0 /* 49173 */:
                                        case vl.m0 /* 49174 */:
                                        case vl.n0 /* 49175 */:
                                        case vl.o0 /* 49176 */:
                                        case vl.p0 /* 49177 */:
                                            return 20;
                                        case vl.t0 /* 49178 */:
                                        case vl.w0 /* 49181 */:
                                        case vl.z0 /* 49184 */:
                                            return 21;
                                        case vl.u0 /* 49179 */:
                                        case vl.x0 /* 49182 */:
                                        case vl.A0 /* 49185 */:
                                            return 23;
                                        case vl.v0 /* 49180 */:
                                        case vl.y0 /* 49183 */:
                                        case vl.B0 /* 49186 */:
                                            return 22;
                                        case vl.J1 /* 49203 */:
                                        case vl.K1 /* 49204 */:
                                        case vl.L1 /* 49205 */:
                                        case vl.M1 /* 49206 */:
                                        case vl.N1 /* 49207 */:
                                        case vl.O1 /* 49208 */:
                                        case vl.P1 /* 49209 */:
                                        case vl.Q1 /* 49210 */:
                                        case vl.R1 /* 49211 */:
                                            return 24;
                                        default:
                                            switch (i) {
                                                case vl.T1 /* 49266 */:
                                                case vl.U1 /* 49267 */:
                                                case vl.n2 /* 49286 */:
                                                case vl.o2 /* 49287 */:
                                                case vl.Z2 /* 49324 */:
                                                case vl.a3 /* 49325 */:
                                                case vl.b3 /* 49326 */:
                                                case vl.c3 /* 49327 */:
                                                    return 17;
                                                case vl.V1 /* 49268 */:
                                                case vl.W1 /* 49269 */:
                                                case vl.p2 /* 49288 */:
                                                case vl.q2 /* 49289 */:
                                                    return 16;
                                                case vl.X1 /* 49270 */:
                                                case vl.Y1 /* 49271 */:
                                                case vl.r2 /* 49290 */:
                                                case vl.s2 /* 49291 */:
                                                    return 19;
                                                case vl.Z1 /* 49272 */:
                                                case vl.a2 /* 49273 */:
                                                case vl.t2 /* 49292 */:
                                                case vl.u2 /* 49293 */:
                                                    return 18;
                                                case vl.b2 /* 49274 */:
                                                case vl.c2 /* 49275 */:
                                                case vl.J2 /* 49308 */:
                                                case vl.K2 /* 49309 */:
                                                case vl.N2 /* 49312 */:
                                                case vl.O2 /* 49313 */:
                                                    break;
                                                case vl.d2 /* 49276 */:
                                                case vl.e2 /* 49277 */:
                                                case vl.L2 /* 49310 */:
                                                case vl.M2 /* 49311 */:
                                                case vl.P2 /* 49314 */:
                                                case vl.Q2 /* 49315 */:
                                                    break;
                                                case vl.f2 /* 49278 */:
                                                case vl.g2 /* 49279 */:
                                                    return 9;
                                                case vl.h2 /* 49280 */:
                                                case vl.i2 /* 49281 */:
                                                    return 3;
                                                case vl.j2 /* 49282 */:
                                                case vl.k2 /* 49283 */:
                                                    return 7;
                                                case vl.l2 /* 49284 */:
                                                case vl.m2 /* 49285 */:
                                                    return 11;
                                                case vl.v2 /* 49294 */:
                                                case vl.w2 /* 49295 */:
                                                case vl.B2 /* 49300 */:
                                                case vl.C2 /* 49301 */:
                                                case vl.R2 /* 49316 */:
                                                case vl.S2 /* 49317 */:
                                                case vl.V2 /* 49320 */:
                                                case vl.W2 /* 49321 */:
                                                    return 13;
                                                case vl.x2 /* 49296 */:
                                                case vl.y2 /* 49297 */:
                                                case vl.D2 /* 49302 */:
                                                case vl.E2 /* 49303 */:
                                                case vl.T2 /* 49318 */:
                                                case vl.U2 /* 49319 */:
                                                case vl.X2 /* 49322 */:
                                                case vl.Y2 /* 49323 */:
                                                    return 14;
                                                case vl.z2 /* 49298 */:
                                                case vl.A2 /* 49299 */:
                                                case vl.F2 /* 49304 */:
                                                case vl.G2 /* 49305 */:
                                                    return 15;
                                                case vl.H2 /* 49306 */:
                                                case vl.I2 /* 49307 */:
                                                    return 24;
                                                default:
                                                    switch (i) {
                                                        case vl.e3 /* 52392 */:
                                                            return 19;
                                                        case vl.f3 /* 52393 */:
                                                            return 17;
                                                        case vl.g3 /* 52394 */:
                                                            break;
                                                        case vl.h3 /* 52395 */:
                                                            return 13;
                                                        case vl.i3 /* 52396 */:
                                                            return 24;
                                                        case vl.j3 /* 52397 */:
                                                            return 14;
                                                        case vl.k3 /* 52398 */:
                                                            return 15;
                                                        default:
                                                            switch (i) {
                                                                case 65280:
                                                                case 65281:
                                                                    break;
                                                                case 65282:
                                                                case vl.o3 /* 65283 */:
                                                                    return 19;
                                                                case vl.p3 /* 65284 */:
                                                                case vl.q3 /* 65285 */:
                                                                    return 17;
                                                                default:
                                                                    switch (i) {
                                                                        case vl.r3 /* 65296 */:
                                                                        case vl.s3 /* 65297 */:
                                                                            return 13;
                                                                        case vl.t3 /* 65298 */:
                                                                        case vl.u3 /* 65299 */:
                                                                            return 14;
                                                                        case vl.v3 /* 65300 */:
                                                                        case vl.w3 /* 65301 */:
                                                                            return 24;
                                                                        default:
                                                                            throw new n72((short) 80);
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
            }
        }
        return 1;
    }

    public static short d0(byte[] bArr, int i) {
        return (short) (bArr[i] & 255);
    }

    /* renamed from: default, reason: not valid java name */
    public static Digest m34187default(int i) {
        return i != 0 ? m34214throws(c(i)) : new Cthrow();
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m34188do(TlsContext tlsContext, byte[] bArr, String str, byte[] bArr2, int i) {
        if (tlsContext.getServerVersion().m33937catch()) {
            throw new IllegalStateException("No PRF available for SSLv3 session");
        }
        byte[] bArrM36358goto = Cfor.m36358goto(str);
        byte[] bArrM34207static = m34207static(bArrM36358goto, bArr2);
        int iM5024goto = tlsContext.getSecurityParameters().m5024goto();
        if (iM5024goto == 0) {
            return m34193for(bArr, bArrM36358goto, bArrM34207static, i);
        }
        byte[] bArr3 = new byte[i];
        m(m34187default(iM5024goto), bArr, bArrM34207static, bArr3);
        return bArr3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002c A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int e(int i) throws IOException {
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i != 5) {
                        switch (i) {
                            case 10:
                            case 13:
                            case 16:
                            case 19:
                            case 22:
                            case 27:
                            case 132:
                            case 133:
                            case 134:
                            case 135:
                            case 136:
                            case 137:
                            case 138:
                            case 139:
                            case 140:
                            case 141:
                            case 142:
                            case 143:
                            case 144:
                            case 145:
                            case 146:
                            case 147:
                            case 148:
                            case 149:
                            case 150:
                            case 151:
                            case 152:
                            case 153:
                            case 154:
                            case 155:
                                break;
                            case 24:
                                break;
                            case 156:
                            case 157:
                            case 158:
                            case 159:
                            case 160:
                            case 161:
                            case 162:
                            case 163:
                            case 164:
                            case 165:
                            case 166:
                            case 167:
                            case 168:
                            case 169:
                            case 170:
                            case 171:
                            case 172:
                            case 173:
                                return 0;
                            case 174:
                            case 176:
                            case 178:
                            case 180:
                            case 182:
                            case 184:
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
                                return 3;
                            case 175:
                            case 177:
                            case 179:
                            case 181:
                            case 183:
                            case 185:
                                return 4;
                            default:
                                switch (i) {
                                    case 44:
                                    case 45:
                                    case 46:
                                    case 47:
                                    case 48:
                                    case 49:
                                    case 50:
                                    case 51:
                                    case 52:
                                    case 53:
                                    case 54:
                                    case 55:
                                    case 56:
                                    case 57:
                                    case 58:
                                    case 65:
                                    case 66:
                                    case 67:
                                    case 68:
                                    case 69:
                                    case 70:
                                        break;
                                    case 59:
                                    case 60:
                                    case 61:
                                    case 62:
                                    case 63:
                                    case 64:
                                        return 3;
                                    default:
                                        switch (i) {
                                            case 103:
                                            case 104:
                                            case 105:
                                            case 106:
                                            case 107:
                                            case 108:
                                            case 109:
                                                return 3;
                                            default:
                                                switch (i) {
                                                    case vl.R /* 49153 */:
                                                    case vl.S /* 49154 */:
                                                    case vl.T /* 49155 */:
                                                    case vl.U /* 49156 */:
                                                    case vl.V /* 49157 */:
                                                    case vl.W /* 49158 */:
                                                    case vl.X /* 49159 */:
                                                    case vl.Y /* 49160 */:
                                                    case vl.Z /* 49161 */:
                                                    case vl.a0 /* 49162 */:
                                                    case vl.b0 /* 49163 */:
                                                    case vl.c0 /* 49164 */:
                                                    case vl.d0 /* 49165 */:
                                                    case vl.e0 /* 49166 */:
                                                    case vl.f0 /* 49167 */:
                                                    case vl.g0 /* 49168 */:
                                                    case vl.h0 /* 49169 */:
                                                    case vl.i0 /* 49170 */:
                                                    case vl.j0 /* 49171 */:
                                                    case vl.k0 /* 49172 */:
                                                    case vl.l0 /* 49173 */:
                                                    case vl.m0 /* 49174 */:
                                                    case vl.n0 /* 49175 */:
                                                    case vl.o0 /* 49176 */:
                                                    case vl.p0 /* 49177 */:
                                                    case vl.t0 /* 49178 */:
                                                    case vl.u0 /* 49179 */:
                                                    case vl.v0 /* 49180 */:
                                                    case vl.w0 /* 49181 */:
                                                    case vl.x0 /* 49182 */:
                                                    case vl.y0 /* 49183 */:
                                                    case vl.z0 /* 49184 */:
                                                    case vl.A0 /* 49185 */:
                                                    case vl.B0 /* 49186 */:
                                                    case vl.J1 /* 49203 */:
                                                    case vl.K1 /* 49204 */:
                                                    case vl.L1 /* 49205 */:
                                                    case vl.M1 /* 49206 */:
                                                    case vl.P1 /* 49209 */:
                                                        break;
                                                    case vl.b1 /* 49187 */:
                                                    case vl.d1 /* 49189 */:
                                                    case vl.f1 /* 49191 */:
                                                    case vl.h1 /* 49193 */:
                                                    case vl.N1 /* 49207 */:
                                                    case vl.Q1 /* 49210 */:
                                                        return 3;
                                                    case vl.c1 /* 49188 */:
                                                    case vl.e1 /* 49190 */:
                                                    case vl.g1 /* 49192 */:
                                                    case vl.i1 /* 49194 */:
                                                    case vl.O1 /* 49208 */:
                                                    case vl.R1 /* 49211 */:
                                                        break;
                                                    case vl.j1 /* 49195 */:
                                                    case vl.k1 /* 49196 */:
                                                    case vl.l1 /* 49197 */:
                                                    case vl.m1 /* 49198 */:
                                                    case vl.n1 /* 49199 */:
                                                    case vl.o1 /* 49200 */:
                                                    case vl.p1 /* 49201 */:
                                                    case vl.q1 /* 49202 */:
                                                        return 0;
                                                    default:
                                                        switch (i) {
                                                            case vl.T1 /* 49266 */:
                                                            case vl.V1 /* 49268 */:
                                                            case vl.X1 /* 49270 */:
                                                            case vl.Z1 /* 49272 */:
                                                            case vl.B2 /* 49300 */:
                                                            case vl.D2 /* 49302 */:
                                                            case vl.F2 /* 49304 */:
                                                            case vl.H2 /* 49306 */:
                                                                return 3;
                                                            case vl.U1 /* 49267 */:
                                                            case vl.W1 /* 49269 */:
                                                            case vl.Y1 /* 49271 */:
                                                            case vl.a2 /* 49273 */:
                                                            case vl.C2 /* 49301 */:
                                                            case vl.E2 /* 49303 */:
                                                            case vl.G2 /* 49305 */:
                                                            case vl.I2 /* 49307 */:
                                                                break;
                                                            case vl.b2 /* 49274 */:
                                                            case vl.c2 /* 49275 */:
                                                            case vl.d2 /* 49276 */:
                                                            case vl.e2 /* 49277 */:
                                                            case vl.f2 /* 49278 */:
                                                            case vl.g2 /* 49279 */:
                                                            case vl.h2 /* 49280 */:
                                                            case vl.i2 /* 49281 */:
                                                            case vl.j2 /* 49282 */:
                                                            case vl.k2 /* 49283 */:
                                                            case vl.l2 /* 49284 */:
                                                            case vl.m2 /* 49285 */:
                                                            case vl.n2 /* 49286 */:
                                                            case vl.o2 /* 49287 */:
                                                            case vl.p2 /* 49288 */:
                                                            case vl.q2 /* 49289 */:
                                                            case vl.r2 /* 49290 */:
                                                            case vl.s2 /* 49291 */:
                                                            case vl.t2 /* 49292 */:
                                                            case vl.u2 /* 49293 */:
                                                            case vl.v2 /* 49294 */:
                                                            case vl.w2 /* 49295 */:
                                                            case vl.x2 /* 49296 */:
                                                            case vl.y2 /* 49297 */:
                                                            case vl.z2 /* 49298 */:
                                                            case vl.A2 /* 49299 */:
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
                                                                return 0;
                                                            default:
                                                                switch (i) {
                                                                    case vl.e3 /* 52392 */:
                                                                    case vl.f3 /* 52393 */:
                                                                    case vl.g3 /* 52394 */:
                                                                    case vl.h3 /* 52395 */:
                                                                    case vl.i3 /* 52396 */:
                                                                    case vl.j3 /* 52397 */:
                                                                    case vl.k3 /* 52398 */:
                                                                        return 0;
                                                                    default:
                                                                        switch (i) {
                                                                            case 65280:
                                                                            case 65281:
                                                                            case 65282:
                                                                            case vl.o3 /* 65283 */:
                                                                            case vl.p3 /* 65284 */:
                                                                            case vl.q3 /* 65285 */:
                                                                                return 0;
                                                                            default:
                                                                                switch (i) {
                                                                                    case vl.r3 /* 65296 */:
                                                                                    case vl.s3 /* 65297 */:
                                                                                    case vl.t3 /* 65298 */:
                                                                                    case vl.u3 /* 65299 */:
                                                                                    case vl.v3 /* 65300 */:
                                                                                    case vl.w3 /* 65301 */:
                                                                                        return 0;
                                                                                    default:
                                                                                        throw new n72((short) 80);
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
            }
            return 2;
        }
        return 1;
    }

    public static short[] e0(int i, InputStream inputStream) throws IOException {
        short[] sArr = new short[i];
        for (int i2 = 0; i2 < i; i2++) {
            sArr[i2] = c0(inputStream);
        }
        return sArr;
    }

    /* renamed from: else, reason: not valid java name */
    public static byte[] m34189else(TlsContext tlsContext, byte[] bArr) {
        mw1 securityParameters = tlsContext.getSecurityParameters();
        byte[] bArrM5018class = securityParameters.m5022final() ? securityParameters.m5018class() : m34207static(securityParameters.m5023for(), securityParameters.m5017catch());
        if (q(tlsContext)) {
            return m34194goto(bArr, bArrM5018class);
        }
        return m34188do(tlsContext, bArr, securityParameters.m5022final() ? n90.f4153this : "master secret", bArrM5018class, 48);
    }

    /* renamed from: extends, reason: not valid java name */
    public static byte[] m34190extends(Vector vector) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m34203private(vector, false, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static a f(int i) {
        switch (i) {
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
                break;
            default:
                switch (i) {
                    case 103:
                    case 104:
                    case 105:
                    case 106:
                    case 107:
                    case 108:
                    case 109:
                        break;
                    default:
                        switch (i) {
                            case 156:
                            case 157:
                            case 158:
                            case 159:
                            case 160:
                            case 161:
                            case 162:
                            case 163:
                            case 164:
                            case 165:
                            case 166:
                            case 167:
                            case 168:
                            case 169:
                            case 170:
                            case 171:
                            case 172:
                            case 173:
                                break;
                            default:
                                switch (i) {
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
                                        switch (i) {
                                            case vl.b1 /* 49187 */:
                                            case vl.c1 /* 49188 */:
                                            case vl.d1 /* 49189 */:
                                            case vl.e1 /* 49190 */:
                                            case vl.f1 /* 49191 */:
                                            case vl.g1 /* 49192 */:
                                            case vl.h1 /* 49193 */:
                                            case vl.i1 /* 49194 */:
                                            case vl.j1 /* 49195 */:
                                            case vl.k1 /* 49196 */:
                                            case vl.l1 /* 49197 */:
                                            case vl.m1 /* 49198 */:
                                            case vl.n1 /* 49199 */:
                                            case vl.o1 /* 49200 */:
                                            case vl.p1 /* 49201 */:
                                            case vl.q1 /* 49202 */:
                                                break;
                                            default:
                                                switch (i) {
                                                    case vl.T1 /* 49266 */:
                                                    case vl.U1 /* 49267 */:
                                                    case vl.V1 /* 49268 */:
                                                    case vl.W1 /* 49269 */:
                                                    case vl.X1 /* 49270 */:
                                                    case vl.Y1 /* 49271 */:
                                                    case vl.Z1 /* 49272 */:
                                                    case vl.a2 /* 49273 */:
                                                    case vl.b2 /* 49274 */:
                                                    case vl.c2 /* 49275 */:
                                                    case vl.d2 /* 49276 */:
                                                    case vl.e2 /* 49277 */:
                                                    case vl.f2 /* 49278 */:
                                                    case vl.g2 /* 49279 */:
                                                    case vl.h2 /* 49280 */:
                                                    case vl.i2 /* 49281 */:
                                                    case vl.j2 /* 49282 */:
                                                    case vl.k2 /* 49283 */:
                                                    case vl.l2 /* 49284 */:
                                                    case vl.m2 /* 49285 */:
                                                    case vl.n2 /* 49286 */:
                                                    case vl.o2 /* 49287 */:
                                                    case vl.p2 /* 49288 */:
                                                    case vl.q2 /* 49289 */:
                                                    case vl.r2 /* 49290 */:
                                                    case vl.s2 /* 49291 */:
                                                    case vl.t2 /* 49292 */:
                                                    case vl.u2 /* 49293 */:
                                                    case vl.v2 /* 49294 */:
                                                    case vl.w2 /* 49295 */:
                                                    case vl.x2 /* 49296 */:
                                                    case vl.y2 /* 49297 */:
                                                    case vl.z2 /* 49298 */:
                                                    case vl.A2 /* 49299 */:
                                                        break;
                                                    default:
                                                        switch (i) {
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
                                                                switch (i) {
                                                                    case vl.e3 /* 52392 */:
                                                                    case vl.f3 /* 52393 */:
                                                                    case vl.g3 /* 52394 */:
                                                                    case vl.h3 /* 52395 */:
                                                                    case vl.i3 /* 52396 */:
                                                                    case vl.j3 /* 52397 */:
                                                                    case vl.k3 /* 52398 */:
                                                                        break;
                                                                    default:
                                                                        switch (i) {
                                                                            case 65280:
                                                                            case 65281:
                                                                            case 65282:
                                                                            case vl.o3 /* 65283 */:
                                                                            case vl.p3 /* 65284 */:
                                                                            case vl.q3 /* 65285 */:
                                                                                break;
                                                                            default:
                                                                                switch (i) {
                                                                                    case vl.r3 /* 65296 */:
                                                                                    case vl.s3 /* 65297 */:
                                                                                    case vl.t3 /* 65298 */:
                                                                                    case vl.u3 /* 65299 */:
                                                                                    case vl.v3 /* 65300 */:
                                                                                    case vl.w3 /* 65301 */:
                                                                                        break;
                                                                                    default:
                                                                                        return a.f30451for;
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
        return a.f30449case;
    }

    public static a f0(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        int i2 = inputStream.read();
        if (i2 >= 0) {
            return a.m33934if(i, i2);
        }
        throw new EOFException();
    }

    /* renamed from: final, reason: not valid java name */
    public static void m34191final(long j) throws IOException {
        if (!D(j)) {
            throw new n72((short) 80);
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public static TlsSigner m34192finally(short s) {
        if (s == 1) {
            return new c0();
        }
        if (s == 2) {
            return new k72();
        }
        if (s == 64) {
            return new l72();
        }
        throw new IllegalArgumentException("'clientCertificateType' is not a type with signing capability");
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m34193for(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        int length = (bArr.length + 1) / 2;
        byte[] bArr4 = new byte[length];
        byte[] bArr5 = new byte[length];
        System.arraycopy(bArr, 0, bArr4, 0, length);
        System.arraycopy(bArr, bArr.length - length, bArr5, 0, length);
        byte[] bArr6 = new byte[i];
        byte[] bArr7 = new byte[i];
        m(m34214throws((short) 1), bArr4, bArr3, bArr6);
        m(m34214throws((short) 2), bArr5, bArr3, bArr7);
        for (int i2 = 0; i2 < i; i2++) {
            bArr6[i2] = (byte) (bArr6[i2] ^ bArr7[i2]);
        }
        return bArr6;
    }

    public static Ccatch g(short s) {
        switch (s) {
            case 1:
                return PKCSObjectIdentifiers.md5;
            case 2:
                return X509ObjectIdentifiers.id_SHA1;
            case 3:
                return NISTObjectIdentifiers.id_sha224;
            case 4:
                return NISTObjectIdentifiers.id_sha256;
            case 5:
                return NISTObjectIdentifiers.id_sha384;
            case 6:
                return NISTObjectIdentifiers.id_sha512;
            default:
                throw new IllegalArgumentException("unknown HashAlgorithm");
        }
    }

    public static a g0(byte[] bArr, int i) throws IOException {
        return a.m33934if(bArr[i] & 255, bArr[i + 1] & 255);
    }

    /* renamed from: goto, reason: not valid java name */
    public static byte[] m34194goto(byte[] bArr, byte[] bArr2) {
        Digest digestM34214throws = m34214throws((short) 1);
        Digest digestM34214throws2 = m34214throws((short) 2);
        int digestSize = digestM34214throws.getDigestSize();
        int digestSize2 = digestM34214throws2.getDigestSize();
        byte[] bArr3 = new byte[digestSize2];
        byte[] bArr4 = new byte[digestSize * 3];
        int i = 0;
        for (int i2 = 0; i2 < 3; i2++) {
            byte[] bArr5 = f30678goto[i2];
            digestM34214throws2.update(bArr5, 0, bArr5.length);
            digestM34214throws2.update(bArr, 0, bArr.length);
            digestM34214throws2.update(bArr2, 0, bArr2.length);
            digestM34214throws2.doFinal(bArr3, 0);
            digestM34214throws.update(bArr, 0, bArr.length);
            digestM34214throws.update(bArr3, 0, digestSize2);
            digestM34214throws.doFinal(bArr4, i);
            i += digestSize;
        }
        return bArr4;
    }

    public static Vector h(Hashtable hashtable) throws IOException {
        byte[] bArrB = b(hashtable, f30681try);
        if (bArrB == null) {
            return null;
        }
        return S(bArrB);
    }

    public static int h0(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        int i2 = inputStream.read();
        if (i2 >= 0) {
            return i2 | (i << 8);
        }
        throw new EOFException();
    }

    public static i i(TlsContext tlsContext, TlsSignerCredentials tlsSignerCredentials) throws IOException {
        if (!w(tlsContext)) {
            return null;
        }
        i signatureAndHashAlgorithm = tlsSignerCredentials.getSignatureAndHashAlgorithm();
        if (signatureAndHashAlgorithm != null) {
            return signatureAndHashAlgorithm;
        }
        throw new n72((short) 80);
    }

    public static int i0(byte[] bArr, int i) throws IOException {
        return bArr[i + 1] | (bArr[i] << 8);
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m34195if(byte[] bArr, String str, byte[] bArr2, int i) {
        byte[] bArrM36358goto = Cfor.m36358goto(str);
        return m34193for(bArr, bArrM36358goto, m34207static(bArrM36358goto, bArr2), i);
    }

    /* renamed from: implements, reason: not valid java name */
    public static Vector m34196implements() {
        return l0(new i((short) 2, (short) 3));
    }

    /* renamed from: import, reason: not valid java name */
    public static void m34197import(long j) throws IOException {
        if (!H(j)) {
            throw new n72((short) 80);
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static Vector m34198instanceof() {
        return l0(new i((short) 2, (short) 1));
    }

    /* renamed from: interface, reason: not valid java name */
    public static int m34199interface(int i) throws IOException {
        int iA = a(i);
        if (iA == 103 || iA == 104) {
            return 2;
        }
        switch (iA) {
            case 0:
            case 1:
            case 2:
                return 0;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 12:
            case 13:
            case 14:
                return 1;
            case 10:
            case 11:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                return 2;
            default:
                throw new n72((short) 80);
        }
    }

    public static Vector j(Vector vector) {
        if (vector == null) {
            return m34217volatile();
        }
        Vector vector2 = new Vector(4);
        vector2.addElement(ux1.m8695do((short) 0));
        for (int i = 0; i < vector.size(); i++) {
            Short shM8695do = ux1.m8695do(((i) vector.elementAt(i)).m34153for());
            if (!vector2.contains(shM8695do)) {
                vector2.addElement(shM8695do);
            }
        }
        return vector2;
    }

    public static void j0(TlsHandshakeHash tlsHandshakeHash, Vector vector) {
        if (vector != null) {
            for (int i = 0; i < vector.size(); i++) {
                short sM34154if = ((i) vector.elementAt(i)).m34154if();
                if (zi0.m10218new(sM34154if)) {
                    tlsHandshakeHash.trackHashAlgorithm(sM34154if);
                }
            }
        }
    }

    public static boolean k(Hashtable hashtable, Integer num, short s) throws IOException {
        byte[] bArrB = b(hashtable, num);
        if (bArrB == null) {
            return false;
        }
        if (bArrB.length == 0) {
            return true;
        }
        throw new n72(s);
    }

    public static void k0(rg rgVar, int i) throws IOException {
        lr0 lr0VarM4749new;
        y90 y90VarM9042try = rgVar.m6962final().m9042try();
        if (y90VarM9042try != null && (lr0VarM4749new = lr0.m4749new(y90VarM9042try)) != null && (lr0VarM4749new.m4752try()[0] & 255 & i) != i) {
            throw new n72((short) 46);
        }
    }

    public static boolean l(short s) {
        return s == 1 || s == 2 || s == 64;
    }

    private static Vector l0(Object obj) {
        Vector vector = new Vector(1);
        vector.addElement(obj);
        return vector;
    }

    public static void m(Digest digest, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        pi0 pi0Var = new pi0(digest);
        pi0Var.init(new gr0(bArr));
        int digestSize = digest.getDigestSize();
        int length = ((bArr3.length + digestSize) - 1) / digestSize;
        int macSize = pi0Var.getMacSize();
        byte[] bArr4 = new byte[macSize];
        byte[] bArr5 = new byte[pi0Var.getMacSize()];
        byte[] bArr6 = bArr2;
        int i = 0;
        while (i < length) {
            pi0Var.update(bArr6, 0, bArr6.length);
            pi0Var.doFinal(bArr4, 0);
            pi0Var.update(bArr4, 0, macSize);
            pi0Var.update(bArr2, 0, bArr2.length);
            pi0Var.doFinal(bArr5, 0);
            int i2 = digestSize * i;
            System.arraycopy(bArr5, 0, bArr3, i2, Math.min(digestSize, bArr3.length - i2));
            i++;
            bArr6 = bArr4;
        }
    }

    public static void m0(Vector vector, i iVar) throws IOException {
        if (vector == null || vector.size() < 1 || vector.size() >= 32768) {
            throw new IllegalArgumentException("'supportedSignatureAlgorithms' must have length from 1 to (2^15 - 1)");
        }
        if (iVar == null) {
            throw new IllegalArgumentException("'signatureAlgorithm' cannot be null");
        }
        if (iVar.m34153for() != 0) {
            for (int i = 0; i < vector.size(); i++) {
                i iVar2 = (i) vector.elementAt(i);
                if (iVar2.m34154if() == iVar.m34154if() && iVar2.m34153for() == iVar.m34153for()) {
                    return;
                }
            }
        }
        throw new n72((short) 47);
    }

    public static TlsSession n(byte[] bArr, h hVar) {
        return new j0(bArr, hVar);
    }

    public static void n0(byte[] bArr, int i) {
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        bArr[i] = (byte) (iCurrentTimeMillis >>> 24);
        bArr[i + 1] = (byte) (iCurrentTimeMillis >>> 16);
        bArr[i + 2] = (byte) (iCurrentTimeMillis >>> 8);
        bArr[i + 3] = (byte) iCurrentTimeMillis;
    }

    /* renamed from: native, reason: not valid java name */
    public static void m34200native(short s) throws IOException {
        if (!I(s)) {
            throw new n72((short) 80);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m34201new(Hashtable hashtable, Vector vector) throws IOException {
        hashtable.put(f30681try, m34190extends(vector));
    }

    public static boolean o(int i) throws IOException {
        return 2 == m34199interface(i);
    }

    public static void o0(byte[] bArr, OutputStream outputStream) throws IOException {
        m34181break(bArr.length);
        r0(bArr.length, outputStream);
        outputStream.write(bArr);
    }

    public static boolean p(int i) throws IOException {
        return 1 == m34199interface(i);
    }

    public static void p0(byte[] bArr, OutputStream outputStream) throws IOException {
        m34184class(bArr.length);
        x0(bArr.length, outputStream);
        outputStream.write(bArr);
    }

    /* renamed from: package, reason: not valid java name */
    public static byte[] m34202package(byte[] bArr) throws IOException {
        m34218while(bArr.length);
        return q3.z(bArr, (byte) bArr.length);
    }

    /* renamed from: private, reason: not valid java name */
    public static void m34203private(Vector vector, boolean z, OutputStream outputStream) throws IOException {
        if (vector == null || vector.size() < 1 || vector.size() >= 32768) {
            throw new IllegalArgumentException("'supportedSignatureAlgorithms' must have length from 1 to (2^15 - 1)");
        }
        int size = vector.size() * 2;
        m34181break(size);
        r0(size, outputStream);
        for (int i = 0; i < vector.size(); i++) {
            i iVar = (i) vector.elementAt(i);
            if (!z && iVar.m34153for() == 0) {
                throw new IllegalArgumentException("SignatureAlgorithm.anonymous MUST NOT appear in the signature_algorithms extension");
            }
            iVar.m34152do(outputStream);
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public static short m34204protected(Cbreak cbreak, Cbreak cbreak2) throws IOException {
        if (cbreak.m34013case()) {
            return (short) -1;
        }
        rg rgVarM34015for = cbreak.m34015for(0);
        try {
            a4 a4VarM34475for = Cconst.m34475for(rgVarM34015for.m6960const());
            if (a4VarM34475for.m33do()) {
                throw new n72((short) 80);
            }
            if (a4VarM34475for instanceof ck1) {
                k0(rgVarM34015for, 128);
                return (short) 1;
            }
            if (a4VarM34475for instanceof kv) {
                k0(rgVarM34015for, 128);
                return (short) 2;
            }
            if (!(a4VarM34475for instanceof k50)) {
                throw new n72((short) 43);
            }
            k0(rgVarM34015for, 128);
            return (short) 64;
        } catch (Exception e) {
            throw new n72((short) 43, e);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static Digest m34205public(short s, Digest digest) {
        switch (s) {
            case 1:
                return new ow0((ow0) digest);
            case 2:
                return new wp1((wp1) digest);
            case 3:
                return new xp1((xp1) digest);
            case 4:
                return new yp1((yp1) digest);
            case 5:
                return new zp1((zp1) digest);
            case 6:
                return new bq1((bq1) digest);
            default:
                throw new IllegalArgumentException("unknown HashAlgorithm");
        }
    }

    public static boolean q(TlsContext tlsContext) {
        return tlsContext.getServerVersion().m33937catch();
    }

    public static void q0(byte[] bArr, OutputStream outputStream) throws IOException {
        m34218while(bArr.length);
        F0(bArr.length, outputStream);
        outputStream.write(bArr);
    }

    public static boolean r(a aVar) {
        return a.f30449case.m33943this(aVar.m33940for());
    }

    public static void r0(int i, OutputStream outputStream) throws IOException {
        outputStream.write(i >>> 8);
        outputStream.write(i);
    }

    /* renamed from: return, reason: not valid java name */
    public static Digest m34206return(int i, Digest digest) {
        return i != 0 ? m34205public(c(i), digest) : new Cthrow((Cthrow) digest);
    }

    public static boolean s(int i) throws IOException {
        return m34199interface(i) == 0;
    }

    public static void s0(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 8);
        bArr[i2 + 1] = (byte) i;
    }

    /* renamed from: static, reason: not valid java name */
    public static byte[] m34207static(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    /* renamed from: strictfp, reason: not valid java name */
    private static byte[][] m34208strictfp() {
        byte[][] bArr = new byte[10][];
        int i = 0;
        while (i < 10) {
            int i2 = i + 1;
            byte[] bArr2 = new byte[i2];
            q3.c(bArr2, (byte) (i + 65));
            bArr[i] = bArr2;
            i = i2;
        }
        return bArr;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m34209super(long j) throws IOException {
        if (!E(j)) {
            throw new n72((short) 80);
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static Digest m34210switch(i iVar) {
        return iVar == null ? new Cthrow() : m34214throws(iVar.m34154if());
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static Vector m34211synchronized() {
        short[] sArr = {2, 3, 4, 5, 6};
        short[] sArr2 = {1, 2, 3};
        Vector vector = new Vector();
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 5; i2++) {
                vector.addElement(new i(sArr[i2], sArr2[i]));
            }
        }
        return vector;
    }

    public static boolean t(a aVar) {
        return a.f30454try.m33943this(aVar.m33940for());
    }

    public static void t0(int[] iArr, OutputStream outputStream) throws IOException {
        for (int i : iArr) {
            r0(i, outputStream);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static byte[] m34212this(TlsContext tlsContext, String str, byte[] bArr) {
        if (q(tlsContext)) {
            return bArr;
        }
        mw1 securityParameters = tlsContext.getSecurityParameters();
        return m34188do(tlsContext, securityParameters.m5016case(), str, bArr, securityParameters.m5019const());
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m34213throw(long j) throws IOException {
        if (!F(j)) {
            throw new n72((short) 80);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static Digest m34214throws(short s) {
        switch (s) {
            case 1:
                return new ow0();
            case 2:
                return new wp1();
            case 3:
                return new xp1();
            case 4:
                return new yp1();
            case 5:
                return new zp1();
            case 6:
                return new bq1();
            default:
                throw new IllegalArgumentException("unknown HashAlgorithm");
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public static Vector m34215transient() {
        return l0(new i((short) 2, (short) 2));
    }

    /* renamed from: try, reason: not valid java name */
    public static byte[] m34216try(TlsContext tlsContext, int i) {
        mw1 securityParameters = tlsContext.getSecurityParameters();
        byte[] bArrM5016case = securityParameters.m5016case();
        byte[] bArrM34207static = m34207static(securityParameters.m5017catch(), securityParameters.m5023for());
        return q(tlsContext) ? m34182case(bArrM5016case, bArrM34207static, i) : m34188do(tlsContext, bArrM5016case, "key expansion", bArrM34207static, i);
    }

    public static boolean u(TlsContext tlsContext) {
        return t(tlsContext.getServerVersion());
    }

    public static void u0(int[] iArr, byte[] bArr, int i) throws IOException {
        for (int i2 : iArr) {
            s0(i2, bArr, i);
            i += 2;
        }
    }

    public static boolean v(a aVar) {
        return a.f30449case.m33943this(aVar.m33940for());
    }

    public static void v0(int[] iArr, OutputStream outputStream) throws IOException {
        int length = iArr.length * 2;
        m34181break(length);
        r0(length, outputStream);
        t0(iArr, outputStream);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static Vector m34217volatile() {
        Vector vector = new Vector(4);
        vector.addElement(ux1.m8695do((short) 0));
        vector.addElement(ux1.m8695do((short) 1));
        vector.addElement(ux1.m8695do((short) 2));
        vector.addElement(ux1.m8695do((short) 3));
        return vector;
    }

    public static boolean w(TlsContext tlsContext) {
        return v(tlsContext.getServerVersion());
    }

    public static void w0(int[] iArr, byte[] bArr, int i) throws IOException {
        int length = iArr.length * 2;
        m34181break(length);
        s0(length, bArr, i);
        u0(iArr, bArr, i + 2);
    }

    /* renamed from: while, reason: not valid java name */
    public static void m34218while(int i) throws IOException {
        if (!G(i)) {
            throw new n72((short) 80);
        }
    }

    public static boolean x(int i, Vector vector) {
        short s;
        Short shM8695do;
        try {
            int iD = d(i);
            if (iD == 3 || iD == 4) {
                s = 2;
                shM8695do = ux1.m8695do(s);
            } else if (iD == 5 || iD == 6) {
                shM8695do = ux1.m8695do((short) 1);
            } else {
                if (iD != 11 && iD != 12) {
                    if (iD != 17) {
                        if (iD != 19) {
                            if (iD != 20) {
                                if (iD != 22) {
                                    if (iD != 23) {
                                        return true;
                                    }
                                }
                                s = 2;
                                shM8695do = ux1.m8695do(s);
                            }
                        }
                        shM8695do = ux1.m8695do((short) 1);
                    } else {
                        shM8695do = ux1.m8695do((short) 3);
                    }
                }
                s = 0;
                shM8695do = ux1.m8695do(s);
            }
            return vector.contains(shM8695do);
        } catch (IOException unused) {
            return true;
        }
    }

    public static void x0(int i, OutputStream outputStream) throws IOException {
        outputStream.write((byte) (i >>> 16));
        outputStream.write((byte) (i >>> 8));
        outputStream.write((byte) i);
    }

    public static boolean y(int i, a aVar) {
        return f(i).m33943this(aVar.m33940for());
    }

    public static void y0(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 16);
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) i;
    }

    public static boolean z(int i) {
        return (65535 & i) == i;
    }

    public static void z0(long j, OutputStream outputStream) throws IOException {
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) j);
    }
}
