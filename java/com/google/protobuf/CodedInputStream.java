package com.google.protobuf;

import android.support.v4.t3;
import com.google.protobuf.MessageLite;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class CodedInputStream {

    /* renamed from: case, reason: not valid java name */
    private static final int f15963case = 4096;

    /* renamed from: else, reason: not valid java name */
    private static final int f15964else = 100;

    /* renamed from: goto, reason: not valid java name */
    private static final int f15965goto = Integer.MAX_VALUE;

    /* renamed from: do, reason: not valid java name */
    public int f15966do;

    /* renamed from: for, reason: not valid java name */
    public int f15967for;

    /* renamed from: if, reason: not valid java name */
    public int f15968if;

    /* renamed from: new, reason: not valid java name */
    public Cimport f15969new;

    /* renamed from: try, reason: not valid java name */
    private boolean f15970try;

    public static final class StreamDecoder extends CodedInputStream {

        /* renamed from: break, reason: not valid java name */
        private final byte[] f15971break;

        /* renamed from: catch, reason: not valid java name */
        private int f15972catch;

        /* renamed from: class, reason: not valid java name */
        private int f15973class;

        /* renamed from: const, reason: not valid java name */
        private int f15974const;

        /* renamed from: final, reason: not valid java name */
        private int f15975final;

        /* renamed from: super, reason: not valid java name */
        private int f15976super;

        /* renamed from: this, reason: not valid java name */
        private final InputStream f15977this;

        /* renamed from: throw, reason: not valid java name */
        private int f15978throw;

        /* renamed from: while, reason: not valid java name */
        private RefillCallback f15979while;

        public interface RefillCallback {
            void onRefill();
        }

        /* renamed from: com.google.protobuf.CodedInputStream$StreamDecoder$do, reason: invalid class name */
        public class Cdo implements RefillCallback {

            /* renamed from: do, reason: not valid java name */
            private int f15980do;

            /* renamed from: if, reason: not valid java name */
            private ByteArrayOutputStream f15982if;

            private Cdo() {
                this.f15980do = StreamDecoder.this.f15974const;
            }

            /* renamed from: do, reason: not valid java name */
            public ByteBuffer m18447do() {
                ByteArrayOutputStream byteArrayOutputStream = this.f15982if;
                if (byteArrayOutputStream == null) {
                    return ByteBuffer.wrap(StreamDecoder.this.f15971break, this.f15980do, StreamDecoder.this.f15974const - this.f15980do);
                }
                byteArrayOutputStream.write(StreamDecoder.this.f15971break, this.f15980do, StreamDecoder.this.f15974const);
                return ByteBuffer.wrap(this.f15982if.toByteArray());
            }

            @Override // com.google.protobuf.CodedInputStream.StreamDecoder.RefillCallback
            public void onRefill() {
                if (this.f15982if == null) {
                    this.f15982if = new ByteArrayOutputStream();
                }
                this.f15982if.write(StreamDecoder.this.f15971break, this.f15980do, StreamDecoder.this.f15974const - this.f15980do);
                this.f15980do = 0;
            }
        }

        private ByteString B(int i) throws IOException {
            byte[] bArrD = D(i);
            if (bArrD != null) {
                return ByteString.copyFrom(bArrD);
            }
            int i2 = this.f15974const;
            int i3 = this.f15972catch;
            int length = i3 - i2;
            this.f15976super += i3;
            this.f15974const = 0;
            this.f15972catch = 0;
            List<byte[]> listE = E(i - length);
            byte[] bArr = new byte[i];
            System.arraycopy(this.f15971break, i2, bArr, 0, length);
            for (byte[] bArr2 : listE) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return ByteString.wrap(bArr);
        }

        private byte[] C(int i, boolean z) throws IOException {
            byte[] bArrD = D(i);
            if (bArrD != null) {
                return z ? (byte[]) bArrD.clone() : bArrD;
            }
            int i2 = this.f15974const;
            int i3 = this.f15972catch;
            int length = i3 - i2;
            this.f15976super += i3;
            this.f15974const = 0;
            this.f15972catch = 0;
            List<byte[]> listE = E(i - length);
            byte[] bArr = new byte[i];
            System.arraycopy(this.f15971break, i2, bArr, 0, length);
            for (byte[] bArr2 : listE) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return bArr;
        }

        private byte[] D(int i) throws IOException {
            if (i == 0) {
                return Internal.f16557new;
            }
            if (i < 0) {
                throw n.negativeSize();
            }
            int i2 = this.f15976super;
            int i3 = this.f15974const;
            int i4 = i2 + i3 + i;
            if (i4 - this.f15967for > 0) {
                throw n.sizeLimitExceeded();
            }
            int i5 = this.f15978throw;
            if (i4 > i5) {
                x((i5 - i2) - i3);
                throw n.truncatedMessage();
            }
            int i6 = this.f15972catch - i3;
            int i7 = i - i6;
            if (i7 >= 4096 && i7 > this.f15977this.available()) {
                return null;
            }
            byte[] bArr = new byte[i];
            System.arraycopy(this.f15971break, this.f15974const, bArr, 0, i6);
            this.f15976super += this.f15972catch;
            this.f15974const = 0;
            this.f15972catch = 0;
            while (i6 < i) {
                int i8 = this.f15977this.read(bArr, i6, i - i6);
                if (i8 == -1) {
                    throw n.truncatedMessage();
                }
                this.f15976super += i8;
                i6 += i8;
            }
            return bArr;
        }

        private List<byte[]> E(int i) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i > 0) {
                int iMin = Math.min(i, 4096);
                byte[] bArr = new byte[iMin];
                int i2 = 0;
                while (i2 < iMin) {
                    int i3 = this.f15977this.read(bArr, i2, iMin - i2);
                    if (i3 == -1) {
                        throw n.truncatedMessage();
                    }
                    this.f15976super += i3;
                    i2 += i3;
                }
                i -= iMin;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        private void F() {
            int i = this.f15972catch + this.f15973class;
            this.f15972catch = i;
            int i2 = this.f15976super + i;
            int i3 = this.f15978throw;
            if (i2 <= i3) {
                this.f15973class = 0;
                return;
            }
            int i4 = i2 - i3;
            this.f15973class = i4;
            this.f15972catch = i - i4;
        }

        private void G(int i) throws IOException {
            if (L(i)) {
                return;
            }
            if (i <= (this.f15967for - this.f15976super) - this.f15974const) {
                throw n.truncatedMessage();
            }
            throw n.sizeLimitExceeded();
        }

        private void H(int i) throws IOException {
            if (i < 0) {
                throw n.negativeSize();
            }
            int i2 = this.f15976super;
            int i3 = this.f15974const;
            int i4 = i2 + i3 + i;
            int i5 = this.f15978throw;
            if (i4 > i5) {
                x((i5 - i2) - i3);
                throw n.truncatedMessage();
            }
            int i6 = 0;
            if (this.f15979while == null) {
                this.f15976super = i2 + i3;
                int i7 = this.f15972catch - i3;
                this.f15972catch = 0;
                this.f15974const = 0;
                i6 = i7;
                while (i6 < i) {
                    try {
                        long j = i - i6;
                        long jSkip = this.f15977this.skip(j);
                        if (jSkip < 0 || jSkip > j) {
                            String strValueOf = String.valueOf(this.f15977this.getClass());
                            StringBuilder sb = new StringBuilder(strValueOf.length() + 92);
                            sb.append(strValueOf);
                            sb.append("#skip returned invalid result: ");
                            sb.append(jSkip);
                            sb.append("\nThe InputStream implementation is buggy.");
                            throw new IllegalStateException(sb.toString());
                        }
                        if (jSkip == 0) {
                            break;
                        } else {
                            i6 += (int) jSkip;
                        }
                    } finally {
                        this.f15976super += i6;
                        F();
                    }
                }
            }
            if (i6 >= i) {
                return;
            }
            int i8 = this.f15972catch;
            int i9 = i8 - this.f15974const;
            this.f15974const = i8;
            G(1);
            while (true) {
                int i10 = i - i9;
                int i11 = this.f15972catch;
                if (i10 <= i11) {
                    this.f15974const = i10;
                    return;
                } else {
                    i9 += i11;
                    this.f15974const = i11;
                    G(1);
                }
            }
        }

        private void I() throws IOException {
            if (this.f15972catch - this.f15974const >= 10) {
                J();
            } else {
                K();
            }
        }

        private void J() throws IOException {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.f15971break;
                int i2 = this.f15974const;
                this.f15974const = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw n.malformedVarint();
        }

        private void K() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (mo18444transient() >= 0) {
                    return;
                }
            }
            throw n.malformedVarint();
        }

        private boolean L(int i) throws IOException {
            int i2 = this.f15974const;
            if (i2 + i <= this.f15972catch) {
                StringBuilder sb = new StringBuilder(77);
                sb.append("refillBuffer() called when ");
                sb.append(i);
                sb.append(" bytes were already available in buffer");
                throw new IllegalStateException(sb.toString());
            }
            int i3 = this.f15967for;
            int i4 = this.f15976super;
            if (i > (i3 - i4) - i2 || i4 + i2 + i > this.f15978throw) {
                return false;
            }
            RefillCallback refillCallback = this.f15979while;
            if (refillCallback != null) {
                refillCallback.onRefill();
            }
            int i5 = this.f15974const;
            if (i5 > 0) {
                int i6 = this.f15972catch;
                if (i6 > i5) {
                    byte[] bArr = this.f15971break;
                    System.arraycopy(bArr, i5, bArr, 0, i6 - i5);
                }
                this.f15976super += i5;
                this.f15972catch -= i5;
                this.f15974const = 0;
            }
            InputStream inputStream = this.f15977this;
            byte[] bArr2 = this.f15971break;
            int i7 = this.f15972catch;
            int i8 = inputStream.read(bArr2, i7, Math.min(bArr2.length - i7, (this.f15967for - this.f15976super) - i7));
            if (i8 == 0 || i8 < -1 || i8 > this.f15971break.length) {
                String strValueOf = String.valueOf(this.f15977this.getClass());
                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 91);
                sb2.append(strValueOf);
                sb2.append("#read(byte[]) returned invalid result: ");
                sb2.append(i8);
                sb2.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb2.toString());
            }
            if (i8 <= 0) {
                return false;
            }
            this.f15972catch += i8;
            F();
            if (this.f15972catch >= i) {
                return true;
            }
            return L(i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        
            if (r2[r3] < 0) goto L34;
         */
        @Override // com.google.protobuf.CodedInputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int a() throws IOException {
            int i;
            int i2 = this.f15974const;
            int i3 = this.f15972catch;
            if (i3 != i2) {
                byte[] bArr = this.f15971break;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.f15974const = i4;
                    return b;
                }
                if (i3 - i4 >= 9) {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 < 0) {
                        i = i6 ^ (-128);
                    } else {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            i = i8 ^ 16256;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << t3.f6382default);
                            if (i9 < 0) {
                                i = i9 ^ (-2080896);
                            } else {
                                i7 = i5 + 1;
                                byte b2 = bArr[i5];
                                i = (i9 ^ (b2 << t3.f6403strictfp)) ^ 266354560;
                                if (b2 < 0) {
                                    i5 = i7 + 1;
                                    if (bArr[i7] < 0) {
                                        i7 = i5 + 1;
                                        if (bArr[i5] < 0) {
                                            i5 = i7 + 1;
                                            if (bArr[i7] < 0) {
                                                i7 = i5 + 1;
                                                if (bArr[i5] < 0) {
                                                    i5 = i7 + 1;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        i5 = i7;
                    }
                    this.f15974const = i5;
                    return i;
                }
            }
            return (int) e();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: abstract */
        public <T extends MessageLite> T mo18419abstract(int i, Parser<T> parser, Cimplements cimplements) throws IOException {
            int i2 = this.f15966do;
            if (i2 >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            this.f15966do = i2 + 1;
            T partialFrom = parser.parsePartialFrom(this, cimplements);
            mo18423do(c2.m19963for(i, 4));
            this.f15966do--;
            return partialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: case */
        public int mo18420case() {
            int i = this.f15978throw;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - (this.f15976super + this.f15974const);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: continue */
        public void mo18421continue(int i, MessageLite.Builder builder, Cimplements cimplements) throws IOException {
            int i2 = this.f15966do;
            if (i2 >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            this.f15966do = i2 + 1;
            builder.mergeFrom(this, cimplements);
            mo18423do(c2.m19963for(i, 4));
            this.f15966do--;
        }

        /* JADX WARN: Code restructure failed: missing block: B:40:0x00b4, code lost:
        
            if (r2[r0] < 0) goto L41;
         */
        @Override // com.google.protobuf.CodedInputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public long d() throws IOException {
            long j;
            long j2;
            long j3;
            long j4;
            int i;
            int i2 = this.f15974const;
            int i3 = this.f15972catch;
            if (i3 != i2) {
                byte[] bArr = this.f15971break;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.f15974const = i4;
                    return b;
                }
                if (i3 - i4 >= 9) {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 >= 0) {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            i5 = i7;
                            j4 = i8 ^ 16256;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << t3.f6382default);
                            if (i9 < 0) {
                                i = i9 ^ (-2080896);
                            } else {
                                long j5 = i9;
                                int i10 = i5 + 1;
                                long j6 = j5 ^ (bArr[i5] << 28);
                                if (j6 >= 0) {
                                    j3 = 266354560;
                                } else {
                                    i5 = i10 + 1;
                                    long j7 = j6 ^ (bArr[i10] << 35);
                                    if (j7 < 0) {
                                        j2 = -34093383808L;
                                    } else {
                                        i10 = i5 + 1;
                                        j6 = j7 ^ (bArr[i5] << 42);
                                        if (j6 >= 0) {
                                            j3 = 4363953127296L;
                                        } else {
                                            i5 = i10 + 1;
                                            j7 = j6 ^ (bArr[i10] << 49);
                                            if (j7 < 0) {
                                                j2 = -558586000294016L;
                                            } else {
                                                int i11 = i5 + 1;
                                                j = (j7 ^ (bArr[i5] << 56)) ^ 71499008037633920L;
                                                i5 = j < 0 ? i11 + 1 : i11;
                                                j4 = j;
                                            }
                                        }
                                    }
                                    j = j7 ^ j2;
                                    j4 = j;
                                }
                                j4 = j3 ^ j6;
                                i5 = i10;
                            }
                        }
                        this.f15974const = i5;
                        return j4;
                    }
                    i = i6 ^ (-128);
                    j4 = i;
                    this.f15974const = i5;
                    return j4;
                }
            }
            return e();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: default */
        public double mo18422default() throws IOException {
            return Double.longBitsToDouble(mo18441synchronized());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: do */
        public void mo18423do(int i) throws n {
            if (this.f15975final != i) {
                throw n.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public long e() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((mo18444transient() & 128) == 0) {
                    return j;
                }
            }
            throw n.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: else */
        public int mo18424else() {
            return this.f15975final;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: extends */
        public int mo18425extends() throws IOException {
            return a();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int f() throws IOException {
            return mo18429instanceof();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: finally */
        public int mo18426finally() throws IOException {
            return mo18429instanceof();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long g() throws IOException {
            return mo18441synchronized();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: goto */
        public int mo18427goto() {
            return this.f15976super + this.f15974const;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int h() throws IOException {
            return CodedInputStream.m18414if(a());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long i() throws IOException {
            return CodedInputStream.m18413for(d());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: implements */
        public byte[] mo18428implements(int i) throws IOException {
            int i2 = this.f15974const;
            if (i > this.f15972catch - i2 || i <= 0) {
                return C(i, false);
            }
            int i3 = i + i2;
            this.f15974const = i3;
            return Arrays.copyOfRange(this.f15971break, i2, i3);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: instanceof */
        public int mo18429instanceof() throws IOException {
            int i = this.f15974const;
            if (this.f15972catch - i < 4) {
                G(4);
                i = this.f15974const;
            }
            byte[] bArr = this.f15971break;
            this.f15974const = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: interface */
        public <T extends MessageLite> T mo18430interface(Parser<T> parser, Cimplements cimplements) throws IOException {
            int iA = a();
            if (this.f15966do >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            int iMo18436public = mo18436public(iA);
            this.f15966do++;
            T partialFrom = parser.parsePartialFrom(this, cimplements);
            mo18423do(0);
            this.f15966do--;
            mo18431native(iMo18436public);
            return partialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public String j() throws IOException {
            int iA = a();
            if (iA > 0) {
                int i = this.f15972catch;
                int i2 = this.f15974const;
                if (iA <= i - i2) {
                    String str = new String(this.f15971break, i2, iA, Internal.f16554do);
                    this.f15974const += iA;
                    return str;
                }
            }
            if (iA == 0) {
                return "";
            }
            if (iA > this.f15972catch) {
                return new String(C(iA, false), Internal.f16554do);
            }
            G(iA);
            String str2 = new String(this.f15971break, this.f15974const, iA, Internal.f16554do);
            this.f15974const += iA;
            return str2;
        }

        @Override // com.google.protobuf.CodedInputStream
        public String k() throws IOException {
            byte[] bArrC;
            int iA = a();
            int i = this.f15974const;
            int i2 = this.f15972catch;
            if (iA <= i2 - i && iA > 0) {
                bArrC = this.f15971break;
                this.f15974const = i + iA;
            } else {
                if (iA == 0) {
                    return "";
                }
                if (iA <= i2) {
                    G(iA);
                    bArrC = this.f15971break;
                    this.f15974const = iA + 0;
                } else {
                    bArrC = C(iA, false);
                }
                i = 0;
            }
            return a2.m19702goto(bArrC, i, iA);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int l() throws IOException {
            if (mo18442this()) {
                this.f15975final = 0;
                return 0;
            }
            int iA = a();
            this.f15975final = iA;
            if (c2.m19962do(iA) != 0) {
                return this.f15975final;
            }
            throw n.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int m() throws IOException {
            return a();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long n() throws IOException {
            return d();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: native */
        public void mo18431native(int i) {
            this.f15978throw = i;
            F();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void o(int i, MessageLite.Builder builder) throws IOException {
            mo18421continue(i, builder, Cimplements.m20607new());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void p() {
            this.f15976super = -this.f15974const;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: package */
        public long mo18433package() throws IOException {
            return mo18441synchronized();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: private */
        public float mo18434private() throws IOException {
            return Float.intBitsToFloat(mo18429instanceof());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: protected */
        public void mo18435protected(MessageLite.Builder builder, Cimplements cimplements) throws IOException {
            int iA = a();
            if (this.f15966do >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            int iMo18436public = mo18436public(iA);
            this.f15966do++;
            builder.mergeFrom(this, cimplements);
            mo18423do(0);
            this.f15966do--;
            mo18431native(iMo18436public);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: public */
        public int mo18436public(int i) throws n {
            if (i < 0) {
                throw n.negativeSize();
            }
            int i2 = i + this.f15976super + this.f15974const;
            int i3 = this.f15978throw;
            if (i2 > i3) {
                throw n.truncatedMessage();
            }
            this.f15978throw = i2;
            F();
            return i3;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: return */
        public boolean mo18437return() throws IOException {
            return d() != 0;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: static */
        public byte[] mo18438static() throws IOException {
            int iA = a();
            int i = this.f15972catch;
            int i2 = this.f15974const;
            if (iA > i - i2 || iA <= 0) {
                return C(iA, false);
            }
            byte[] bArrCopyOfRange = Arrays.copyOfRange(this.f15971break, i2, i2 + iA);
            this.f15974const += iA;
            return bArrCopyOfRange;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: strictfp */
        public int mo18439strictfp() throws IOException {
            return a();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: switch */
        public ByteBuffer mo18440switch() throws IOException {
            int iA = a();
            int i = this.f15972catch;
            int i2 = this.f15974const;
            if (iA > i - i2 || iA <= 0) {
                return iA == 0 ? Internal.f16558try : ByteBuffer.wrap(C(iA, true));
            }
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(Arrays.copyOfRange(this.f15971break, i2, i2 + iA));
            this.f15974const += iA;
            return byteBufferWrap;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: synchronized */
        public long mo18441synchronized() throws IOException {
            int i = this.f15974const;
            if (this.f15972catch - i < 8) {
                G(8);
                i = this.f15974const;
            }
            byte[] bArr = this.f15971break;
            this.f15974const = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean t(int i) throws IOException {
            int iM19964if = c2.m19964if(i);
            if (iM19964if == 0) {
                I();
                return true;
            }
            if (iM19964if == 1) {
                x(8);
                return true;
            }
            if (iM19964if == 2) {
                x(a());
                return true;
            }
            if (iM19964if == 3) {
                v();
                mo18423do(c2.m19963for(c2.m19962do(i), 4));
                return true;
            }
            if (iM19964if == 4) {
                return false;
            }
            if (iM19964if != 5) {
                throw n.invalidWireType();
            }
            x(4);
            return true;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: this */
        public boolean mo18442this() throws IOException {
            return this.f15974const == this.f15972catch && !L(1);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: throws */
        public ByteString mo18443throws() throws IOException {
            int iA = a();
            int i = this.f15972catch;
            int i2 = this.f15974const;
            if (iA > i - i2 || iA <= 0) {
                return iA == 0 ? ByteString.EMPTY : B(iA);
            }
            ByteString byteStringCopyFrom = ByteString.copyFrom(this.f15971break, i2, iA);
            this.f15974const += iA;
            return byteStringCopyFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: transient */
        public byte mo18444transient() throws IOException {
            if (this.f15974const == this.f15972catch) {
                G(1);
            }
            byte[] bArr = this.f15971break;
            int i = this.f15974const;
            this.f15974const = i + 1;
            return bArr[i];
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: try */
        public void mo18445try(boolean z) {
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean u(int i, Cnative cnative) throws IOException {
            int iM19964if = c2.m19964if(i);
            if (iM19964if == 0) {
                long jMo18446volatile = mo18446volatile();
                cnative.t0(i);
                cnative.C0(jMo18446volatile);
                return true;
            }
            if (iM19964if == 1) {
                long jMo18441synchronized = mo18441synchronized();
                cnative.t0(i);
                cnative.X(jMo18441synchronized);
                return true;
            }
            if (iM19964if == 2) {
                ByteString byteStringMo18443throws = mo18443throws();
                cnative.t0(i);
                cnative.T(byteStringMo18443throws);
                return true;
            }
            if (iM19964if == 3) {
                cnative.t0(i);
                w(cnative);
                int iM19963for = c2.m19963for(c2.m19962do(i), 4);
                mo18423do(iM19963for);
                cnative.t0(iM19963for);
                return true;
            }
            if (iM19964if == 4) {
                return false;
            }
            if (iM19964if != 5) {
                throw n.invalidWireType();
            }
            int iMo18429instanceof = mo18429instanceof();
            cnative.t0(i);
            cnative.W(iMo18429instanceof);
            return true;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void v() throws IOException {
            int iL;
            do {
                iL = l();
                if (iL == 0) {
                    return;
                }
            } while (t(iL));
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: volatile */
        public long mo18446volatile() throws IOException {
            return d();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void w(Cnative cnative) throws IOException {
            int iL;
            do {
                iL = l();
                if (iL == 0) {
                    return;
                }
            } while (u(iL, cnative));
        }

        @Override // com.google.protobuf.CodedInputStream
        public void x(int i) throws IOException {
            int i2 = this.f15972catch;
            int i3 = this.f15974const;
            if (i > i2 - i3 || i < 0) {
                H(i);
            } else {
                this.f15974const = i3 + i;
            }
        }

        private StreamDecoder(InputStream inputStream, int i) {
            super();
            this.f15978throw = Integer.MAX_VALUE;
            this.f15979while = null;
            Internal.m19632try(inputStream, "input");
            this.f15977this = inputStream;
            this.f15971break = new byte[i];
            this.f15972catch = 0;
            this.f15974const = 0;
            this.f15976super = 0;
        }
    }

    /* renamed from: com.google.protobuf.CodedInputStream$for, reason: invalid class name */
    public static final class Cfor extends CodedInputStream {

        /* renamed from: break, reason: not valid java name */
        private Iterator<ByteBuffer> f15983break;

        /* renamed from: catch, reason: not valid java name */
        private ByteBuffer f15984catch;

        /* renamed from: class, reason: not valid java name */
        private boolean f15985class;

        /* renamed from: const, reason: not valid java name */
        private boolean f15986const;

        /* renamed from: final, reason: not valid java name */
        private int f15987final;

        /* renamed from: import, reason: not valid java name */
        private int f15988import;

        /* renamed from: native, reason: not valid java name */
        private int f15989native;

        /* renamed from: public, reason: not valid java name */
        private long f15990public;

        /* renamed from: return, reason: not valid java name */
        private long f15991return;

        /* renamed from: static, reason: not valid java name */
        private long f15992static;

        /* renamed from: super, reason: not valid java name */
        private int f15993super;

        /* renamed from: switch, reason: not valid java name */
        private long f15994switch;

        /* renamed from: this, reason: not valid java name */
        private Iterable<ByteBuffer> f15995this;

        /* renamed from: throw, reason: not valid java name */
        private int f15996throw;

        /* renamed from: while, reason: not valid java name */
        private int f15997while;

        private void A() throws n {
            if (!this.f15983break.hasNext()) {
                throw n.truncatedMessage();
            }
            G();
        }

        private void B(byte[] bArr, int i, int i2) throws IOException {
            if (i2 < 0 || i2 > D()) {
                if (i2 > 0) {
                    throw n.truncatedMessage();
                }
                if (i2 != 0) {
                    throw n.negativeSize();
                }
                return;
            }
            int i3 = i2;
            while (i3 > 0) {
                if (z() == 0) {
                    A();
                }
                int iMin = Math.min(i3, (int) z());
                long j = iMin;
                z1.m21667final(this.f15990public, bArr, (i2 - i3) + i, j);
                i3 -= iMin;
                this.f15990public += j;
            }
        }

        private void C() {
            int i = this.f15987final + this.f15993super;
            this.f15987final = i;
            int i2 = i - this.f15989native;
            int i3 = this.f15996throw;
            if (i2 <= i3) {
                this.f15993super = 0;
                return;
            }
            int i4 = i2 - i3;
            this.f15993super = i4;
            this.f15987final = i - i4;
        }

        private int D() {
            return (int) (((this.f15987final - this.f15988import) - this.f15990public) + this.f15991return);
        }

        private void E() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (mo18444transient() >= 0) {
                    return;
                }
            }
            throw n.malformedVarint();
        }

        private ByteBuffer F(int i, int i2) throws IOException {
            int iPosition = this.f15984catch.position();
            int iLimit = this.f15984catch.limit();
            try {
                try {
                    return this.f15984catch.slice();
                } catch (IllegalArgumentException unused) {
                    throw n.truncatedMessage();
                }
            } finally {
            }
        }

        private void G() {
            ByteBuffer next = this.f15983break.next();
            this.f15984catch = next;
            this.f15988import += (int) (this.f15990public - this.f15991return);
            long jPosition = next.position();
            this.f15990public = jPosition;
            this.f15991return = jPosition;
            this.f15994switch = this.f15984catch.limit();
            long jM21688this = z1.m21688this(this.f15984catch);
            this.f15992static = jM21688this;
            this.f15990public += jM21688this;
            this.f15991return += jM21688this;
            this.f15994switch += jM21688this;
        }

        private long z() {
            return this.f15994switch - this.f15990public;
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0088, code lost:
        
            if (com.google.protobuf.z1.m21663default(r4) < 0) goto L34;
         */
        @Override // com.google.protobuf.CodedInputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int a() throws IOException {
            int i;
            long j = this.f15990public;
            if (this.f15994switch != j) {
                long j2 = j + 1;
                byte bM21663default = z1.m21663default(j);
                if (bM21663default >= 0) {
                    this.f15990public++;
                    return bM21663default;
                }
                if (this.f15994switch - this.f15990public >= 10) {
                    long j3 = j2 + 1;
                    int iM21663default = bM21663default ^ (z1.m21663default(j2) << 7);
                    if (iM21663default < 0) {
                        i = iM21663default ^ (-128);
                    } else {
                        long j4 = j3 + 1;
                        int iM21663default2 = iM21663default ^ (z1.m21663default(j3) << 14);
                        if (iM21663default2 >= 0) {
                            i = iM21663default2 ^ 16256;
                        } else {
                            j3 = j4 + 1;
                            int iM21663default3 = iM21663default2 ^ (z1.m21663default(j4) << t3.f6382default);
                            if (iM21663default3 < 0) {
                                i = iM21663default3 ^ (-2080896);
                            } else {
                                j4 = j3 + 1;
                                byte bM21663default2 = z1.m21663default(j3);
                                i = (iM21663default3 ^ (bM21663default2 << t3.f6403strictfp)) ^ 266354560;
                                if (bM21663default2 < 0) {
                                    j3 = j4 + 1;
                                    if (z1.m21663default(j4) < 0) {
                                        j4 = j3 + 1;
                                        if (z1.m21663default(j3) < 0) {
                                            j3 = j4 + 1;
                                            if (z1.m21663default(j4) < 0) {
                                                j4 = j3 + 1;
                                                if (z1.m21663default(j3) < 0) {
                                                    j3 = j4 + 1;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        j3 = j4;
                    }
                    this.f15990public = j3;
                    return i;
                }
            }
            return (int) e();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: abstract */
        public <T extends MessageLite> T mo18419abstract(int i, Parser<T> parser, Cimplements cimplements) throws IOException {
            int i2 = this.f15966do;
            if (i2 >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            this.f15966do = i2 + 1;
            T partialFrom = parser.parsePartialFrom(this, cimplements);
            mo18423do(c2.m19963for(i, 4));
            this.f15966do--;
            return partialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: case */
        public int mo18420case() {
            int i = this.f15996throw;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - mo18427goto();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: continue */
        public void mo18421continue(int i, MessageLite.Builder builder, Cimplements cimplements) throws IOException {
            int i2 = this.f15966do;
            if (i2 >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            this.f15966do = i2 + 1;
            builder.mergeFrom(this, cimplements);
            mo18423do(c2.m19963for(i, 4));
            this.f15966do--;
        }

        @Override // com.google.protobuf.CodedInputStream
        public long d() throws IOException {
            long jM21663default;
            long j;
            long j2;
            int i;
            long j3 = this.f15990public;
            if (this.f15994switch != j3) {
                long j4 = j3 + 1;
                byte bM21663default = z1.m21663default(j3);
                if (bM21663default >= 0) {
                    this.f15990public++;
                    return bM21663default;
                }
                if (this.f15994switch - this.f15990public >= 10) {
                    long j5 = j4 + 1;
                    int iM21663default = bM21663default ^ (z1.m21663default(j4) << 7);
                    if (iM21663default >= 0) {
                        long j6 = j5 + 1;
                        int iM21663default2 = iM21663default ^ (z1.m21663default(j5) << 14);
                        if (iM21663default2 >= 0) {
                            jM21663default = iM21663default2 ^ 16256;
                        } else {
                            j5 = j6 + 1;
                            int iM21663default3 = iM21663default2 ^ (z1.m21663default(j6) << t3.f6382default);
                            if (iM21663default3 < 0) {
                                i = iM21663default3 ^ (-2080896);
                            } else {
                                j6 = j5 + 1;
                                long jM21663default2 = iM21663default3 ^ (z1.m21663default(j5) << 28);
                                if (jM21663default2 < 0) {
                                    long j7 = j6 + 1;
                                    long jM21663default3 = jM21663default2 ^ (z1.m21663default(j6) << 35);
                                    if (jM21663default3 < 0) {
                                        j = -34093383808L;
                                    } else {
                                        j6 = j7 + 1;
                                        jM21663default2 = jM21663default3 ^ (z1.m21663default(j7) << 42);
                                        if (jM21663default2 >= 0) {
                                            j2 = 4363953127296L;
                                        } else {
                                            j7 = j6 + 1;
                                            jM21663default3 = jM21663default2 ^ (z1.m21663default(j6) << 49);
                                            if (jM21663default3 >= 0) {
                                                j6 = j7 + 1;
                                                jM21663default = (jM21663default3 ^ (z1.m21663default(j7) << 56)) ^ 71499008037633920L;
                                                if (jM21663default < 0) {
                                                    long j8 = 1 + j6;
                                                    if (z1.m21663default(j6) >= 0) {
                                                        j5 = j8;
                                                    }
                                                }
                                                this.f15990public = j5;
                                                return jM21663default;
                                            }
                                            j = -558586000294016L;
                                        }
                                    }
                                    jM21663default = jM21663default3 ^ j;
                                    j5 = j7;
                                    this.f15990public = j5;
                                    return jM21663default;
                                }
                                j2 = 266354560;
                                jM21663default = jM21663default2 ^ j2;
                            }
                        }
                        j5 = j6;
                        this.f15990public = j5;
                        return jM21663default;
                    }
                    i = iM21663default ^ (-128);
                    jM21663default = i;
                    this.f15990public = j5;
                    return jM21663default;
                }
            }
            return e();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: default */
        public double mo18422default() throws IOException {
            return Double.longBitsToDouble(mo18441synchronized());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: do */
        public void mo18423do(int i) throws n {
            if (this.f15997while != i) {
                throw n.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public long e() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((mo18444transient() & 128) == 0) {
                    return j;
                }
            }
            throw n.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: else */
        public int mo18424else() {
            return this.f15997while;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: extends */
        public int mo18425extends() throws IOException {
            return a();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int f() throws IOException {
            return mo18429instanceof();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: finally */
        public int mo18426finally() throws IOException {
            return mo18429instanceof();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long g() throws IOException {
            return mo18441synchronized();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: goto */
        public int mo18427goto() {
            return (int) (((this.f15988import - this.f15989native) + this.f15990public) - this.f15991return);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int h() throws IOException {
            return CodedInputStream.m18414if(a());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long i() throws IOException {
            return CodedInputStream.m18413for(d());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: implements */
        public byte[] mo18428implements(int i) throws IOException {
            if (i >= 0) {
                long j = i;
                if (j <= z()) {
                    byte[] bArr = new byte[i];
                    z1.m21667final(this.f15990public, bArr, 0L, j);
                    this.f15990public += j;
                    return bArr;
                }
            }
            if (i >= 0 && i <= D()) {
                byte[] bArr2 = new byte[i];
                B(bArr2, 0, i);
                return bArr2;
            }
            if (i > 0) {
                throw n.truncatedMessage();
            }
            if (i == 0) {
                return Internal.f16557new;
            }
            throw n.negativeSize();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: instanceof */
        public int mo18429instanceof() throws IOException {
            if (z() < 4) {
                return (mo18444transient() & 255) | ((mo18444transient() & 255) << 8) | ((mo18444transient() & 255) << 16) | ((mo18444transient() & 255) << 24);
            }
            long j = this.f15990public;
            this.f15990public = 4 + j;
            return ((z1.m21663default(j + 3) & 255) << 24) | (z1.m21663default(j) & 255) | ((z1.m21663default(1 + j) & 255) << 8) | ((z1.m21663default(2 + j) & 255) << 16);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: interface */
        public <T extends MessageLite> T mo18430interface(Parser<T> parser, Cimplements cimplements) throws IOException {
            int iA = a();
            if (this.f15966do >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            int iMo18436public = mo18436public(iA);
            this.f15966do++;
            T partialFrom = parser.parsePartialFrom(this, cimplements);
            mo18423do(0);
            this.f15966do--;
            mo18431native(iMo18436public);
            return partialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public String j() throws IOException {
            int iA = a();
            if (iA > 0) {
                long j = iA;
                long j2 = this.f15994switch;
                long j3 = this.f15990public;
                if (j <= j2 - j3) {
                    byte[] bArr = new byte[iA];
                    z1.m21667final(j3, bArr, 0L, j);
                    String str = new String(bArr, Internal.f16554do);
                    this.f15990public += j;
                    return str;
                }
            }
            if (iA > 0 && iA <= D()) {
                byte[] bArr2 = new byte[iA];
                B(bArr2, 0, iA);
                return new String(bArr2, Internal.f16554do);
            }
            if (iA == 0) {
                return "";
            }
            if (iA < 0) {
                throw n.negativeSize();
            }
            throw n.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public String k() throws IOException {
            int iA = a();
            if (iA > 0) {
                long j = iA;
                long j2 = this.f15994switch;
                long j3 = this.f15990public;
                if (j <= j2 - j3) {
                    String strM19699else = a2.m19699else(this.f15984catch, (int) (j3 - this.f15991return), iA);
                    this.f15990public += j;
                    return strM19699else;
                }
            }
            if (iA >= 0 && iA <= D()) {
                byte[] bArr = new byte[iA];
                B(bArr, 0, iA);
                return a2.m19702goto(bArr, 0, iA);
            }
            if (iA == 0) {
                return "";
            }
            if (iA <= 0) {
                throw n.negativeSize();
            }
            throw n.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int l() throws IOException {
            if (mo18442this()) {
                this.f15997while = 0;
                return 0;
            }
            int iA = a();
            this.f15997while = iA;
            if (c2.m19962do(iA) != 0) {
                return this.f15997while;
            }
            throw n.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int m() throws IOException {
            return a();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long n() throws IOException {
            return d();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: native */
        public void mo18431native(int i) {
            this.f15996throw = i;
            C();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void o(int i, MessageLite.Builder builder) throws IOException {
            mo18421continue(i, builder, Cimplements.m20607new());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void p() {
            this.f15989native = (int) ((this.f15988import + this.f15990public) - this.f15991return);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: package */
        public long mo18433package() throws IOException {
            return mo18441synchronized();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: private */
        public float mo18434private() throws IOException {
            return Float.intBitsToFloat(mo18429instanceof());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: protected */
        public void mo18435protected(MessageLite.Builder builder, Cimplements cimplements) throws IOException {
            int iA = a();
            if (this.f15966do >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            int iMo18436public = mo18436public(iA);
            this.f15966do++;
            builder.mergeFrom(this, cimplements);
            mo18423do(0);
            this.f15966do--;
            mo18431native(iMo18436public);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: public */
        public int mo18436public(int i) throws n {
            if (i < 0) {
                throw n.negativeSize();
            }
            int iMo18427goto = i + mo18427goto();
            int i2 = this.f15996throw;
            if (iMo18427goto > i2) {
                throw n.truncatedMessage();
            }
            this.f15996throw = iMo18427goto;
            C();
            return i2;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: return */
        public boolean mo18437return() throws IOException {
            return d() != 0;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: static */
        public byte[] mo18438static() throws IOException {
            return mo18428implements(a());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: strictfp */
        public int mo18439strictfp() throws IOException {
            return a();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: switch */
        public ByteBuffer mo18440switch() throws IOException {
            int iA = a();
            if (iA > 0) {
                long j = iA;
                if (j <= z()) {
                    if (this.f15985class || !this.f15986const) {
                        byte[] bArr = new byte[iA];
                        z1.m21667final(this.f15990public, bArr, 0L, j);
                        this.f15990public += j;
                        return ByteBuffer.wrap(bArr);
                    }
                    long j2 = this.f15990public + j;
                    this.f15990public = j2;
                    long j3 = this.f15992static;
                    return F((int) ((j2 - j3) - j), (int) (j2 - j3));
                }
            }
            if (iA > 0 && iA <= D()) {
                byte[] bArr2 = new byte[iA];
                B(bArr2, 0, iA);
                return ByteBuffer.wrap(bArr2);
            }
            if (iA == 0) {
                return Internal.f16558try;
            }
            if (iA < 0) {
                throw n.negativeSize();
            }
            throw n.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: synchronized */
        public long mo18441synchronized() throws IOException {
            if (z() < 8) {
                return (mo18444transient() & 255) | ((mo18444transient() & 255) << 8) | ((mo18444transient() & 255) << 16) | ((mo18444transient() & 255) << 24) | ((mo18444transient() & 255) << 32) | ((mo18444transient() & 255) << 40) | ((mo18444transient() & 255) << 48) | ((mo18444transient() & 255) << 56);
            }
            this.f15990public = 8 + this.f15990public;
            return ((z1.m21663default(r0 + 7) & 255) << 56) | ((z1.m21663default(6 + r0) & 255) << 48) | ((z1.m21663default(4 + r0) & 255) << 32) | ((z1.m21663default(2 + r0) & 255) << 16) | (z1.m21663default(r0) & 255) | ((z1.m21663default(1 + r0) & 255) << 8) | ((z1.m21663default(3 + r0) & 255) << 24) | ((z1.m21663default(5 + r0) & 255) << 40);
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean t(int i) throws IOException {
            int iM19964if = c2.m19964if(i);
            if (iM19964if == 0) {
                E();
                return true;
            }
            if (iM19964if == 1) {
                x(8);
                return true;
            }
            if (iM19964if == 2) {
                x(a());
                return true;
            }
            if (iM19964if == 3) {
                v();
                mo18423do(c2.m19963for(c2.m19962do(i), 4));
                return true;
            }
            if (iM19964if == 4) {
                return false;
            }
            if (iM19964if != 5) {
                throw n.invalidWireType();
            }
            x(4);
            return true;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: this */
        public boolean mo18442this() throws IOException {
            return (((long) this.f15988import) + this.f15990public) - this.f15991return == ((long) this.f15987final);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: throws */
        public ByteString mo18443throws() throws IOException {
            int iA = a();
            if (iA > 0) {
                long j = iA;
                long j2 = this.f15994switch;
                long j3 = this.f15990public;
                if (j <= j2 - j3) {
                    if (this.f15985class && this.f15986const) {
                        int i = (int) (j3 - this.f15992static);
                        ByteString byteStringWrap = ByteString.wrap(F(i, iA + i));
                        this.f15990public += j;
                        return byteStringWrap;
                    }
                    byte[] bArr = new byte[iA];
                    z1.m21667final(j3, bArr, 0L, j);
                    this.f15990public += j;
                    return ByteString.wrap(bArr);
                }
            }
            if (iA > 0 && iA <= D()) {
                byte[] bArr2 = new byte[iA];
                B(bArr2, 0, iA);
                return ByteString.wrap(bArr2);
            }
            if (iA == 0) {
                return ByteString.EMPTY;
            }
            if (iA < 0) {
                throw n.negativeSize();
            }
            throw n.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: transient */
        public byte mo18444transient() throws IOException {
            if (z() == 0) {
                A();
            }
            long j = this.f15990public;
            this.f15990public = 1 + j;
            return z1.m21663default(j);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: try */
        public void mo18445try(boolean z) {
            this.f15986const = z;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean u(int i, Cnative cnative) throws IOException {
            int iM19964if = c2.m19964if(i);
            if (iM19964if == 0) {
                long jMo18446volatile = mo18446volatile();
                cnative.t0(i);
                cnative.C0(jMo18446volatile);
                return true;
            }
            if (iM19964if == 1) {
                long jMo18441synchronized = mo18441synchronized();
                cnative.t0(i);
                cnative.X(jMo18441synchronized);
                return true;
            }
            if (iM19964if == 2) {
                ByteString byteStringMo18443throws = mo18443throws();
                cnative.t0(i);
                cnative.T(byteStringMo18443throws);
                return true;
            }
            if (iM19964if == 3) {
                cnative.t0(i);
                w(cnative);
                int iM19963for = c2.m19963for(c2.m19962do(i), 4);
                mo18423do(iM19963for);
                cnative.t0(iM19963for);
                return true;
            }
            if (iM19964if == 4) {
                return false;
            }
            if (iM19964if != 5) {
                throw n.invalidWireType();
            }
            int iMo18429instanceof = mo18429instanceof();
            cnative.t0(i);
            cnative.W(iMo18429instanceof);
            return true;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void v() throws IOException {
            int iL;
            do {
                iL = l();
                if (iL == 0) {
                    return;
                }
            } while (t(iL));
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: volatile */
        public long mo18446volatile() throws IOException {
            return d();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void w(Cnative cnative) throws IOException {
            int iL;
            do {
                iL = l();
                if (iL == 0) {
                    return;
                }
            } while (u(iL, cnative));
        }

        @Override // com.google.protobuf.CodedInputStream
        public void x(int i) throws IOException {
            if (i < 0 || i > ((this.f15987final - this.f15988import) - this.f15990public) + this.f15991return) {
                if (i >= 0) {
                    throw n.truncatedMessage();
                }
                throw n.negativeSize();
            }
            while (i > 0) {
                if (z() == 0) {
                    A();
                }
                int iMin = Math.min(i, (int) z());
                i -= iMin;
                this.f15990public += iMin;
            }
        }

        private Cfor(Iterable<ByteBuffer> iterable, int i, boolean z) {
            super();
            this.f15996throw = Integer.MAX_VALUE;
            this.f15987final = i;
            this.f15995this = iterable;
            this.f15983break = iterable.iterator();
            this.f15985class = z;
            this.f15988import = 0;
            this.f15989native = 0;
            if (i != 0) {
                G();
                return;
            }
            this.f15984catch = Internal.f16558try;
            this.f15990public = 0L;
            this.f15991return = 0L;
            this.f15994switch = 0L;
            this.f15992static = 0L;
        }
    }

    /* renamed from: com.google.protobuf.CodedInputStream$if, reason: invalid class name */
    public static final class Cif extends CodedInputStream {

        /* renamed from: break, reason: not valid java name */
        private final boolean f15998break;

        /* renamed from: catch, reason: not valid java name */
        private int f15999catch;

        /* renamed from: class, reason: not valid java name */
        private int f16000class;

        /* renamed from: const, reason: not valid java name */
        private int f16001const;

        /* renamed from: final, reason: not valid java name */
        private int f16002final;

        /* renamed from: super, reason: not valid java name */
        private int f16003super;

        /* renamed from: this, reason: not valid java name */
        private final byte[] f16004this;

        /* renamed from: throw, reason: not valid java name */
        private boolean f16005throw;

        /* renamed from: while, reason: not valid java name */
        private int f16006while;

        private void A() throws IOException {
            if (this.f15999catch - this.f16001const >= 10) {
                B();
            } else {
                C();
            }
        }

        private void B() throws IOException {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.f16004this;
                int i2 = this.f16001const;
                this.f16001const = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw n.malformedVarint();
        }

        private void C() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (mo18444transient() >= 0) {
                    return;
                }
            }
            throw n.malformedVarint();
        }

        private void z() {
            int i = this.f15999catch + this.f16000class;
            this.f15999catch = i;
            int i2 = i - this.f16002final;
            int i3 = this.f16006while;
            if (i2 <= i3) {
                this.f16000class = 0;
                return;
            }
            int i4 = i2 - i3;
            this.f16000class = i4;
            this.f15999catch = i - i4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        
            if (r2[r3] < 0) goto L34;
         */
        @Override // com.google.protobuf.CodedInputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int a() throws IOException {
            int i;
            int i2 = this.f16001const;
            int i3 = this.f15999catch;
            if (i3 != i2) {
                byte[] bArr = this.f16004this;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.f16001const = i4;
                    return b;
                }
                if (i3 - i4 >= 9) {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 < 0) {
                        i = i6 ^ (-128);
                    } else {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            i = i8 ^ 16256;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << t3.f6382default);
                            if (i9 < 0) {
                                i = i9 ^ (-2080896);
                            } else {
                                i7 = i5 + 1;
                                byte b2 = bArr[i5];
                                i = (i9 ^ (b2 << t3.f6403strictfp)) ^ 266354560;
                                if (b2 < 0) {
                                    i5 = i7 + 1;
                                    if (bArr[i7] < 0) {
                                        i7 = i5 + 1;
                                        if (bArr[i5] < 0) {
                                            i5 = i7 + 1;
                                            if (bArr[i7] < 0) {
                                                i7 = i5 + 1;
                                                if (bArr[i5] < 0) {
                                                    i5 = i7 + 1;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        i5 = i7;
                    }
                    this.f16001const = i5;
                    return i;
                }
            }
            return (int) e();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: abstract */
        public <T extends MessageLite> T mo18419abstract(int i, Parser<T> parser, Cimplements cimplements) throws IOException {
            int i2 = this.f15966do;
            if (i2 >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            this.f15966do = i2 + 1;
            T partialFrom = parser.parsePartialFrom(this, cimplements);
            mo18423do(c2.m19963for(i, 4));
            this.f15966do--;
            return partialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: case */
        public int mo18420case() {
            int i = this.f16006while;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - mo18427goto();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: continue */
        public void mo18421continue(int i, MessageLite.Builder builder, Cimplements cimplements) throws IOException {
            int i2 = this.f15966do;
            if (i2 >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            this.f15966do = i2 + 1;
            builder.mergeFrom(this, cimplements);
            mo18423do(c2.m19963for(i, 4));
            this.f15966do--;
        }

        /* JADX WARN: Code restructure failed: missing block: B:40:0x00b4, code lost:
        
            if (r2[r0] < 0) goto L41;
         */
        @Override // com.google.protobuf.CodedInputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public long d() throws IOException {
            long j;
            long j2;
            long j3;
            long j4;
            int i;
            int i2 = this.f16001const;
            int i3 = this.f15999catch;
            if (i3 != i2) {
                byte[] bArr = this.f16004this;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.f16001const = i4;
                    return b;
                }
                if (i3 - i4 >= 9) {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 >= 0) {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            i5 = i7;
                            j4 = i8 ^ 16256;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << t3.f6382default);
                            if (i9 < 0) {
                                i = i9 ^ (-2080896);
                            } else {
                                long j5 = i9;
                                int i10 = i5 + 1;
                                long j6 = j5 ^ (bArr[i5] << 28);
                                if (j6 >= 0) {
                                    j3 = 266354560;
                                } else {
                                    i5 = i10 + 1;
                                    long j7 = j6 ^ (bArr[i10] << 35);
                                    if (j7 < 0) {
                                        j2 = -34093383808L;
                                    } else {
                                        i10 = i5 + 1;
                                        j6 = j7 ^ (bArr[i5] << 42);
                                        if (j6 >= 0) {
                                            j3 = 4363953127296L;
                                        } else {
                                            i5 = i10 + 1;
                                            j7 = j6 ^ (bArr[i10] << 49);
                                            if (j7 < 0) {
                                                j2 = -558586000294016L;
                                            } else {
                                                int i11 = i5 + 1;
                                                j = (j7 ^ (bArr[i5] << 56)) ^ 71499008037633920L;
                                                i5 = j < 0 ? i11 + 1 : i11;
                                                j4 = j;
                                            }
                                        }
                                    }
                                    j = j7 ^ j2;
                                    j4 = j;
                                }
                                j4 = j3 ^ j6;
                                i5 = i10;
                            }
                        }
                        this.f16001const = i5;
                        return j4;
                    }
                    i = i6 ^ (-128);
                    j4 = i;
                    this.f16001const = i5;
                    return j4;
                }
            }
            return e();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: default */
        public double mo18422default() throws IOException {
            return Double.longBitsToDouble(mo18441synchronized());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: do */
        public void mo18423do(int i) throws n {
            if (this.f16003super != i) {
                throw n.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public long e() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((mo18444transient() & 128) == 0) {
                    return j;
                }
            }
            throw n.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: else */
        public int mo18424else() {
            return this.f16003super;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: extends */
        public int mo18425extends() throws IOException {
            return a();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int f() throws IOException {
            return mo18429instanceof();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: finally */
        public int mo18426finally() throws IOException {
            return mo18429instanceof();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long g() throws IOException {
            return mo18441synchronized();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: goto */
        public int mo18427goto() {
            return this.f16001const - this.f16002final;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int h() throws IOException {
            return CodedInputStream.m18414if(a());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long i() throws IOException {
            return CodedInputStream.m18413for(d());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: implements */
        public byte[] mo18428implements(int i) throws IOException {
            if (i > 0) {
                int i2 = this.f15999catch;
                int i3 = this.f16001const;
                if (i <= i2 - i3) {
                    int i4 = i + i3;
                    this.f16001const = i4;
                    return Arrays.copyOfRange(this.f16004this, i3, i4);
                }
            }
            if (i > 0) {
                throw n.truncatedMessage();
            }
            if (i == 0) {
                return Internal.f16557new;
            }
            throw n.negativeSize();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: instanceof */
        public int mo18429instanceof() throws IOException {
            int i = this.f16001const;
            if (this.f15999catch - i < 4) {
                throw n.truncatedMessage();
            }
            byte[] bArr = this.f16004this;
            this.f16001const = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: interface */
        public <T extends MessageLite> T mo18430interface(Parser<T> parser, Cimplements cimplements) throws IOException {
            int iA = a();
            if (this.f15966do >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            int iMo18436public = mo18436public(iA);
            this.f15966do++;
            T partialFrom = parser.parsePartialFrom(this, cimplements);
            mo18423do(0);
            this.f15966do--;
            mo18431native(iMo18436public);
            return partialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public String j() throws IOException {
            int iA = a();
            if (iA > 0) {
                int i = this.f15999catch;
                int i2 = this.f16001const;
                if (iA <= i - i2) {
                    String str = new String(this.f16004this, i2, iA, Internal.f16554do);
                    this.f16001const += iA;
                    return str;
                }
            }
            if (iA == 0) {
                return "";
            }
            if (iA < 0) {
                throw n.negativeSize();
            }
            throw n.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public String k() throws IOException {
            int iA = a();
            if (iA > 0) {
                int i = this.f15999catch;
                int i2 = this.f16001const;
                if (iA <= i - i2) {
                    String strM19702goto = a2.m19702goto(this.f16004this, i2, iA);
                    this.f16001const += iA;
                    return strM19702goto;
                }
            }
            if (iA == 0) {
                return "";
            }
            if (iA <= 0) {
                throw n.negativeSize();
            }
            throw n.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int l() throws IOException {
            if (mo18442this()) {
                this.f16003super = 0;
                return 0;
            }
            int iA = a();
            this.f16003super = iA;
            if (c2.m19962do(iA) != 0) {
                return this.f16003super;
            }
            throw n.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int m() throws IOException {
            return a();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long n() throws IOException {
            return d();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: native */
        public void mo18431native(int i) {
            this.f16006while = i;
            z();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void o(int i, MessageLite.Builder builder) throws IOException {
            mo18421continue(i, builder, Cimplements.m20607new());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void p() {
            this.f16002final = this.f16001const;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: package */
        public long mo18433package() throws IOException {
            return mo18441synchronized();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: private */
        public float mo18434private() throws IOException {
            return Float.intBitsToFloat(mo18429instanceof());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: protected */
        public void mo18435protected(MessageLite.Builder builder, Cimplements cimplements) throws IOException {
            int iA = a();
            if (this.f15966do >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            int iMo18436public = mo18436public(iA);
            this.f15966do++;
            builder.mergeFrom(this, cimplements);
            mo18423do(0);
            this.f15966do--;
            mo18431native(iMo18436public);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: public */
        public int mo18436public(int i) throws n {
            if (i < 0) {
                throw n.negativeSize();
            }
            int iMo18427goto = i + mo18427goto();
            int i2 = this.f16006while;
            if (iMo18427goto > i2) {
                throw n.truncatedMessage();
            }
            this.f16006while = iMo18427goto;
            z();
            return i2;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: return */
        public boolean mo18437return() throws IOException {
            return d() != 0;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: static */
        public byte[] mo18438static() throws IOException {
            return mo18428implements(a());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: strictfp */
        public int mo18439strictfp() throws IOException {
            return a();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: switch */
        public ByteBuffer mo18440switch() throws IOException {
            int iA = a();
            if (iA > 0) {
                int i = this.f15999catch;
                int i2 = this.f16001const;
                if (iA <= i - i2) {
                    ByteBuffer byteBufferWrap = (this.f15998break || !this.f16005throw) ? ByteBuffer.wrap(Arrays.copyOfRange(this.f16004this, i2, i2 + iA)) : ByteBuffer.wrap(this.f16004this, i2, iA).slice();
                    this.f16001const += iA;
                    return byteBufferWrap;
                }
            }
            if (iA == 0) {
                return Internal.f16558try;
            }
            if (iA < 0) {
                throw n.negativeSize();
            }
            throw n.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: synchronized */
        public long mo18441synchronized() throws IOException {
            int i = this.f16001const;
            if (this.f15999catch - i < 8) {
                throw n.truncatedMessage();
            }
            byte[] bArr = this.f16004this;
            this.f16001const = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean t(int i) throws IOException {
            int iM19964if = c2.m19964if(i);
            if (iM19964if == 0) {
                A();
                return true;
            }
            if (iM19964if == 1) {
                x(8);
                return true;
            }
            if (iM19964if == 2) {
                x(a());
                return true;
            }
            if (iM19964if == 3) {
                v();
                mo18423do(c2.m19963for(c2.m19962do(i), 4));
                return true;
            }
            if (iM19964if == 4) {
                return false;
            }
            if (iM19964if != 5) {
                throw n.invalidWireType();
            }
            x(4);
            return true;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: this */
        public boolean mo18442this() throws IOException {
            return this.f16001const == this.f15999catch;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: throws */
        public ByteString mo18443throws() throws IOException {
            int iA = a();
            if (iA > 0) {
                int i = this.f15999catch;
                int i2 = this.f16001const;
                if (iA <= i - i2) {
                    ByteString byteStringWrap = (this.f15998break && this.f16005throw) ? ByteString.wrap(this.f16004this, i2, iA) : ByteString.copyFrom(this.f16004this, i2, iA);
                    this.f16001const += iA;
                    return byteStringWrap;
                }
            }
            return iA == 0 ? ByteString.EMPTY : ByteString.wrap(mo18428implements(iA));
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: transient */
        public byte mo18444transient() throws IOException {
            int i = this.f16001const;
            if (i == this.f15999catch) {
                throw n.truncatedMessage();
            }
            byte[] bArr = this.f16004this;
            this.f16001const = i + 1;
            return bArr[i];
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: try */
        public void mo18445try(boolean z) {
            this.f16005throw = z;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean u(int i, Cnative cnative) throws IOException {
            int iM19964if = c2.m19964if(i);
            if (iM19964if == 0) {
                long jMo18446volatile = mo18446volatile();
                cnative.t0(i);
                cnative.C0(jMo18446volatile);
                return true;
            }
            if (iM19964if == 1) {
                long jMo18441synchronized = mo18441synchronized();
                cnative.t0(i);
                cnative.X(jMo18441synchronized);
                return true;
            }
            if (iM19964if == 2) {
                ByteString byteStringMo18443throws = mo18443throws();
                cnative.t0(i);
                cnative.T(byteStringMo18443throws);
                return true;
            }
            if (iM19964if == 3) {
                cnative.t0(i);
                w(cnative);
                int iM19963for = c2.m19963for(c2.m19962do(i), 4);
                mo18423do(iM19963for);
                cnative.t0(iM19963for);
                return true;
            }
            if (iM19964if == 4) {
                return false;
            }
            if (iM19964if != 5) {
                throw n.invalidWireType();
            }
            int iMo18429instanceof = mo18429instanceof();
            cnative.t0(i);
            cnative.W(iMo18429instanceof);
            return true;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void v() throws IOException {
            int iL;
            do {
                iL = l();
                if (iL == 0) {
                    return;
                }
            } while (t(iL));
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: volatile */
        public long mo18446volatile() throws IOException {
            return d();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void w(Cnative cnative) throws IOException {
            int iL;
            do {
                iL = l();
                if (iL == 0) {
                    return;
                }
            } while (u(iL, cnative));
        }

        @Override // com.google.protobuf.CodedInputStream
        public void x(int i) throws IOException {
            if (i >= 0) {
                int i2 = this.f15999catch;
                int i3 = this.f16001const;
                if (i <= i2 - i3) {
                    this.f16001const = i3 + i;
                    return;
                }
            }
            if (i >= 0) {
                throw n.truncatedMessage();
            }
            throw n.negativeSize();
        }

        private Cif(byte[] bArr, int i, int i2, boolean z) {
            super();
            this.f16006while = Integer.MAX_VALUE;
            this.f16004this = bArr;
            this.f15999catch = i2 + i;
            this.f16001const = i;
            this.f16002final = i;
            this.f15998break = z;
        }
    }

    /* renamed from: com.google.protobuf.CodedInputStream$new, reason: invalid class name */
    public static final class Cnew extends CodedInputStream {

        /* renamed from: break, reason: not valid java name */
        private final boolean f16007break;

        /* renamed from: catch, reason: not valid java name */
        private final long f16008catch;

        /* renamed from: class, reason: not valid java name */
        private long f16009class;

        /* renamed from: const, reason: not valid java name */
        private long f16010const;

        /* renamed from: final, reason: not valid java name */
        private long f16011final;

        /* renamed from: import, reason: not valid java name */
        private int f16012import;

        /* renamed from: super, reason: not valid java name */
        private int f16013super;

        /* renamed from: this, reason: not valid java name */
        private final ByteBuffer f16014this;

        /* renamed from: throw, reason: not valid java name */
        private int f16015throw;

        /* renamed from: while, reason: not valid java name */
        private boolean f16016while;

        public static boolean A() {
            return z1.g();
        }

        private void B() {
            long j = this.f16009class + this.f16013super;
            this.f16009class = j;
            int i = (int) (j - this.f16011final);
            int i2 = this.f16012import;
            if (i <= i2) {
                this.f16013super = 0;
                return;
            }
            int i3 = i - i2;
            this.f16013super = i3;
            this.f16009class = j - i3;
        }

        private int C() {
            return (int) (this.f16009class - this.f16010const);
        }

        private void D() throws IOException {
            if (C() >= 10) {
                E();
            } else {
                F();
            }
        }

        private void E() throws IOException {
            for (int i = 0; i < 10; i++) {
                long j = this.f16010const;
                this.f16010const = 1 + j;
                if (z1.m21663default(j) >= 0) {
                    return;
                }
            }
            throw n.malformedVarint();
        }

        private void F() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (mo18444transient() >= 0) {
                    return;
                }
            }
            throw n.malformedVarint();
        }

        private ByteBuffer G(long j, long j2) throws IOException {
            int iPosition = this.f16014this.position();
            int iLimit = this.f16014this.limit();
            try {
                try {
                    return this.f16014this.slice();
                } catch (IllegalArgumentException unused) {
                    throw n.truncatedMessage();
                }
            } finally {
            }
        }

        private int z(long j) {
            return (int) (j - this.f16008catch);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0083, code lost:
        
            if (com.google.protobuf.z1.m21663default(r4) < 0) goto L34;
         */
        @Override // com.google.protobuf.CodedInputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int a() throws IOException {
            int i;
            long j = this.f16010const;
            if (this.f16009class != j) {
                long j2 = j + 1;
                byte bM21663default = z1.m21663default(j);
                if (bM21663default >= 0) {
                    this.f16010const = j2;
                    return bM21663default;
                }
                if (this.f16009class - j2 >= 9) {
                    long j3 = j2 + 1;
                    int iM21663default = bM21663default ^ (z1.m21663default(j2) << 7);
                    if (iM21663default < 0) {
                        i = iM21663default ^ (-128);
                    } else {
                        long j4 = j3 + 1;
                        int iM21663default2 = iM21663default ^ (z1.m21663default(j3) << 14);
                        if (iM21663default2 >= 0) {
                            i = iM21663default2 ^ 16256;
                        } else {
                            j3 = j4 + 1;
                            int iM21663default3 = iM21663default2 ^ (z1.m21663default(j4) << t3.f6382default);
                            if (iM21663default3 < 0) {
                                i = iM21663default3 ^ (-2080896);
                            } else {
                                j4 = j3 + 1;
                                byte bM21663default2 = z1.m21663default(j3);
                                i = (iM21663default3 ^ (bM21663default2 << t3.f6403strictfp)) ^ 266354560;
                                if (bM21663default2 < 0) {
                                    j3 = j4 + 1;
                                    if (z1.m21663default(j4) < 0) {
                                        j4 = j3 + 1;
                                        if (z1.m21663default(j3) < 0) {
                                            j3 = j4 + 1;
                                            if (z1.m21663default(j4) < 0) {
                                                j4 = j3 + 1;
                                                if (z1.m21663default(j3) < 0) {
                                                    j3 = j4 + 1;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        j3 = j4;
                    }
                    this.f16010const = j3;
                    return i;
                }
            }
            return (int) e();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: abstract */
        public <T extends MessageLite> T mo18419abstract(int i, Parser<T> parser, Cimplements cimplements) throws IOException {
            int i2 = this.f15966do;
            if (i2 >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            this.f15966do = i2 + 1;
            T partialFrom = parser.parsePartialFrom(this, cimplements);
            mo18423do(c2.m19963for(i, 4));
            this.f15966do--;
            return partialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: case */
        public int mo18420case() {
            int i = this.f16012import;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - mo18427goto();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: continue */
        public void mo18421continue(int i, MessageLite.Builder builder, Cimplements cimplements) throws IOException {
            int i2 = this.f15966do;
            if (i2 >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            this.f15966do = i2 + 1;
            builder.mergeFrom(this, cimplements);
            mo18423do(c2.m19963for(i, 4));
            this.f15966do--;
        }

        @Override // com.google.protobuf.CodedInputStream
        public long d() throws IOException {
            long jM21663default;
            long j;
            long j2;
            int i;
            long j3 = this.f16010const;
            if (this.f16009class != j3) {
                long j4 = j3 + 1;
                byte bM21663default = z1.m21663default(j3);
                if (bM21663default >= 0) {
                    this.f16010const = j4;
                    return bM21663default;
                }
                if (this.f16009class - j4 >= 9) {
                    long j5 = j4 + 1;
                    int iM21663default = bM21663default ^ (z1.m21663default(j4) << 7);
                    if (iM21663default >= 0) {
                        long j6 = j5 + 1;
                        int iM21663default2 = iM21663default ^ (z1.m21663default(j5) << 14);
                        if (iM21663default2 >= 0) {
                            jM21663default = iM21663default2 ^ 16256;
                        } else {
                            j5 = j6 + 1;
                            int iM21663default3 = iM21663default2 ^ (z1.m21663default(j6) << t3.f6382default);
                            if (iM21663default3 < 0) {
                                i = iM21663default3 ^ (-2080896);
                            } else {
                                j6 = j5 + 1;
                                long jM21663default2 = iM21663default3 ^ (z1.m21663default(j5) << 28);
                                if (jM21663default2 < 0) {
                                    long j7 = j6 + 1;
                                    long jM21663default3 = jM21663default2 ^ (z1.m21663default(j6) << 35);
                                    if (jM21663default3 < 0) {
                                        j = -34093383808L;
                                    } else {
                                        j6 = j7 + 1;
                                        jM21663default2 = jM21663default3 ^ (z1.m21663default(j7) << 42);
                                        if (jM21663default2 >= 0) {
                                            j2 = 4363953127296L;
                                        } else {
                                            j7 = j6 + 1;
                                            jM21663default3 = jM21663default2 ^ (z1.m21663default(j6) << 49);
                                            if (jM21663default3 >= 0) {
                                                j6 = j7 + 1;
                                                jM21663default = (jM21663default3 ^ (z1.m21663default(j7) << 56)) ^ 71499008037633920L;
                                                if (jM21663default < 0) {
                                                    long j8 = 1 + j6;
                                                    if (z1.m21663default(j6) >= 0) {
                                                        j5 = j8;
                                                    }
                                                }
                                                this.f16010const = j5;
                                                return jM21663default;
                                            }
                                            j = -558586000294016L;
                                        }
                                    }
                                    jM21663default = jM21663default3 ^ j;
                                    j5 = j7;
                                    this.f16010const = j5;
                                    return jM21663default;
                                }
                                j2 = 266354560;
                                jM21663default = jM21663default2 ^ j2;
                            }
                        }
                        j5 = j6;
                        this.f16010const = j5;
                        return jM21663default;
                    }
                    i = iM21663default ^ (-128);
                    jM21663default = i;
                    this.f16010const = j5;
                    return jM21663default;
                }
            }
            return e();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: default */
        public double mo18422default() throws IOException {
            return Double.longBitsToDouble(mo18441synchronized());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: do */
        public void mo18423do(int i) throws n {
            if (this.f16015throw != i) {
                throw n.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public long e() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((mo18444transient() & 128) == 0) {
                    return j;
                }
            }
            throw n.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: else */
        public int mo18424else() {
            return this.f16015throw;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: extends */
        public int mo18425extends() throws IOException {
            return a();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int f() throws IOException {
            return mo18429instanceof();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: finally */
        public int mo18426finally() throws IOException {
            return mo18429instanceof();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long g() throws IOException {
            return mo18441synchronized();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: goto */
        public int mo18427goto() {
            return (int) (this.f16010const - this.f16011final);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int h() throws IOException {
            return CodedInputStream.m18414if(a());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long i() throws IOException {
            return CodedInputStream.m18413for(d());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: implements */
        public byte[] mo18428implements(int i) throws IOException {
            if (i < 0 || i > C()) {
                if (i > 0) {
                    throw n.truncatedMessage();
                }
                if (i == 0) {
                    return Internal.f16557new;
                }
                throw n.negativeSize();
            }
            byte[] bArr = new byte[i];
            long j = this.f16010const;
            long j2 = i;
            G(j, j + j2).get(bArr);
            this.f16010const += j2;
            return bArr;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: instanceof */
        public int mo18429instanceof() throws IOException {
            long j = this.f16010const;
            if (this.f16009class - j < 4) {
                throw n.truncatedMessage();
            }
            this.f16010const = 4 + j;
            return ((z1.m21663default(j + 3) & 255) << 24) | (z1.m21663default(j) & 255) | ((z1.m21663default(1 + j) & 255) << 8) | ((z1.m21663default(2 + j) & 255) << 16);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: interface */
        public <T extends MessageLite> T mo18430interface(Parser<T> parser, Cimplements cimplements) throws IOException {
            int iA = a();
            if (this.f15966do >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            int iMo18436public = mo18436public(iA);
            this.f15966do++;
            T partialFrom = parser.parsePartialFrom(this, cimplements);
            mo18423do(0);
            this.f15966do--;
            mo18431native(iMo18436public);
            return partialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public String j() throws IOException {
            int iA = a();
            if (iA <= 0 || iA > C()) {
                if (iA == 0) {
                    return "";
                }
                if (iA < 0) {
                    throw n.negativeSize();
                }
                throw n.truncatedMessage();
            }
            byte[] bArr = new byte[iA];
            long j = iA;
            z1.m21667final(this.f16010const, bArr, 0L, j);
            String str = new String(bArr, Internal.f16554do);
            this.f16010const += j;
            return str;
        }

        @Override // com.google.protobuf.CodedInputStream
        public String k() throws IOException {
            int iA = a();
            if (iA > 0 && iA <= C()) {
                String strM19699else = a2.m19699else(this.f16014this, z(this.f16010const), iA);
                this.f16010const += iA;
                return strM19699else;
            }
            if (iA == 0) {
                return "";
            }
            if (iA <= 0) {
                throw n.negativeSize();
            }
            throw n.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int l() throws IOException {
            if (mo18442this()) {
                this.f16015throw = 0;
                return 0;
            }
            int iA = a();
            this.f16015throw = iA;
            if (c2.m19962do(iA) != 0) {
                return this.f16015throw;
            }
            throw n.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int m() throws IOException {
            return a();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long n() throws IOException {
            return d();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: native */
        public void mo18431native(int i) {
            this.f16012import = i;
            B();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void o(int i, MessageLite.Builder builder) throws IOException {
            mo18421continue(i, builder, Cimplements.m20607new());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void p() {
            this.f16011final = this.f16010const;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: package */
        public long mo18433package() throws IOException {
            return mo18441synchronized();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: private */
        public float mo18434private() throws IOException {
            return Float.intBitsToFloat(mo18429instanceof());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: protected */
        public void mo18435protected(MessageLite.Builder builder, Cimplements cimplements) throws IOException {
            int iA = a();
            if (this.f15966do >= this.f15968if) {
                throw n.recursionLimitExceeded();
            }
            int iMo18436public = mo18436public(iA);
            this.f15966do++;
            builder.mergeFrom(this, cimplements);
            mo18423do(0);
            this.f15966do--;
            mo18431native(iMo18436public);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: public */
        public int mo18436public(int i) throws n {
            if (i < 0) {
                throw n.negativeSize();
            }
            int iMo18427goto = i + mo18427goto();
            int i2 = this.f16012import;
            if (iMo18427goto > i2) {
                throw n.truncatedMessage();
            }
            this.f16012import = iMo18427goto;
            B();
            return i2;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: return */
        public boolean mo18437return() throws IOException {
            return d() != 0;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: static */
        public byte[] mo18438static() throws IOException {
            return mo18428implements(a());
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: strictfp */
        public int mo18439strictfp() throws IOException {
            return a();
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: switch */
        public ByteBuffer mo18440switch() throws IOException {
            int iA = a();
            if (iA <= 0 || iA > C()) {
                if (iA == 0) {
                    return Internal.f16558try;
                }
                if (iA < 0) {
                    throw n.negativeSize();
                }
                throw n.truncatedMessage();
            }
            if (this.f16007break || !this.f16016while) {
                byte[] bArr = new byte[iA];
                long j = iA;
                z1.m21667final(this.f16010const, bArr, 0L, j);
                this.f16010const += j;
                return ByteBuffer.wrap(bArr);
            }
            long j2 = this.f16010const;
            long j3 = iA;
            ByteBuffer byteBufferG = G(j2, j2 + j3);
            this.f16010const += j3;
            return byteBufferG;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: synchronized */
        public long mo18441synchronized() throws IOException {
            long j = this.f16010const;
            if (this.f16009class - j < 8) {
                throw n.truncatedMessage();
            }
            this.f16010const = 8 + j;
            return ((z1.m21663default(j + 7) & 255) << 56) | (z1.m21663default(j) & 255) | ((z1.m21663default(1 + j) & 255) << 8) | ((z1.m21663default(2 + j) & 255) << 16) | ((z1.m21663default(3 + j) & 255) << 24) | ((z1.m21663default(4 + j) & 255) << 32) | ((z1.m21663default(5 + j) & 255) << 40) | ((z1.m21663default(6 + j) & 255) << 48);
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean t(int i) throws IOException {
            int iM19964if = c2.m19964if(i);
            if (iM19964if == 0) {
                D();
                return true;
            }
            if (iM19964if == 1) {
                x(8);
                return true;
            }
            if (iM19964if == 2) {
                x(a());
                return true;
            }
            if (iM19964if == 3) {
                v();
                mo18423do(c2.m19963for(c2.m19962do(i), 4));
                return true;
            }
            if (iM19964if == 4) {
                return false;
            }
            if (iM19964if != 5) {
                throw n.invalidWireType();
            }
            x(4);
            return true;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: this */
        public boolean mo18442this() throws IOException {
            return this.f16010const == this.f16009class;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: throws */
        public ByteString mo18443throws() throws IOException {
            int iA = a();
            if (iA <= 0 || iA > C()) {
                if (iA == 0) {
                    return ByteString.EMPTY;
                }
                if (iA < 0) {
                    throw n.negativeSize();
                }
                throw n.truncatedMessage();
            }
            if (this.f16007break && this.f16016while) {
                long j = this.f16010const;
                long j2 = iA;
                ByteBuffer byteBufferG = G(j, j + j2);
                this.f16010const += j2;
                return ByteString.wrap(byteBufferG);
            }
            byte[] bArr = new byte[iA];
            long j3 = iA;
            z1.m21667final(this.f16010const, bArr, 0L, j3);
            this.f16010const += j3;
            return ByteString.wrap(bArr);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: transient */
        public byte mo18444transient() throws IOException {
            long j = this.f16010const;
            if (j == this.f16009class) {
                throw n.truncatedMessage();
            }
            this.f16010const = 1 + j;
            return z1.m21663default(j);
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: try */
        public void mo18445try(boolean z) {
            this.f16016while = z;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean u(int i, Cnative cnative) throws IOException {
            int iM19964if = c2.m19964if(i);
            if (iM19964if == 0) {
                long jMo18446volatile = mo18446volatile();
                cnative.t0(i);
                cnative.C0(jMo18446volatile);
                return true;
            }
            if (iM19964if == 1) {
                long jMo18441synchronized = mo18441synchronized();
                cnative.t0(i);
                cnative.X(jMo18441synchronized);
                return true;
            }
            if (iM19964if == 2) {
                ByteString byteStringMo18443throws = mo18443throws();
                cnative.t0(i);
                cnative.T(byteStringMo18443throws);
                return true;
            }
            if (iM19964if == 3) {
                cnative.t0(i);
                w(cnative);
                int iM19963for = c2.m19963for(c2.m19962do(i), 4);
                mo18423do(iM19963for);
                cnative.t0(iM19963for);
                return true;
            }
            if (iM19964if == 4) {
                return false;
            }
            if (iM19964if != 5) {
                throw n.invalidWireType();
            }
            int iMo18429instanceof = mo18429instanceof();
            cnative.t0(i);
            cnative.W(iMo18429instanceof);
            return true;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void v() throws IOException {
            int iL;
            do {
                iL = l();
                if (iL == 0) {
                    return;
                }
            } while (t(iL));
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: volatile */
        public long mo18446volatile() throws IOException {
            return d();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void w(Cnative cnative) throws IOException {
            int iL;
            do {
                iL = l();
                if (iL == 0) {
                    return;
                }
            } while (u(iL, cnative));
        }

        @Override // com.google.protobuf.CodedInputStream
        public void x(int i) throws IOException {
            if (i >= 0 && i <= C()) {
                this.f16010const += i;
            } else {
                if (i >= 0) {
                    throw n.truncatedMessage();
                }
                throw n.negativeSize();
            }
        }

        private Cnew(ByteBuffer byteBuffer, boolean z) {
            super();
            this.f16012import = Integer.MAX_VALUE;
            this.f16014this = byteBuffer;
            long jM21688this = z1.m21688this(byteBuffer);
            this.f16008catch = jM21688this;
            this.f16009class = byteBuffer.limit() + jM21688this;
            long jPosition = jM21688this + byteBuffer.position();
            this.f16010const = jPosition;
            this.f16011final = jPosition;
            this.f16007break = z;
        }
    }

    public static int b(int i, InputStream inputStream) throws IOException {
        if ((i & 128) == 0) {
            return i;
        }
        int i2 = i & 127;
        int i3 = 7;
        while (i3 < 32) {
            int i4 = inputStream.read();
            if (i4 == -1) {
                throw n.truncatedMessage();
            }
            i2 |= (i4 & 127) << i3;
            if ((i4 & 128) == 0) {
                return i2;
            }
            i3 += 7;
        }
        while (i3 < 64) {
            int i5 = inputStream.read();
            if (i5 == -1) {
                throw n.truncatedMessage();
            }
            if ((i5 & 128) == 0) {
                return i2;
            }
            i3 += 7;
        }
        throw n.malformedVarint();
    }

    /* renamed from: break, reason: not valid java name */
    public static CodedInputStream m18408break(InputStream inputStream) {
        return m18409catch(inputStream, 4096);
    }

    public static int c(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i != -1) {
            return b(i, inputStream);
        }
        throw n.truncatedMessage();
    }

    /* renamed from: catch, reason: not valid java name */
    public static CodedInputStream m18409catch(InputStream inputStream, int i) {
        if (i > 0) {
            return inputStream == null ? m18417throw(Internal.f16557new) : new StreamDecoder(inputStream, i);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    /* renamed from: class, reason: not valid java name */
    public static CodedInputStream m18410class(Iterable<ByteBuffer> iterable) {
        return !Cnew.A() ? m18408break(new o(iterable)) : m18411const(iterable, false);
    }

    /* renamed from: const, reason: not valid java name */
    public static CodedInputStream m18411const(Iterable<ByteBuffer> iterable, boolean z) {
        int i = 0;
        int iRemaining = 0;
        for (ByteBuffer byteBuffer : iterable) {
            iRemaining += byteBuffer.remaining();
            i = byteBuffer.hasArray() ? i | 1 : byteBuffer.isDirect() ? i | 2 : i | 4;
        }
        return i == 2 ? new Cfor(iterable, iRemaining, z) : m18408break(new o(iterable));
    }

    /* renamed from: final, reason: not valid java name */
    public static CodedInputStream m18412final(ByteBuffer byteBuffer) {
        return m18416super(byteBuffer, false);
    }

    /* renamed from: for, reason: not valid java name */
    public static long m18413for(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m18414if(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: import, reason: not valid java name */
    public static CodedInputStream m18415import(byte[] bArr, int i, int i2, boolean z) {
        Cif cif = new Cif(bArr, i, i2, z);
        try {
            cif.mo18436public(i2);
            return cif;
        } catch (n e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static CodedInputStream m18416super(ByteBuffer byteBuffer, boolean z) {
        if (byteBuffer.hasArray()) {
            return m18415import(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), z);
        }
        if (byteBuffer.isDirect() && Cnew.A()) {
            return new Cnew(byteBuffer, z);
        }
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = new byte[iRemaining];
        byteBuffer.duplicate().get(bArr);
        return m18415import(bArr, 0, iRemaining, true);
    }

    /* renamed from: throw, reason: not valid java name */
    public static CodedInputStream m18417throw(byte[] bArr) {
        return m18418while(bArr, 0, bArr.length);
    }

    /* renamed from: while, reason: not valid java name */
    public static CodedInputStream m18418while(byte[] bArr, int i, int i2) {
        return m18415import(bArr, i, i2, false);
    }

    public abstract int a() throws IOException;

    /* renamed from: abstract, reason: not valid java name */
    public abstract <T extends MessageLite> T mo18419abstract(int i, Parser<T> parser, Cimplements cimplements) throws IOException;

    /* renamed from: case, reason: not valid java name */
    public abstract int mo18420case();

    /* renamed from: continue, reason: not valid java name */
    public abstract void mo18421continue(int i, MessageLite.Builder builder, Cimplements cimplements) throws IOException;

    public abstract long d() throws IOException;

    /* renamed from: default, reason: not valid java name */
    public abstract double mo18422default() throws IOException;

    /* renamed from: do, reason: not valid java name */
    public abstract void mo18423do(int i) throws n;

    public abstract long e() throws IOException;

    /* renamed from: else, reason: not valid java name */
    public abstract int mo18424else();

    /* renamed from: extends, reason: not valid java name */
    public abstract int mo18425extends() throws IOException;

    public abstract int f() throws IOException;

    /* renamed from: finally, reason: not valid java name */
    public abstract int mo18426finally() throws IOException;

    public abstract long g() throws IOException;

    /* renamed from: goto, reason: not valid java name */
    public abstract int mo18427goto();

    public abstract int h() throws IOException;

    public abstract long i() throws IOException;

    /* renamed from: implements, reason: not valid java name */
    public abstract byte[] mo18428implements(int i) throws IOException;

    /* renamed from: instanceof, reason: not valid java name */
    public abstract int mo18429instanceof() throws IOException;

    /* renamed from: interface, reason: not valid java name */
    public abstract <T extends MessageLite> T mo18430interface(Parser<T> parser, Cimplements cimplements) throws IOException;

    public abstract String j() throws IOException;

    public abstract String k() throws IOException;

    public abstract int l() throws IOException;

    public abstract int m() throws IOException;

    public abstract long n() throws IOException;

    /* renamed from: native, reason: not valid java name */
    public abstract void mo18431native(int i);

    /* renamed from: new, reason: not valid java name */
    public final void m18432new() {
        this.f15970try = true;
    }

    @Deprecated
    public abstract void o(int i, MessageLite.Builder builder) throws IOException;

    public abstract void p();

    /* renamed from: package, reason: not valid java name */
    public abstract long mo18433package() throws IOException;

    /* renamed from: private, reason: not valid java name */
    public abstract float mo18434private() throws IOException;

    /* renamed from: protected, reason: not valid java name */
    public abstract void mo18435protected(MessageLite.Builder builder, Cimplements cimplements) throws IOException;

    /* renamed from: public, reason: not valid java name */
    public abstract int mo18436public(int i) throws n;

    public final int q(int i) {
        if (i >= 0) {
            int i2 = this.f15968if;
            this.f15968if = i;
            return i2;
        }
        StringBuilder sb = new StringBuilder(47);
        sb.append("Recursion limit cannot be negative: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public final int r(int i) {
        if (i >= 0) {
            int i2 = this.f15967for;
            this.f15967for = i;
            return i2;
        }
        StringBuilder sb = new StringBuilder(42);
        sb.append("Size limit cannot be negative: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: return, reason: not valid java name */
    public abstract boolean mo18437return() throws IOException;

    public final boolean s() {
        return this.f15970try;
    }

    /* renamed from: static, reason: not valid java name */
    public abstract byte[] mo18438static() throws IOException;

    /* renamed from: strictfp, reason: not valid java name */
    public abstract int mo18439strictfp() throws IOException;

    /* renamed from: switch, reason: not valid java name */
    public abstract ByteBuffer mo18440switch() throws IOException;

    /* renamed from: synchronized, reason: not valid java name */
    public abstract long mo18441synchronized() throws IOException;

    public abstract boolean t(int i) throws IOException;

    /* renamed from: this, reason: not valid java name */
    public abstract boolean mo18442this() throws IOException;

    /* renamed from: throws, reason: not valid java name */
    public abstract ByteString mo18443throws() throws IOException;

    /* renamed from: transient, reason: not valid java name */
    public abstract byte mo18444transient() throws IOException;

    /* renamed from: try, reason: not valid java name */
    public abstract void mo18445try(boolean z);

    @Deprecated
    public abstract boolean u(int i, Cnative cnative) throws IOException;

    public abstract void v() throws IOException;

    /* renamed from: volatile, reason: not valid java name */
    public abstract long mo18446volatile() throws IOException;

    public abstract void w(Cnative cnative) throws IOException;

    public abstract void x(int i) throws IOException;

    public final void y() {
        this.f15970try = false;
    }

    private CodedInputStream() {
        this.f15968if = 100;
        this.f15967for = Integer.MAX_VALUE;
        this.f15970try = false;
    }
}
