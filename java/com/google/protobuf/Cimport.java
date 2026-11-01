package com.google.protobuf;

import com.google.protobuf.c2;
import com.google.protobuf.n;
import com.google.protobuf.y;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.protobuf.import, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cimport implements Reader {

    /* renamed from: case, reason: not valid java name */
    private static final int f16991case = 7;

    /* renamed from: else, reason: not valid java name */
    private static final int f16992else = 0;

    /* renamed from: try, reason: not valid java name */
    private static final int f16993try = 3;

    /* renamed from: do, reason: not valid java name */
    private final CodedInputStream f16994do;

    /* renamed from: for, reason: not valid java name */
    private int f16995for;

    /* renamed from: if, reason: not valid java name */
    private int f16996if;

    /* renamed from: new, reason: not valid java name */
    private int f16997new = 0;

    /* renamed from: com.google.protobuf.import$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f16998do;

        static {
            int[] iArr = new int[c2.Cif.values().length];
            f16998do = iArr;
            try {
                iArr[c2.Cif.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16998do[c2.Cif.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16998do[c2.Cif.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16998do[c2.Cif.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16998do[c2.Cif.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16998do[c2.Cif.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16998do[c2.Cif.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16998do[c2.Cif.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16998do[c2.Cif.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f16998do[c2.Cif.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f16998do[c2.Cif.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f16998do[c2.Cif.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f16998do[c2.Cif.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f16998do[c2.Cif.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f16998do[c2.Cif.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f16998do[c2.Cif.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f16998do[c2.Cif.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private Cimport(CodedInputStream codedInputStream) {
        CodedInputStream codedInputStream2 = (CodedInputStream) Internal.m19632try(codedInputStream, "input");
        this.f16994do = codedInputStream2;
        codedInputStream2.f15969new = this;
    }

    /* renamed from: case, reason: not valid java name */
    private void m20613case(int i) throws IOException {
        if (this.f16994do.mo18427goto() != i) {
            throw n.truncatedMessage();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Cimport m20614do(CodedInputStream codedInputStream) {
        Cimport cimport = codedInputStream.f15969new;
        return cimport != null ? cimport : new Cimport(codedInputStream);
    }

    /* renamed from: else, reason: not valid java name */
    private void m20615else(int i) throws IOException {
        if (c2.m19964if(this.f16996if) != i) {
            throw n.invalidWireType();
        }
    }

    /* renamed from: for, reason: not valid java name */
    private <T> T m20616for(Schema<T> schema, Cimplements cimplements) throws IOException {
        int i = this.f16995for;
        this.f16995for = c2.m19963for(c2.m19962do(this.f16996if), 4);
        try {
            T tNewInstance = schema.newInstance();
            schema.mergeFrom(tNewInstance, this, cimplements);
            schema.makeImmutable(tNewInstance);
            if (this.f16996if == this.f16995for) {
                return tNewInstance;
            }
            throw n.parseFailure();
        } finally {
            this.f16995for = i;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m20617goto(int i) throws IOException {
        if ((i & 3) != 0) {
            throw n.parseFailure();
        }
    }

    /* renamed from: if, reason: not valid java name */
    private Object m20618if(c2.Cif cif, Class<?> cls, Cimplements cimplements) throws IOException {
        switch (Cdo.f16998do[cif.ordinal()]) {
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

    /* renamed from: new, reason: not valid java name */
    private <T> T m20619new(Schema<T> schema, Cimplements cimplements) throws IOException {
        int iM = this.f16994do.m();
        CodedInputStream codedInputStream = this.f16994do;
        if (codedInputStream.f15966do >= codedInputStream.f15968if) {
            throw n.recursionLimitExceeded();
        }
        int iMo18436public = codedInputStream.mo18436public(iM);
        T tNewInstance = schema.newInstance();
        this.f16994do.f15966do++;
        schema.mergeFrom(tNewInstance, this, cimplements);
        schema.makeImmutable(tNewInstance);
        this.f16994do.mo18423do(0);
        r5.f15966do--;
        this.f16994do.mo18431native(iMo18436public);
        return tNewInstance;
    }

    /* renamed from: this, reason: not valid java name */
    private void m20620this(int i) throws IOException {
        if ((i & 7) != 0) {
            throw n.parseFailure();
        }
    }

    @Override // com.google.protobuf.Reader
    public int getFieldNumber() throws IOException {
        int i = this.f16997new;
        if (i != 0) {
            this.f16996if = i;
            this.f16997new = 0;
        } else {
            this.f16996if = this.f16994do.l();
        }
        int i2 = this.f16996if;
        if (i2 == 0 || i2 == this.f16995for) {
            return Integer.MAX_VALUE;
        }
        return c2.m19962do(i2);
    }

    @Override // com.google.protobuf.Reader
    public int getTag() {
        return this.f16996if;
    }

    @Override // com.google.protobuf.Reader
    public boolean readBool() throws IOException {
        m20615else(0);
        return this.f16994do.mo18437return();
    }

    @Override // com.google.protobuf.Reader
    public void readBoolList(List<Boolean> list) throws IOException {
        int iL;
        int iL2;
        if (!(list instanceof Cconst)) {
            int iM19964if = c2.m19964if(this.f16996if);
            if (iM19964if == 0) {
                do {
                    list.add(Boolean.valueOf(this.f16994do.mo18437return()));
                    if (this.f16994do.mo18442this()) {
                        return;
                    } else {
                        iL = this.f16994do.l();
                    }
                } while (iL == this.f16996if);
                this.f16997new = iL;
                return;
            }
            if (iM19964if != 2) {
                throw n.invalidWireType();
            }
            int iMo18427goto = this.f16994do.mo18427goto() + this.f16994do.m();
            do {
                list.add(Boolean.valueOf(this.f16994do.mo18437return()));
            } while (this.f16994do.mo18427goto() < iMo18427goto);
            m20613case(iMo18427goto);
            return;
        }
        Cconst cconst = (Cconst) list;
        int iM19964if2 = c2.m19964if(this.f16996if);
        if (iM19964if2 == 0) {
            do {
                cconst.addBoolean(this.f16994do.mo18437return());
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL2 = this.f16994do.l();
                }
            } while (iL2 == this.f16996if);
            this.f16997new = iL2;
            return;
        }
        if (iM19964if2 != 2) {
            throw n.invalidWireType();
        }
        int iMo18427goto2 = this.f16994do.mo18427goto() + this.f16994do.m();
        do {
            cconst.addBoolean(this.f16994do.mo18437return());
        } while (this.f16994do.mo18427goto() < iMo18427goto2);
        m20613case(iMo18427goto2);
    }

    @Override // com.google.protobuf.Reader
    public ByteString readBytes() throws IOException {
        m20615else(2);
        return this.f16994do.mo18443throws();
    }

    @Override // com.google.protobuf.Reader
    public void readBytesList(List<ByteString> list) throws IOException {
        int iL;
        if (c2.m19964if(this.f16996if) != 2) {
            throw n.invalidWireType();
        }
        do {
            list.add(readBytes());
            if (this.f16994do.mo18442this()) {
                return;
            } else {
                iL = this.f16994do.l();
            }
        } while (iL == this.f16996if);
        this.f16997new = iL;
    }

    @Override // com.google.protobuf.Reader
    public double readDouble() throws IOException {
        m20615else(1);
        return this.f16994do.mo18422default();
    }

    @Override // com.google.protobuf.Reader
    public void readDoubleList(List<Double> list) throws IOException {
        int iL;
        int iL2;
        if (!(list instanceof Cswitch)) {
            int iM19964if = c2.m19964if(this.f16996if);
            if (iM19964if == 1) {
                do {
                    list.add(Double.valueOf(this.f16994do.mo18422default()));
                    if (this.f16994do.mo18442this()) {
                        return;
                    } else {
                        iL = this.f16994do.l();
                    }
                } while (iL == this.f16996if);
                this.f16997new = iL;
                return;
            }
            if (iM19964if != 2) {
                throw n.invalidWireType();
            }
            int iM = this.f16994do.m();
            m20620this(iM);
            int iMo18427goto = this.f16994do.mo18427goto() + iM;
            do {
                list.add(Double.valueOf(this.f16994do.mo18422default()));
            } while (this.f16994do.mo18427goto() < iMo18427goto);
            return;
        }
        Cswitch cswitch = (Cswitch) list;
        int iM19964if2 = c2.m19964if(this.f16996if);
        if (iM19964if2 == 1) {
            do {
                cswitch.addDouble(this.f16994do.mo18422default());
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL2 = this.f16994do.l();
                }
            } while (iL2 == this.f16996if);
            this.f16997new = iL2;
            return;
        }
        if (iM19964if2 != 2) {
            throw n.invalidWireType();
        }
        int iM2 = this.f16994do.m();
        m20620this(iM2);
        int iMo18427goto2 = this.f16994do.mo18427goto() + iM2;
        do {
            cswitch.addDouble(this.f16994do.mo18422default());
        } while (this.f16994do.mo18427goto() < iMo18427goto2);
    }

    @Override // com.google.protobuf.Reader
    public int readEnum() throws IOException {
        m20615else(0);
        return this.f16994do.mo18425extends();
    }

    @Override // com.google.protobuf.Reader
    public void readEnumList(List<Integer> list) throws IOException {
        int iL;
        int iL2;
        if (!(list instanceof m)) {
            int iM19964if = c2.m19964if(this.f16996if);
            if (iM19964if == 0) {
                do {
                    list.add(Integer.valueOf(this.f16994do.mo18425extends()));
                    if (this.f16994do.mo18442this()) {
                        return;
                    } else {
                        iL = this.f16994do.l();
                    }
                } while (iL == this.f16996if);
                this.f16997new = iL;
                return;
            }
            if (iM19964if != 2) {
                throw n.invalidWireType();
            }
            int iMo18427goto = this.f16994do.mo18427goto() + this.f16994do.m();
            do {
                list.add(Integer.valueOf(this.f16994do.mo18425extends()));
            } while (this.f16994do.mo18427goto() < iMo18427goto);
            m20613case(iMo18427goto);
            return;
        }
        m mVar = (m) list;
        int iM19964if2 = c2.m19964if(this.f16996if);
        if (iM19964if2 == 0) {
            do {
                mVar.addInt(this.f16994do.mo18425extends());
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL2 = this.f16994do.l();
                }
            } while (iL2 == this.f16996if);
            this.f16997new = iL2;
            return;
        }
        if (iM19964if2 != 2) {
            throw n.invalidWireType();
        }
        int iMo18427goto2 = this.f16994do.mo18427goto() + this.f16994do.m();
        do {
            mVar.addInt(this.f16994do.mo18425extends());
        } while (this.f16994do.mo18427goto() < iMo18427goto2);
        m20613case(iMo18427goto2);
    }

    @Override // com.google.protobuf.Reader
    public int readFixed32() throws IOException {
        m20615else(5);
        return this.f16994do.mo18426finally();
    }

    @Override // com.google.protobuf.Reader
    public void readFixed32List(List<Integer> list) throws IOException {
        int iL;
        int iL2;
        if (!(list instanceof m)) {
            int iM19964if = c2.m19964if(this.f16996if);
            if (iM19964if == 2) {
                int iM = this.f16994do.m();
                m20617goto(iM);
                int iMo18427goto = this.f16994do.mo18427goto() + iM;
                do {
                    list.add(Integer.valueOf(this.f16994do.mo18426finally()));
                } while (this.f16994do.mo18427goto() < iMo18427goto);
                return;
            }
            if (iM19964if != 5) {
                throw n.invalidWireType();
            }
            do {
                list.add(Integer.valueOf(this.f16994do.mo18426finally()));
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL = this.f16994do.l();
                }
            } while (iL == this.f16996if);
            this.f16997new = iL;
            return;
        }
        m mVar = (m) list;
        int iM19964if2 = c2.m19964if(this.f16996if);
        if (iM19964if2 == 2) {
            int iM2 = this.f16994do.m();
            m20617goto(iM2);
            int iMo18427goto2 = this.f16994do.mo18427goto() + iM2;
            do {
                mVar.addInt(this.f16994do.mo18426finally());
            } while (this.f16994do.mo18427goto() < iMo18427goto2);
            return;
        }
        if (iM19964if2 != 5) {
            throw n.invalidWireType();
        }
        do {
            mVar.addInt(this.f16994do.mo18426finally());
            if (this.f16994do.mo18442this()) {
                return;
            } else {
                iL2 = this.f16994do.l();
            }
        } while (iL2 == this.f16996if);
        this.f16997new = iL2;
    }

    @Override // com.google.protobuf.Reader
    public long readFixed64() throws IOException {
        m20615else(1);
        return this.f16994do.mo18433package();
    }

    @Override // com.google.protobuf.Reader
    public void readFixed64List(List<Long> list) throws IOException {
        int iL;
        int iL2;
        if (!(list instanceof v)) {
            int iM19964if = c2.m19964if(this.f16996if);
            if (iM19964if == 1) {
                do {
                    list.add(Long.valueOf(this.f16994do.mo18433package()));
                    if (this.f16994do.mo18442this()) {
                        return;
                    } else {
                        iL = this.f16994do.l();
                    }
                } while (iL == this.f16996if);
                this.f16997new = iL;
                return;
            }
            if (iM19964if != 2) {
                throw n.invalidWireType();
            }
            int iM = this.f16994do.m();
            m20620this(iM);
            int iMo18427goto = this.f16994do.mo18427goto() + iM;
            do {
                list.add(Long.valueOf(this.f16994do.mo18433package()));
            } while (this.f16994do.mo18427goto() < iMo18427goto);
            return;
        }
        v vVar = (v) list;
        int iM19964if2 = c2.m19964if(this.f16996if);
        if (iM19964if2 == 1) {
            do {
                vVar.addLong(this.f16994do.mo18433package());
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL2 = this.f16994do.l();
                }
            } while (iL2 == this.f16996if);
            this.f16997new = iL2;
            return;
        }
        if (iM19964if2 != 2) {
            throw n.invalidWireType();
        }
        int iM2 = this.f16994do.m();
        m20620this(iM2);
        int iMo18427goto2 = this.f16994do.mo18427goto() + iM2;
        do {
            vVar.addLong(this.f16994do.mo18433package());
        } while (this.f16994do.mo18427goto() < iMo18427goto2);
    }

    @Override // com.google.protobuf.Reader
    public float readFloat() throws IOException {
        m20615else(5);
        return this.f16994do.mo18434private();
    }

    @Override // com.google.protobuf.Reader
    public void readFloatList(List<Float> list) throws IOException {
        int iL;
        int iL2;
        if (!(list instanceof h)) {
            int iM19964if = c2.m19964if(this.f16996if);
            if (iM19964if == 2) {
                int iM = this.f16994do.m();
                m20617goto(iM);
                int iMo18427goto = this.f16994do.mo18427goto() + iM;
                do {
                    list.add(Float.valueOf(this.f16994do.mo18434private()));
                } while (this.f16994do.mo18427goto() < iMo18427goto);
                return;
            }
            if (iM19964if != 5) {
                throw n.invalidWireType();
            }
            do {
                list.add(Float.valueOf(this.f16994do.mo18434private()));
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL = this.f16994do.l();
                }
            } while (iL == this.f16996if);
            this.f16997new = iL;
            return;
        }
        h hVar = (h) list;
        int iM19964if2 = c2.m19964if(this.f16996if);
        if (iM19964if2 == 2) {
            int iM2 = this.f16994do.m();
            m20617goto(iM2);
            int iMo18427goto2 = this.f16994do.mo18427goto() + iM2;
            do {
                hVar.addFloat(this.f16994do.mo18434private());
            } while (this.f16994do.mo18427goto() < iMo18427goto2);
            return;
        }
        if (iM19964if2 != 5) {
            throw n.invalidWireType();
        }
        do {
            hVar.addFloat(this.f16994do.mo18434private());
            if (this.f16994do.mo18442this()) {
                return;
            } else {
                iL2 = this.f16994do.l();
            }
        } while (iL2 == this.f16996if);
        this.f16997new = iL2;
    }

    @Override // com.google.protobuf.Reader
    public <T> T readGroup(Class<T> cls, Cimplements cimplements) throws IOException {
        m20615else(3);
        return (T) m20616for(q0.m21002do().m21011this(cls), cimplements);
    }

    @Override // com.google.protobuf.Reader
    public <T> T readGroupBySchemaWithCheck(Schema<T> schema, Cimplements cimplements) throws IOException {
        m20615else(3);
        return (T) m20616for(schema, cimplements);
    }

    @Override // com.google.protobuf.Reader
    public <T> void readGroupList(List<T> list, Class<T> cls, Cimplements cimplements) throws IOException {
        readGroupList(list, q0.m21002do().m21011this(cls), cimplements);
    }

    @Override // com.google.protobuf.Reader
    public int readInt32() throws IOException {
        m20615else(0);
        return this.f16994do.mo18439strictfp();
    }

    @Override // com.google.protobuf.Reader
    public void readInt32List(List<Integer> list) throws IOException {
        int iL;
        int iL2;
        if (!(list instanceof m)) {
            int iM19964if = c2.m19964if(this.f16996if);
            if (iM19964if == 0) {
                do {
                    list.add(Integer.valueOf(this.f16994do.mo18439strictfp()));
                    if (this.f16994do.mo18442this()) {
                        return;
                    } else {
                        iL = this.f16994do.l();
                    }
                } while (iL == this.f16996if);
                this.f16997new = iL;
                return;
            }
            if (iM19964if != 2) {
                throw n.invalidWireType();
            }
            int iMo18427goto = this.f16994do.mo18427goto() + this.f16994do.m();
            do {
                list.add(Integer.valueOf(this.f16994do.mo18439strictfp()));
            } while (this.f16994do.mo18427goto() < iMo18427goto);
            m20613case(iMo18427goto);
            return;
        }
        m mVar = (m) list;
        int iM19964if2 = c2.m19964if(this.f16996if);
        if (iM19964if2 == 0) {
            do {
                mVar.addInt(this.f16994do.mo18439strictfp());
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL2 = this.f16994do.l();
                }
            } while (iL2 == this.f16996if);
            this.f16997new = iL2;
            return;
        }
        if (iM19964if2 != 2) {
            throw n.invalidWireType();
        }
        int iMo18427goto2 = this.f16994do.mo18427goto() + this.f16994do.m();
        do {
            mVar.addInt(this.f16994do.mo18439strictfp());
        } while (this.f16994do.mo18427goto() < iMo18427goto2);
        m20613case(iMo18427goto2);
    }

    @Override // com.google.protobuf.Reader
    public long readInt64() throws IOException {
        m20615else(0);
        return this.f16994do.mo18446volatile();
    }

    @Override // com.google.protobuf.Reader
    public void readInt64List(List<Long> list) throws IOException {
        int iL;
        int iL2;
        if (!(list instanceof v)) {
            int iM19964if = c2.m19964if(this.f16996if);
            if (iM19964if == 0) {
                do {
                    list.add(Long.valueOf(this.f16994do.mo18446volatile()));
                    if (this.f16994do.mo18442this()) {
                        return;
                    } else {
                        iL = this.f16994do.l();
                    }
                } while (iL == this.f16996if);
                this.f16997new = iL;
                return;
            }
            if (iM19964if != 2) {
                throw n.invalidWireType();
            }
            int iMo18427goto = this.f16994do.mo18427goto() + this.f16994do.m();
            do {
                list.add(Long.valueOf(this.f16994do.mo18446volatile()));
            } while (this.f16994do.mo18427goto() < iMo18427goto);
            m20613case(iMo18427goto);
            return;
        }
        v vVar = (v) list;
        int iM19964if2 = c2.m19964if(this.f16996if);
        if (iM19964if2 == 0) {
            do {
                vVar.addLong(this.f16994do.mo18446volatile());
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL2 = this.f16994do.l();
                }
            } while (iL2 == this.f16996if);
            this.f16997new = iL2;
            return;
        }
        if (iM19964if2 != 2) {
            throw n.invalidWireType();
        }
        int iMo18427goto2 = this.f16994do.mo18427goto() + this.f16994do.m();
        do {
            vVar.addLong(this.f16994do.mo18446volatile());
        } while (this.f16994do.mo18427goto() < iMo18427goto2);
        m20613case(iMo18427goto2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x005c, code lost:
    
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <K, V> void readMap(Map<K, V> map, y.Cif<K, V> cif, Cimplements cimplements) throws IOException {
        m20615else(2);
        int iMo18436public = this.f16994do.mo18436public(this.f16994do.m());
        Object objM20618if = cif.f17348if;
        Object objM20618if2 = cif.f17349new;
        while (true) {
            try {
                int fieldNumber = getFieldNumber();
                if (fieldNumber == Integer.MAX_VALUE || this.f16994do.mo18442this()) {
                    break;
                }
                if (fieldNumber == 1) {
                    objM20618if = m20618if(cif.f17346do, null, null);
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
                    objM20618if2 = m20618if(cif.f17347for, cif.f17349new.getClass(), cimplements);
                }
            } finally {
                this.f16994do.mo18431native(iMo18436public);
            }
        }
    }

    @Override // com.google.protobuf.Reader
    public <T> T readMessage(Class<T> cls, Cimplements cimplements) throws IOException {
        m20615else(2);
        return (T) m20619new(q0.m21002do().m21011this(cls), cimplements);
    }

    @Override // com.google.protobuf.Reader
    public <T> T readMessageBySchemaWithCheck(Schema<T> schema, Cimplements cimplements) throws IOException {
        m20615else(2);
        return (T) m20619new(schema, cimplements);
    }

    @Override // com.google.protobuf.Reader
    public <T> void readMessageList(List<T> list, Class<T> cls, Cimplements cimplements) throws IOException {
        readMessageList(list, q0.m21002do().m21011this(cls), cimplements);
    }

    @Override // com.google.protobuf.Reader
    public int readSFixed32() throws IOException {
        m20615else(5);
        return this.f16994do.f();
    }

    @Override // com.google.protobuf.Reader
    public void readSFixed32List(List<Integer> list) throws IOException {
        int iL;
        int iL2;
        if (!(list instanceof m)) {
            int iM19964if = c2.m19964if(this.f16996if);
            if (iM19964if == 2) {
                int iM = this.f16994do.m();
                m20617goto(iM);
                int iMo18427goto = this.f16994do.mo18427goto() + iM;
                do {
                    list.add(Integer.valueOf(this.f16994do.f()));
                } while (this.f16994do.mo18427goto() < iMo18427goto);
                return;
            }
            if (iM19964if != 5) {
                throw n.invalidWireType();
            }
            do {
                list.add(Integer.valueOf(this.f16994do.f()));
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL = this.f16994do.l();
                }
            } while (iL == this.f16996if);
            this.f16997new = iL;
            return;
        }
        m mVar = (m) list;
        int iM19964if2 = c2.m19964if(this.f16996if);
        if (iM19964if2 == 2) {
            int iM2 = this.f16994do.m();
            m20617goto(iM2);
            int iMo18427goto2 = this.f16994do.mo18427goto() + iM2;
            do {
                mVar.addInt(this.f16994do.f());
            } while (this.f16994do.mo18427goto() < iMo18427goto2);
            return;
        }
        if (iM19964if2 != 5) {
            throw n.invalidWireType();
        }
        do {
            mVar.addInt(this.f16994do.f());
            if (this.f16994do.mo18442this()) {
                return;
            } else {
                iL2 = this.f16994do.l();
            }
        } while (iL2 == this.f16996if);
        this.f16997new = iL2;
    }

    @Override // com.google.protobuf.Reader
    public long readSFixed64() throws IOException {
        m20615else(1);
        return this.f16994do.g();
    }

    @Override // com.google.protobuf.Reader
    public void readSFixed64List(List<Long> list) throws IOException {
        int iL;
        int iL2;
        if (!(list instanceof v)) {
            int iM19964if = c2.m19964if(this.f16996if);
            if (iM19964if == 1) {
                do {
                    list.add(Long.valueOf(this.f16994do.g()));
                    if (this.f16994do.mo18442this()) {
                        return;
                    } else {
                        iL = this.f16994do.l();
                    }
                } while (iL == this.f16996if);
                this.f16997new = iL;
                return;
            }
            if (iM19964if != 2) {
                throw n.invalidWireType();
            }
            int iM = this.f16994do.m();
            m20620this(iM);
            int iMo18427goto = this.f16994do.mo18427goto() + iM;
            do {
                list.add(Long.valueOf(this.f16994do.g()));
            } while (this.f16994do.mo18427goto() < iMo18427goto);
            return;
        }
        v vVar = (v) list;
        int iM19964if2 = c2.m19964if(this.f16996if);
        if (iM19964if2 == 1) {
            do {
                vVar.addLong(this.f16994do.g());
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL2 = this.f16994do.l();
                }
            } while (iL2 == this.f16996if);
            this.f16997new = iL2;
            return;
        }
        if (iM19964if2 != 2) {
            throw n.invalidWireType();
        }
        int iM2 = this.f16994do.m();
        m20620this(iM2);
        int iMo18427goto2 = this.f16994do.mo18427goto() + iM2;
        do {
            vVar.addLong(this.f16994do.g());
        } while (this.f16994do.mo18427goto() < iMo18427goto2);
    }

    @Override // com.google.protobuf.Reader
    public int readSInt32() throws IOException {
        m20615else(0);
        return this.f16994do.h();
    }

    @Override // com.google.protobuf.Reader
    public void readSInt32List(List<Integer> list) throws IOException {
        int iL;
        int iL2;
        if (!(list instanceof m)) {
            int iM19964if = c2.m19964if(this.f16996if);
            if (iM19964if == 0) {
                do {
                    list.add(Integer.valueOf(this.f16994do.h()));
                    if (this.f16994do.mo18442this()) {
                        return;
                    } else {
                        iL = this.f16994do.l();
                    }
                } while (iL == this.f16996if);
                this.f16997new = iL;
                return;
            }
            if (iM19964if != 2) {
                throw n.invalidWireType();
            }
            int iMo18427goto = this.f16994do.mo18427goto() + this.f16994do.m();
            do {
                list.add(Integer.valueOf(this.f16994do.h()));
            } while (this.f16994do.mo18427goto() < iMo18427goto);
            m20613case(iMo18427goto);
            return;
        }
        m mVar = (m) list;
        int iM19964if2 = c2.m19964if(this.f16996if);
        if (iM19964if2 == 0) {
            do {
                mVar.addInt(this.f16994do.h());
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL2 = this.f16994do.l();
                }
            } while (iL2 == this.f16996if);
            this.f16997new = iL2;
            return;
        }
        if (iM19964if2 != 2) {
            throw n.invalidWireType();
        }
        int iMo18427goto2 = this.f16994do.mo18427goto() + this.f16994do.m();
        do {
            mVar.addInt(this.f16994do.h());
        } while (this.f16994do.mo18427goto() < iMo18427goto2);
        m20613case(iMo18427goto2);
    }

    @Override // com.google.protobuf.Reader
    public long readSInt64() throws IOException {
        m20615else(0);
        return this.f16994do.i();
    }

    @Override // com.google.protobuf.Reader
    public void readSInt64List(List<Long> list) throws IOException {
        int iL;
        int iL2;
        if (!(list instanceof v)) {
            int iM19964if = c2.m19964if(this.f16996if);
            if (iM19964if == 0) {
                do {
                    list.add(Long.valueOf(this.f16994do.i()));
                    if (this.f16994do.mo18442this()) {
                        return;
                    } else {
                        iL = this.f16994do.l();
                    }
                } while (iL == this.f16996if);
                this.f16997new = iL;
                return;
            }
            if (iM19964if != 2) {
                throw n.invalidWireType();
            }
            int iMo18427goto = this.f16994do.mo18427goto() + this.f16994do.m();
            do {
                list.add(Long.valueOf(this.f16994do.i()));
            } while (this.f16994do.mo18427goto() < iMo18427goto);
            m20613case(iMo18427goto);
            return;
        }
        v vVar = (v) list;
        int iM19964if2 = c2.m19964if(this.f16996if);
        if (iM19964if2 == 0) {
            do {
                vVar.addLong(this.f16994do.i());
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL2 = this.f16994do.l();
                }
            } while (iL2 == this.f16996if);
            this.f16997new = iL2;
            return;
        }
        if (iM19964if2 != 2) {
            throw n.invalidWireType();
        }
        int iMo18427goto2 = this.f16994do.mo18427goto() + this.f16994do.m();
        do {
            vVar.addLong(this.f16994do.i());
        } while (this.f16994do.mo18427goto() < iMo18427goto2);
        m20613case(iMo18427goto2);
    }

    @Override // com.google.protobuf.Reader
    public String readString() throws IOException {
        m20615else(2);
        return this.f16994do.j();
    }

    @Override // com.google.protobuf.Reader
    public void readStringList(List<String> list) throws IOException {
        m20621try(list, false);
    }

    @Override // com.google.protobuf.Reader
    public void readStringListRequireUtf8(List<String> list) throws IOException {
        m20621try(list, true);
    }

    @Override // com.google.protobuf.Reader
    public String readStringRequireUtf8() throws IOException {
        m20615else(2);
        return this.f16994do.k();
    }

    @Override // com.google.protobuf.Reader
    public int readUInt32() throws IOException {
        m20615else(0);
        return this.f16994do.m();
    }

    @Override // com.google.protobuf.Reader
    public void readUInt32List(List<Integer> list) throws IOException {
        int iL;
        int iL2;
        if (!(list instanceof m)) {
            int iM19964if = c2.m19964if(this.f16996if);
            if (iM19964if == 0) {
                do {
                    list.add(Integer.valueOf(this.f16994do.m()));
                    if (this.f16994do.mo18442this()) {
                        return;
                    } else {
                        iL = this.f16994do.l();
                    }
                } while (iL == this.f16996if);
                this.f16997new = iL;
                return;
            }
            if (iM19964if != 2) {
                throw n.invalidWireType();
            }
            int iMo18427goto = this.f16994do.mo18427goto() + this.f16994do.m();
            do {
                list.add(Integer.valueOf(this.f16994do.m()));
            } while (this.f16994do.mo18427goto() < iMo18427goto);
            m20613case(iMo18427goto);
            return;
        }
        m mVar = (m) list;
        int iM19964if2 = c2.m19964if(this.f16996if);
        if (iM19964if2 == 0) {
            do {
                mVar.addInt(this.f16994do.m());
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL2 = this.f16994do.l();
                }
            } while (iL2 == this.f16996if);
            this.f16997new = iL2;
            return;
        }
        if (iM19964if2 != 2) {
            throw n.invalidWireType();
        }
        int iMo18427goto2 = this.f16994do.mo18427goto() + this.f16994do.m();
        do {
            mVar.addInt(this.f16994do.m());
        } while (this.f16994do.mo18427goto() < iMo18427goto2);
        m20613case(iMo18427goto2);
    }

    @Override // com.google.protobuf.Reader
    public long readUInt64() throws IOException {
        m20615else(0);
        return this.f16994do.n();
    }

    @Override // com.google.protobuf.Reader
    public void readUInt64List(List<Long> list) throws IOException {
        int iL;
        int iL2;
        if (!(list instanceof v)) {
            int iM19964if = c2.m19964if(this.f16996if);
            if (iM19964if == 0) {
                do {
                    list.add(Long.valueOf(this.f16994do.n()));
                    if (this.f16994do.mo18442this()) {
                        return;
                    } else {
                        iL = this.f16994do.l();
                    }
                } while (iL == this.f16996if);
                this.f16997new = iL;
                return;
            }
            if (iM19964if != 2) {
                throw n.invalidWireType();
            }
            int iMo18427goto = this.f16994do.mo18427goto() + this.f16994do.m();
            do {
                list.add(Long.valueOf(this.f16994do.n()));
            } while (this.f16994do.mo18427goto() < iMo18427goto);
            m20613case(iMo18427goto);
            return;
        }
        v vVar = (v) list;
        int iM19964if2 = c2.m19964if(this.f16996if);
        if (iM19964if2 == 0) {
            do {
                vVar.addLong(this.f16994do.n());
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL2 = this.f16994do.l();
                }
            } while (iL2 == this.f16996if);
            this.f16997new = iL2;
            return;
        }
        if (iM19964if2 != 2) {
            throw n.invalidWireType();
        }
        int iMo18427goto2 = this.f16994do.mo18427goto() + this.f16994do.m();
        do {
            vVar.addLong(this.f16994do.n());
        } while (this.f16994do.mo18427goto() < iMo18427goto2);
        m20613case(iMo18427goto2);
    }

    @Override // com.google.protobuf.Reader
    public boolean shouldDiscardUnknownFields() {
        return this.f16994do.s();
    }

    @Override // com.google.protobuf.Reader
    public boolean skipField() throws IOException {
        int i;
        if (this.f16994do.mo18442this() || (i = this.f16996if) == this.f16995for) {
            return false;
        }
        return this.f16994do.t(i);
    }

    /* renamed from: try, reason: not valid java name */
    public void m20621try(List<String> list, boolean z) throws IOException {
        int iL;
        int iL2;
        if (c2.m19964if(this.f16996if) != 2) {
            throw n.invalidWireType();
        }
        if (!(list instanceof LazyStringList) || z) {
            do {
                list.add(z ? readStringRequireUtf8() : readString());
                if (this.f16994do.mo18442this()) {
                    return;
                } else {
                    iL = this.f16994do.l();
                }
            } while (iL == this.f16996if);
            this.f16997new = iL;
            return;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        do {
            lazyStringList.add(readBytes());
            if (this.f16994do.mo18442this()) {
                return;
            } else {
                iL2 = this.f16994do.l();
            }
        } while (iL2 == this.f16996if);
        this.f16997new = iL2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.Reader
    public <T> void readGroupList(List<T> list, Schema<T> schema, Cimplements cimplements) throws IOException {
        int iL;
        if (c2.m19964if(this.f16996if) == 3) {
            int i = this.f16996if;
            do {
                list.add(m20616for(schema, cimplements));
                if (this.f16994do.mo18442this() || this.f16997new != 0) {
                    return;
                } else {
                    iL = this.f16994do.l();
                }
            } while (iL == i);
            this.f16997new = iL;
            return;
        }
        throw n.invalidWireType();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.Reader
    public <T> void readMessageList(List<T> list, Schema<T> schema, Cimplements cimplements) throws IOException {
        int iL;
        if (c2.m19964if(this.f16996if) == 2) {
            int i = this.f16996if;
            do {
                list.add(m20619new(schema, cimplements));
                if (this.f16994do.mo18442this() || this.f16997new != 0) {
                    return;
                } else {
                    iL = this.f16994do.l();
                }
            } while (iL == i);
            this.f16997new = iL;
            return;
        }
        throw n.invalidWireType();
    }
}
