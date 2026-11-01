package com.google.protobuf;

import com.google.protobuf.a2;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.mozilla.javascript.ES6Iterator;

/* renamed from: com.google.protobuf.native, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cnative extends Cthrow {

    /* renamed from: case, reason: not valid java name */
    public static final int f17086case = 4096;

    /* renamed from: for, reason: not valid java name */
    private static final Logger f17087for = Logger.getLogger(Cnative.class.getName());

    /* renamed from: new, reason: not valid java name */
    private static final boolean f17088new = z1.f();

    /* renamed from: try, reason: not valid java name */
    @Deprecated
    public static final int f17089try = 4;

    /* renamed from: do, reason: not valid java name */
    public Cpublic f17090do;

    /* renamed from: if, reason: not valid java name */
    private boolean f17091if;

    /* renamed from: com.google.protobuf.native$case, reason: invalid class name */
    public static class Ccase extends IOException {

        /* renamed from: do, reason: not valid java name */
        private static final String f17092do = "CodedOutputStream was writing to a flat byte array and ran out of space.";
        private static final long serialVersionUID = -6947486886997889499L;

        public Ccase() {
            super(f17092do);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Ccase(String str) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "));
        }

        public Ccase(Throwable th) {
            super(f17092do, th);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Ccase(String str, Throwable th) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "), th);
        }
    }

    /* renamed from: com.google.protobuf.native$else, reason: invalid class name */
    public static final class Celse extends Cif {

        /* renamed from: catch, reason: not valid java name */
        private final OutputStream f17093catch;

        public Celse(OutputStream outputStream, int i) {
            super(i);
            Objects.requireNonNull(outputStream, "out");
            this.f17093catch = outputStream;
        }

        private void K0() throws IOException {
            this.f17093catch.write(this.f17102else, 0, this.f17104this);
            this.f17104this = 0;
        }

        private void L0(int i) throws IOException {
            if (this.f17103goto - this.f17104this < i) {
                K0();
            }
        }

        @Override // com.google.protobuf.Cnative
        public void A0(int i, int i2) throws IOException {
            B0(c2.m19963for(i, i2));
        }

        @Override // com.google.protobuf.Cnative
        public void B0(int i) throws IOException {
            L0(5);
            I0(i);
        }

        @Override // com.google.protobuf.Cnative
        public void C0(long j) throws IOException {
            L0(10);
            J0(j);
        }

        @Override // com.google.protobuf.Cnative
        public void O(int i, byte[] bArr) throws IOException {
            P(i, bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.Cnative
        public void P(int i, byte[] bArr, int i2, int i3) throws IOException {
            A0(i, 2);
            R(bArr, i2, i3);
        }

        @Override // com.google.protobuf.Cnative
        public void R(byte[] bArr, int i, int i2) throws IOException {
            B0(i2);
            mo20004for(bArr, i, i2);
        }

        @Override // com.google.protobuf.Cnative
        public void S(int i, ByteBuffer byteBuffer) throws IOException {
            A0(i, 2);
            B0(byteBuffer.capacity());
            n0(byteBuffer);
        }

        @Override // com.google.protobuf.Cnative
        public void T(ByteString byteString) throws IOException {
            B0(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.Cnative
        public void W(int i) throws IOException {
            L0(4);
            E0(i);
        }

        @Override // com.google.protobuf.Cnative
        public void X(long j) throws IOException {
            L0(8);
            F0(j);
        }

        @Override // com.google.protobuf.Cnative
        public void d0(int i) throws IOException {
            if (i >= 0) {
                B0(i);
            } else {
                C0(i);
            }
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: do */
        public void mo20003do(byte b) throws IOException {
            if (this.f17104this == this.f17103goto) {
                K0();
            }
            D0(b);
        }

        @Override // com.google.protobuf.Cnative
        public void f0(int i, MessageLite messageLite) throws IOException {
            A0(i, 2);
            h0(messageLite);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: for */
        public void mo20004for(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.f17103goto;
            int i4 = this.f17104this;
            if (i3 - i4 >= i2) {
                System.arraycopy(bArr, i, this.f17102else, i4, i2);
                this.f17104this += i2;
                this.f17101break += i2;
                return;
            }
            int i5 = i3 - i4;
            System.arraycopy(bArr, i, this.f17102else, i4, i5);
            int i6 = i + i5;
            int i7 = i2 - i5;
            this.f17104this = this.f17103goto;
            this.f17101break += i5;
            K0();
            if (i7 <= this.f17103goto) {
                System.arraycopy(bArr, i6, this.f17102else, 0, i7);
                this.f17104this = i7;
            } else {
                this.f17093catch.write(bArr, i6, i7);
            }
            this.f17101break += i7;
        }

        @Override // com.google.protobuf.Cnative
        public void g0(int i, MessageLite messageLite, Schema schema) throws IOException {
            A0(i, 2);
            i0(messageLite, schema);
        }

        @Override // com.google.protobuf.Cnative
        public void h0(MessageLite messageLite) throws IOException {
            B0(messageLite.getSerializedSize());
            messageLite.writeTo(this);
        }

        @Override // com.google.protobuf.Cnative
        public void i0(MessageLite messageLite, Schema schema) throws IOException {
            B0(((AbstractMessageLite) messageLite).getSerializedSize(schema));
            schema.writeTo(messageLite, this.f17090do);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: if */
        public void mo20005if(ByteBuffer byteBuffer) throws IOException {
            int iRemaining = byteBuffer.remaining();
            int i = this.f17103goto;
            int i2 = this.f17104this;
            if (i - i2 >= iRemaining) {
                byteBuffer.get(this.f17102else, i2, iRemaining);
                this.f17104this += iRemaining;
                this.f17101break += iRemaining;
                return;
            }
            int i3 = i - i2;
            byteBuffer.get(this.f17102else, i2, i3);
            int i4 = iRemaining - i3;
            this.f17104this = this.f17103goto;
            this.f17101break += i3;
            K0();
            while (true) {
                int i5 = this.f17103goto;
                if (i4 <= i5) {
                    byteBuffer.get(this.f17102else, 0, i4);
                    this.f17104this = i4;
                    this.f17101break += i4;
                    return;
                } else {
                    byteBuffer.get(this.f17102else, 0, i5);
                    this.f17093catch.write(this.f17102else, 0, this.f17103goto);
                    int i6 = this.f17103goto;
                    i4 -= i6;
                    this.f17101break += i6;
                }
            }
        }

        @Override // com.google.protobuf.Cnative
        public void j0(int i, MessageLite messageLite) throws IOException {
            A0(1, 3);
            writeUInt32(2, i);
            f0(3, messageLite);
            A0(1, 4);
        }

        @Override // com.google.protobuf.Cnative
        public void n0(ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasArray()) {
                mo20004for(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
                return;
            }
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            mo20005if(byteBufferDuplicate);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: new */
        public void mo20006new(ByteBuffer byteBuffer) throws IOException {
            mo20005if(byteBuffer);
        }

        @Override // com.google.protobuf.Cnative
        public void s0(int i, ByteString byteString) throws IOException {
            A0(1, 3);
            writeUInt32(2, i);
            writeBytes(3, byteString);
            A0(1, 4);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: try */
        public void mo20007try(byte[] bArr, int i, int i2) throws IOException {
            mo20004for(bArr, i, i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeBool(int i, boolean z) throws IOException {
            L0(11);
            H0(i, 0);
            D0(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.Cnative
        public void writeBytes(int i, ByteString byteString) throws IOException {
            A0(i, 2);
            T(byteString);
        }

        @Override // com.google.protobuf.Cnative
        public void writeFixed32(int i, int i2) throws IOException {
            L0(14);
            H0(i, 5);
            E0(i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeFixed64(int i, long j) throws IOException {
            L0(18);
            H0(i, 1);
            F0(j);
        }

        @Override // com.google.protobuf.Cnative
        public void writeInt32(int i, int i2) throws IOException {
            L0(20);
            H0(i, 0);
            G0(i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeString(int i, String str) throws IOException {
            A0(i, 2);
            z0(str);
        }

        @Override // com.google.protobuf.Cnative
        public void writeUInt32(int i, int i2) throws IOException {
            L0(20);
            H0(i, 0);
            I0(i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeUInt64(int i, long j) throws IOException {
            L0(20);
            H0(i, 0);
            J0(j);
        }

        @Override // com.google.protobuf.Cnative
        public void y() throws IOException {
            if (this.f17104this > 0) {
                K0();
            }
        }

        @Override // com.google.protobuf.Cnative
        public void z0(String str) throws IOException {
            int iM19695catch;
            try {
                int length = str.length() * 3;
                int iT = Cnative.t(length);
                int i = iT + length;
                int i2 = this.f17103goto;
                if (i > i2) {
                    byte[] bArr = new byte[length];
                    int iM19712this = a2.m19712this(str, bArr, 0, length);
                    B0(iM19712this);
                    mo20007try(bArr, 0, iM19712this);
                    return;
                }
                if (i > i2 - this.f17104this) {
                    K0();
                }
                int iT2 = Cnative.t(str.length());
                int i3 = this.f17104this;
                try {
                    if (iT2 == iT) {
                        int i4 = i3 + iT2;
                        this.f17104this = i4;
                        int iM19712this2 = a2.m19712this(str, this.f17102else, i4, this.f17103goto - i4);
                        this.f17104this = i3;
                        iM19695catch = (iM19712this2 - i3) - iT2;
                        I0(iM19695catch);
                        this.f17104this = iM19712this2;
                    } else {
                        iM19695catch = a2.m19695catch(str);
                        I0(iM19695catch);
                        this.f17104this = a2.m19712this(str, this.f17102else, this.f17104this, iM19695catch);
                    }
                    this.f17101break += iM19695catch;
                } catch (a2.Cnew e) {
                    this.f17101break -= this.f17104this - i3;
                    this.f17104this = i3;
                    throw e;
                } catch (ArrayIndexOutOfBoundsException e2) {
                    throw new Ccase(e2);
                }
            } catch (a2.Cnew e3) {
                A(str, e3);
            }
        }
    }

    /* renamed from: com.google.protobuf.native$for, reason: invalid class name */
    public static class Cfor extends Cnative {

        /* renamed from: break, reason: not valid java name */
        private int f17094break;

        /* renamed from: else, reason: not valid java name */
        private final byte[] f17095else;

        /* renamed from: goto, reason: not valid java name */
        private final int f17096goto;

        /* renamed from: this, reason: not valid java name */
        private final int f17097this;

        public Cfor(byte[] bArr, int i, int i2) {
            super();
            Objects.requireNonNull(bArr, "buffer");
            int i3 = i + i2;
            if ((i | i2 | (bArr.length - i3)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            this.f17095else = bArr;
            this.f17096goto = i;
            this.f17094break = i;
            this.f17097this = i3;
        }

        @Override // com.google.protobuf.Cnative
        public final void A0(int i, int i2) throws IOException {
            B0(c2.m19963for(i, i2));
        }

        @Override // com.google.protobuf.Cnative
        public final void B0(int i) throws IOException {
            if (!Cnative.f17088new || com.google.protobuf.Cnew.m20909for() || L() < 5) {
                while ((i & (-128)) != 0) {
                    try {
                        byte[] bArr = this.f17095else;
                        int i2 = this.f17094break;
                        this.f17094break = i2 + 1;
                        bArr[i2] = (byte) ((i & 127) | 128);
                        i >>>= 7;
                    } catch (IndexOutOfBoundsException e) {
                        throw new Ccase(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17094break), Integer.valueOf(this.f17097this), 1), e);
                    }
                }
                byte[] bArr2 = this.f17095else;
                int i3 = this.f17094break;
                this.f17094break = i3 + 1;
                bArr2[i3] = (byte) i;
                return;
            }
            if ((i & (-128)) == 0) {
                byte[] bArr3 = this.f17095else;
                int i4 = this.f17094break;
                this.f17094break = i4 + 1;
                z1.q(bArr3, i4, (byte) i);
                return;
            }
            byte[] bArr4 = this.f17095else;
            int i5 = this.f17094break;
            this.f17094break = i5 + 1;
            z1.q(bArr4, i5, (byte) (i | 128));
            int i6 = i >>> 7;
            if ((i6 & (-128)) == 0) {
                byte[] bArr5 = this.f17095else;
                int i7 = this.f17094break;
                this.f17094break = i7 + 1;
                z1.q(bArr5, i7, (byte) i6);
                return;
            }
            byte[] bArr6 = this.f17095else;
            int i8 = this.f17094break;
            this.f17094break = i8 + 1;
            z1.q(bArr6, i8, (byte) (i6 | 128));
            int i9 = i6 >>> 7;
            if ((i9 & (-128)) == 0) {
                byte[] bArr7 = this.f17095else;
                int i10 = this.f17094break;
                this.f17094break = i10 + 1;
                z1.q(bArr7, i10, (byte) i9);
                return;
            }
            byte[] bArr8 = this.f17095else;
            int i11 = this.f17094break;
            this.f17094break = i11 + 1;
            z1.q(bArr8, i11, (byte) (i9 | 128));
            int i12 = i9 >>> 7;
            if ((i12 & (-128)) == 0) {
                byte[] bArr9 = this.f17095else;
                int i13 = this.f17094break;
                this.f17094break = i13 + 1;
                z1.q(bArr9, i13, (byte) i12);
                return;
            }
            byte[] bArr10 = this.f17095else;
            int i14 = this.f17094break;
            this.f17094break = i14 + 1;
            z1.q(bArr10, i14, (byte) (i12 | 128));
            byte[] bArr11 = this.f17095else;
            int i15 = this.f17094break;
            this.f17094break = i15 + 1;
            z1.q(bArr11, i15, (byte) (i12 >>> 7));
        }

        @Override // com.google.protobuf.Cnative
        public final void C0(long j) throws IOException {
            if (Cnative.f17088new && L() >= 10) {
                while ((j & (-128)) != 0) {
                    byte[] bArr = this.f17095else;
                    int i = this.f17094break;
                    this.f17094break = i + 1;
                    z1.q(bArr, i, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
                byte[] bArr2 = this.f17095else;
                int i2 = this.f17094break;
                this.f17094break = i2 + 1;
                z1.q(bArr2, i2, (byte) j);
                return;
            }
            while ((j & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f17095else;
                    int i3 = this.f17094break;
                    this.f17094break = i3 + 1;
                    bArr3[i3] = (byte) ((((int) j) & 127) | 128);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new Ccase(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17094break), Integer.valueOf(this.f17097this), 1), e);
                }
            }
            byte[] bArr4 = this.f17095else;
            int i4 = this.f17094break;
            this.f17094break = i4 + 1;
            bArr4[i4] = (byte) j;
        }

        @Override // com.google.protobuf.Cnative
        public final int L() {
            return this.f17097this - this.f17094break;
        }

        @Override // com.google.protobuf.Cnative
        public final void O(int i, byte[] bArr) throws IOException {
            P(i, bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.Cnative
        public final void P(int i, byte[] bArr, int i2, int i3) throws IOException {
            A0(i, 2);
            R(bArr, i2, i3);
        }

        @Override // com.google.protobuf.Cnative
        public final void R(byte[] bArr, int i, int i2) throws IOException {
            B0(i2);
            mo20004for(bArr, i, i2);
        }

        @Override // com.google.protobuf.Cnative
        public final void S(int i, ByteBuffer byteBuffer) throws IOException {
            A0(i, 2);
            B0(byteBuffer.capacity());
            n0(byteBuffer);
        }

        @Override // com.google.protobuf.Cnative
        public final void T(ByteString byteString) throws IOException {
            B0(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.Cnative
        public final void W(int i) throws IOException {
            try {
                byte[] bArr = this.f17095else;
                int i2 = this.f17094break;
                int i3 = i2 + 1;
                this.f17094break = i3;
                bArr[i2] = (byte) (i & 255);
                int i4 = i3 + 1;
                this.f17094break = i4;
                bArr[i3] = (byte) ((i >> 8) & 255);
                int i5 = i4 + 1;
                this.f17094break = i5;
                bArr[i4] = (byte) ((i >> 16) & 255);
                this.f17094break = i5 + 1;
                bArr[i5] = (byte) ((i >> 24) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new Ccase(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17094break), Integer.valueOf(this.f17097this), 1), e);
            }
        }

        @Override // com.google.protobuf.Cnative
        public final void X(long j) throws IOException {
            try {
                byte[] bArr = this.f17095else;
                int i = this.f17094break;
                int i2 = i + 1;
                this.f17094break = i2;
                bArr[i] = (byte) (((int) j) & 255);
                int i3 = i2 + 1;
                this.f17094break = i3;
                bArr[i2] = (byte) (((int) (j >> 8)) & 255);
                int i4 = i3 + 1;
                this.f17094break = i4;
                bArr[i3] = (byte) (((int) (j >> 16)) & 255);
                int i5 = i4 + 1;
                this.f17094break = i5;
                bArr[i4] = (byte) (((int) (j >> 24)) & 255);
                int i6 = i5 + 1;
                this.f17094break = i6;
                bArr[i5] = (byte) (((int) (j >> 32)) & 255);
                int i7 = i6 + 1;
                this.f17094break = i7;
                bArr[i6] = (byte) (((int) (j >> 40)) & 255);
                int i8 = i7 + 1;
                this.f17094break = i8;
                bArr[i7] = (byte) (((int) (j >> 48)) & 255);
                this.f17094break = i8 + 1;
                bArr[i8] = (byte) (((int) (j >> 56)) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new Ccase(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17094break), Integer.valueOf(this.f17097this), 1), e);
            }
        }

        @Override // com.google.protobuf.Cnative
        public final void d0(int i) throws IOException {
            if (i >= 0) {
                B0(i);
            } else {
                C0(i);
            }
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: do */
        public final void mo20003do(byte b) throws IOException {
            try {
                byte[] bArr = this.f17095else;
                int i = this.f17094break;
                this.f17094break = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new Ccase(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17094break), Integer.valueOf(this.f17097this), 1), e);
            }
        }

        @Override // com.google.protobuf.Cnative
        public final void f0(int i, MessageLite messageLite) throws IOException {
            A0(i, 2);
            h0(messageLite);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: for */
        public final void mo20004for(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f17095else, this.f17094break, i2);
                this.f17094break += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new Ccase(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17094break), Integer.valueOf(this.f17097this), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.protobuf.Cnative
        public final void g0(int i, MessageLite messageLite, Schema schema) throws IOException {
            A0(i, 2);
            B0(((AbstractMessageLite) messageLite).getSerializedSize(schema));
            schema.writeTo(messageLite, this.f17090do);
        }

        @Override // com.google.protobuf.Cnative
        public final void h0(MessageLite messageLite) throws IOException {
            B0(messageLite.getSerializedSize());
            messageLite.writeTo(this);
        }

        @Override // com.google.protobuf.Cnative
        public final void i0(MessageLite messageLite, Schema schema) throws IOException {
            B0(((AbstractMessageLite) messageLite).getSerializedSize(schema));
            schema.writeTo(messageLite, this.f17090do);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: if */
        public final void mo20005if(ByteBuffer byteBuffer) throws IOException {
            int iRemaining = byteBuffer.remaining();
            try {
                byteBuffer.get(this.f17095else, this.f17094break, iRemaining);
                this.f17094break += iRemaining;
            } catch (IndexOutOfBoundsException e) {
                throw new Ccase(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17094break), Integer.valueOf(this.f17097this), Integer.valueOf(iRemaining)), e);
            }
        }

        @Override // com.google.protobuf.Cnative
        public final void j0(int i, MessageLite messageLite) throws IOException {
            A0(1, 3);
            writeUInt32(2, i);
            f0(3, messageLite);
            A0(1, 4);
        }

        @Override // com.google.protobuf.Cnative
        public final void n0(ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasArray()) {
                mo20004for(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
                return;
            }
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            mo20005if(byteBufferDuplicate);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: new */
        public final void mo20006new(ByteBuffer byteBuffer) throws IOException {
            mo20005if(byteBuffer);
        }

        @Override // com.google.protobuf.Cnative
        public final void s0(int i, ByteString byteString) throws IOException {
            A0(1, 3);
            writeUInt32(2, i);
            writeBytes(3, byteString);
            A0(1, 4);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: try */
        public final void mo20007try(byte[] bArr, int i, int i2) throws IOException {
            mo20004for(bArr, i, i2);
        }

        @Override // com.google.protobuf.Cnative
        public final void writeBool(int i, boolean z) throws IOException {
            A0(i, 0);
            mo20003do(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.Cnative
        public final void writeBytes(int i, ByteString byteString) throws IOException {
            A0(i, 2);
            T(byteString);
        }

        @Override // com.google.protobuf.Cnative
        public final void writeFixed32(int i, int i2) throws IOException {
            A0(i, 5);
            W(i2);
        }

        @Override // com.google.protobuf.Cnative
        public final void writeFixed64(int i, long j) throws IOException {
            A0(i, 1);
            X(j);
        }

        @Override // com.google.protobuf.Cnative
        public final void writeInt32(int i, int i2) throws IOException {
            A0(i, 0);
            d0(i2);
        }

        @Override // com.google.protobuf.Cnative
        public final void writeString(int i, String str) throws IOException {
            A0(i, 2);
            z0(str);
        }

        @Override // com.google.protobuf.Cnative
        public final void writeUInt32(int i, int i2) throws IOException {
            A0(i, 0);
            B0(i2);
        }

        @Override // com.google.protobuf.Cnative
        public final void writeUInt64(int i, long j) throws IOException {
            A0(i, 0);
            C0(j);
        }

        @Override // com.google.protobuf.Cnative
        public void y() {
        }

        @Override // com.google.protobuf.Cnative
        public final int z() {
            return this.f17094break - this.f17096goto;
        }

        @Override // com.google.protobuf.Cnative
        public final void z0(String str) throws IOException {
            int i = this.f17094break;
            try {
                int iT = Cnative.t(str.length() * 3);
                int iT2 = Cnative.t(str.length());
                if (iT2 == iT) {
                    int i2 = i + iT2;
                    this.f17094break = i2;
                    int iM19712this = a2.m19712this(str, this.f17095else, i2, L());
                    this.f17094break = i;
                    B0((iM19712this - i) - iT2);
                    this.f17094break = iM19712this;
                } else {
                    B0(a2.m19695catch(str));
                    this.f17094break = a2.m19712this(str, this.f17095else, this.f17094break, L());
                }
            } catch (a2.Cnew e) {
                this.f17094break = i;
                A(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new Ccase(e2);
            }
        }
    }

    /* renamed from: com.google.protobuf.native$goto, reason: invalid class name */
    public static final class Cgoto extends Cnative {

        /* renamed from: else, reason: not valid java name */
        private final ByteBuffer f17098else;

        /* renamed from: goto, reason: not valid java name */
        private final ByteBuffer f17099goto;

        /* renamed from: this, reason: not valid java name */
        private final int f17100this;

        public Cgoto(ByteBuffer byteBuffer) {
            super();
            this.f17098else = byteBuffer;
            this.f17099goto = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.f17100this = byteBuffer.position();
        }

        private void D0(String str) throws IOException {
            try {
                a2.m19693break(str, this.f17099goto);
            } catch (IndexOutOfBoundsException e) {
                throw new Ccase(e);
            }
        }

        @Override // com.google.protobuf.Cnative
        public void A0(int i, int i2) throws IOException {
            B0(c2.m19963for(i, i2));
        }

        @Override // com.google.protobuf.Cnative
        public void B0(int i) throws IOException {
            while ((i & (-128)) != 0) {
                try {
                    this.f17099goto.put((byte) ((i & 127) | 128));
                    i >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new Ccase(e);
                }
            }
            this.f17099goto.put((byte) i);
        }

        @Override // com.google.protobuf.Cnative
        public void C0(long j) throws IOException {
            while (((-128) & j) != 0) {
                try {
                    this.f17099goto.put((byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new Ccase(e);
                }
            }
            this.f17099goto.put((byte) j);
        }

        @Override // com.google.protobuf.Cnative
        public int L() {
            return this.f17099goto.remaining();
        }

        @Override // com.google.protobuf.Cnative
        public void O(int i, byte[] bArr) throws IOException {
            P(i, bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.Cnative
        public void P(int i, byte[] bArr, int i2, int i3) throws IOException {
            A0(i, 2);
            R(bArr, i2, i3);
        }

        @Override // com.google.protobuf.Cnative
        public void R(byte[] bArr, int i, int i2) throws IOException {
            B0(i2);
            mo20004for(bArr, i, i2);
        }

        @Override // com.google.protobuf.Cnative
        public void S(int i, ByteBuffer byteBuffer) throws IOException {
            A0(i, 2);
            B0(byteBuffer.capacity());
            n0(byteBuffer);
        }

        @Override // com.google.protobuf.Cnative
        public void T(ByteString byteString) throws IOException {
            B0(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.Cnative
        public void W(int i) throws IOException {
            try {
                this.f17099goto.putInt(i);
            } catch (BufferOverflowException e) {
                throw new Ccase(e);
            }
        }

        @Override // com.google.protobuf.Cnative
        public void X(long j) throws IOException {
            try {
                this.f17099goto.putLong(j);
            } catch (BufferOverflowException e) {
                throw new Ccase(e);
            }
        }

        @Override // com.google.protobuf.Cnative
        public void d0(int i) throws IOException {
            if (i >= 0) {
                B0(i);
            } else {
                C0(i);
            }
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: do */
        public void mo20003do(byte b) throws IOException {
            try {
                this.f17099goto.put(b);
            } catch (BufferOverflowException e) {
                throw new Ccase(e);
            }
        }

        @Override // com.google.protobuf.Cnative
        public void f0(int i, MessageLite messageLite) throws IOException {
            A0(i, 2);
            h0(messageLite);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: for */
        public void mo20004for(byte[] bArr, int i, int i2) throws IOException {
            try {
                this.f17099goto.put(bArr, i, i2);
            } catch (IndexOutOfBoundsException e) {
                throw new Ccase(e);
            } catch (BufferOverflowException e2) {
                throw new Ccase(e2);
            }
        }

        @Override // com.google.protobuf.Cnative
        public void g0(int i, MessageLite messageLite, Schema schema) throws IOException {
            A0(i, 2);
            i0(messageLite, schema);
        }

        @Override // com.google.protobuf.Cnative
        public void h0(MessageLite messageLite) throws IOException {
            B0(messageLite.getSerializedSize());
            messageLite.writeTo(this);
        }

        @Override // com.google.protobuf.Cnative
        public void i0(MessageLite messageLite, Schema schema) throws IOException {
            B0(((AbstractMessageLite) messageLite).getSerializedSize(schema));
            schema.writeTo(messageLite, this.f17090do);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: if */
        public void mo20005if(ByteBuffer byteBuffer) throws IOException {
            try {
                this.f17099goto.put(byteBuffer);
            } catch (BufferOverflowException e) {
                throw new Ccase(e);
            }
        }

        @Override // com.google.protobuf.Cnative
        public void j0(int i, MessageLite messageLite) throws IOException {
            A0(1, 3);
            writeUInt32(2, i);
            f0(3, messageLite);
            A0(1, 4);
        }

        @Override // com.google.protobuf.Cnative
        public void n0(ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasArray()) {
                mo20004for(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
                return;
            }
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            mo20005if(byteBufferDuplicate);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: new */
        public void mo20006new(ByteBuffer byteBuffer) throws IOException {
            mo20005if(byteBuffer);
        }

        @Override // com.google.protobuf.Cnative
        public void s0(int i, ByteString byteString) throws IOException {
            A0(1, 3);
            writeUInt32(2, i);
            writeBytes(3, byteString);
            A0(1, 4);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: try */
        public void mo20007try(byte[] bArr, int i, int i2) throws IOException {
            mo20004for(bArr, i, i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeBool(int i, boolean z) throws IOException {
            A0(i, 0);
            mo20003do(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.Cnative
        public void writeBytes(int i, ByteString byteString) throws IOException {
            A0(i, 2);
            T(byteString);
        }

        @Override // com.google.protobuf.Cnative
        public void writeFixed32(int i, int i2) throws IOException {
            A0(i, 5);
            W(i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeFixed64(int i, long j) throws IOException {
            A0(i, 1);
            X(j);
        }

        @Override // com.google.protobuf.Cnative
        public void writeInt32(int i, int i2) throws IOException {
            A0(i, 0);
            d0(i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeString(int i, String str) throws IOException {
            A0(i, 2);
            z0(str);
        }

        @Override // com.google.protobuf.Cnative
        public void writeUInt32(int i, int i2) throws IOException {
            A0(i, 0);
            B0(i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeUInt64(int i, long j) throws IOException {
            A0(i, 0);
            C0(j);
        }

        @Override // com.google.protobuf.Cnative
        public void y() {
        }

        @Override // com.google.protobuf.Cnative
        public int z() {
            return this.f17099goto.position() - this.f17100this;
        }

        @Override // com.google.protobuf.Cnative
        public void z0(String str) throws IOException {
            int iPosition = this.f17099goto.position();
            try {
                int iT = Cnative.t(str.length() * 3);
                int iT2 = Cnative.t(str.length());
                if (iT2 == iT) {
                    int iPosition2 = this.f17099goto.position() + iT2;
                    D0(str);
                    int iPosition3 = this.f17099goto.position();
                    B0(iPosition3 - iPosition2);
                } else {
                    B0(a2.m19695catch(str));
                    D0(str);
                }
            } catch (a2.Cnew e) {
                A(str, e);
            } catch (IllegalArgumentException e2) {
                throw new Ccase(e2);
            }
        }
    }

    /* renamed from: com.google.protobuf.native$if, reason: invalid class name */
    public static abstract class Cif extends Cnative {

        /* renamed from: break, reason: not valid java name */
        public int f17101break;

        /* renamed from: else, reason: not valid java name */
        public final byte[] f17102else;

        /* renamed from: goto, reason: not valid java name */
        public final int f17103goto;

        /* renamed from: this, reason: not valid java name */
        public int f17104this;

        public Cif(int i) {
            super();
            if (i < 0) {
                throw new IllegalArgumentException("bufferSize must be >= 0");
            }
            byte[] bArr = new byte[Math.max(i, 20)];
            this.f17102else = bArr;
            this.f17103goto = bArr.length;
        }

        public final void D0(byte b) {
            byte[] bArr = this.f17102else;
            int i = this.f17104this;
            this.f17104this = i + 1;
            bArr[i] = b;
            this.f17101break++;
        }

        public final void E0(int i) {
            byte[] bArr = this.f17102else;
            int i2 = this.f17104this;
            int i3 = i2 + 1;
            this.f17104this = i3;
            bArr[i2] = (byte) (i & 255);
            int i4 = i3 + 1;
            this.f17104this = i4;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i4 + 1;
            this.f17104this = i5;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.f17104this = i5 + 1;
            bArr[i5] = (byte) ((i >> 24) & 255);
            this.f17101break += 4;
        }

        public final void F0(long j) {
            byte[] bArr = this.f17102else;
            int i = this.f17104this;
            int i2 = i + 1;
            this.f17104this = i2;
            bArr[i] = (byte) (j & 255);
            int i3 = i2 + 1;
            this.f17104this = i3;
            bArr[i2] = (byte) ((j >> 8) & 255);
            int i4 = i3 + 1;
            this.f17104this = i4;
            bArr[i3] = (byte) ((j >> 16) & 255);
            int i5 = i4 + 1;
            this.f17104this = i5;
            bArr[i4] = (byte) (255 & (j >> 24));
            int i6 = i5 + 1;
            this.f17104this = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i6 + 1;
            this.f17104this = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i7 + 1;
            this.f17104this = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.f17104this = i8 + 1;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
            this.f17101break += 8;
        }

        public final void G0(int i) {
            if (i >= 0) {
                I0(i);
            } else {
                J0(i);
            }
        }

        public final void H0(int i, int i2) {
            I0(c2.m19963for(i, i2));
        }

        public final void I0(int i) {
            if (!Cnative.f17088new) {
                while ((i & (-128)) != 0) {
                    byte[] bArr = this.f17102else;
                    int i2 = this.f17104this;
                    this.f17104this = i2 + 1;
                    bArr[i2] = (byte) ((i & 127) | 128);
                    this.f17101break++;
                    i >>>= 7;
                }
                byte[] bArr2 = this.f17102else;
                int i3 = this.f17104this;
                this.f17104this = i3 + 1;
                bArr2[i3] = (byte) i;
                this.f17101break++;
                return;
            }
            long j = this.f17104this;
            while ((i & (-128)) != 0) {
                byte[] bArr3 = this.f17102else;
                int i4 = this.f17104this;
                this.f17104this = i4 + 1;
                z1.q(bArr3, i4, (byte) ((i & 127) | 128));
                i >>>= 7;
            }
            byte[] bArr4 = this.f17102else;
            int i5 = this.f17104this;
            this.f17104this = i5 + 1;
            z1.q(bArr4, i5, (byte) i);
            this.f17101break += (int) (this.f17104this - j);
        }

        public final void J0(long j) {
            if (!Cnative.f17088new) {
                while ((j & (-128)) != 0) {
                    byte[] bArr = this.f17102else;
                    int i = this.f17104this;
                    this.f17104this = i + 1;
                    bArr[i] = (byte) ((((int) j) & 127) | 128);
                    this.f17101break++;
                    j >>>= 7;
                }
                byte[] bArr2 = this.f17102else;
                int i2 = this.f17104this;
                this.f17104this = i2 + 1;
                bArr2[i2] = (byte) j;
                this.f17101break++;
                return;
            }
            long j2 = this.f17104this;
            while ((j & (-128)) != 0) {
                byte[] bArr3 = this.f17102else;
                int i3 = this.f17104this;
                this.f17104this = i3 + 1;
                z1.q(bArr3, i3, (byte) ((((int) j) & 127) | 128));
                j >>>= 7;
            }
            byte[] bArr4 = this.f17102else;
            int i4 = this.f17104this;
            this.f17104this = i4 + 1;
            z1.q(bArr4, i4, (byte) j);
            this.f17101break += (int) (this.f17104this - j2);
        }

        @Override // com.google.protobuf.Cnative
        public final int L() {
            throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
        }

        @Override // com.google.protobuf.Cnative
        public final int z() {
            return this.f17101break;
        }
    }

    /* renamed from: com.google.protobuf.native$new, reason: invalid class name */
    public static final class Cnew extends Cif {

        /* renamed from: catch, reason: not valid java name */
        private final Cthrow f17105catch;

        public Cnew(Cthrow cthrow, int i) {
            super(i);
            Objects.requireNonNull(cthrow, "out");
            this.f17105catch = cthrow;
        }

        private void K0() throws IOException {
            this.f17105catch.mo20004for(this.f17102else, 0, this.f17104this);
            this.f17104this = 0;
        }

        private void L0(int i) throws IOException {
            if (this.f17103goto - this.f17104this < i) {
                K0();
            }
        }

        @Override // com.google.protobuf.Cnative
        public void A0(int i, int i2) throws IOException {
            B0(c2.m19963for(i, i2));
        }

        @Override // com.google.protobuf.Cnative
        public void B0(int i) throws IOException {
            L0(5);
            I0(i);
        }

        @Override // com.google.protobuf.Cnative
        public void C0(long j) throws IOException {
            L0(10);
            J0(j);
        }

        @Override // com.google.protobuf.Cnative
        public void O(int i, byte[] bArr) throws IOException {
            P(i, bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.Cnative
        public void P(int i, byte[] bArr, int i2, int i3) throws IOException {
            A0(i, 2);
            R(bArr, i2, i3);
        }

        @Override // com.google.protobuf.Cnative
        public void R(byte[] bArr, int i, int i2) throws IOException {
            B0(i2);
            mo20004for(bArr, i, i2);
        }

        @Override // com.google.protobuf.Cnative
        public void S(int i, ByteBuffer byteBuffer) throws IOException {
            A0(i, 2);
            B0(byteBuffer.capacity());
            n0(byteBuffer);
        }

        @Override // com.google.protobuf.Cnative
        public void T(ByteString byteString) throws IOException {
            B0(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.Cnative
        public void W(int i) throws IOException {
            L0(4);
            E0(i);
        }

        @Override // com.google.protobuf.Cnative
        public void X(long j) throws IOException {
            L0(8);
            F0(j);
        }

        @Override // com.google.protobuf.Cnative
        public void d0(int i) throws IOException {
            if (i >= 0) {
                B0(i);
            } else {
                C0(i);
            }
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: do */
        public void mo20003do(byte b) throws IOException {
            if (this.f17104this == this.f17103goto) {
                K0();
            }
            D0(b);
        }

        @Override // com.google.protobuf.Cnative
        public void f0(int i, MessageLite messageLite) throws IOException {
            A0(i, 2);
            h0(messageLite);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: for */
        public void mo20004for(byte[] bArr, int i, int i2) throws IOException {
            y();
            this.f17105catch.mo20004for(bArr, i, i2);
            this.f17101break += i2;
        }

        @Override // com.google.protobuf.Cnative
        public void g0(int i, MessageLite messageLite, Schema schema) throws IOException {
            A0(i, 2);
            i0(messageLite, schema);
        }

        @Override // com.google.protobuf.Cnative
        public void h0(MessageLite messageLite) throws IOException {
            B0(messageLite.getSerializedSize());
            messageLite.writeTo(this);
        }

        @Override // com.google.protobuf.Cnative
        public void i0(MessageLite messageLite, Schema schema) throws IOException {
            B0(((AbstractMessageLite) messageLite).getSerializedSize(schema));
            schema.writeTo(messageLite, this.f17090do);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: if */
        public void mo20005if(ByteBuffer byteBuffer) throws IOException {
            y();
            int iRemaining = byteBuffer.remaining();
            this.f17105catch.mo20005if(byteBuffer);
            this.f17101break += iRemaining;
        }

        @Override // com.google.protobuf.Cnative
        public void j0(int i, MessageLite messageLite) throws IOException {
            A0(1, 3);
            writeUInt32(2, i);
            f0(3, messageLite);
            A0(1, 4);
        }

        @Override // com.google.protobuf.Cnative
        public void n0(ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasArray()) {
                mo20004for(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
                return;
            }
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            mo20005if(byteBufferDuplicate);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: new */
        public void mo20006new(ByteBuffer byteBuffer) throws IOException {
            y();
            int iRemaining = byteBuffer.remaining();
            this.f17105catch.mo20006new(byteBuffer);
            this.f17101break += iRemaining;
        }

        @Override // com.google.protobuf.Cnative
        public void s0(int i, ByteString byteString) throws IOException {
            A0(1, 3);
            writeUInt32(2, i);
            writeBytes(3, byteString);
            A0(1, 4);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: try */
        public void mo20007try(byte[] bArr, int i, int i2) throws IOException {
            y();
            this.f17105catch.mo20007try(bArr, i, i2);
            this.f17101break += i2;
        }

        @Override // com.google.protobuf.Cnative
        public void writeBool(int i, boolean z) throws IOException {
            L0(11);
            H0(i, 0);
            D0(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.Cnative
        public void writeBytes(int i, ByteString byteString) throws IOException {
            A0(i, 2);
            T(byteString);
        }

        @Override // com.google.protobuf.Cnative
        public void writeFixed32(int i, int i2) throws IOException {
            L0(14);
            H0(i, 5);
            E0(i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeFixed64(int i, long j) throws IOException {
            L0(18);
            H0(i, 1);
            F0(j);
        }

        @Override // com.google.protobuf.Cnative
        public void writeInt32(int i, int i2) throws IOException {
            L0(20);
            H0(i, 0);
            G0(i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeString(int i, String str) throws IOException {
            A0(i, 2);
            z0(str);
        }

        @Override // com.google.protobuf.Cnative
        public void writeUInt32(int i, int i2) throws IOException {
            L0(20);
            H0(i, 0);
            I0(i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeUInt64(int i, long j) throws IOException {
            L0(20);
            H0(i, 0);
            J0(j);
        }

        @Override // com.google.protobuf.Cnative
        public void y() throws IOException {
            if (this.f17104this > 0) {
                K0();
            }
        }

        @Override // com.google.protobuf.Cnative
        public void z0(String str) throws IOException {
            int length = str.length() * 3;
            int iT = Cnative.t(length);
            int i = iT + length;
            int i2 = this.f17103goto;
            if (i > i2) {
                byte[] bArr = new byte[length];
                int iM19712this = a2.m19712this(str, bArr, 0, length);
                B0(iM19712this);
                mo20007try(bArr, 0, iM19712this);
                return;
            }
            if (i > i2 - this.f17104this) {
                K0();
            }
            int i3 = this.f17104this;
            try {
                int iT2 = Cnative.t(str.length());
                if (iT2 == iT) {
                    int i4 = i3 + iT2;
                    this.f17104this = i4;
                    int iM19712this2 = a2.m19712this(str, this.f17102else, i4, this.f17103goto - i4);
                    this.f17104this = i3;
                    int i5 = (iM19712this2 - i3) - iT2;
                    I0(i5);
                    this.f17104this = iM19712this2;
                    this.f17101break += i5;
                } else {
                    int iM19695catch = a2.m19695catch(str);
                    I0(iM19695catch);
                    this.f17104this = a2.m19712this(str, this.f17102else, this.f17104this, iM19695catch);
                    this.f17101break += iM19695catch;
                }
            } catch (a2.Cnew e) {
                this.f17101break -= this.f17104this - i3;
                this.f17104this = i3;
                A(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new Ccase(e2);
            }
        }
    }

    /* renamed from: com.google.protobuf.native$this, reason: invalid class name */
    public static final class Cthis extends Cnative {

        /* renamed from: break, reason: not valid java name */
        private final long f17106break;

        /* renamed from: catch, reason: not valid java name */
        private final long f17107catch;

        /* renamed from: class, reason: not valid java name */
        private final long f17108class;

        /* renamed from: const, reason: not valid java name */
        private long f17109const;

        /* renamed from: else, reason: not valid java name */
        private final ByteBuffer f17110else;

        /* renamed from: goto, reason: not valid java name */
        private final ByteBuffer f17111goto;

        /* renamed from: this, reason: not valid java name */
        private final long f17112this;

        public Cthis(ByteBuffer byteBuffer) {
            super();
            this.f17110else = byteBuffer;
            this.f17111goto = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            long jM21688this = z1.m21688this(byteBuffer);
            this.f17112this = jM21688this;
            long jPosition = byteBuffer.position() + jM21688this;
            this.f17106break = jPosition;
            long jLimit = jM21688this + byteBuffer.limit();
            this.f17107catch = jLimit;
            this.f17108class = jLimit - 10;
            this.f17109const = jPosition;
        }

        private int D0(long j) {
            return (int) (j - this.f17112this);
        }

        public static boolean E0() {
            return z1.g();
        }

        private void F0(long j) {
        }

        @Override // com.google.protobuf.Cnative
        public void A0(int i, int i2) throws IOException {
            B0(c2.m19963for(i, i2));
        }

        @Override // com.google.protobuf.Cnative
        public void B0(int i) throws IOException {
            if (this.f17109const <= this.f17108class) {
                while ((i & (-128)) != 0) {
                    long j = this.f17109const;
                    this.f17109const = j + 1;
                    z1.o(j, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
                long j2 = this.f17109const;
                this.f17109const = 1 + j2;
                z1.o(j2, (byte) i);
                return;
            }
            while (true) {
                long j3 = this.f17109const;
                if (j3 >= this.f17107catch) {
                    throw new Ccase(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f17109const), Long.valueOf(this.f17107catch), 1));
                }
                if ((i & (-128)) == 0) {
                    this.f17109const = 1 + j3;
                    z1.o(j3, (byte) i);
                    return;
                } else {
                    this.f17109const = j3 + 1;
                    z1.o(j3, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
            }
        }

        @Override // com.google.protobuf.Cnative
        public void C0(long j) throws IOException {
            if (this.f17109const <= this.f17108class) {
                while ((j & (-128)) != 0) {
                    long j2 = this.f17109const;
                    this.f17109const = j2 + 1;
                    z1.o(j2, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
                long j3 = this.f17109const;
                this.f17109const = 1 + j3;
                z1.o(j3, (byte) j);
                return;
            }
            while (true) {
                long j4 = this.f17109const;
                if (j4 >= this.f17107catch) {
                    throw new Ccase(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f17109const), Long.valueOf(this.f17107catch), 1));
                }
                if ((j & (-128)) == 0) {
                    this.f17109const = 1 + j4;
                    z1.o(j4, (byte) j);
                    return;
                } else {
                    this.f17109const = j4 + 1;
                    z1.o(j4, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
            }
        }

        @Override // com.google.protobuf.Cnative
        public int L() {
            return (int) (this.f17107catch - this.f17109const);
        }

        @Override // com.google.protobuf.Cnative
        public void O(int i, byte[] bArr) throws IOException {
            P(i, bArr, 0, bArr.length);
        }

        @Override // com.google.protobuf.Cnative
        public void P(int i, byte[] bArr, int i2, int i3) throws IOException {
            A0(i, 2);
            R(bArr, i2, i3);
        }

        @Override // com.google.protobuf.Cnative
        public void R(byte[] bArr, int i, int i2) throws IOException {
            B0(i2);
            mo20004for(bArr, i, i2);
        }

        @Override // com.google.protobuf.Cnative
        public void S(int i, ByteBuffer byteBuffer) throws IOException {
            A0(i, 2);
            B0(byteBuffer.capacity());
            n0(byteBuffer);
        }

        @Override // com.google.protobuf.Cnative
        public void T(ByteString byteString) throws IOException {
            B0(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.Cnative
        public void W(int i) throws IOException {
            this.f17111goto.putInt(D0(this.f17109const), i);
            this.f17109const += 4;
        }

        @Override // com.google.protobuf.Cnative
        public void X(long j) throws IOException {
            this.f17111goto.putLong(D0(this.f17109const), j);
            this.f17109const += 8;
        }

        @Override // com.google.protobuf.Cnative
        public void d0(int i) throws IOException {
            if (i >= 0) {
                B0(i);
            } else {
                C0(i);
            }
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: do */
        public void mo20003do(byte b) throws IOException {
            long j = this.f17109const;
            if (j >= this.f17107catch) {
                throw new Ccase(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f17109const), Long.valueOf(this.f17107catch), 1));
            }
            this.f17109const = 1 + j;
            z1.o(j, b);
        }

        @Override // com.google.protobuf.Cnative
        public void f0(int i, MessageLite messageLite) throws IOException {
            A0(i, 2);
            h0(messageLite);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: for */
        public void mo20004for(byte[] bArr, int i, int i2) throws IOException {
            if (bArr != null && i >= 0 && i2 >= 0 && bArr.length - i2 >= i) {
                long j = i2;
                long j2 = this.f17107catch - j;
                long j3 = this.f17109const;
                if (j2 >= j3) {
                    z1.m21685super(bArr, i, j3, j);
                    this.f17109const += j;
                    return;
                }
            }
            Objects.requireNonNull(bArr, ES6Iterator.VALUE_PROPERTY);
            throw new Ccase(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f17109const), Long.valueOf(this.f17107catch), Integer.valueOf(i2)));
        }

        @Override // com.google.protobuf.Cnative
        public void g0(int i, MessageLite messageLite, Schema schema) throws IOException {
            A0(i, 2);
            i0(messageLite, schema);
        }

        @Override // com.google.protobuf.Cnative
        public void h0(MessageLite messageLite) throws IOException {
            B0(messageLite.getSerializedSize());
            messageLite.writeTo(this);
        }

        @Override // com.google.protobuf.Cnative
        public void i0(MessageLite messageLite, Schema schema) throws IOException {
            B0(((AbstractMessageLite) messageLite).getSerializedSize(schema));
            schema.writeTo(messageLite, this.f17090do);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: if */
        public void mo20005if(ByteBuffer byteBuffer) throws IOException {
            try {
                int iRemaining = byteBuffer.remaining();
                F0(this.f17109const);
                this.f17111goto.put(byteBuffer);
                this.f17109const += iRemaining;
            } catch (BufferOverflowException e) {
                throw new Ccase(e);
            }
        }

        @Override // com.google.protobuf.Cnative
        public void j0(int i, MessageLite messageLite) throws IOException {
            A0(1, 3);
            writeUInt32(2, i);
            f0(3, messageLite);
            A0(1, 4);
        }

        @Override // com.google.protobuf.Cnative
        public void n0(ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasArray()) {
                mo20004for(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
                return;
            }
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            mo20005if(byteBufferDuplicate);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: new */
        public void mo20006new(ByteBuffer byteBuffer) throws IOException {
            mo20005if(byteBuffer);
        }

        @Override // com.google.protobuf.Cnative
        public void s0(int i, ByteString byteString) throws IOException {
            A0(1, 3);
            writeUInt32(2, i);
            writeBytes(3, byteString);
            A0(1, 4);
        }

        @Override // com.google.protobuf.Cnative, com.google.protobuf.Cthrow
        /* renamed from: try */
        public void mo20007try(byte[] bArr, int i, int i2) throws IOException {
            mo20004for(bArr, i, i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeBool(int i, boolean z) throws IOException {
            A0(i, 0);
            mo20003do(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.Cnative
        public void writeBytes(int i, ByteString byteString) throws IOException {
            A0(i, 2);
            T(byteString);
        }

        @Override // com.google.protobuf.Cnative
        public void writeFixed32(int i, int i2) throws IOException {
            A0(i, 5);
            W(i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeFixed64(int i, long j) throws IOException {
            A0(i, 1);
            X(j);
        }

        @Override // com.google.protobuf.Cnative
        public void writeInt32(int i, int i2) throws IOException {
            A0(i, 0);
            d0(i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeString(int i, String str) throws IOException {
            A0(i, 2);
            z0(str);
        }

        @Override // com.google.protobuf.Cnative
        public void writeUInt32(int i, int i2) throws IOException {
            A0(i, 0);
            B0(i2);
        }

        @Override // com.google.protobuf.Cnative
        public void writeUInt64(int i, long j) throws IOException {
            A0(i, 0);
            C0(j);
        }

        @Override // com.google.protobuf.Cnative
        public void y() {
        }

        @Override // com.google.protobuf.Cnative
        public int z() {
            return (int) (this.f17109const - this.f17106break);
        }

        @Override // com.google.protobuf.Cnative
        public void z0(String str) throws IOException {
            long j = this.f17109const;
            try {
                int iT = Cnative.t(str.length() * 3);
                int iT2 = Cnative.t(str.length());
                if (iT2 == iT) {
                    int iD0 = D0(this.f17109const) + iT2;
                    a2.m19693break(str, this.f17111goto);
                    int iPosition = this.f17111goto.position() - iD0;
                    B0(iPosition);
                    this.f17109const += iPosition;
                } else {
                    int iM19695catch = a2.m19695catch(str);
                    B0(iM19695catch);
                    F0(this.f17109const);
                    a2.m19693break(str, this.f17111goto);
                    this.f17109const += iM19695catch;
                }
            } catch (a2.Cnew e) {
                this.f17109const = j;
                F0(j);
                A(str, e);
            } catch (IllegalArgumentException e2) {
                throw new Ccase(e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new Ccase(e3);
            }
        }
    }

    /* renamed from: com.google.protobuf.native$try, reason: invalid class name */
    public static final class Ctry extends Cfor {

        /* renamed from: catch, reason: not valid java name */
        private final ByteBuffer f17113catch;

        /* renamed from: class, reason: not valid java name */
        private int f17114class;

        public Ctry(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.f17113catch = byteBuffer;
            this.f17114class = byteBuffer.position();
        }

        @Override // com.google.protobuf.Cnative.Cfor, com.google.protobuf.Cnative
        public void y() {
        }
    }

    public static Cnative C(Cthrow cthrow, int i) {
        if (i >= 0) {
            return new Cnew(cthrow, i);
        }
        throw new IllegalArgumentException("bufferSize must be positive");
    }

    public static Cnative D(OutputStream outputStream) {
        return E(outputStream, 4096);
    }

    public static Cnative E(OutputStream outputStream, int i) {
        return new Celse(outputStream, i);
    }

    public static Cnative F(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new Ctry(byteBuffer);
        }
        if (!byteBuffer.isDirect() || byteBuffer.isReadOnly()) {
            throw new IllegalArgumentException("ByteBuffer is read-only");
        }
        return Cthis.E0() ? K(byteBuffer) : J(byteBuffer);
    }

    @Deprecated
    public static Cnative G(ByteBuffer byteBuffer, int i) {
        return F(byteBuffer);
    }

    public static Cnative H(byte[] bArr) {
        return I(bArr, 0, bArr.length);
    }

    public static Cnative I(byte[] bArr, int i, int i2) {
        return new Cfor(bArr, i, i2);
    }

    public static Cnative J(ByteBuffer byteBuffer) {
        return new Cgoto(byteBuffer);
    }

    public static Cnative K(ByteBuffer byteBuffer) {
        return new Cthis(byteBuffer);
    }

    public static int a(int i, MessageLite messageLite, Schema schema) {
        return r(i) + c(messageLite, schema);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static int m20874abstract(int i, int i2) {
        return r(i) + m20880continue(i2);
    }

    public static int b(MessageLite messageLite) {
        return m20886implements(messageLite.getSerializedSize());
    }

    /* renamed from: break, reason: not valid java name */
    public static int m20875break(int i, byte[] bArr) {
        return r(i) + m20877catch(bArr);
    }

    public static int c(MessageLite messageLite, Schema schema) {
        return m20886implements(((AbstractMessageLite) messageLite).getSerializedSize(schema));
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m20877catch(byte[] bArr) {
        return m20886implements(bArr.length);
    }

    /* renamed from: class, reason: not valid java name */
    public static int m20878class(int i, ByteBuffer byteBuffer) {
        return r(i) + m20879const(byteBuffer);
    }

    /* renamed from: const, reason: not valid java name */
    public static int m20879const(ByteBuffer byteBuffer) {
        return m20886implements(byteBuffer.capacity());
    }

    /* renamed from: continue, reason: not valid java name */
    public static int m20880continue(int i) {
        if (i >= 0) {
            return t(i);
        }
        return 10;
    }

    public static int d(int i) {
        if (i > 4096) {
            return 4096;
        }
        return i;
    }

    /* renamed from: default, reason: not valid java name */
    public static int m20881default(float f) {
        return 4;
    }

    public static int e(int i, ByteString byteString) {
        return (r(1) * 2) + s(2, i) + m20883final(3, byteString);
    }

    @Deprecated
    /* renamed from: extends, reason: not valid java name */
    public static int m20882extends(int i, MessageLite messageLite) {
        return (r(i) * 2) + m20891package(messageLite);
    }

    @Deprecated
    public static int f(int i) {
        return t(i);
    }

    /* renamed from: final, reason: not valid java name */
    public static int m20883final(int i, ByteString byteString) {
        return r(i) + m20898super(byteString);
    }

    @Deprecated
    /* renamed from: finally, reason: not valid java name */
    public static int m20884finally(int i, MessageLite messageLite, Schema schema) {
        return (r(i) * 2) + m20892private(messageLite, schema);
    }

    @Deprecated
    public static int g(long j) {
        return v(j);
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m20885goto(int i, boolean z) {
        return r(i) + m20901this(z);
    }

    public static int h(int i, int i2) {
        return r(i) + i(i2);
    }

    public static int i(int i) {
        return 4;
    }

    /* renamed from: implements, reason: not valid java name */
    public static int m20886implements(int i) {
        return t(i) + i;
    }

    /* renamed from: import, reason: not valid java name */
    public static int m20887import(int i, int i2) {
        return r(i) + m20890native(i2);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static int m20888instanceof(int i, MessageLite messageLite) {
        return (r(1) * 2) + s(2, i) + m20900synchronized(3, messageLite);
    }

    /* renamed from: interface, reason: not valid java name */
    public static int m20889interface(int i, r rVar) {
        return (r(1) * 2) + s(2, i) + m20893protected(3, rVar);
    }

    public static int j(int i, long j) {
        return r(i) + k(j);
    }

    public static int k(long j) {
        return 8;
    }

    public static int l(int i, int i2) {
        return r(i) + m(i2);
    }

    public static int m(int i) {
        return t(w(i));
    }

    public static int n(int i, long j) {
        return r(i) + o(j);
    }

    /* renamed from: native, reason: not valid java name */
    public static int m20890native(int i) {
        return m20880continue(i);
    }

    public static int o(long j) {
        return v(x(j));
    }

    public static int p(int i, String str) {
        return r(i) + q(str);
    }

    @Deprecated
    /* renamed from: package, reason: not valid java name */
    public static int m20891package(MessageLite messageLite) {
        return messageLite.getSerializedSize();
    }

    @Deprecated
    /* renamed from: private, reason: not valid java name */
    public static int m20892private(MessageLite messageLite, Schema schema) {
        return ((AbstractMessageLite) messageLite).getSerializedSize(schema);
    }

    /* renamed from: protected, reason: not valid java name */
    public static int m20893protected(int i, r rVar) {
        return r(i) + m20904transient(rVar);
    }

    /* renamed from: public, reason: not valid java name */
    public static int m20894public(int i, int i2) {
        return r(i) + m20895return(i2);
    }

    public static int q(String str) {
        int length;
        try {
            length = a2.m19695catch(str);
        } catch (a2.Cnew unused) {
            length = str.getBytes(Internal.f16554do).length;
        }
        return m20886implements(length);
    }

    public static int r(int i) {
        return t(c2.m19963for(i, 0));
    }

    /* renamed from: return, reason: not valid java name */
    public static int m20895return(int i) {
        return 4;
    }

    public static int s(int i, int i2) {
        return r(i) + t(i2);
    }

    /* renamed from: static, reason: not valid java name */
    public static int m20896static(int i, long j) {
        return r(i) + m20899switch(j);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static int m20897strictfp(int i, long j) {
        return r(i) + m20905volatile(j);
    }

    /* renamed from: super, reason: not valid java name */
    public static int m20898super(ByteString byteString) {
        return m20886implements(byteString.size());
    }

    /* renamed from: switch, reason: not valid java name */
    public static int m20899switch(long j) {
        return 8;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static int m20900synchronized(int i, MessageLite messageLite) {
        return r(i) + b(messageLite);
    }

    public static int t(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    /* renamed from: this, reason: not valid java name */
    public static int m20901this(boolean z) {
        return 1;
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m20902throw(int i, double d) {
        return r(i) + m20906while(d);
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m20903throws(int i, float f) {
        return r(i) + m20881default(f);
    }

    /* renamed from: transient, reason: not valid java name */
    public static int m20904transient(r rVar) {
        return m20886implements(rVar.m21034case());
    }

    public static int u(int i, long j) {
        return r(i) + v(j);
    }

    public static int v(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            i = 6;
            j >>>= 28;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static int m20905volatile(long j) {
        return v(j);
    }

    public static int w(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: while, reason: not valid java name */
    public static int m20906while(double d) {
        return 8;
    }

    public static long x(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public final void A(String str, a2.Cnew cnew) throws IOException {
        f17087for.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) cnew);
        byte[] bytes = str.getBytes(Internal.f16554do);
        try {
            B0(bytes.length);
            mo20007try(bytes, 0, bytes.length);
        } catch (Ccase e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new Ccase(e2);
        }
    }

    public abstract void A0(int i, int i2) throws IOException;

    public boolean B() {
        return this.f17091if;
    }

    public abstract void B0(int i) throws IOException;

    public abstract void C0(long j) throws IOException;

    public abstract int L();

    public void M() {
        this.f17091if = true;
    }

    public final void N(boolean z) throws IOException {
        mo20003do(z ? (byte) 1 : (byte) 0);
    }

    public abstract void O(int i, byte[] bArr) throws IOException;

    public abstract void P(int i, byte[] bArr, int i2, int i3) throws IOException;

    public final void Q(byte[] bArr) throws IOException {
        R(bArr, 0, bArr.length);
    }

    public abstract void R(byte[] bArr, int i, int i2) throws IOException;

    public abstract void S(int i, ByteBuffer byteBuffer) throws IOException;

    public abstract void T(ByteString byteString) throws IOException;

    public final void U(double d) throws IOException {
        X(Double.doubleToRawLongBits(d));
    }

    public final void V(int i) throws IOException {
        d0(i);
    }

    public abstract void W(int i) throws IOException;

    public abstract void X(long j) throws IOException;

    public final void Y(float f) throws IOException {
        W(Float.floatToRawIntBits(f));
    }

    @Deprecated
    public final void Z(int i, MessageLite messageLite) throws IOException {
        A0(i, 3);
        b0(messageLite);
        A0(i, 4);
    }

    @Deprecated
    public final void a0(int i, MessageLite messageLite, Schema schema) throws IOException {
        A0(i, 3);
        c0(messageLite, schema);
        A0(i, 4);
    }

    @Deprecated
    public final void b0(MessageLite messageLite) throws IOException {
        messageLite.writeTo(this);
    }

    @Deprecated
    public final void c0(MessageLite messageLite, Schema schema) throws IOException {
        schema.writeTo(messageLite, this.f17090do);
    }

    public abstract void d0(int i) throws IOException;

    @Override // com.google.protobuf.Cthrow
    /* renamed from: do */
    public abstract void mo20003do(byte b) throws IOException;

    public final void e0(long j) throws IOException {
        C0(j);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m20907else() {
        if (L() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public abstract void f0(int i, MessageLite messageLite) throws IOException;

    @Override // com.google.protobuf.Cthrow
    /* renamed from: for */
    public abstract void mo20004for(byte[] bArr, int i, int i2) throws IOException;

    public abstract void g0(int i, MessageLite messageLite, Schema schema) throws IOException;

    public abstract void h0(MessageLite messageLite) throws IOException;

    public abstract void i0(MessageLite messageLite, Schema schema) throws IOException;

    @Override // com.google.protobuf.Cthrow
    /* renamed from: if */
    public abstract void mo20005if(ByteBuffer byteBuffer) throws IOException;

    public abstract void j0(int i, MessageLite messageLite) throws IOException;

    public final void k0(byte b) throws IOException {
        mo20003do(b);
    }

    public final void l0(int i) throws IOException {
        mo20003do((byte) i);
    }

    public final void m0(ByteString byteString) throws IOException {
        byteString.writeTo(this);
    }

    public abstract void n0(ByteBuffer byteBuffer) throws IOException;

    @Override // com.google.protobuf.Cthrow
    /* renamed from: new */
    public abstract void mo20006new(ByteBuffer byteBuffer) throws IOException;

    public final void o0(byte[] bArr) throws IOException {
        mo20004for(bArr, 0, bArr.length);
    }

    public final void p0(byte[] bArr, int i, int i2) throws IOException {
        mo20004for(bArr, i, i2);
    }

    @Deprecated
    public final void q0(int i) throws IOException {
        W(i);
    }

    @Deprecated
    public final void r0(long j) throws IOException {
        X(j);
    }

    public abstract void s0(int i, ByteString byteString) throws IOException;

    @Deprecated
    public final void t0(int i) throws IOException {
        B0(i);
    }

    @Override // com.google.protobuf.Cthrow
    /* renamed from: try */
    public abstract void mo20007try(byte[] bArr, int i, int i2) throws IOException;

    @Deprecated
    public final void u0(long j) throws IOException {
        C0(j);
    }

    public final void v0(int i) throws IOException {
        W(i);
    }

    public final void w0(long j) throws IOException {
        X(j);
    }

    public abstract void writeBool(int i, boolean z) throws IOException;

    public abstract void writeBytes(int i, ByteString byteString) throws IOException;

    public final void writeDouble(int i, double d) throws IOException {
        writeFixed64(i, Double.doubleToRawLongBits(d));
    }

    public final void writeEnum(int i, int i2) throws IOException {
        writeInt32(i, i2);
    }

    public abstract void writeFixed32(int i, int i2) throws IOException;

    public abstract void writeFixed64(int i, long j) throws IOException;

    public final void writeFloat(int i, float f) throws IOException {
        writeFixed32(i, Float.floatToRawIntBits(f));
    }

    public abstract void writeInt32(int i, int i2) throws IOException;

    public final void writeInt64(int i, long j) throws IOException {
        writeUInt64(i, j);
    }

    public final void writeSFixed32(int i, int i2) throws IOException {
        writeFixed32(i, i2);
    }

    public final void writeSFixed64(int i, long j) throws IOException {
        writeFixed64(i, j);
    }

    public final void writeSInt32(int i, int i2) throws IOException {
        writeUInt32(i, w(i2));
    }

    public final void writeSInt64(int i, long j) throws IOException {
        writeUInt64(i, x(j));
    }

    public abstract void writeString(int i, String str) throws IOException;

    public abstract void writeUInt32(int i, int i2) throws IOException;

    public abstract void writeUInt64(int i, long j) throws IOException;

    public final void x0(int i) throws IOException {
        B0(w(i));
    }

    public abstract void y() throws IOException;

    public final void y0(long j) throws IOException {
        C0(x(j));
    }

    public abstract int z();

    public abstract void z0(String str) throws IOException;

    private Cnative() {
    }
}
