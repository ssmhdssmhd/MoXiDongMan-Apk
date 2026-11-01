package com.google.protobuf;

import android.support.v4.t3;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.c2;
import java.io.IOException;
import java.util.Objects;

/* renamed from: com.google.protobuf.this, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cthis {

    /* renamed from: com.google.protobuf.this$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17244do;

        static {
            int[] iArr = new int[c2.Cif.values().length];
            f17244do = iArr;
            try {
                iArr[c2.Cif.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17244do[c2.Cif.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17244do[c2.Cif.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17244do[c2.Cif.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17244do[c2.Cif.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17244do[c2.Cif.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17244do[c2.Cif.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17244do[c2.Cif.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17244do[c2.Cif.FIXED32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17244do[c2.Cif.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17244do[c2.Cif.BOOL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17244do[c2.Cif.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f17244do[c2.Cif.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f17244do[c2.Cif.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f17244do[c2.Cif.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f17244do[c2.Cif.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f17244do[c2.Cif.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f17244do[c2.Cif.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    public static int a(int i, byte[] bArr, int i2, int i3, Cif cif) throws n {
        if (c2.m19962do(i) == 0) {
            throw n.invalidTag();
        }
        int iM19964if = c2.m19964if(i);
        if (iM19964if == 0) {
            return m21289instanceof(bArr, i2, cif);
        }
        if (iM19964if == 1) {
            return i2 + 8;
        }
        if (iM19964if == 2) {
            return m21295protected(bArr, i2, cif) + cif.f17245do;
        }
        if (iM19964if != 3) {
            if (iM19964if == 5) {
                return i2 + 4;
            }
            throw n.invalidTag();
        }
        int i4 = (i & (-8)) | 4;
        int i5 = 0;
        while (i2 < i3) {
            i2 = m21295protected(bArr, i2, cif);
            i5 = cif.f17245do;
            if (i5 == i4) {
                break;
            }
            i2 = a(i5, bArr, i2, i3, cif);
        }
        if (i2 > i3 || i5 != i4) {
            throw n.parseFailure();
        }
        return i2;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static int m21271abstract(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Cif cif) throws n {
        int iM21295protected = m21295protected(bArr, i2, cif);
        int i4 = cif.f17245do;
        if (i4 < 0) {
            throw n.negativeSize();
        }
        if (i4 == 0) {
            protobufList.add("");
        } else {
            protobufList.add(new String(bArr, iM21295protected, i4, Internal.f16554do));
            iM21295protected += i4;
        }
        while (iM21295protected < i3) {
            int iM21295protected2 = m21295protected(bArr, iM21295protected, cif);
            if (i != cif.f17245do) {
                break;
            }
            iM21295protected = m21295protected(bArr, iM21295protected2, cif);
            int i5 = cif.f17245do;
            if (i5 < 0) {
                throw n.negativeSize();
            }
            if (i5 == 0) {
                protobufList.add("");
            } else {
                protobufList.add(new String(bArr, iM21295protected, i5, Internal.f16554do));
                iM21295protected += i5;
            }
        }
        return iM21295protected;
    }

    /* renamed from: break, reason: not valid java name */
    public static long m21272break(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: case, reason: not valid java name */
    public static int m21273case(int i, byte[] bArr, int i2, int i3, GeneratedMessageLite.Ctry<?, ?> ctry, GeneratedMessageLite.Celse<?, ?> celse, s1<u1, u1> s1Var, Cif cif) throws IOException {
        Object objM19395return;
        FieldSet<GeneratedMessageLite.Ccase> fieldSet = ctry.f16482new;
        int i4 = i >>> 3;
        if (celse.f16476new.isRepeated() && celse.f16476new.isPacked()) {
            switch (Cdo.f17244do[celse.mo19452if().ordinal()]) {
                case 1:
                    Cswitch cswitch = new Cswitch();
                    int iM21291native = m21291native(bArr, i2, cswitch, cif);
                    fieldSet.b(celse.f16476new, cswitch);
                    return iM21291native;
                case 2:
                    h hVar = new h();
                    int iM21298static = m21298static(bArr, i2, hVar, cif);
                    fieldSet.b(celse.f16476new, hVar);
                    return iM21298static;
                case 3:
                case 4:
                    v vVar = new v();
                    int iM21281extends = m21281extends(bArr, i2, vVar, cif);
                    fieldSet.b(celse.f16476new, vVar);
                    return iM21281extends;
                case 5:
                case 6:
                    m mVar = new m();
                    int iM21278default = m21278default(bArr, i2, mVar, cif);
                    fieldSet.b(celse.f16476new, mVar);
                    return iM21278default;
                case 7:
                case 8:
                    v vVar2 = new v();
                    int iM21297return = m21297return(bArr, i2, vVar2, cif);
                    fieldSet.b(celse.f16476new, vVar2);
                    return iM21297return;
                case 9:
                case 10:
                    m mVar2 = new m();
                    int iM21296public = m21296public(bArr, i2, mVar2, cif);
                    fieldSet.b(celse.f16476new, mVar2);
                    return iM21296public;
                case 11:
                    Cconst cconst = new Cconst();
                    int iM21288import = m21288import(bArr, i2, cconst, cif);
                    fieldSet.b(celse.f16476new, cconst);
                    return iM21288import;
                case 12:
                    m mVar3 = new m();
                    int iM21301switch = m21301switch(bArr, i2, mVar3, cif);
                    fieldSet.b(celse.f16476new, mVar3);
                    return iM21301switch;
                case 13:
                    v vVar3 = new v();
                    int iM21305throws = m21305throws(bArr, i2, vVar3, cif);
                    fieldSet.b(celse.f16476new, vVar3);
                    return iM21305throws;
                case 14:
                    m mVar4 = new m();
                    int iM21278default2 = m21278default(bArr, i2, mVar4, cif);
                    u1 u1Var = ctry.f16465do;
                    u1 u1Var2 = (u1) y0.m21621package(i4, mVar4, celse.f16476new.getEnumType(), u1Var != u1.m21421for() ? u1Var : null, s1Var);
                    if (u1Var2 != null) {
                        ctry.f16465do = u1Var2;
                    }
                    fieldSet.b(celse.f16476new, mVar4);
                    return iM21278default2;
                default:
                    String strValueOf = String.valueOf(celse.f16476new.getLiteType());
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 23);
                    sb.append("Type cannot be packed: ");
                    sb.append(strValueOf);
                    throw new IllegalStateException(sb.toString());
            }
        }
        if (celse.mo19452if() != c2.Cif.ENUM) {
            switch (Cdo.f17244do[celse.mo19452if().ordinal()]) {
                case 1:
                    objValueOf = Double.valueOf(m21292new(bArr, i2));
                    i2 += 8;
                    break;
                case 2:
                    objValueOf = Float.valueOf(m21275class(bArr, i2));
                    i2 += 4;
                    break;
                case 3:
                case 4:
                    i2 = m21289instanceof(bArr, i2, cif);
                    objValueOf = Long.valueOf(cif.f17247if);
                    break;
                case 5:
                case 6:
                    i2 = m21295protected(bArr, i2, cif);
                    objValueOf = Integer.valueOf(cif.f17245do);
                    break;
                case 7:
                case 8:
                    objValueOf = Long.valueOf(m21272break(bArr, i2));
                    i2 += 8;
                    break;
                case 9:
                case 10:
                    objValueOf = Integer.valueOf(m21285goto(bArr, i2));
                    i2 += 4;
                    break;
                case 11:
                    i2 = m21289instanceof(bArr, i2, cif);
                    objValueOf = Boolean.valueOf(cif.f17247if != 0);
                    break;
                case 12:
                    i2 = m21295protected(bArr, i2, cif);
                    objValueOf = Integer.valueOf(CodedInputStream.m18414if(cif.f17245do));
                    break;
                case 13:
                    i2 = m21289instanceof(bArr, i2, cif);
                    objValueOf = Long.valueOf(CodedInputStream.m18413for(cif.f17247if));
                    break;
                case 14:
                    throw new IllegalStateException("Shouldn't reach here.");
                case 15:
                    i2 = m21286if(bArr, i2, cif);
                    objValueOf = cif.f17246for;
                    break;
                case 16:
                    i2 = m21294private(bArr, i2, cif);
                    objValueOf = cif.f17246for;
                    break;
                case 17:
                    i2 = m21282final(q0.m21002do().m21011this(celse.mo19450for().getClass()), bArr, i2, i3, (i4 << 3) | 4, cif);
                    objValueOf = cif.f17246for;
                    break;
                case 18:
                    i2 = m21304throw(q0.m21002do().m21011this(celse.mo19450for().getClass()), bArr, i2, i3, cif);
                    objValueOf = cif.f17246for;
                    break;
            }
        } else {
            i2 = m21295protected(bArr, i2, cif);
            if (celse.f16476new.getEnumType().findValueByNumber(cif.f17245do) == null) {
                u1 u1VarM21420final = ctry.f16465do;
                if (u1VarM21420final == u1.m21421for()) {
                    u1VarM21420final = u1.m21420final();
                    ctry.f16465do = u1VarM21420final;
                }
                y0.d(i4, cif.f17245do, u1VarM21420final, s1Var);
                return i2;
            }
            objValueOf = Integer.valueOf(cif.f17245do);
        }
        if (celse.mo19444case()) {
            fieldSet.m19388goto(celse.f16476new, objValueOf);
        } else {
            int i5 = Cdo.f17244do[celse.mo19452if().ordinal()];
            if ((i5 == 17 || i5 == 18) && (objM19395return = fieldSet.m19395return(celse.f16476new)) != null) {
                objValueOf = Internal.m19626static(objM19395return, objValueOf);
            }
            fieldSet.b(celse.f16476new, objValueOf);
        }
        return i2;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m21274catch(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Cif cif) {
        v vVar = (v) protobufList;
        vVar.addLong(m21272break(bArr, i2));
        int i4 = i2 + 8;
        while (i4 < i3) {
            int iM21295protected = m21295protected(bArr, i4, cif);
            if (i != cif.f17245do) {
                break;
            }
            vVar.addLong(m21272break(bArr, iM21295protected));
            i4 = iM21295protected + 8;
        }
        return i4;
    }

    /* renamed from: class, reason: not valid java name */
    public static float m21275class(byte[] bArr, int i) {
        return Float.intBitsToFloat(m21285goto(bArr, i));
    }

    /* renamed from: const, reason: not valid java name */
    public static int m21276const(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Cif cif) {
        h hVar = (h) protobufList;
        hVar.addFloat(m21275class(bArr, i2));
        int i4 = i2 + 4;
        while (i4 < i3) {
            int iM21295protected = m21295protected(bArr, i4, cif);
            if (i != cif.f17245do) {
                break;
            }
            hVar.addFloat(m21275class(bArr, iM21295protected));
            i4 = iM21295protected + 4;
        }
        return i4;
    }

    /* renamed from: continue, reason: not valid java name */
    public static int m21277continue(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Cif cif) throws n {
        int iM21295protected = m21295protected(bArr, i2, cif);
        int i4 = cif.f17245do;
        if (i4 < 0) {
            throw n.negativeSize();
        }
        if (i4 == 0) {
            protobufList.add("");
        } else {
            int i5 = iM21295protected + i4;
            if (!a2.m19708return(bArr, iM21295protected, i5)) {
                throw n.invalidUtf8();
            }
            protobufList.add(new String(bArr, iM21295protected, i4, Internal.f16554do));
            iM21295protected = i5;
        }
        while (iM21295protected < i3) {
            int iM21295protected2 = m21295protected(bArr, iM21295protected, cif);
            if (i != cif.f17245do) {
                break;
            }
            iM21295protected = m21295protected(bArr, iM21295protected2, cif);
            int i6 = cif.f17245do;
            if (i6 < 0) {
                throw n.negativeSize();
            }
            if (i6 == 0) {
                protobufList.add("");
            } else {
                int i7 = iM21295protected + i6;
                if (!a2.m19708return(bArr, iM21295protected, i7)) {
                    throw n.invalidUtf8();
                }
                protobufList.add(new String(bArr, iM21295protected, i6, Internal.f16554do));
                iM21295protected = i7;
            }
        }
        return iM21295protected;
    }

    /* renamed from: default, reason: not valid java name */
    public static int m21278default(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Cif cif) throws IOException {
        m mVar = (m) protobufList;
        int iM21295protected = m21295protected(bArr, i, cif);
        int i2 = cif.f17245do + iM21295protected;
        while (iM21295protected < i2) {
            iM21295protected = m21295protected(bArr, iM21295protected, cif);
            mVar.addInt(cif.f17245do);
        }
        if (iM21295protected == i2) {
            return iM21295protected;
        }
        throw n.truncatedMessage();
    }

    /* renamed from: do, reason: not valid java name */
    public static int m21279do(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Cif cif) {
        Cconst cconst = (Cconst) protobufList;
        int iM21289instanceof = m21289instanceof(bArr, i2, cif);
        cconst.addBoolean(cif.f17247if != 0);
        while (iM21289instanceof < i3) {
            int iM21295protected = m21295protected(bArr, iM21289instanceof, cif);
            if (i != cif.f17245do) {
                break;
            }
            iM21289instanceof = m21289instanceof(bArr, iM21295protected, cif);
            cconst.addBoolean(cif.f17247if != 0);
        }
        return iM21289instanceof;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m21280else(int i, byte[] bArr, int i2, int i3, Object obj, MessageLite messageLite, s1<u1, u1> s1Var, Cif cif) throws IOException {
        GeneratedMessageLite.Celse celseM20609for = cif.f17248new.m20609for(messageLite, i >>> 3);
        if (celseM20609for == null) {
            return m21308volatile(i, bArr, i2, i3, e0.m20306const(obj), cif);
        }
        GeneratedMessageLite.Ctry ctry = (GeneratedMessageLite.Ctry) obj;
        ctry.g();
        return m21273case(i, bArr, i2, i3, ctry, celseM20609for, s1Var, cif);
    }

    /* renamed from: extends, reason: not valid java name */
    public static int m21281extends(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Cif cif) throws IOException {
        v vVar = (v) protobufList;
        int iM21295protected = m21295protected(bArr, i, cif);
        int i2 = cif.f17245do + iM21295protected;
        while (iM21295protected < i2) {
            iM21295protected = m21289instanceof(bArr, iM21295protected, cif);
            vVar.addLong(cif.f17247if);
        }
        if (iM21295protected == i2) {
            return iM21295protected;
        }
        throw n.truncatedMessage();
    }

    /* renamed from: final, reason: not valid java name */
    public static int m21282final(Schema schema, byte[] bArr, int i, int i2, int i3, Cif cif) throws IOException {
        e0 e0Var = (e0) schema;
        Object objNewInstance = e0Var.newInstance();
        int iH = e0Var.h(objNewInstance, bArr, i, i2, i3, cif);
        e0Var.makeImmutable(objNewInstance);
        cif.f17246for = objNewInstance;
        return iH;
    }

    /* renamed from: finally, reason: not valid java name */
    public static int m21283finally(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Cif cif) {
        m mVar = (m) protobufList;
        int iM21295protected = m21295protected(bArr, i2, cif);
        mVar.addInt(CodedInputStream.m18414if(cif.f17245do));
        while (iM21295protected < i3) {
            int iM21295protected2 = m21295protected(bArr, iM21295protected, cif);
            if (i != cif.f17245do) {
                break;
            }
            iM21295protected = m21295protected(bArr, iM21295protected2, cif);
            mVar.addInt(CodedInputStream.m18414if(cif.f17245do));
        }
        return iM21295protected;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m21284for(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Cif cif) throws n {
        int iM21295protected = m21295protected(bArr, i2, cif);
        int i4 = cif.f17245do;
        if (i4 < 0) {
            throw n.negativeSize();
        }
        if (i4 > bArr.length - iM21295protected) {
            throw n.truncatedMessage();
        }
        if (i4 == 0) {
            protobufList.add(ByteString.EMPTY);
        } else {
            protobufList.add(ByteString.copyFrom(bArr, iM21295protected, i4));
            iM21295protected += i4;
        }
        while (iM21295protected < i3) {
            int iM21295protected2 = m21295protected(bArr, iM21295protected, cif);
            if (i != cif.f17245do) {
                break;
            }
            iM21295protected = m21295protected(bArr, iM21295protected2, cif);
            int i5 = cif.f17245do;
            if (i5 < 0) {
                throw n.negativeSize();
            }
            if (i5 > bArr.length - iM21295protected) {
                throw n.truncatedMessage();
            }
            if (i5 == 0) {
                protobufList.add(ByteString.EMPTY);
            } else {
                protobufList.add(ByteString.copyFrom(bArr, iM21295protected, i5));
                iM21295protected += i5;
            }
        }
        return iM21295protected;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m21285goto(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m21286if(byte[] bArr, int i, Cif cif) throws n {
        int iM21295protected = m21295protected(bArr, i, cif);
        int i2 = cif.f17245do;
        if (i2 < 0) {
            throw n.negativeSize();
        }
        if (i2 > bArr.length - iM21295protected) {
            throw n.truncatedMessage();
        }
        if (i2 == 0) {
            cif.f17246for = ByteString.EMPTY;
            return iM21295protected;
        }
        cif.f17246for = ByteString.copyFrom(bArr, iM21295protected, i2);
        return iM21295protected + i2;
    }

    /* renamed from: implements, reason: not valid java name */
    public static int m21287implements(long j, byte[] bArr, int i, Cif cif) {
        int i2 = i + 1;
        byte b = bArr[i];
        long j2 = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i3 = 7;
        while (b < 0) {
            int i4 = i2 + 1;
            byte b2 = bArr[i2];
            i3 += 7;
            j2 |= (b2 & Byte.MAX_VALUE) << i3;
            i2 = i4;
            b = b2;
        }
        cif.f17247if = j2;
        return i2;
    }

    /* renamed from: import, reason: not valid java name */
    public static int m21288import(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Cif cif) throws IOException {
        Cconst cconst = (Cconst) protobufList;
        int iM21295protected = m21295protected(bArr, i, cif);
        int i2 = cif.f17245do + iM21295protected;
        while (iM21295protected < i2) {
            iM21295protected = m21289instanceof(bArr, iM21295protected, cif);
            cconst.addBoolean(cif.f17247if != 0);
        }
        if (iM21295protected == i2) {
            return iM21295protected;
        }
        throw n.truncatedMessage();
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static int m21289instanceof(byte[] bArr, int i, Cif cif) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j < 0) {
            return m21287implements(j, bArr, i2, cif);
        }
        cif.f17247if = j;
        return i2;
    }

    /* renamed from: interface, reason: not valid java name */
    public static int m21290interface(int i, byte[] bArr, int i2, Cif cif) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            cif.f17245do = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            cif.f17245do = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            cif.f17245do = i7 | (b3 << t3.f6382default);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            cif.f17245do = i9 | (b4 << t3.f6403strictfp);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                cif.f17245do = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static int m21291native(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Cif cif) throws IOException {
        Cswitch cswitch = (Cswitch) protobufList;
        int iM21295protected = m21295protected(bArr, i, cif);
        int i2 = cif.f17245do + iM21295protected;
        while (iM21295protected < i2) {
            cswitch.addDouble(m21292new(bArr, iM21295protected));
            iM21295protected += 8;
        }
        if (iM21295protected == i2) {
            return iM21295protected;
        }
        throw n.truncatedMessage();
    }

    /* renamed from: new, reason: not valid java name */
    public static double m21292new(byte[] bArr, int i) {
        return Double.longBitsToDouble(m21272break(bArr, i));
    }

    /* renamed from: package, reason: not valid java name */
    public static int m21293package(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Cif cif) {
        v vVar = (v) protobufList;
        int iM21289instanceof = m21289instanceof(bArr, i2, cif);
        vVar.addLong(CodedInputStream.m18413for(cif.f17247if));
        while (iM21289instanceof < i3) {
            int iM21295protected = m21295protected(bArr, iM21289instanceof, cif);
            if (i != cif.f17245do) {
                break;
            }
            iM21289instanceof = m21289instanceof(bArr, iM21295protected, cif);
            vVar.addLong(CodedInputStream.m18413for(cif.f17247if));
        }
        return iM21289instanceof;
    }

    /* renamed from: private, reason: not valid java name */
    public static int m21294private(byte[] bArr, int i, Cif cif) throws n {
        int iM21295protected = m21295protected(bArr, i, cif);
        int i2 = cif.f17245do;
        if (i2 < 0) {
            throw n.negativeSize();
        }
        if (i2 == 0) {
            cif.f17246for = "";
            return iM21295protected;
        }
        cif.f17246for = new String(bArr, iM21295protected, i2, Internal.f16554do);
        return iM21295protected + i2;
    }

    /* renamed from: protected, reason: not valid java name */
    public static int m21295protected(byte[] bArr, int i, Cif cif) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return m21290interface(b, bArr, i2, cif);
        }
        cif.f17245do = b;
        return i2;
    }

    /* renamed from: public, reason: not valid java name */
    public static int m21296public(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Cif cif) throws IOException {
        m mVar = (m) protobufList;
        int iM21295protected = m21295protected(bArr, i, cif);
        int i2 = cif.f17245do + iM21295protected;
        while (iM21295protected < i2) {
            mVar.addInt(m21285goto(bArr, iM21295protected));
            iM21295protected += 4;
        }
        if (iM21295protected == i2) {
            return iM21295protected;
        }
        throw n.truncatedMessage();
    }

    /* renamed from: return, reason: not valid java name */
    public static int m21297return(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Cif cif) throws IOException {
        v vVar = (v) protobufList;
        int iM21295protected = m21295protected(bArr, i, cif);
        int i2 = cif.f17245do + iM21295protected;
        while (iM21295protected < i2) {
            vVar.addLong(m21272break(bArr, iM21295protected));
            iM21295protected += 8;
        }
        if (iM21295protected == i2) {
            return iM21295protected;
        }
        throw n.truncatedMessage();
    }

    /* renamed from: static, reason: not valid java name */
    public static int m21298static(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Cif cif) throws IOException {
        h hVar = (h) protobufList;
        int iM21295protected = m21295protected(bArr, i, cif);
        int i2 = cif.f17245do + iM21295protected;
        while (iM21295protected < i2) {
            hVar.addFloat(m21275class(bArr, iM21295protected));
            iM21295protected += 4;
        }
        if (iM21295protected == i2) {
            return iM21295protected;
        }
        throw n.truncatedMessage();
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static int m21299strictfp(byte[] bArr, int i, Cif cif) throws n {
        int iM21295protected = m21295protected(bArr, i, cif);
        int i2 = cif.f17245do;
        if (i2 < 0) {
            throw n.negativeSize();
        }
        if (i2 == 0) {
            cif.f17246for = "";
            return iM21295protected;
        }
        cif.f17246for = a2.m19702goto(bArr, iM21295protected, i2);
        return iM21295protected + i2;
    }

    /* renamed from: super, reason: not valid java name */
    public static int m21300super(Schema schema, int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Cif cif) throws IOException {
        int i4 = (i & (-8)) | 4;
        int iM21282final = m21282final(schema, bArr, i2, i3, i4, cif);
        protobufList.add(cif.f17246for);
        while (iM21282final < i3) {
            int iM21295protected = m21295protected(bArr, iM21282final, cif);
            if (i != cif.f17245do) {
                break;
            }
            iM21282final = m21282final(schema, bArr, iM21295protected, i3, i4, cif);
            protobufList.add(cif.f17246for);
        }
        return iM21282final;
    }

    /* renamed from: switch, reason: not valid java name */
    public static int m21301switch(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Cif cif) throws IOException {
        m mVar = (m) protobufList;
        int iM21295protected = m21295protected(bArr, i, cif);
        int i2 = cif.f17245do + iM21295protected;
        while (iM21295protected < i2) {
            iM21295protected = m21295protected(bArr, iM21295protected, cif);
            mVar.addInt(CodedInputStream.m18414if(cif.f17245do));
        }
        if (iM21295protected == i2) {
            return iM21295protected;
        }
        throw n.truncatedMessage();
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static int m21302synchronized(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Cif cif) {
        v vVar = (v) protobufList;
        int iM21289instanceof = m21289instanceof(bArr, i2, cif);
        vVar.addLong(cif.f17247if);
        while (iM21289instanceof < i3) {
            int iM21295protected = m21295protected(bArr, iM21289instanceof, cif);
            if (i != cif.f17245do) {
                break;
            }
            iM21289instanceof = m21289instanceof(bArr, iM21295protected, cif);
            vVar.addLong(cif.f17247if);
        }
        return iM21289instanceof;
    }

    /* renamed from: this, reason: not valid java name */
    public static int m21303this(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Cif cif) {
        m mVar = (m) protobufList;
        mVar.addInt(m21285goto(bArr, i2));
        int i4 = i2 + 4;
        while (i4 < i3) {
            int iM21295protected = m21295protected(bArr, i4, cif);
            if (i != cif.f17245do) {
                break;
            }
            mVar.addInt(m21285goto(bArr, iM21295protected));
            i4 = iM21295protected + 4;
        }
        return i4;
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m21304throw(Schema schema, byte[] bArr, int i, int i2, Cif cif) throws IOException {
        int iM21290interface = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iM21290interface = m21290interface(i3, bArr, iM21290interface, cif);
            i3 = cif.f17245do;
        }
        int i4 = iM21290interface;
        if (i3 < 0 || i3 > i2 - i4) {
            throw n.truncatedMessage();
        }
        Object objNewInstance = schema.newInstance();
        int i5 = i3 + i4;
        schema.mergeFrom(objNewInstance, bArr, i4, i5, cif);
        schema.makeImmutable(objNewInstance);
        cif.f17246for = objNewInstance;
        return i5;
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m21305throws(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Cif cif) throws IOException {
        v vVar = (v) protobufList;
        int iM21295protected = m21295protected(bArr, i, cif);
        int i2 = cif.f17245do + iM21295protected;
        while (iM21295protected < i2) {
            iM21295protected = m21289instanceof(bArr, iM21295protected, cif);
            vVar.addLong(CodedInputStream.m18413for(cif.f17247if));
        }
        if (iM21295protected == i2) {
            return iM21295protected;
        }
        throw n.truncatedMessage();
    }

    /* renamed from: transient, reason: not valid java name */
    public static int m21306transient(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Cif cif) {
        m mVar = (m) protobufList;
        int iM21295protected = m21295protected(bArr, i2, cif);
        mVar.addInt(cif.f17245do);
        while (iM21295protected < i3) {
            int iM21295protected2 = m21295protected(bArr, iM21295protected, cif);
            if (i != cif.f17245do) {
                break;
            }
            iM21295protected = m21295protected(bArr, iM21295protected2, cif);
            mVar.addInt(cif.f17245do);
        }
        return iM21295protected;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m21307try(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Cif cif) {
        Cswitch cswitch = (Cswitch) protobufList;
        cswitch.addDouble(m21292new(bArr, i2));
        int i4 = i2 + 8;
        while (i4 < i3) {
            int iM21295protected = m21295protected(bArr, i4, cif);
            if (i != cif.f17245do) {
                break;
            }
            cswitch.addDouble(m21292new(bArr, iM21295protected));
            i4 = iM21295protected + 8;
        }
        return i4;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static int m21308volatile(int i, byte[] bArr, int i2, int i3, u1 u1Var, Cif cif) throws n {
        if (c2.m19962do(i) == 0) {
            throw n.invalidTag();
        }
        int iM19964if = c2.m19964if(i);
        if (iM19964if == 0) {
            int iM21289instanceof = m21289instanceof(bArr, i2, cif);
            u1Var.m21438while(i, Long.valueOf(cif.f17247if));
            return iM21289instanceof;
        }
        if (iM19964if == 1) {
            u1Var.m21438while(i, Long.valueOf(m21272break(bArr, i2)));
            return i2 + 8;
        }
        if (iM19964if == 2) {
            int iM21295protected = m21295protected(bArr, i2, cif);
            int i4 = cif.f17245do;
            if (i4 < 0) {
                throw n.negativeSize();
            }
            if (i4 > bArr.length - iM21295protected) {
                throw n.truncatedMessage();
            }
            if (i4 == 0) {
                u1Var.m21438while(i, ByteString.EMPTY);
            } else {
                u1Var.m21438while(i, ByteString.copyFrom(bArr, iM21295protected, i4));
            }
            return iM21295protected + i4;
        }
        if (iM19964if != 3) {
            if (iM19964if != 5) {
                throw n.invalidTag();
            }
            u1Var.m21438while(i, Integer.valueOf(m21285goto(bArr, i2)));
            return i2 + 4;
        }
        u1 u1VarM21420final = u1.m21420final();
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iM21295protected2 = m21295protected(bArr, i2, cif);
            int i7 = cif.f17245do;
            if (i7 == i5) {
                i6 = i7;
                i2 = iM21295protected2;
                break;
            }
            i6 = i7;
            i2 = m21308volatile(i7, bArr, iM21295protected2, i3, u1VarM21420final, cif);
        }
        if (i2 > i3 || i6 != i5) {
            throw n.parseFailure();
        }
        u1Var.m21438while(i, u1VarM21420final);
        return i2;
    }

    /* renamed from: while, reason: not valid java name */
    public static int m21309while(Schema<?> schema, int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Cif cif) throws IOException {
        int iM21304throw = m21304throw(schema, bArr, i2, i3, cif);
        protobufList.add(cif.f17246for);
        while (iM21304throw < i3) {
            int iM21295protected = m21295protected(bArr, iM21304throw, cif);
            if (i != cif.f17245do) {
                break;
            }
            iM21304throw = m21304throw(schema, bArr, iM21295protected, i3, cif);
            protobufList.add(cif.f17246for);
        }
        return iM21304throw;
    }

    /* renamed from: com.google.protobuf.this$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public int f17245do;

        /* renamed from: for, reason: not valid java name */
        public Object f17246for;

        /* renamed from: if, reason: not valid java name */
        public long f17247if;

        /* renamed from: new, reason: not valid java name */
        public final Cimplements f17248new;

        public Cif() {
            this.f17248new = Cimplements.m20607new();
        }

        public Cif(Cimplements cimplements) {
            Objects.requireNonNull(cimplements);
            this.f17248new = cimplements;
        }
    }
}
