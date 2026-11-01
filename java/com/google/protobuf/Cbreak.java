package com.google.protobuf;

import android.support.v4.t3;
import com.google.protobuf.c2;
import com.google.protobuf.n;
import com.google.protobuf.y;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.protobuf.break, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cbreak implements Reader {

    /* renamed from: do, reason: not valid java name */
    private static final int f16646do = 3;

    /* renamed from: if, reason: not valid java name */
    private static final int f16647if = 7;

    /* renamed from: com.google.protobuf.break$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f16648do;

        static {
            int[] iArr = new int[c2.Cif.values().length];
            f16648do = iArr;
            try {
                iArr[c2.Cif.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16648do[c2.Cif.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16648do[c2.Cif.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16648do[c2.Cif.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16648do[c2.Cif.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16648do[c2.Cif.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16648do[c2.Cif.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16648do[c2.Cif.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16648do[c2.Cif.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f16648do[c2.Cif.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f16648do[c2.Cif.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f16648do[c2.Cif.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f16648do[c2.Cif.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f16648do[c2.Cif.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f16648do[c2.Cif.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f16648do[c2.Cif.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f16648do[c2.Cif.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public /* synthetic */ Cbreak(Cdo cdo) {
        this();
    }

    /* renamed from: if, reason: not valid java name */
    public static Cbreak m19873if(ByteBuffer byteBuffer, boolean z) {
        if (byteBuffer.hasArray()) {
            return new Cif(byteBuffer, z);
        }
        throw new IllegalArgumentException("Direct buffers not yet supported");
    }

    /* renamed from: do, reason: not valid java name */
    public abstract int mo19874do();

    @Override // com.google.protobuf.Reader
    public boolean shouldDiscardUnknownFields() {
        return false;
    }

    /* renamed from: com.google.protobuf.break$if, reason: invalid class name */
    public static final class Cif extends Cbreak {

        /* renamed from: case, reason: not valid java name */
        private final int f16649case;

        /* renamed from: else, reason: not valid java name */
        private int f16650else;

        /* renamed from: for, reason: not valid java name */
        private final boolean f16651for;

        /* renamed from: goto, reason: not valid java name */
        private int f16652goto;

        /* renamed from: new, reason: not valid java name */
        private final byte[] f16653new;

        /* renamed from: this, reason: not valid java name */
        private int f16654this;

        /* renamed from: try, reason: not valid java name */
        private int f16655try;

        public Cif(ByteBuffer byteBuffer, boolean z) {
            super(null);
            this.f16651for = z;
            this.f16653new = byteBuffer.array();
            int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            this.f16655try = iArrayOffset;
            this.f16649case = iArrayOffset;
            this.f16650else = byteBuffer.arrayOffset() + byteBuffer.limit();
        }

        /* renamed from: break, reason: not valid java name */
        private long m19875break() {
            int i = this.f16655try;
            byte[] bArr = this.f16653new;
            this.f16655try = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        /* renamed from: case, reason: not valid java name */
        private <T> T m19876case(Schema<T> schema, Cimplements cimplements) throws IOException {
            int i = this.f16654this;
            this.f16654this = c2.m19963for(c2.m19962do(this.f16652goto), 4);
            try {
                T tNewInstance = schema.newInstance();
                schema.mergeFrom(tNewInstance, this, cimplements);
                schema.makeImmutable(tNewInstance);
                if (this.f16652goto == this.f16654this) {
                    return tNewInstance;
                }
                throw n.parseFailure();
            } finally {
                this.f16654this = i;
            }
        }

        /* renamed from: catch, reason: not valid java name */
        private <T> T m19877catch(Schema<T> schema, Cimplements cimplements) throws IOException {
            int iM19880final = m19880final();
            m19894while(iM19880final);
            int i = this.f16650else;
            int i2 = this.f16655try + iM19880final;
            this.f16650else = i2;
            try {
                T tNewInstance = schema.newInstance();
                schema.mergeFrom(tNewInstance, this, cimplements);
                schema.makeImmutable(tNewInstance);
                if (this.f16655try == i2) {
                    return tNewInstance;
                }
                throw n.parseFailure();
            } finally {
                this.f16650else = i;
            }
        }

        /* renamed from: default, reason: not valid java name */
        private void m19878default(int i) throws IOException {
            m19894while(i);
            if ((i & 7) != 0) {
                throw n.parseFailure();
            }
        }

        /* renamed from: else, reason: not valid java name */
        private int m19879else() throws IOException {
            m19894while(4);
            return m19882goto();
        }

        /* renamed from: final, reason: not valid java name */
        private int m19880final() throws IOException {
            int i;
            int i2 = this.f16655try;
            int i3 = this.f16650else;
            if (i3 == i2) {
                throw n.truncatedMessage();
            }
            byte[] bArr = this.f16653new;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f16655try = i4;
                return b;
            }
            if (i3 - i4 < 9) {
                return (int) m19891throw();
            }
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
                                            if (bArr[i7] < 0) {
                                                throw n.malformedVarint();
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                i5 = i7;
            }
            this.f16655try = i5;
            return i;
        }

        /* renamed from: for, reason: not valid java name */
        private boolean m19881for() {
            return this.f16655try == this.f16650else;
        }

        /* renamed from: goto, reason: not valid java name */
        private int m19882goto() {
            int i = this.f16655try;
            byte[] bArr = this.f16653new;
            this.f16655try = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        /* renamed from: import, reason: not valid java name */
        private void m19883import(int i) throws IOException {
            if (this.f16655try != i) {
                throw n.truncatedMessage();
            }
        }

        /* renamed from: native, reason: not valid java name */
        private void m19884native(int i) throws IOException {
            if (c2.m19964if(this.f16652goto) != i) {
                throw n.invalidWireType();
            }
        }

        /* renamed from: new, reason: not valid java name */
        private byte m19885new() throws IOException {
            int i = this.f16655try;
            if (i == this.f16650else) {
                throw n.truncatedMessage();
            }
            byte[] bArr = this.f16653new;
            this.f16655try = i + 1;
            return bArr[i];
        }

        /* renamed from: public, reason: not valid java name */
        private void m19886public(int i) throws IOException {
            m19894while(i);
            this.f16655try += i;
        }

        /* renamed from: return, reason: not valid java name */
        private void m19887return() throws IOException {
            int i = this.f16654this;
            this.f16654this = c2.m19963for(c2.m19962do(this.f16652goto), 4);
            while (getFieldNumber() != Integer.MAX_VALUE && skipField()) {
            }
            if (this.f16652goto != this.f16654this) {
                throw n.parseFailure();
            }
            this.f16654this = i;
        }

        /* renamed from: static, reason: not valid java name */
        private void m19888static() throws IOException {
            int i = this.f16650else;
            int i2 = this.f16655try;
            if (i - i2 >= 10) {
                byte[] bArr = this.f16653new;
                int i3 = 0;
                while (i3 < 10) {
                    int i4 = i2 + 1;
                    if (bArr[i2] >= 0) {
                        this.f16655try = i4;
                        return;
                    } else {
                        i3++;
                        i2 = i4;
                    }
                }
            }
            m19889switch();
        }

        /* renamed from: switch, reason: not valid java name */
        private void m19889switch() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (m19885new() >= 0) {
                    return;
                }
            }
            throw n.malformedVarint();
        }

        /* renamed from: this, reason: not valid java name */
        private long m19890this() throws IOException {
            m19894while(8);
            return m19875break();
        }

        /* renamed from: throw, reason: not valid java name */
        private long m19891throw() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((m19885new() & 128) == 0) {
                    return j;
                }
            }
            throw n.malformedVarint();
        }

        /* renamed from: throws, reason: not valid java name */
        private void m19892throws(int i) throws IOException {
            m19894while(i);
            if ((i & 3) != 0) {
                throw n.parseFailure();
            }
        }

        /* renamed from: try, reason: not valid java name */
        private Object m19893try(c2.Cif cif, Class<?> cls, Cimplements cimplements) throws IOException {
            switch (Cdo.f16648do[cif.ordinal()]) {
                case 1:
                    return Boolean.valueOf(readBool());
                case 2:
                    return readBytes();
                case 3:
                    return Double.valueOf(readDouble());
                case 4:
                    return Integer.valueOf(readEnum());
                case 5:
                    return Integer.valueOf(readFixed32());
                case 6:
                    return Long.valueOf(readFixed64());
                case 7:
                    return Float.valueOf(readFloat());
                case 8:
                    return Integer.valueOf(readInt32());
                case 9:
                    return Long.valueOf(readInt64());
                case 10:
                    return readMessage(cls, cimplements);
                case 11:
                    return Integer.valueOf(readSFixed32());
                case 12:
                    return Long.valueOf(readSFixed64());
                case 13:
                    return Integer.valueOf(readSInt32());
                case 14:
                    return Long.valueOf(readSInt64());
                case 15:
                    return readStringRequireUtf8();
                case 16:
                    return Integer.valueOf(readUInt32());
                case 17:
                    return Long.valueOf(readUInt64());
                default:
                    throw new RuntimeException("unsupported field type.");
            }
        }

        /* renamed from: while, reason: not valid java name */
        private void m19894while(int i) throws IOException {
            if (i < 0 || i > this.f16650else - this.f16655try) {
                throw n.truncatedMessage();
            }
        }

        /* renamed from: class, reason: not valid java name */
        public String m19895class(boolean z) throws IOException {
            m19884native(2);
            int iM19880final = m19880final();
            if (iM19880final == 0) {
                return "";
            }
            m19894while(iM19880final);
            if (z) {
                byte[] bArr = this.f16653new;
                int i = this.f16655try;
                if (!a2.m19708return(bArr, i, i + iM19880final)) {
                    throw n.invalidUtf8();
                }
            }
            String str = new String(this.f16653new, this.f16655try, iM19880final, Internal.f16554do);
            this.f16655try += iM19880final;
            return str;
        }

        /* renamed from: const, reason: not valid java name */
        public void m19896const(List<String> list, boolean z) throws IOException {
            int i;
            int i2;
            if (c2.m19964if(this.f16652goto) != 2) {
                throw n.invalidWireType();
            }
            if (!(list instanceof LazyStringList) || z) {
                do {
                    list.add(m19895class(z));
                    if (m19881for()) {
                        return;
                    } else {
                        i = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i;
                return;
            }
            LazyStringList lazyStringList = (LazyStringList) list;
            do {
                lazyStringList.add(readBytes());
                if (m19881for()) {
                    return;
                } else {
                    i2 = this.f16655try;
                }
            } while (m19880final() == this.f16652goto);
            this.f16655try = i2;
        }

        @Override // com.google.protobuf.Cbreak
        /* renamed from: do */
        public int mo19874do() {
            return this.f16655try - this.f16649case;
        }

        @Override // com.google.protobuf.Reader
        public int getFieldNumber() throws IOException {
            if (m19881for()) {
                return Integer.MAX_VALUE;
            }
            int iM19880final = m19880final();
            this.f16652goto = iM19880final;
            if (iM19880final == this.f16654this) {
                return Integer.MAX_VALUE;
            }
            return c2.m19962do(iM19880final);
        }

        @Override // com.google.protobuf.Reader
        public int getTag() {
            return this.f16652goto;
        }

        @Override // com.google.protobuf.Reader
        public boolean readBool() throws IOException {
            m19884native(0);
            return m19880final() != 0;
        }

        @Override // com.google.protobuf.Reader
        public void readBoolList(List<Boolean> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof Cconst)) {
                int iM19964if = c2.m19964if(this.f16652goto);
                if (iM19964if != 0) {
                    if (iM19964if != 2) {
                        throw n.invalidWireType();
                    }
                    int iM19880final = this.f16655try + m19880final();
                    while (this.f16655try < iM19880final) {
                        list.add(Boolean.valueOf(m19880final() != 0));
                    }
                    m19883import(iM19880final);
                    return;
                }
                do {
                    list.add(Boolean.valueOf(readBool()));
                    if (m19881for()) {
                        return;
                    } else {
                        i = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i;
                return;
            }
            Cconst cconst = (Cconst) list;
            int iM19964if2 = c2.m19964if(this.f16652goto);
            if (iM19964if2 != 0) {
                if (iM19964if2 != 2) {
                    throw n.invalidWireType();
                }
                int iM19880final2 = this.f16655try + m19880final();
                while (this.f16655try < iM19880final2) {
                    cconst.addBoolean(m19880final() != 0);
                }
                m19883import(iM19880final2);
                return;
            }
            do {
                cconst.addBoolean(readBool());
                if (m19881for()) {
                    return;
                } else {
                    i2 = this.f16655try;
                }
            } while (m19880final() == this.f16652goto);
            this.f16655try = i2;
        }

        @Override // com.google.protobuf.Reader
        public ByteString readBytes() throws IOException {
            m19884native(2);
            int iM19880final = m19880final();
            if (iM19880final == 0) {
                return ByteString.EMPTY;
            }
            m19894while(iM19880final);
            ByteString byteStringWrap = this.f16651for ? ByteString.wrap(this.f16653new, this.f16655try, iM19880final) : ByteString.copyFrom(this.f16653new, this.f16655try, iM19880final);
            this.f16655try += iM19880final;
            return byteStringWrap;
        }

        @Override // com.google.protobuf.Reader
        public void readBytesList(List<ByteString> list) throws IOException {
            int i;
            if (c2.m19964if(this.f16652goto) != 2) {
                throw n.invalidWireType();
            }
            do {
                list.add(readBytes());
                if (m19881for()) {
                    return;
                } else {
                    i = this.f16655try;
                }
            } while (m19880final() == this.f16652goto);
            this.f16655try = i;
        }

        @Override // com.google.protobuf.Reader
        public double readDouble() throws IOException {
            m19884native(1);
            return Double.longBitsToDouble(m19890this());
        }

        @Override // com.google.protobuf.Reader
        public void readDoubleList(List<Double> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof Cswitch)) {
                int iM19964if = c2.m19964if(this.f16652goto);
                if (iM19964if == 1) {
                    do {
                        list.add(Double.valueOf(readDouble()));
                        if (m19881for()) {
                            return;
                        } else {
                            i = this.f16655try;
                        }
                    } while (m19880final() == this.f16652goto);
                    this.f16655try = i;
                    return;
                }
                if (iM19964if != 2) {
                    throw n.invalidWireType();
                }
                int iM19880final = m19880final();
                m19878default(iM19880final);
                int i3 = this.f16655try + iM19880final;
                while (this.f16655try < i3) {
                    list.add(Double.valueOf(Double.longBitsToDouble(m19875break())));
                }
                return;
            }
            Cswitch cswitch = (Cswitch) list;
            int iM19964if2 = c2.m19964if(this.f16652goto);
            if (iM19964if2 == 1) {
                do {
                    cswitch.addDouble(readDouble());
                    if (m19881for()) {
                        return;
                    } else {
                        i2 = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i2;
                return;
            }
            if (iM19964if2 != 2) {
                throw n.invalidWireType();
            }
            int iM19880final2 = m19880final();
            m19878default(iM19880final2);
            int i4 = this.f16655try + iM19880final2;
            while (this.f16655try < i4) {
                cswitch.addDouble(Double.longBitsToDouble(m19875break()));
            }
        }

        @Override // com.google.protobuf.Reader
        public int readEnum() throws IOException {
            m19884native(0);
            return m19880final();
        }

        @Override // com.google.protobuf.Reader
        public void readEnumList(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof m)) {
                int iM19964if = c2.m19964if(this.f16652goto);
                if (iM19964if != 0) {
                    if (iM19964if != 2) {
                        throw n.invalidWireType();
                    }
                    int iM19880final = this.f16655try + m19880final();
                    while (this.f16655try < iM19880final) {
                        list.add(Integer.valueOf(m19880final()));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(readEnum()));
                    if (m19881for()) {
                        return;
                    } else {
                        i = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i;
                return;
            }
            m mVar = (m) list;
            int iM19964if2 = c2.m19964if(this.f16652goto);
            if (iM19964if2 != 0) {
                if (iM19964if2 != 2) {
                    throw n.invalidWireType();
                }
                int iM19880final2 = this.f16655try + m19880final();
                while (this.f16655try < iM19880final2) {
                    mVar.addInt(m19880final());
                }
                return;
            }
            do {
                mVar.addInt(readEnum());
                if (m19881for()) {
                    return;
                } else {
                    i2 = this.f16655try;
                }
            } while (m19880final() == this.f16652goto);
            this.f16655try = i2;
        }

        @Override // com.google.protobuf.Reader
        public int readFixed32() throws IOException {
            m19884native(5);
            return m19879else();
        }

        @Override // com.google.protobuf.Reader
        public void readFixed32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof m)) {
                int iM19964if = c2.m19964if(this.f16652goto);
                if (iM19964if == 2) {
                    int iM19880final = m19880final();
                    m19892throws(iM19880final);
                    int i3 = this.f16655try + iM19880final;
                    while (this.f16655try < i3) {
                        list.add(Integer.valueOf(m19882goto()));
                    }
                    return;
                }
                if (iM19964if != 5) {
                    throw n.invalidWireType();
                }
                do {
                    list.add(Integer.valueOf(readFixed32()));
                    if (m19881for()) {
                        return;
                    } else {
                        i = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i;
                return;
            }
            m mVar = (m) list;
            int iM19964if2 = c2.m19964if(this.f16652goto);
            if (iM19964if2 == 2) {
                int iM19880final2 = m19880final();
                m19892throws(iM19880final2);
                int i4 = this.f16655try + iM19880final2;
                while (this.f16655try < i4) {
                    mVar.addInt(m19882goto());
                }
                return;
            }
            if (iM19964if2 != 5) {
                throw n.invalidWireType();
            }
            do {
                mVar.addInt(readFixed32());
                if (m19881for()) {
                    return;
                } else {
                    i2 = this.f16655try;
                }
            } while (m19880final() == this.f16652goto);
            this.f16655try = i2;
        }

        @Override // com.google.protobuf.Reader
        public long readFixed64() throws IOException {
            m19884native(1);
            return m19890this();
        }

        @Override // com.google.protobuf.Reader
        public void readFixed64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof v)) {
                int iM19964if = c2.m19964if(this.f16652goto);
                if (iM19964if == 1) {
                    do {
                        list.add(Long.valueOf(readFixed64()));
                        if (m19881for()) {
                            return;
                        } else {
                            i = this.f16655try;
                        }
                    } while (m19880final() == this.f16652goto);
                    this.f16655try = i;
                    return;
                }
                if (iM19964if != 2) {
                    throw n.invalidWireType();
                }
                int iM19880final = m19880final();
                m19878default(iM19880final);
                int i3 = this.f16655try + iM19880final;
                while (this.f16655try < i3) {
                    list.add(Long.valueOf(m19875break()));
                }
                return;
            }
            v vVar = (v) list;
            int iM19964if2 = c2.m19964if(this.f16652goto);
            if (iM19964if2 == 1) {
                do {
                    vVar.addLong(readFixed64());
                    if (m19881for()) {
                        return;
                    } else {
                        i2 = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i2;
                return;
            }
            if (iM19964if2 != 2) {
                throw n.invalidWireType();
            }
            int iM19880final2 = m19880final();
            m19878default(iM19880final2);
            int i4 = this.f16655try + iM19880final2;
            while (this.f16655try < i4) {
                vVar.addLong(m19875break());
            }
        }

        @Override // com.google.protobuf.Reader
        public float readFloat() throws IOException {
            m19884native(5);
            return Float.intBitsToFloat(m19879else());
        }

        @Override // com.google.protobuf.Reader
        public void readFloatList(List<Float> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof h)) {
                int iM19964if = c2.m19964if(this.f16652goto);
                if (iM19964if == 2) {
                    int iM19880final = m19880final();
                    m19892throws(iM19880final);
                    int i3 = this.f16655try + iM19880final;
                    while (this.f16655try < i3) {
                        list.add(Float.valueOf(Float.intBitsToFloat(m19882goto())));
                    }
                    return;
                }
                if (iM19964if != 5) {
                    throw n.invalidWireType();
                }
                do {
                    list.add(Float.valueOf(readFloat()));
                    if (m19881for()) {
                        return;
                    } else {
                        i = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i;
                return;
            }
            h hVar = (h) list;
            int iM19964if2 = c2.m19964if(this.f16652goto);
            if (iM19964if2 == 2) {
                int iM19880final2 = m19880final();
                m19892throws(iM19880final2);
                int i4 = this.f16655try + iM19880final2;
                while (this.f16655try < i4) {
                    hVar.addFloat(Float.intBitsToFloat(m19882goto()));
                }
                return;
            }
            if (iM19964if2 != 5) {
                throw n.invalidWireType();
            }
            do {
                hVar.addFloat(readFloat());
                if (m19881for()) {
                    return;
                } else {
                    i2 = this.f16655try;
                }
            } while (m19880final() == this.f16652goto);
            this.f16655try = i2;
        }

        @Override // com.google.protobuf.Reader
        public <T> T readGroup(Class<T> cls, Cimplements cimplements) throws IOException {
            m19884native(3);
            return (T) m19876case(q0.m21002do().m21011this(cls), cimplements);
        }

        @Override // com.google.protobuf.Reader
        public <T> T readGroupBySchemaWithCheck(Schema<T> schema, Cimplements cimplements) throws IOException {
            m19884native(3);
            return (T) m19876case(schema, cimplements);
        }

        @Override // com.google.protobuf.Reader
        public <T> void readGroupList(List<T> list, Class<T> cls, Cimplements cimplements) throws IOException {
            readGroupList(list, q0.m21002do().m21011this(cls), cimplements);
        }

        @Override // com.google.protobuf.Reader
        public int readInt32() throws IOException {
            m19884native(0);
            return m19880final();
        }

        @Override // com.google.protobuf.Reader
        public void readInt32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof m)) {
                int iM19964if = c2.m19964if(this.f16652goto);
                if (iM19964if == 0) {
                    do {
                        list.add(Integer.valueOf(readInt32()));
                        if (m19881for()) {
                            return;
                        } else {
                            i = this.f16655try;
                        }
                    } while (m19880final() == this.f16652goto);
                    this.f16655try = i;
                    return;
                }
                if (iM19964if != 2) {
                    throw n.invalidWireType();
                }
                int iM19880final = this.f16655try + m19880final();
                while (this.f16655try < iM19880final) {
                    list.add(Integer.valueOf(m19880final()));
                }
                m19883import(iM19880final);
                return;
            }
            m mVar = (m) list;
            int iM19964if2 = c2.m19964if(this.f16652goto);
            if (iM19964if2 == 0) {
                do {
                    mVar.addInt(readInt32());
                    if (m19881for()) {
                        return;
                    } else {
                        i2 = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i2;
                return;
            }
            if (iM19964if2 != 2) {
                throw n.invalidWireType();
            }
            int iM19880final2 = this.f16655try + m19880final();
            while (this.f16655try < iM19880final2) {
                mVar.addInt(m19880final());
            }
            m19883import(iM19880final2);
        }

        @Override // com.google.protobuf.Reader
        public long readInt64() throws IOException {
            m19884native(0);
            return m19897super();
        }

        @Override // com.google.protobuf.Reader
        public void readInt64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof v)) {
                int iM19964if = c2.m19964if(this.f16652goto);
                if (iM19964if == 0) {
                    do {
                        list.add(Long.valueOf(readInt64()));
                        if (m19881for()) {
                            return;
                        } else {
                            i = this.f16655try;
                        }
                    } while (m19880final() == this.f16652goto);
                    this.f16655try = i;
                    return;
                }
                if (iM19964if != 2) {
                    throw n.invalidWireType();
                }
                int iM19880final = this.f16655try + m19880final();
                while (this.f16655try < iM19880final) {
                    list.add(Long.valueOf(m19897super()));
                }
                m19883import(iM19880final);
                return;
            }
            v vVar = (v) list;
            int iM19964if2 = c2.m19964if(this.f16652goto);
            if (iM19964if2 == 0) {
                do {
                    vVar.addLong(readInt64());
                    if (m19881for()) {
                        return;
                    } else {
                        i2 = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i2;
                return;
            }
            if (iM19964if2 != 2) {
                throw n.invalidWireType();
            }
            int iM19880final2 = this.f16655try + m19880final();
            while (this.f16655try < iM19880final2) {
                vVar.addLong(m19897super());
            }
            m19883import(iM19880final2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.Reader
        public <K, V> void readMap(Map<K, V> map, y.Cif<K, V> cif, Cimplements cimplements) throws IOException {
            m19884native(2);
            int iM19880final = m19880final();
            m19894while(iM19880final);
            int i = this.f16650else;
            this.f16650else = this.f16655try + iM19880final;
            try {
                Object objM19893try = cif.f17348if;
                Object objM19893try2 = cif.f17349new;
                while (true) {
                    int fieldNumber = getFieldNumber();
                    if (fieldNumber == Integer.MAX_VALUE) {
                        map.put(objM19893try, objM19893try2);
                        return;
                    }
                    if (fieldNumber == 1) {
                        objM19893try = m19893try(cif.f17346do, null, null);
                    } else if (fieldNumber != 2) {
                        try {
                            if (!skipField()) {
                                throw new n("Unable to parse map entry.");
                            }
                        } catch (n.Cdo unused) {
                            if (!skipField()) {
                                throw new n("Unable to parse map entry.");
                            }
                        }
                    } else {
                        objM19893try2 = m19893try(cif.f17347for, cif.f17349new.getClass(), cimplements);
                    }
                }
            } finally {
                this.f16650else = i;
            }
        }

        @Override // com.google.protobuf.Reader
        public <T> T readMessage(Class<T> cls, Cimplements cimplements) throws IOException {
            m19884native(2);
            return (T) m19877catch(q0.m21002do().m21011this(cls), cimplements);
        }

        @Override // com.google.protobuf.Reader
        public <T> T readMessageBySchemaWithCheck(Schema<T> schema, Cimplements cimplements) throws IOException {
            m19884native(2);
            return (T) m19877catch(schema, cimplements);
        }

        @Override // com.google.protobuf.Reader
        public <T> void readMessageList(List<T> list, Class<T> cls, Cimplements cimplements) throws IOException {
            readMessageList(list, q0.m21002do().m21011this(cls), cimplements);
        }

        @Override // com.google.protobuf.Reader
        public int readSFixed32() throws IOException {
            m19884native(5);
            return m19879else();
        }

        @Override // com.google.protobuf.Reader
        public void readSFixed32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof m)) {
                int iM19964if = c2.m19964if(this.f16652goto);
                if (iM19964if == 2) {
                    int iM19880final = m19880final();
                    m19892throws(iM19880final);
                    int i3 = this.f16655try + iM19880final;
                    while (this.f16655try < i3) {
                        list.add(Integer.valueOf(m19882goto()));
                    }
                    return;
                }
                if (iM19964if != 5) {
                    throw n.invalidWireType();
                }
                do {
                    list.add(Integer.valueOf(readSFixed32()));
                    if (m19881for()) {
                        return;
                    } else {
                        i = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i;
                return;
            }
            m mVar = (m) list;
            int iM19964if2 = c2.m19964if(this.f16652goto);
            if (iM19964if2 == 2) {
                int iM19880final2 = m19880final();
                m19892throws(iM19880final2);
                int i4 = this.f16655try + iM19880final2;
                while (this.f16655try < i4) {
                    mVar.addInt(m19882goto());
                }
                return;
            }
            if (iM19964if2 != 5) {
                throw n.invalidWireType();
            }
            do {
                mVar.addInt(readSFixed32());
                if (m19881for()) {
                    return;
                } else {
                    i2 = this.f16655try;
                }
            } while (m19880final() == this.f16652goto);
            this.f16655try = i2;
        }

        @Override // com.google.protobuf.Reader
        public long readSFixed64() throws IOException {
            m19884native(1);
            return m19890this();
        }

        @Override // com.google.protobuf.Reader
        public void readSFixed64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof v)) {
                int iM19964if = c2.m19964if(this.f16652goto);
                if (iM19964if == 1) {
                    do {
                        list.add(Long.valueOf(readSFixed64()));
                        if (m19881for()) {
                            return;
                        } else {
                            i = this.f16655try;
                        }
                    } while (m19880final() == this.f16652goto);
                    this.f16655try = i;
                    return;
                }
                if (iM19964if != 2) {
                    throw n.invalidWireType();
                }
                int iM19880final = m19880final();
                m19878default(iM19880final);
                int i3 = this.f16655try + iM19880final;
                while (this.f16655try < i3) {
                    list.add(Long.valueOf(m19875break()));
                }
                return;
            }
            v vVar = (v) list;
            int iM19964if2 = c2.m19964if(this.f16652goto);
            if (iM19964if2 == 1) {
                do {
                    vVar.addLong(readSFixed64());
                    if (m19881for()) {
                        return;
                    } else {
                        i2 = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i2;
                return;
            }
            if (iM19964if2 != 2) {
                throw n.invalidWireType();
            }
            int iM19880final2 = m19880final();
            m19878default(iM19880final2);
            int i4 = this.f16655try + iM19880final2;
            while (this.f16655try < i4) {
                vVar.addLong(m19875break());
            }
        }

        @Override // com.google.protobuf.Reader
        public int readSInt32() throws IOException {
            m19884native(0);
            return CodedInputStream.m18414if(m19880final());
        }

        @Override // com.google.protobuf.Reader
        public void readSInt32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof m)) {
                int iM19964if = c2.m19964if(this.f16652goto);
                if (iM19964if != 0) {
                    if (iM19964if != 2) {
                        throw n.invalidWireType();
                    }
                    int iM19880final = this.f16655try + m19880final();
                    while (this.f16655try < iM19880final) {
                        list.add(Integer.valueOf(CodedInputStream.m18414if(m19880final())));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(readSInt32()));
                    if (m19881for()) {
                        return;
                    } else {
                        i = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i;
                return;
            }
            m mVar = (m) list;
            int iM19964if2 = c2.m19964if(this.f16652goto);
            if (iM19964if2 != 0) {
                if (iM19964if2 != 2) {
                    throw n.invalidWireType();
                }
                int iM19880final2 = this.f16655try + m19880final();
                while (this.f16655try < iM19880final2) {
                    mVar.addInt(CodedInputStream.m18414if(m19880final()));
                }
                return;
            }
            do {
                mVar.addInt(readSInt32());
                if (m19881for()) {
                    return;
                } else {
                    i2 = this.f16655try;
                }
            } while (m19880final() == this.f16652goto);
            this.f16655try = i2;
        }

        @Override // com.google.protobuf.Reader
        public long readSInt64() throws IOException {
            m19884native(0);
            return CodedInputStream.m18413for(m19897super());
        }

        @Override // com.google.protobuf.Reader
        public void readSInt64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof v)) {
                int iM19964if = c2.m19964if(this.f16652goto);
                if (iM19964if != 0) {
                    if (iM19964if != 2) {
                        throw n.invalidWireType();
                    }
                    int iM19880final = this.f16655try + m19880final();
                    while (this.f16655try < iM19880final) {
                        list.add(Long.valueOf(CodedInputStream.m18413for(m19897super())));
                    }
                    return;
                }
                do {
                    list.add(Long.valueOf(readSInt64()));
                    if (m19881for()) {
                        return;
                    } else {
                        i = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i;
                return;
            }
            v vVar = (v) list;
            int iM19964if2 = c2.m19964if(this.f16652goto);
            if (iM19964if2 != 0) {
                if (iM19964if2 != 2) {
                    throw n.invalidWireType();
                }
                int iM19880final2 = this.f16655try + m19880final();
                while (this.f16655try < iM19880final2) {
                    vVar.addLong(CodedInputStream.m18413for(m19897super()));
                }
                return;
            }
            do {
                vVar.addLong(readSInt64());
                if (m19881for()) {
                    return;
                } else {
                    i2 = this.f16655try;
                }
            } while (m19880final() == this.f16652goto);
            this.f16655try = i2;
        }

        @Override // com.google.protobuf.Reader
        public String readString() throws IOException {
            return m19895class(false);
        }

        @Override // com.google.protobuf.Reader
        public void readStringList(List<String> list) throws IOException {
            m19896const(list, false);
        }

        @Override // com.google.protobuf.Reader
        public void readStringListRequireUtf8(List<String> list) throws IOException {
            m19896const(list, true);
        }

        @Override // com.google.protobuf.Reader
        public String readStringRequireUtf8() throws IOException {
            return m19895class(true);
        }

        @Override // com.google.protobuf.Reader
        public int readUInt32() throws IOException {
            m19884native(0);
            return m19880final();
        }

        @Override // com.google.protobuf.Reader
        public void readUInt32List(List<Integer> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof m)) {
                int iM19964if = c2.m19964if(this.f16652goto);
                if (iM19964if != 0) {
                    if (iM19964if != 2) {
                        throw n.invalidWireType();
                    }
                    int iM19880final = this.f16655try + m19880final();
                    while (this.f16655try < iM19880final) {
                        list.add(Integer.valueOf(m19880final()));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(readUInt32()));
                    if (m19881for()) {
                        return;
                    } else {
                        i = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i;
                return;
            }
            m mVar = (m) list;
            int iM19964if2 = c2.m19964if(this.f16652goto);
            if (iM19964if2 != 0) {
                if (iM19964if2 != 2) {
                    throw n.invalidWireType();
                }
                int iM19880final2 = this.f16655try + m19880final();
                while (this.f16655try < iM19880final2) {
                    mVar.addInt(m19880final());
                }
                return;
            }
            do {
                mVar.addInt(readUInt32());
                if (m19881for()) {
                    return;
                } else {
                    i2 = this.f16655try;
                }
            } while (m19880final() == this.f16652goto);
            this.f16655try = i2;
        }

        @Override // com.google.protobuf.Reader
        public long readUInt64() throws IOException {
            m19884native(0);
            return m19897super();
        }

        @Override // com.google.protobuf.Reader
        public void readUInt64List(List<Long> list) throws IOException {
            int i;
            int i2;
            if (!(list instanceof v)) {
                int iM19964if = c2.m19964if(this.f16652goto);
                if (iM19964if == 0) {
                    do {
                        list.add(Long.valueOf(readUInt64()));
                        if (m19881for()) {
                            return;
                        } else {
                            i = this.f16655try;
                        }
                    } while (m19880final() == this.f16652goto);
                    this.f16655try = i;
                    return;
                }
                if (iM19964if != 2) {
                    throw n.invalidWireType();
                }
                int iM19880final = this.f16655try + m19880final();
                while (this.f16655try < iM19880final) {
                    list.add(Long.valueOf(m19897super()));
                }
                m19883import(iM19880final);
                return;
            }
            v vVar = (v) list;
            int iM19964if2 = c2.m19964if(this.f16652goto);
            if (iM19964if2 == 0) {
                do {
                    vVar.addLong(readUInt64());
                    if (m19881for()) {
                        return;
                    } else {
                        i2 = this.f16655try;
                    }
                } while (m19880final() == this.f16652goto);
                this.f16655try = i2;
                return;
            }
            if (iM19964if2 != 2) {
                throw n.invalidWireType();
            }
            int iM19880final2 = this.f16655try + m19880final();
            while (this.f16655try < iM19880final2) {
                vVar.addLong(m19897super());
            }
            m19883import(iM19880final2);
        }

        @Override // com.google.protobuf.Reader
        public boolean skipField() throws IOException {
            int i;
            if (m19881for() || (i = this.f16652goto) == this.f16654this) {
                return false;
            }
            int iM19964if = c2.m19964if(i);
            if (iM19964if == 0) {
                m19888static();
                return true;
            }
            if (iM19964if == 1) {
                m19886public(8);
                return true;
            }
            if (iM19964if == 2) {
                m19886public(m19880final());
                return true;
            }
            if (iM19964if == 3) {
                m19887return();
                return true;
            }
            if (iM19964if != 5) {
                throw n.invalidWireType();
            }
            m19886public(4);
            return true;
        }

        /* renamed from: super, reason: not valid java name */
        public long m19897super() throws IOException {
            long j;
            long j2;
            long j3;
            long j4;
            int i;
            int i2 = this.f16655try;
            int i3 = this.f16650else;
            if (i3 == i2) {
                throw n.truncatedMessage();
            }
            byte[] bArr = this.f16653new;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f16655try = i4;
                return b;
            }
            if (i3 - i4 < 9) {
                return m19891throw();
            }
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
                                        if (j < 0) {
                                            i5 = i11 + 1;
                                            if (bArr[i11] < 0) {
                                                throw n.malformedVarint();
                                            }
                                        } else {
                                            i5 = i11;
                                        }
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
                this.f16655try = i5;
                return j4;
            }
            i = i6 ^ (-128);
            j4 = i;
            this.f16655try = i5;
            return j4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.Reader
        public <T> void readGroupList(List<T> list, Schema<T> schema, Cimplements cimplements) throws IOException {
            int i;
            if (c2.m19964if(this.f16652goto) == 3) {
                int i2 = this.f16652goto;
                do {
                    list.add(m19876case(schema, cimplements));
                    if (m19881for()) {
                        return;
                    } else {
                        i = this.f16655try;
                    }
                } while (m19880final() == i2);
                this.f16655try = i;
                return;
            }
            throw n.invalidWireType();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.Reader
        public <T> void readMessageList(List<T> list, Schema<T> schema, Cimplements cimplements) throws IOException {
            int i;
            if (c2.m19964if(this.f16652goto) == 2) {
                int i2 = this.f16652goto;
                do {
                    list.add(m19877catch(schema, cimplements));
                    if (m19881for()) {
                        return;
                    } else {
                        i = this.f16655try;
                    }
                } while (m19880final() == i2);
                this.f16655try = i;
                return;
            }
            throw n.invalidWireType();
        }
    }

    private Cbreak() {
    }
}
