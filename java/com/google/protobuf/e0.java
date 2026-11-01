package com.google.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.Cthis;
import com.google.protobuf.FieldSet;
import com.google.protobuf.Internal;
import com.google.protobuf.Writer;
import com.google.protobuf.c2;
import com.google.protobuf.n;
import com.google.protobuf.y;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
final class e0<T> implements Schema<T> {

    /* renamed from: extends, reason: not valid java name */
    public static final int f16848extends = 51;

    /* renamed from: import, reason: not valid java name */
    private static final int f16850import = 3;

    /* renamed from: native, reason: not valid java name */
    private static final int f16851native = 20;

    /* renamed from: public, reason: not valid java name */
    private static final int f16852public = 1048575;

    /* renamed from: return, reason: not valid java name */
    private static final int f16853return = 267386880;

    /* renamed from: static, reason: not valid java name */
    private static final int f16854static = 268435456;

    /* renamed from: switch, reason: not valid java name */
    private static final int f16855switch = 536870912;

    /* renamed from: throws, reason: not valid java name */
    private static final int f16856throws = 1048575;

    /* renamed from: break, reason: not valid java name */
    private final int[] f16857break;

    /* renamed from: case, reason: not valid java name */
    private final boolean f16858case;

    /* renamed from: catch, reason: not valid java name */
    private final int f16859catch;

    /* renamed from: class, reason: not valid java name */
    private final int f16860class;

    /* renamed from: const, reason: not valid java name */
    private final NewInstanceSchema f16861const;

    /* renamed from: do, reason: not valid java name */
    private final int[] f16862do;

    /* renamed from: else, reason: not valid java name */
    private final boolean f16863else;

    /* renamed from: final, reason: not valid java name */
    private final t f16864final;

    /* renamed from: for, reason: not valid java name */
    private final int f16865for;

    /* renamed from: goto, reason: not valid java name */
    private final boolean f16866goto;

    /* renamed from: if, reason: not valid java name */
    private final Object[] f16867if;

    /* renamed from: new, reason: not valid java name */
    private final int f16868new;

    /* renamed from: super, reason: not valid java name */
    private final s1<?, ?> f16869super;

    /* renamed from: this, reason: not valid java name */
    private final boolean f16870this;

    /* renamed from: throw, reason: not valid java name */
    private final Cinstanceof<?> f16871throw;

    /* renamed from: try, reason: not valid java name */
    private final MessageLite f16872try;

    /* renamed from: while, reason: not valid java name */
    private final MapFieldSchema f16873while;

    /* renamed from: default, reason: not valid java name */
    private static final int[] f16847default = new int[0];

    /* renamed from: finally, reason: not valid java name */
    private static final Unsafe f16849finally = z1.e();

    /* renamed from: com.google.protobuf.e0$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f16874do;

        static {
            int[] iArr = new int[c2.Cif.values().length];
            f16874do = iArr;
            try {
                iArr[c2.Cif.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16874do[c2.Cif.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16874do[c2.Cif.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16874do[c2.Cif.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16874do[c2.Cif.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16874do[c2.Cif.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16874do[c2.Cif.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16874do[c2.Cif.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16874do[c2.Cif.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f16874do[c2.Cif.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f16874do[c2.Cif.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f16874do[c2.Cif.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f16874do[c2.Cif.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f16874do[c2.Cif.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f16874do[c2.Cif.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f16874do[c2.Cif.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f16874do[c2.Cif.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private e0(int[] iArr, Object[] objArr, int i, int i2, MessageLite messageLite, boolean z, boolean z2, int[] iArr2, int i3, int i4, NewInstanceSchema newInstanceSchema, t tVar, s1<?, ?> s1Var, Cinstanceof<?> cinstanceof, MapFieldSchema mapFieldSchema) {
        this.f16862do = iArr;
        this.f16867if = objArr;
        this.f16865for = i;
        this.f16868new = i2;
        this.f16863else = messageLite instanceof GeneratedMessageLite;
        this.f16866goto = z;
        this.f16858case = cinstanceof != null && cinstanceof.mo19681try(messageLite);
        this.f16870this = z2;
        this.f16857break = iArr2;
        this.f16859catch = i3;
        this.f16860class = i4;
        this.f16861const = newInstanceSchema;
        this.f16864final = tVar;
        this.f16869super = s1Var;
        this.f16871throw = cinstanceof;
        this.f16872try = messageLite;
        this.f16873while = mapFieldSchema;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void A(T t, Writer writer) throws IOException {
        Iterator itM19389import;
        Map.Entry<?, ?> entry;
        D(this.f16869super, t, writer);
        if (this.f16858case) {
            FieldSet<T> fieldSetMo19676for = this.f16871throw.mo19676for(t);
            if (fieldSetMo19676for.m19392private()) {
                itM19389import = null;
                entry = null;
            } else {
                itM19389import = fieldSetMo19676for.m19389import();
                entry = (Map.Entry) itM19389import.next();
            }
        }
        for (int length = this.f16862do.length - 3; length >= 0; length -= 3) {
            int iX = x(length);
            int iM20318instanceof = m20318instanceof(length);
            while (entry != null && this.f16871throw.mo19674do(entry) > iM20318instanceof) {
                this.f16871throw.mo19671break(writer, entry);
                entry = itM19389import.hasNext() ? (Map.Entry) itM19389import.next() : null;
            }
            switch (w(iX)) {
                case 0:
                    if (m20325public(t, length)) {
                        writer.writeDouble(iM20318instanceof, m20336try(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (m20325public(t, length)) {
                        writer.writeFloat(iM20318instanceof, m20332this(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (m20325public(t, length)) {
                        writer.writeInt64(iM20318instanceof, m20323private(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (m20325public(t, length)) {
                        writer.writeUInt64(iM20318instanceof, m20323private(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (m20325public(t, length)) {
                        writer.writeInt32(iM20318instanceof, m20317import(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (m20325public(t, length)) {
                        writer.writeFixed64(iM20318instanceof, m20323private(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (m20325public(t, length)) {
                        writer.writeFixed32(iM20318instanceof, m20317import(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (m20325public(t, length)) {
                        writer.writeBool(iM20318instanceof, m20315if(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (m20325public(t, length)) {
                        C(iM20318instanceof, z1.b(t, m20331synchronized(iX)), writer);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (m20325public(t, length)) {
                        writer.writeMessage(iM20318instanceof, z1.b(t, m20331synchronized(iX)), m20305class(length));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (m20325public(t, length)) {
                        writer.writeBytes(iM20318instanceof, (ByteString) z1.b(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (m20325public(t, length)) {
                        writer.writeUInt32(iM20318instanceof, m20317import(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (m20325public(t, length)) {
                        writer.writeEnum(iM20318instanceof, m20317import(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (m20325public(t, length)) {
                        writer.writeSFixed32(iM20318instanceof, m20317import(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (m20325public(t, length)) {
                        writer.writeSFixed64(iM20318instanceof, m20323private(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (m20325public(t, length)) {
                        writer.writeSInt32(iM20318instanceof, m20317import(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (m20325public(t, length)) {
                        writer.writeSInt64(iM20318instanceof, m20323private(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (m20325public(t, length)) {
                        writer.writeGroup(iM20318instanceof, z1.b(t, m20331synchronized(iX)), m20305class(length));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    y0.l(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 19:
                    y0.t(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 20:
                    y0.z(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 21:
                    y0.S(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 22:
                    y0.x(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 23:
                    y0.r(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 24:
                    y0.p(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 25:
                    y0.h(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 26:
                    y0.O(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer);
                    break;
                case 27:
                    y0.D(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, m20305class(length));
                    break;
                case 28:
                    y0.j(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer);
                    break;
                case 29:
                    y0.Q(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 30:
                    y0.n(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 31:
                    y0.F(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 32:
                    y0.H(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 33:
                    y0.J(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 34:
                    y0.L(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 35:
                    y0.l(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 36:
                    y0.t(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 37:
                    y0.z(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 38:
                    y0.S(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 39:
                    y0.x(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 40:
                    y0.r(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 41:
                    y0.p(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 42:
                    y0.h(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 43:
                    y0.Q(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 44:
                    y0.n(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 45:
                    y0.F(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 46:
                    y0.H(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 47:
                    y0.J(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 48:
                    y0.L(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 49:
                    y0.v(m20318instanceof(length), (List) z1.b(t, m20331synchronized(iX)), writer, m20305class(length));
                    break;
                case 50:
                    B(writer, iM20318instanceof, z1.b(t, m20331synchronized(iX)), length);
                    break;
                case 51:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeDouble(iM20318instanceof, b(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeFloat(iM20318instanceof, c(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeInt64(iM20318instanceof, e(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeUInt64(iM20318instanceof, e(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeInt32(iM20318instanceof, d(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeFixed64(iM20318instanceof, e(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeFixed32(iM20318instanceof, d(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeBool(iM20318instanceof, a(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        C(iM20318instanceof, z1.b(t, m20331synchronized(iX)), writer);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeMessage(iM20318instanceof, z1.b(t, m20331synchronized(iX)), m20305class(length));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeBytes(iM20318instanceof, (ByteString) z1.b(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeUInt32(iM20318instanceof, d(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeEnum(iM20318instanceof, d(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeSFixed32(iM20318instanceof, d(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeSFixed64(iM20318instanceof, e(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeSInt32(iM20318instanceof, d(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeSInt64(iM20318instanceof, e(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m20311extends(t, iM20318instanceof, length)) {
                        writer.writeGroup(iM20318instanceof, z1.b(t, m20331synchronized(iX)), m20305class(length));
                        break;
                    } else {
                        break;
                    }
            }
        }
        while (entry != null) {
            this.f16871throw.mo19671break(writer, entry);
            entry = itM19389import.hasNext() ? (Map.Entry) itM19389import.next() : null;
        }
    }

    private <K, V> void B(Writer writer, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            writer.writeMap(i, this.f16873while.forMapMetadata(m20304catch(i2)), this.f16873while.forMapData(obj));
        }
    }

    private void C(int i, Object obj, Writer writer) throws IOException {
        if (obj instanceof String) {
            writer.writeString(i, (String) obj);
        } else {
            writer.writeBytes(i, (ByteString) obj);
        }
    }

    private <UT, UB> void D(s1<UT, UB> s1Var, T t, Writer writer) throws IOException {
        s1Var.mo21147public(s1Var.mo21139else(t), writer);
    }

    private static <T> boolean a(T t, long j) {
        return ((Boolean) z1.b(t, j)).booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0077, code lost:
    
        r0 = r16.f16859catch;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
    
        if (r0 >= r16.f16860class) goto L361;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007d, code lost:
    
        r13 = m20310else(r19, r16.f16857break[r0], r13, r17);
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0088, code lost:
    
        if (r13 == null) goto L365;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008a, code lost:
    
        r17.mo21148super(r19, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008d, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: abstract, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> void m20301abstract(s1<UT, UB> s1Var, Cinstanceof<ET> cinstanceof, T t, Reader reader, Cimplements cimplements) throws IOException {
        Object objM20310else = null;
        Object objMo19679new = null;
        while (true) {
            try {
                int fieldNumber = reader.getFieldNumber();
                int iK = k(fieldNumber);
                if (iK >= 0) {
                    int iX = x(iK);
                    try {
                        switch (w(iX)) {
                            case 0:
                                z1.t(t, m20331synchronized(iX), reader.readDouble());
                                s(t, iK);
                                break;
                            case 1:
                                z1.v(t, m20331synchronized(iX), reader.readFloat());
                                s(t, iK);
                                break;
                            case 2:
                                z1.B(t, m20331synchronized(iX), reader.readInt64());
                                s(t, iK);
                                break;
                            case 3:
                                z1.B(t, m20331synchronized(iX), reader.readUInt64());
                                s(t, iK);
                                break;
                            case 4:
                                z1.y(t, m20331synchronized(iX), reader.readInt32());
                                s(t, iK);
                                break;
                            case 5:
                                z1.B(t, m20331synchronized(iX), reader.readFixed64());
                                s(t, iK);
                                break;
                            case 6:
                                z1.y(t, m20331synchronized(iX), reader.readFixed32());
                                s(t, iK);
                                break;
                            case 7:
                                z1.k(t, m20331synchronized(iX), reader.readBool());
                                s(t, iK);
                                break;
                            case 8:
                                p(t, iX, reader);
                                s(t, iK);
                                break;
                            case 9:
                                if (m20325public(t, iK)) {
                                    z1.D(t, m20331synchronized(iX), Internal.m19626static(z1.b(t, m20331synchronized(iX)), reader.readMessageBySchemaWithCheck(m20305class(iK), cimplements)));
                                    break;
                                } else {
                                    z1.D(t, m20331synchronized(iX), reader.readMessageBySchemaWithCheck(m20305class(iK), cimplements));
                                    s(t, iK);
                                    break;
                                }
                            case 10:
                                z1.D(t, m20331synchronized(iX), reader.readBytes());
                                s(t, iK);
                                break;
                            case 11:
                                z1.y(t, m20331synchronized(iX), reader.readUInt32());
                                s(t, iK);
                                break;
                            case 12:
                                int i = reader.readEnum();
                                Internal.EnumVerifier enumVerifierM20302break = m20302break(iK);
                                if (enumVerifierM20302break != null && !enumVerifierM20302break.isInRange(i)) {
                                    objM20310else = y0.d(fieldNumber, i, objM20310else, s1Var);
                                    break;
                                } else {
                                    z1.y(t, m20331synchronized(iX), i);
                                    s(t, iK);
                                    break;
                                }
                            case 13:
                                z1.y(t, m20331synchronized(iX), reader.readSFixed32());
                                s(t, iK);
                                break;
                            case 14:
                                z1.B(t, m20331synchronized(iX), reader.readSFixed64());
                                s(t, iK);
                                break;
                            case 15:
                                z1.y(t, m20331synchronized(iX), reader.readSInt32());
                                s(t, iK);
                                break;
                            case 16:
                                z1.B(t, m20331synchronized(iX), reader.readSInt64());
                                s(t, iK);
                                break;
                            case 17:
                                if (m20325public(t, iK)) {
                                    z1.D(t, m20331synchronized(iX), Internal.m19626static(z1.b(t, m20331synchronized(iX)), reader.readGroupBySchemaWithCheck(m20305class(iK), cimplements)));
                                    break;
                                } else {
                                    z1.D(t, m20331synchronized(iX), reader.readGroupBySchemaWithCheck(m20305class(iK), cimplements));
                                    s(t, iK);
                                    break;
                                }
                            case 18:
                                reader.readDoubleList(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 19:
                                reader.readFloatList(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 20:
                                reader.readInt64List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 21:
                                reader.readUInt64List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 22:
                                reader.readInt32List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 23:
                                reader.readFixed64List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 24:
                                reader.readFixed32List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 25:
                                reader.readBoolList(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 26:
                                q(t, iX, reader);
                                break;
                            case 27:
                                o(t, iX, reader, m20305class(iK), cimplements);
                                break;
                            case 28:
                                reader.readBytesList(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 29:
                                reader.readUInt32List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 30:
                                List<Integer> listMo21178try = this.f16864final.mo21178try(t, m20331synchronized(iX));
                                reader.readEnumList(listMo21178try);
                                objM20310else = y0.m21622private(fieldNumber, listMo21178try, m20302break(iK), objM20310else, s1Var);
                                break;
                            case 31:
                                reader.readSFixed32List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 32:
                                reader.readSFixed64List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 33:
                                reader.readSInt32List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 34:
                                reader.readSInt64List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 35:
                                reader.readDoubleList(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 36:
                                reader.readFloatList(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 37:
                                reader.readInt64List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 38:
                                reader.readUInt64List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 39:
                                reader.readInt32List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 40:
                                reader.readFixed64List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 41:
                                reader.readFixed32List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 42:
                                reader.readBoolList(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 43:
                                reader.readUInt32List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 44:
                                List<Integer> listMo21178try2 = this.f16864final.mo21178try(t, m20331synchronized(iX));
                                reader.readEnumList(listMo21178try2);
                                objM20310else = y0.m21622private(fieldNumber, listMo21178try2, m20302break(iK), objM20310else, s1Var);
                                break;
                            case 45:
                                reader.readSFixed32List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 46:
                                reader.readSFixed64List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 47:
                                reader.readSInt32List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 48:
                                reader.readSInt64List(this.f16864final.mo21178try(t, m20331synchronized(iX)));
                                break;
                            case 49:
                                n(t, m20331synchronized(iX), reader, m20305class(iK), cimplements);
                                break;
                            case 50:
                                m20307continue(t, iK, m20304catch(iK), cimplements, reader);
                                break;
                            case 51:
                                z1.D(t, m20331synchronized(iX), Double.valueOf(reader.readDouble()));
                                t(t, fieldNumber, iK);
                                break;
                            case 52:
                                z1.D(t, m20331synchronized(iX), Float.valueOf(reader.readFloat()));
                                t(t, fieldNumber, iK);
                                break;
                            case 53:
                                z1.D(t, m20331synchronized(iX), Long.valueOf(reader.readInt64()));
                                t(t, fieldNumber, iK);
                                break;
                            case 54:
                                z1.D(t, m20331synchronized(iX), Long.valueOf(reader.readUInt64()));
                                t(t, fieldNumber, iK);
                                break;
                            case 55:
                                z1.D(t, m20331synchronized(iX), Integer.valueOf(reader.readInt32()));
                                t(t, fieldNumber, iK);
                                break;
                            case 56:
                                z1.D(t, m20331synchronized(iX), Long.valueOf(reader.readFixed64()));
                                t(t, fieldNumber, iK);
                                break;
                            case 57:
                                z1.D(t, m20331synchronized(iX), Integer.valueOf(reader.readFixed32()));
                                t(t, fieldNumber, iK);
                                break;
                            case 58:
                                z1.D(t, m20331synchronized(iX), Boolean.valueOf(reader.readBool()));
                                t(t, fieldNumber, iK);
                                break;
                            case 59:
                                p(t, iX, reader);
                                t(t, fieldNumber, iK);
                                break;
                            case 60:
                                if (m20311extends(t, fieldNumber, iK)) {
                                    z1.D(t, m20331synchronized(iX), Internal.m19626static(z1.b(t, m20331synchronized(iX)), reader.readMessageBySchemaWithCheck(m20305class(iK), cimplements)));
                                } else {
                                    z1.D(t, m20331synchronized(iX), reader.readMessageBySchemaWithCheck(m20305class(iK), cimplements));
                                    s(t, iK);
                                }
                                t(t, fieldNumber, iK);
                                break;
                            case 61:
                                z1.D(t, m20331synchronized(iX), reader.readBytes());
                                t(t, fieldNumber, iK);
                                break;
                            case 62:
                                z1.D(t, m20331synchronized(iX), Integer.valueOf(reader.readUInt32()));
                                t(t, fieldNumber, iK);
                                break;
                            case 63:
                                int i2 = reader.readEnum();
                                Internal.EnumVerifier enumVerifierM20302break2 = m20302break(iK);
                                if (enumVerifierM20302break2 != null && !enumVerifierM20302break2.isInRange(i2)) {
                                    objM20310else = y0.d(fieldNumber, i2, objM20310else, s1Var);
                                    break;
                                } else {
                                    z1.D(t, m20331synchronized(iX), Integer.valueOf(i2));
                                    t(t, fieldNumber, iK);
                                    break;
                                }
                                break;
                            case 64:
                                z1.D(t, m20331synchronized(iX), Integer.valueOf(reader.readSFixed32()));
                                t(t, fieldNumber, iK);
                                break;
                            case 65:
                                z1.D(t, m20331synchronized(iX), Long.valueOf(reader.readSFixed64()));
                                t(t, fieldNumber, iK);
                                break;
                            case 66:
                                z1.D(t, m20331synchronized(iX), Integer.valueOf(reader.readSInt32()));
                                t(t, fieldNumber, iK);
                                break;
                            case 67:
                                z1.D(t, m20331synchronized(iX), Long.valueOf(reader.readSInt64()));
                                t(t, fieldNumber, iK);
                                break;
                            case 68:
                                z1.D(t, m20331synchronized(iX), reader.readGroupBySchemaWithCheck(m20305class(iK), cimplements));
                                t(t, fieldNumber, iK);
                                break;
                            default:
                                if (objM20310else == null) {
                                    objM20310else = s1Var.mo21140final();
                                }
                                if (!s1Var.m21137const(objM20310else, reader)) {
                                    for (int i3 = this.f16859catch; i3 < this.f16860class; i3++) {
                                        objM20310else = m20310else(t, this.f16857break[i3], objM20310else, s1Var);
                                    }
                                    if (objM20310else != null) {
                                        s1Var.mo21148super(t, objM20310else);
                                        return;
                                    }
                                    return;
                                }
                                break;
                        }
                    } catch (n.Cdo unused) {
                        if (!s1Var.mo21152while(reader)) {
                            if (objM20310else == null) {
                                objM20310else = s1Var.mo21134case(t);
                            }
                            if (!s1Var.m21137const(objM20310else, reader)) {
                                for (int i4 = this.f16859catch; i4 < this.f16860class; i4++) {
                                    objM20310else = m20310else(t, this.f16857break[i4], objM20310else, s1Var);
                                }
                                if (objM20310else != null) {
                                    s1Var.mo21148super(t, objM20310else);
                                    return;
                                }
                                return;
                            }
                        } else if (!reader.skipField()) {
                            for (int i5 = this.f16859catch; i5 < this.f16860class; i5++) {
                                objM20310else = m20310else(t, this.f16857break[i5], objM20310else, s1Var);
                            }
                            if (objM20310else != null) {
                                s1Var.mo21148super(t, objM20310else);
                                return;
                            }
                            return;
                        }
                    }
                } else {
                    if (fieldNumber == Integer.MAX_VALUE) {
                        for (int i6 = this.f16859catch; i6 < this.f16860class; i6++) {
                            objM20310else = m20310else(t, this.f16857break[i6], objM20310else, s1Var);
                        }
                        if (objM20310else != null) {
                            s1Var.mo21148super(t, objM20310else);
                            return;
                        }
                        return;
                    }
                    Object objMo19678if = !this.f16858case ? null : cinstanceof.mo19678if(cimplements, this.f16872try, fieldNumber);
                    if (objMo19678if != null) {
                        if (objMo19679new == null) {
                            objMo19679new = cinstanceof.mo19679new(t);
                        }
                        objM20310else = cinstanceof.mo19675else(reader, objMo19678if, cimplements, objMo19679new, objM20310else, s1Var);
                    } else if (!s1Var.mo21152while(reader)) {
                        if (objM20310else == null) {
                            objM20310else = s1Var.mo21134case(t);
                        }
                        if (s1Var.m21137const(objM20310else, reader)) {
                        }
                    } else if (reader.skipField()) {
                    }
                }
            } catch (Throwable th) {
                for (int i7 = this.f16859catch; i7 < this.f16860class; i7++) {
                    objM20310else = m20310else(t, this.f16857break[i7], objM20310else, s1Var);
                }
                if (objM20310else != null) {
                    s1Var.mo21148super(t, objM20310else);
                }
                throw th;
            }
        }
    }

    private static <T> double b(T t, long j) {
        return ((Double) z1.b(t, j)).doubleValue();
    }

    /* renamed from: break, reason: not valid java name */
    private Internal.EnumVerifier m20302break(int i) {
        return (Internal.EnumVerifier) this.f16867if[((i / 3) * 2) + 1];
    }

    private static <T> float c(T t, long j) {
        return ((Float) z1.b(t, j)).floatValue();
    }

    /* renamed from: case, reason: not valid java name */
    private boolean m20303case(T t, T t2, int i) {
        int iX = x(i);
        long jM20331synchronized = m20331synchronized(iX);
        switch (w(iX)) {
            case 0:
                return m20309do(t, t2, i) && Double.doubleToLongBits(z1.m21656abstract(t, jM20331synchronized)) == Double.doubleToLongBits(z1.m21656abstract(t2, jM20331synchronized));
            case 1:
                return m20309do(t, t2, i) && Float.floatToIntBits(z1.m21684strictfp(t, jM20331synchronized)) == Float.floatToIntBits(z1.m21684strictfp(t2, jM20331synchronized));
            case 2:
                return m20309do(t, t2, i) && z1.m21674instanceof(t, jM20331synchronized) == z1.m21674instanceof(t2, jM20331synchronized);
            case 3:
                return m20309do(t, t2, i) && z1.m21674instanceof(t, jM20331synchronized) == z1.m21674instanceof(t2, jM20331synchronized);
            case 4:
                return m20309do(t, t2, i) && z1.m21680protected(t, jM20331synchronized) == z1.m21680protected(t2, jM20331synchronized);
            case 5:
                return m20309do(t, t2, i) && z1.m21674instanceof(t, jM20331synchronized) == z1.m21674instanceof(t2, jM20331synchronized);
            case 6:
                return m20309do(t, t2, i) && z1.m21680protected(t, jM20331synchronized) == z1.m21680protected(t2, jM20331synchronized);
            case 7:
                return m20309do(t, t2, i) && z1.m21682return(t, jM20331synchronized) == z1.m21682return(t2, jM20331synchronized);
            case 8:
                return m20309do(t, t2, i) && y0.a(z1.b(t, jM20331synchronized), z1.b(t2, jM20331synchronized));
            case 9:
                return m20309do(t, t2, i) && y0.a(z1.b(t, jM20331synchronized), z1.b(t2, jM20331synchronized));
            case 10:
                return m20309do(t, t2, i) && y0.a(z1.b(t, jM20331synchronized), z1.b(t2, jM20331synchronized));
            case 11:
                return m20309do(t, t2, i) && z1.m21680protected(t, jM20331synchronized) == z1.m21680protected(t2, jM20331synchronized);
            case 12:
                return m20309do(t, t2, i) && z1.m21680protected(t, jM20331synchronized) == z1.m21680protected(t2, jM20331synchronized);
            case 13:
                return m20309do(t, t2, i) && z1.m21680protected(t, jM20331synchronized) == z1.m21680protected(t2, jM20331synchronized);
            case 14:
                return m20309do(t, t2, i) && z1.m21674instanceof(t, jM20331synchronized) == z1.m21674instanceof(t2, jM20331synchronized);
            case 15:
                return m20309do(t, t2, i) && z1.m21680protected(t, jM20331synchronized) == z1.m21680protected(t2, jM20331synchronized);
            case 16:
                return m20309do(t, t2, i) && z1.m21674instanceof(t, jM20331synchronized) == z1.m21674instanceof(t2, jM20331synchronized);
            case 17:
                return m20309do(t, t2, i) && y0.a(z1.b(t, jM20331synchronized), z1.b(t2, jM20331synchronized));
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                return y0.a(z1.b(t, jM20331synchronized), z1.b(t2, jM20331synchronized));
            case 50:
                return y0.a(z1.b(t, jM20331synchronized), z1.b(t2, jM20331synchronized));
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                return m20308default(t, t2, i) && y0.a(z1.b(t, jM20331synchronized), z1.b(t2, jM20331synchronized));
            default:
                return true;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private Object m20304catch(int i) {
        return this.f16867if[(i / 3) * 2];
    }

    /* renamed from: class, reason: not valid java name */
    private Schema m20305class(int i) {
        int i2 = (i / 3) * 2;
        Schema schema = (Schema) this.f16867if[i2];
        if (schema != null) {
            return schema;
        }
        Schema<T> schemaM21011this = q0.m21002do().m21011this((Class) this.f16867if[i2 + 1]);
        this.f16867if[i2] = schemaM21011this;
        return schemaM21011this;
    }

    /* renamed from: const, reason: not valid java name */
    public static u1 m20306const(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        u1 u1Var = generatedMessageLite.f16465do;
        if (u1Var != u1.m21421for()) {
            return u1Var;
        }
        u1 u1VarM21420final = u1.m21420final();
        generatedMessageLite.f16465do = u1VarM21420final;
        return u1VarM21420final;
    }

    /* renamed from: continue, reason: not valid java name */
    private final <K, V> void m20307continue(Object obj, int i, Object obj2, Cimplements cimplements, Reader reader) throws IOException {
        long jM20331synchronized = m20331synchronized(x(i));
        Object objB = z1.b(obj, jM20331synchronized);
        if (objB == null) {
            objB = this.f16873while.newMapField(obj2);
            z1.D(obj, jM20331synchronized, objB);
        } else if (this.f16873while.isImmutable(objB)) {
            Object objNewMapField = this.f16873while.newMapField(obj2);
            this.f16873while.mergeFrom(objNewMapField, objB);
            z1.D(obj, jM20331synchronized, objNewMapField);
            objB = objNewMapField;
        }
        reader.readMap(this.f16873while.forMutableMapData(objB), this.f16873while.forMapMetadata(obj2), cimplements);
    }

    private static <T> int d(T t, long j) {
        return ((Integer) z1.b(t, j)).intValue();
    }

    /* renamed from: default, reason: not valid java name */
    private boolean m20308default(T t, T t2, int i) {
        long jM = m(i) & 1048575;
        return z1.m21680protected(t, jM) == z1.m21680protected(t2, jM);
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m20309do(T t, T t2, int i) {
        return m20325public(t, i) == m20325public(t2, i);
    }

    private static <T> long e(T t, long j) {
        return ((Long) z1.b(t, j)).longValue();
    }

    /* renamed from: else, reason: not valid java name */
    private final <UT, UB> UB m20310else(Object obj, int i, UB ub, s1<UT, UB> s1Var) {
        Internal.EnumVerifier enumVerifierM20302break;
        int iM20318instanceof = m20318instanceof(i);
        Object objB = z1.b(obj, m20331synchronized(x(i)));
        return (objB == null || (enumVerifierM20302break = m20302break(i)) == null) ? ub : (UB) m20314goto(i, iM20318instanceof, this.f16873while.forMutableMapData(objB), enumVerifierM20302break, ub, s1Var);
    }

    /* renamed from: extends, reason: not valid java name */
    private boolean m20311extends(T t, int i, int i2) {
        return z1.m21680protected(t, (long) (m(i2) & 1048575)) == i;
    }

    private <K, V> int f(T t, byte[] bArr, int i, int i2, int i3, long j, Cthis.Cif cif) throws IOException {
        Unsafe unsafe = f16849finally;
        Object objM20304catch = m20304catch(i3);
        Object object = unsafe.getObject(t, j);
        if (this.f16873while.isImmutable(object)) {
            Object objNewMapField = this.f16873while.newMapField(objM20304catch);
            this.f16873while.mergeFrom(objNewMapField, object);
            unsafe.putObject(t, j, objNewMapField);
            object = objNewMapField;
        }
        return m20313for(bArr, i, i2, this.f16873while.forMapMetadata(objM20304catch), this.f16873while.forMutableMapData(object), cif);
    }

    /* renamed from: finally, reason: not valid java name */
    private static boolean m20312finally(int i) {
        return (i & f16854static) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [java.util.Map, java.util.Map<K, V>] */
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    /* renamed from: for, reason: not valid java name */
    private <K, V> int m20313for(byte[] bArr, int i, int i2, y.Cif<K, V> cif, Map<K, V> map, Cthis.Cif cif2) throws IOException {
        int iM21290interface;
        int iM21295protected = Cthis.m21295protected(bArr, i, cif2);
        int i3 = cif2.f17245do;
        if (i3 < 0 || i3 > i2 - iM21295protected) {
            throw n.truncatedMessage();
        }
        int i4 = iM21295protected + i3;
        Object obj = cif.f17348if;
        Object obj2 = cif.f17349new;
        while (iM21295protected < i4) {
            int i5 = iM21295protected + 1;
            byte b = bArr[iM21295protected];
            if (b < 0) {
                iM21290interface = Cthis.m21290interface(b, bArr, i5, cif2);
                b = cif2.f17245do;
            } else {
                iM21290interface = i5;
            }
            int i6 = b >>> 3;
            int i7 = b & 7;
            if (i6 != 1) {
                if (i6 == 2 && i7 == cif.f17347for.getWireType()) {
                    iM21295protected = m20321new(bArr, iM21290interface, i2, cif.f17347for, cif.f17349new.getClass(), cif2);
                    obj2 = cif2.f17246for;
                } else {
                    iM21295protected = Cthis.a(b, bArr, iM21290interface, i2, cif2);
                }
            } else if (i7 == cif.f17346do.getWireType()) {
                iM21295protected = m20321new(bArr, iM21290interface, i2, cif.f17346do, null, cif2);
                obj = cif2.f17246for;
            } else {
                iM21295protected = Cthis.a(b, bArr, iM21290interface, i2, cif2);
            }
        }
        if (iM21295protected != i4) {
            throw n.parseFailure();
        }
        map.put(obj, obj2);
        return i4;
    }

    private int g(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, Cthis.Cif cif) throws IOException {
        Unsafe unsafe = f16849finally;
        long j2 = this.f16862do[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Cthis.m21292new(bArr, i)));
                    int i9 = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Cthis.m21275class(bArr, i)));
                    int i10 = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return i10;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int iM21289instanceof = Cthis.m21289instanceof(bArr, i, cif);
                    unsafe.putObject(t, j, Long.valueOf(cif.f17247if));
                    unsafe.putInt(t, j2, i4);
                    return iM21289instanceof;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int iM21295protected = Cthis.m21295protected(bArr, i, cif);
                    unsafe.putObject(t, j, Integer.valueOf(cif.f17245do));
                    unsafe.putInt(t, j2, i4);
                    return iM21295protected;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(Cthis.m21272break(bArr, i)));
                    int i11 = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return i11;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(Cthis.m21285goto(bArr, i)));
                    int i12 = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return i12;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int iM21289instanceof2 = Cthis.m21289instanceof(bArr, i, cif);
                    unsafe.putObject(t, j, Boolean.valueOf(cif.f17247if != 0));
                    unsafe.putInt(t, j2, i4);
                    return iM21289instanceof2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int iM21295protected2 = Cthis.m21295protected(bArr, i, cif);
                    int i13 = cif.f17245do;
                    if (i13 == 0) {
                        unsafe.putObject(t, j, "");
                    } else {
                        if ((i6 & 536870912) != 0 && !a2.m19708return(bArr, iM21295protected2, iM21295protected2 + i13)) {
                            throw n.invalidUtf8();
                        }
                        unsafe.putObject(t, j, new String(bArr, iM21295protected2, i13, Internal.f16554do));
                        iM21295protected2 += i13;
                    }
                    unsafe.putInt(t, j2, i4);
                    return iM21295protected2;
                }
                break;
            case 60:
                if (i5 == 2) {
                    int iM21304throw = Cthis.m21304throw(m20305class(i8), bArr, i, i2, cif);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, cif.f17246for);
                    } else {
                        unsafe.putObject(t, j, Internal.m19626static(object, cif.f17246for));
                    }
                    unsafe.putInt(t, j2, i4);
                    return iM21304throw;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int iM21286if = Cthis.m21286if(bArr, i, cif);
                    unsafe.putObject(t, j, cif.f17246for);
                    unsafe.putInt(t, j2, i4);
                    return iM21286if;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int iM21295protected3 = Cthis.m21295protected(bArr, i, cif);
                    int i14 = cif.f17245do;
                    Internal.EnumVerifier enumVerifierM20302break = m20302break(i8);
                    if (enumVerifierM20302break == null || enumVerifierM20302break.isInRange(i14)) {
                        unsafe.putObject(t, j, Integer.valueOf(i14));
                        unsafe.putInt(t, j2, i4);
                    } else {
                        m20306const(t).m21438while(i3, Long.valueOf(i14));
                    }
                    return iM21295protected3;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int iM21295protected4 = Cthis.m21295protected(bArr, i, cif);
                    unsafe.putObject(t, j, Integer.valueOf(CodedInputStream.m18414if(cif.f17245do)));
                    unsafe.putInt(t, j2, i4);
                    return iM21295protected4;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int iM21289instanceof3 = Cthis.m21289instanceof(bArr, i, cif);
                    unsafe.putObject(t, j, Long.valueOf(CodedInputStream.m18413for(cif.f17247if)));
                    unsafe.putInt(t, j2, i4);
                    return iM21289instanceof3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    int iM21282final = Cthis.m21282final(m20305class(i8), bArr, i, i2, (i3 & (-8)) | 4, cif);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, cif.f17246for);
                    } else {
                        unsafe.putObject(t, j, Internal.m19626static(object2, cif.f17246for));
                    }
                    unsafe.putInt(t, j2, i4);
                    return iM21282final;
                }
                break;
        }
        return i;
    }

    /* renamed from: goto, reason: not valid java name */
    private final <K, V, UT, UB> UB m20314goto(int i, int i2, Map<K, V> map, Internal.EnumVerifier enumVerifier, UB ub, s1<UT, UB> s1Var) {
        y.Cif<?, ?> cifForMapMetadata = this.f16873while.forMapMetadata(m20304catch(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!enumVerifier.isInRange(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = s1Var.mo21140final();
                }
                ByteString.Ccase ccaseNewCodedBuilder = ByteString.newCodedBuilder(y.m21590if(cifForMapMetadata, next.getKey(), next.getValue()));
                try {
                    y.m21588class(ccaseNewCodedBuilder.m18398if(), cifForMapMetadata, next.getKey(), next.getValue());
                    s1Var.mo21146new(ub, i2, ccaseNewCodedBuilder.m18397do());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0296, code lost:
    
        if (r0 != r15) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0298, code lost:
    
        r15 = r30;
        r14 = r31;
        r12 = r32;
        r13 = r34;
        r11 = r35;
        r1 = r19;
        r2 = r20;
        r6 = r24;
        r7 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02dd, code lost:
    
        if (r0 != r15) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0300, code lost:
    
        if (r0 != r15) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0303, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:27:0x0092. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int i(T t, byte[] bArr, int i, int i2, Cthis.Cif cif) throws IOException {
        byte b;
        int iM21290interface;
        int i3;
        int i4;
        Unsafe unsafe;
        int i5;
        int i6;
        Unsafe unsafe2;
        int i7;
        int i8;
        int i9;
        int iM21289instanceof;
        int i10;
        Unsafe unsafe3;
        e0<T> e0Var = this;
        T t2 = t;
        byte[] bArr2 = bArr;
        int i11 = i2;
        Cthis.Cif cif2 = cif;
        Unsafe unsafe4 = f16849finally;
        int i12 = -1;
        int iM21308volatile = i;
        int i13 = -1;
        int i14 = 0;
        int i15 = 0;
        int i16 = 1048575;
        while (iM21308volatile < i11) {
            int i17 = iM21308volatile + 1;
            byte b2 = bArr2[iM21308volatile];
            if (b2 < 0) {
                iM21290interface = Cthis.m21290interface(b2, bArr2, i17, cif2);
                b = cif2.f17245do;
            } else {
                b = b2;
                iM21290interface = i17;
            }
            int i18 = b >>> 3;
            int i19 = b & 7;
            int iL = i18 > i13 ? e0Var.l(i18, i14 / 3) : e0Var.k(i18);
            if (iL == i12) {
                i3 = iM21290interface;
                i4 = i18;
                unsafe = unsafe4;
                i5 = 0;
            } else {
                int i20 = e0Var.f16862do[iL + 1];
                int iW = w(i20);
                Unsafe unsafe5 = unsafe4;
                long jM20331synchronized = m20331synchronized(i20);
                if (iW <= 17) {
                    int i21 = e0Var.f16862do[iL + 2];
                    int i22 = 1 << (i21 >>> 20);
                    int i23 = i21 & 1048575;
                    if (i23 != i16) {
                        if (i16 != 1048575) {
                            long j = i16;
                            unsafe3 = unsafe5;
                            unsafe3.putInt(t2, j, i15);
                        } else {
                            unsafe3 = unsafe5;
                        }
                        if (i23 != 1048575) {
                            i15 = unsafe3.getInt(t2, i23);
                        }
                        unsafe2 = unsafe3;
                        i16 = i23;
                    } else {
                        unsafe2 = unsafe5;
                    }
                    switch (iW) {
                        case 0:
                            i6 = iL;
                            i4 = i18;
                            if (i19 != 1) {
                                i3 = iM21290interface;
                                unsafe = unsafe2;
                                i5 = i6;
                                break;
                            } else {
                                z1.t(t2, jM20331synchronized, Cthis.m21292new(bArr2, iM21290interface));
                                iM21308volatile = iM21290interface + 8;
                                i15 |= i22;
                                unsafe4 = unsafe2;
                                i14 = i6;
                                i13 = i4;
                                i12 = -1;
                                i11 = i2;
                                break;
                            }
                        case 1:
                            i6 = iL;
                            i4 = i18;
                            if (i19 != 5) {
                                i3 = iM21290interface;
                                unsafe = unsafe2;
                                i5 = i6;
                                break;
                            } else {
                                z1.v(t2, jM20331synchronized, Cthis.m21275class(bArr2, iM21290interface));
                                iM21308volatile = iM21290interface + 4;
                                i15 |= i22;
                                unsafe4 = unsafe2;
                                i14 = i6;
                                i13 = i4;
                                i12 = -1;
                                i11 = i2;
                                break;
                            }
                        case 2:
                        case 3:
                            i6 = iL;
                            i4 = i18;
                            if (i19 != 0) {
                                i3 = iM21290interface;
                                unsafe = unsafe2;
                                i5 = i6;
                                break;
                            } else {
                                iM21289instanceof = Cthis.m21289instanceof(bArr2, iM21290interface, cif2);
                                unsafe2.putLong(t, jM20331synchronized, cif2.f17247if);
                                i15 |= i22;
                                unsafe4 = unsafe2;
                                i14 = i6;
                                iM21308volatile = iM21289instanceof;
                                i13 = i4;
                                i12 = -1;
                                i11 = i2;
                                break;
                            }
                        case 4:
                        case 11:
                            i6 = iL;
                            i4 = i18;
                            if (i19 != 0) {
                                i3 = iM21290interface;
                                unsafe = unsafe2;
                                i5 = i6;
                                break;
                            } else {
                                iM21308volatile = Cthis.m21295protected(bArr2, iM21290interface, cif2);
                                unsafe2.putInt(t2, jM20331synchronized, cif2.f17245do);
                                i15 |= i22;
                                unsafe4 = unsafe2;
                                i14 = i6;
                                i13 = i4;
                                i12 = -1;
                                i11 = i2;
                                break;
                            }
                        case 5:
                        case 14:
                            i6 = iL;
                            i4 = i18;
                            if (i19 != 1) {
                                i3 = iM21290interface;
                                unsafe = unsafe2;
                                i5 = i6;
                                break;
                            } else {
                                unsafe2.putLong(t, jM20331synchronized, Cthis.m21272break(bArr2, iM21290interface));
                                iM21308volatile = iM21290interface + 8;
                                i15 |= i22;
                                unsafe4 = unsafe2;
                                i14 = i6;
                                i13 = i4;
                                i12 = -1;
                                i11 = i2;
                                break;
                            }
                        case 6:
                        case 13:
                            i10 = i2;
                            i6 = iL;
                            i4 = i18;
                            if (i19 != 5) {
                                i3 = iM21290interface;
                                unsafe = unsafe2;
                                i5 = i6;
                                break;
                            } else {
                                unsafe2.putInt(t2, jM20331synchronized, Cthis.m21285goto(bArr2, iM21290interface));
                                iM21308volatile = iM21290interface + 4;
                                i15 |= i22;
                                unsafe4 = unsafe2;
                                i13 = i4;
                                i12 = -1;
                                int i24 = i6;
                                i11 = i10;
                                i14 = i24;
                                break;
                            }
                        case 7:
                            i10 = i2;
                            i6 = iL;
                            i4 = i18;
                            if (i19 != 0) {
                                i3 = iM21290interface;
                                unsafe = unsafe2;
                                i5 = i6;
                                break;
                            } else {
                                iM21308volatile = Cthis.m21289instanceof(bArr2, iM21290interface, cif2);
                                z1.k(t2, jM20331synchronized, cif2.f17247if != 0);
                                i15 |= i22;
                                unsafe4 = unsafe2;
                                i13 = i4;
                                i12 = -1;
                                int i242 = i6;
                                i11 = i10;
                                i14 = i242;
                                break;
                            }
                        case 8:
                            i10 = i2;
                            i6 = iL;
                            i4 = i18;
                            if (i19 != 2) {
                                i3 = iM21290interface;
                                unsafe = unsafe2;
                                i5 = i6;
                                break;
                            } else {
                                iM21308volatile = (i20 & 536870912) == 0 ? Cthis.m21294private(bArr2, iM21290interface, cif2) : Cthis.m21299strictfp(bArr2, iM21290interface, cif2);
                                unsafe2.putObject(t2, jM20331synchronized, cif2.f17246for);
                                i15 |= i22;
                                unsafe4 = unsafe2;
                                i13 = i4;
                                i12 = -1;
                                int i2422 = i6;
                                i11 = i10;
                                i14 = i2422;
                                break;
                            }
                        case 9:
                            i6 = iL;
                            i4 = i18;
                            if (i19 != 2) {
                                i3 = iM21290interface;
                                unsafe = unsafe2;
                                i5 = i6;
                                break;
                            } else {
                                i10 = i2;
                                iM21308volatile = Cthis.m21304throw(e0Var.m20305class(i6), bArr2, iM21290interface, i10, cif2);
                                Object object = unsafe2.getObject(t2, jM20331synchronized);
                                if (object == null) {
                                    unsafe2.putObject(t2, jM20331synchronized, cif2.f17246for);
                                } else {
                                    unsafe2.putObject(t2, jM20331synchronized, Internal.m19626static(object, cif2.f17246for));
                                }
                                i15 |= i22;
                                unsafe4 = unsafe2;
                                i13 = i4;
                                i12 = -1;
                                int i24222 = i6;
                                i11 = i10;
                                i14 = i24222;
                                break;
                            }
                        case 10:
                            i6 = iL;
                            i4 = i18;
                            if (i19 != 2) {
                                i3 = iM21290interface;
                                unsafe = unsafe2;
                                i5 = i6;
                                break;
                            } else {
                                iM21308volatile = Cthis.m21286if(bArr2, iM21290interface, cif2);
                                unsafe2.putObject(t2, jM20331synchronized, cif2.f17246for);
                                i15 |= i22;
                                unsafe4 = unsafe2;
                                i14 = i6;
                                i13 = i4;
                                i12 = -1;
                                i11 = i2;
                                break;
                            }
                        case 12:
                            i6 = iL;
                            i4 = i18;
                            if (i19 != 0) {
                                i3 = iM21290interface;
                                unsafe = unsafe2;
                                i5 = i6;
                                break;
                            } else {
                                iM21308volatile = Cthis.m21295protected(bArr2, iM21290interface, cif2);
                                unsafe2.putInt(t2, jM20331synchronized, cif2.f17245do);
                                i15 |= i22;
                                unsafe4 = unsafe2;
                                i14 = i6;
                                i13 = i4;
                                i12 = -1;
                                i11 = i2;
                                break;
                            }
                        case 15:
                            i6 = iL;
                            i4 = i18;
                            if (i19 != 0) {
                                i3 = iM21290interface;
                                unsafe = unsafe2;
                                i5 = i6;
                                break;
                            } else {
                                iM21308volatile = Cthis.m21295protected(bArr2, iM21290interface, cif2);
                                unsafe2.putInt(t2, jM20331synchronized, CodedInputStream.m18414if(cif2.f17245do));
                                i15 |= i22;
                                unsafe4 = unsafe2;
                                i14 = i6;
                                i13 = i4;
                                i12 = -1;
                                i11 = i2;
                                break;
                            }
                        case 16:
                            if (i19 != 0) {
                                i6 = iL;
                                i4 = i18;
                                i3 = iM21290interface;
                                unsafe = unsafe2;
                                i5 = i6;
                                break;
                            } else {
                                iM21289instanceof = Cthis.m21289instanceof(bArr2, iM21290interface, cif2);
                                i6 = iL;
                                i4 = i18;
                                unsafe2.putLong(t, jM20331synchronized, CodedInputStream.m18413for(cif2.f17247if));
                                i15 |= i22;
                                unsafe4 = unsafe2;
                                i14 = i6;
                                iM21308volatile = iM21289instanceof;
                                i13 = i4;
                                i12 = -1;
                                i11 = i2;
                                break;
                            }
                        default:
                            i6 = iL;
                            i4 = i18;
                            i3 = iM21290interface;
                            unsafe = unsafe2;
                            i5 = i6;
                            break;
                    }
                } else {
                    i4 = i18;
                    i6 = iL;
                    unsafe2 = unsafe5;
                    if (iW != 27) {
                        if (iW <= 49) {
                            int i25 = iM21290interface;
                            i8 = i15;
                            i9 = i16;
                            unsafe = unsafe2;
                            i5 = i6;
                            iM21308volatile = j(t, bArr, iM21290interface, i2, b, i4, i19, i6, i20, iW, jM20331synchronized, cif);
                        } else {
                            i7 = iM21290interface;
                            i8 = i15;
                            i9 = i16;
                            unsafe = unsafe2;
                            i5 = i6;
                            if (iW != 50) {
                                iM21308volatile = g(t, bArr, i7, i2, b, i4, i19, i20, iW, jM20331synchronized, i5, cif);
                            } else if (i19 == 2) {
                                iM21308volatile = f(t, bArr, i7, i2, i5, jM20331synchronized, cif);
                            }
                        }
                        unsafe4 = unsafe;
                        i12 = -1;
                    } else if (i19 == 2) {
                        Internal.ProtobufList protobufListMutableCopyWithCapacity2 = (Internal.ProtobufList) unsafe2.getObject(t2, jM20331synchronized);
                        if (!protobufListMutableCopyWithCapacity2.isModifiable()) {
                            int size = protobufListMutableCopyWithCapacity2.size();
                            protobufListMutableCopyWithCapacity2 = protobufListMutableCopyWithCapacity2.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
                            unsafe2.putObject(t2, jM20331synchronized, protobufListMutableCopyWithCapacity2);
                        }
                        iM21308volatile = Cthis.m21309while(e0Var.m20305class(i6), b, bArr, iM21290interface, i2, protobufListMutableCopyWithCapacity2, cif);
                        i15 = i15;
                        unsafe4 = unsafe2;
                        i14 = i6;
                        i13 = i4;
                        i12 = -1;
                        i11 = i2;
                    } else {
                        i7 = iM21290interface;
                        i8 = i15;
                        i9 = i16;
                        unsafe = unsafe2;
                        i5 = i6;
                    }
                    i3 = i7;
                    i15 = i8;
                    i16 = i9;
                }
            }
            iM21308volatile = Cthis.m21308volatile(b, bArr, i3, i2, m20306const(t), cif);
            e0Var = this;
            t2 = t;
            bArr2 = bArr;
            i11 = i2;
            cif2 = cif;
            i13 = i4;
            i14 = i5;
            unsafe4 = unsafe;
            i12 = -1;
        }
        int i26 = i15;
        Unsafe unsafe6 = unsafe4;
        if (i16 != 1048575) {
            unsafe6.putInt(t, i16, i26);
        }
        if (iM21308volatile == i2) {
            return iM21308volatile;
        }
        throw n.parseFailure();
    }

    /* renamed from: if, reason: not valid java name */
    private static <T> boolean m20315if(T t, long j) {
        return z1.m21682return(t, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x036e  */
    /* renamed from: implements, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <T> e0<T> m20316implements(t0 t0Var, NewInstanceSchema newInstanceSchema, t tVar, s1<?, ?> s1Var, Cinstanceof<?> cinstanceof, MapFieldSchema mapFieldSchema) {
        int i;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int iCharAt4;
        int iCharAt5;
        int[] iArr;
        int i2;
        int i3;
        int i4;
        char cCharAt;
        int i5;
        char cCharAt2;
        int i6;
        char cCharAt3;
        int i7;
        char cCharAt4;
        int i8;
        char cCharAt5;
        int i9;
        char cCharAt6;
        int i10;
        char cCharAt7;
        int i11;
        char cCharAt8;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int iObjectFieldOffset;
        String str;
        boolean z;
        Object[] objArr;
        int iObjectFieldOffset2;
        int i18;
        int i19;
        Field fieldR;
        char cCharAt9;
        int i20;
        int i21;
        Object obj;
        Field fieldR2;
        Object obj2;
        Field fieldR3;
        int i22;
        char cCharAt10;
        int i23;
        char cCharAt11;
        int i24;
        char cCharAt12;
        int i25;
        char cCharAt13;
        boolean z2 = t0Var.getSyntax() == p0.PROTO3;
        String strM21183if = t0Var.m21183if();
        int length = strM21183if.length();
        char c = 55296;
        if (strM21183if.charAt(0) >= 55296) {
            int i26 = 1;
            while (true) {
                i = i26 + 1;
                if (strM21183if.charAt(i26) < 55296) {
                    break;
                }
                i26 = i;
            }
        } else {
            i = 1;
        }
        int i27 = i + 1;
        int iCharAt6 = strM21183if.charAt(i);
        if (iCharAt6 >= 55296) {
            int i28 = iCharAt6 & 8191;
            int i29 = 13;
            while (true) {
                i25 = i27 + 1;
                cCharAt13 = strM21183if.charAt(i27);
                if (cCharAt13 < 55296) {
                    break;
                }
                i28 |= (cCharAt13 & 8191) << i29;
                i29 += 13;
                i27 = i25;
            }
            iCharAt6 = i28 | (cCharAt13 << i29);
            i27 = i25;
        }
        if (iCharAt6 == 0) {
            iArr = f16847default;
            i3 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            iCharAt3 = 0;
            iCharAt4 = 0;
            iCharAt5 = 0;
            i2 = 0;
        } else {
            int i30 = i27 + 1;
            int iCharAt7 = strM21183if.charAt(i27);
            if (iCharAt7 >= 55296) {
                int i31 = iCharAt7 & 8191;
                int i32 = 13;
                while (true) {
                    i11 = i30 + 1;
                    cCharAt8 = strM21183if.charAt(i30);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i31 |= (cCharAt8 & 8191) << i32;
                    i32 += 13;
                    i30 = i11;
                }
                iCharAt7 = i31 | (cCharAt8 << i32);
                i30 = i11;
            }
            int i33 = i30 + 1;
            int iCharAt8 = strM21183if.charAt(i30);
            if (iCharAt8 >= 55296) {
                int i34 = iCharAt8 & 8191;
                int i35 = 13;
                while (true) {
                    i10 = i33 + 1;
                    cCharAt7 = strM21183if.charAt(i33);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i34 |= (cCharAt7 & 8191) << i35;
                    i35 += 13;
                    i33 = i10;
                }
                iCharAt8 = i34 | (cCharAt7 << i35);
                i33 = i10;
            }
            int i36 = i33 + 1;
            iCharAt = strM21183if.charAt(i33);
            if (iCharAt >= 55296) {
                int i37 = iCharAt & 8191;
                int i38 = 13;
                while (true) {
                    i9 = i36 + 1;
                    cCharAt6 = strM21183if.charAt(i36);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i37 |= (cCharAt6 & 8191) << i38;
                    i38 += 13;
                    i36 = i9;
                }
                iCharAt = i37 | (cCharAt6 << i38);
                i36 = i9;
            }
            int i39 = i36 + 1;
            iCharAt2 = strM21183if.charAt(i36);
            if (iCharAt2 >= 55296) {
                int i40 = iCharAt2 & 8191;
                int i41 = 13;
                while (true) {
                    i8 = i39 + 1;
                    cCharAt5 = strM21183if.charAt(i39);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i40 |= (cCharAt5 & 8191) << i41;
                    i41 += 13;
                    i39 = i8;
                }
                iCharAt2 = i40 | (cCharAt5 << i41);
                i39 = i8;
            }
            int i42 = i39 + 1;
            iCharAt3 = strM21183if.charAt(i39);
            if (iCharAt3 >= 55296) {
                int i43 = iCharAt3 & 8191;
                int i44 = 13;
                while (true) {
                    i7 = i42 + 1;
                    cCharAt4 = strM21183if.charAt(i42);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i43 |= (cCharAt4 & 8191) << i44;
                    i44 += 13;
                    i42 = i7;
                }
                iCharAt3 = i43 | (cCharAt4 << i44);
                i42 = i7;
            }
            int i45 = i42 + 1;
            iCharAt4 = strM21183if.charAt(i42);
            if (iCharAt4 >= 55296) {
                int i46 = iCharAt4 & 8191;
                int i47 = 13;
                while (true) {
                    i6 = i45 + 1;
                    cCharAt3 = strM21183if.charAt(i45);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt3 & 8191) << i47;
                    i47 += 13;
                    i45 = i6;
                }
                iCharAt4 = i46 | (cCharAt3 << i47);
                i45 = i6;
            }
            int i48 = i45 + 1;
            int iCharAt9 = strM21183if.charAt(i45);
            if (iCharAt9 >= 55296) {
                int i49 = iCharAt9 & 8191;
                int i50 = 13;
                while (true) {
                    i5 = i48 + 1;
                    cCharAt2 = strM21183if.charAt(i48);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt2 & 8191) << i50;
                    i50 += 13;
                    i48 = i5;
                }
                iCharAt9 = i49 | (cCharAt2 << i50);
                i48 = i5;
            }
            int i51 = i48 + 1;
            iCharAt5 = strM21183if.charAt(i48);
            if (iCharAt5 >= 55296) {
                int i52 = iCharAt5 & 8191;
                int i53 = 13;
                while (true) {
                    i4 = i51 + 1;
                    cCharAt = strM21183if.charAt(i51);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i52 |= (cCharAt & 8191) << i53;
                    i53 += 13;
                    i51 = i4;
                }
                iCharAt5 = i52 | (cCharAt << i53);
                i51 = i4;
            }
            iArr = new int[iCharAt5 + iCharAt4 + iCharAt9];
            i2 = (iCharAt7 * 2) + iCharAt8;
            i3 = iCharAt7;
            i27 = i51;
        }
        Unsafe unsafe = f16849finally;
        Object[] objArrM21182do = t0Var.m21182do();
        Class<?> cls = t0Var.getDefaultInstance().getClass();
        int[] iArr2 = new int[iCharAt3 * 3];
        Object[] objArr2 = new Object[iCharAt3 * 2];
        int i54 = iCharAt5 + iCharAt4;
        int i55 = iCharAt5;
        int i56 = i54;
        int i57 = 0;
        int i58 = 0;
        while (i27 < length) {
            int i59 = i27 + 1;
            int iCharAt10 = strM21183if.charAt(i27);
            if (iCharAt10 >= c) {
                int i60 = iCharAt10 & 8191;
                int i61 = i59;
                int i62 = 13;
                while (true) {
                    i24 = i61 + 1;
                    cCharAt12 = strM21183if.charAt(i61);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i60 |= (cCharAt12 & 8191) << i62;
                    i62 += 13;
                    i61 = i24;
                }
                iCharAt10 = i60 | (cCharAt12 << i62);
                i12 = i24;
            } else {
                i12 = i59;
            }
            int i63 = i12 + 1;
            int iCharAt11 = strM21183if.charAt(i12);
            if (iCharAt11 >= c) {
                int i64 = iCharAt11 & 8191;
                int i65 = i63;
                int i66 = 13;
                while (true) {
                    i23 = i65 + 1;
                    cCharAt11 = strM21183if.charAt(i65);
                    i13 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i64 |= (cCharAt11 & 8191) << i66;
                    i66 += 13;
                    i65 = i23;
                    length = i13;
                }
                iCharAt11 = i64 | (cCharAt11 << i66);
                i14 = i23;
            } else {
                i13 = length;
                i14 = i63;
            }
            int i67 = iCharAt11 & 255;
            int i68 = iCharAt5;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i57] = i58;
                i57++;
            }
            int i69 = i57;
            if (i67 >= 51) {
                int i70 = i14 + 1;
                int iCharAt12 = strM21183if.charAt(i14);
                char c2 = 55296;
                if (iCharAt12 >= 55296) {
                    int i71 = iCharAt12 & 8191;
                    int i72 = 13;
                    while (true) {
                        i22 = i70 + 1;
                        cCharAt10 = strM21183if.charAt(i70);
                        if (cCharAt10 < c2) {
                            break;
                        }
                        i71 |= (cCharAt10 & 8191) << i72;
                        i72 += 13;
                        i70 = i22;
                        c2 = 55296;
                    }
                    iCharAt12 = i71 | (cCharAt10 << i72);
                    i70 = i22;
                }
                int i73 = i67 - 51;
                int i74 = i70;
                if (i73 == 9 || i73 == 17) {
                    i21 = i2 + 1;
                    objArr2[((i58 / 3) * 2) + 1] = objArrM21182do[i2];
                } else {
                    if (i73 == 12 && !z2) {
                        i21 = i2 + 1;
                        objArr2[((i58 / 3) * 2) + 1] = objArrM21182do[i2];
                    }
                    int i75 = iCharAt12 * 2;
                    obj = objArrM21182do[i75];
                    if (obj instanceof Field) {
                        fieldR2 = r(cls, (String) obj);
                        objArrM21182do[i75] = fieldR2;
                    } else {
                        fieldR2 = (Field) obj;
                    }
                    i15 = iCharAt;
                    i16 = iCharAt2;
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldR2);
                    int i76 = i75 + 1;
                    obj2 = objArrM21182do[i76];
                    if (obj2 instanceof Field) {
                        fieldR3 = r(cls, (String) obj2);
                        objArrM21182do[i76] = fieldR3;
                    } else {
                        fieldR3 = (Field) obj2;
                    }
                    int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldR3);
                    str = strM21183if;
                    z = z2;
                    objArr = objArr2;
                    i18 = i74;
                    iObjectFieldOffset2 = iObjectFieldOffset4;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i19 = 0;
                }
                i2 = i21;
                int i752 = iCharAt12 * 2;
                obj = objArrM21182do[i752];
                if (obj instanceof Field) {
                }
                i15 = iCharAt;
                i16 = iCharAt2;
                int iObjectFieldOffset32 = (int) unsafe.objectFieldOffset(fieldR2);
                int i762 = i752 + 1;
                obj2 = objArrM21182do[i762];
                if (obj2 instanceof Field) {
                }
                int iObjectFieldOffset42 = (int) unsafe.objectFieldOffset(fieldR3);
                str = strM21183if;
                z = z2;
                objArr = objArr2;
                i18 = i74;
                iObjectFieldOffset2 = iObjectFieldOffset42;
                iObjectFieldOffset = iObjectFieldOffset32;
                i19 = 0;
            } else {
                i15 = iCharAt;
                i16 = iCharAt2;
                int i77 = i2 + 1;
                Field fieldR4 = r(cls, (String) objArrM21182do[i2]);
                if (i67 == 9 || i67 == 17) {
                    objArr2[((i58 / 3) * 2) + 1] = fieldR4.getType();
                } else {
                    if (i67 == 27 || i67 == 49) {
                        i20 = i77 + 1;
                        objArr2[((i58 / 3) * 2) + 1] = objArrM21182do[i77];
                    } else if (i67 == 12 || i67 == 30 || i67 == 44) {
                        if (!z2) {
                            i20 = i77 + 1;
                            objArr2[((i58 / 3) * 2) + 1] = objArrM21182do[i77];
                        }
                    } else if (i67 == 50) {
                        int i78 = i55 + 1;
                        iArr[i55] = i58;
                        int i79 = (i58 / 3) * 2;
                        int i80 = i77 + 1;
                        objArr2[i79] = objArrM21182do[i77];
                        if ((iCharAt11 & 2048) != 0) {
                            i77 = i80 + 1;
                            objArr2[i79 + 1] = objArrM21182do[i80];
                            i55 = i78;
                        } else {
                            i55 = i78;
                            i17 = i80;
                            iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldR4);
                            int i81 = i17;
                            if (!((iCharAt11 & 4096) == 4096) || i67 > 17) {
                                str = strM21183if;
                                z = z2;
                                objArr = objArr2;
                                iObjectFieldOffset2 = 1048575;
                                i18 = i14;
                                i19 = 0;
                            } else {
                                int i82 = i14 + 1;
                                int iCharAt13 = strM21183if.charAt(i14);
                                if (iCharAt13 >= 55296) {
                                    int i83 = iCharAt13 & 8191;
                                    int i84 = 13;
                                    while (true) {
                                        i18 = i82 + 1;
                                        cCharAt9 = strM21183if.charAt(i82);
                                        if (cCharAt9 < 55296) {
                                            break;
                                        }
                                        i83 |= (cCharAt9 & 8191) << i84;
                                        i84 += 13;
                                        i82 = i18;
                                    }
                                    iCharAt13 = i83 | (cCharAt9 << i84);
                                } else {
                                    i18 = i82;
                                }
                                int i85 = (i3 * 2) + (iCharAt13 / 32);
                                Object obj3 = objArrM21182do[i85];
                                str = strM21183if;
                                if (obj3 instanceof Field) {
                                    fieldR = (Field) obj3;
                                } else {
                                    fieldR = r(cls, (String) obj3);
                                    objArrM21182do[i85] = fieldR;
                                }
                                z = z2;
                                objArr = objArr2;
                                i19 = iCharAt13 % 32;
                                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldR);
                            }
                            if (i67 >= 18 && i67 <= 49) {
                                iArr[i56] = iObjectFieldOffset;
                                i56++;
                            }
                            i2 = i81;
                        }
                    }
                    i17 = i20;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldR4);
                    int i812 = i17;
                    if ((iCharAt11 & 4096) == 4096) {
                        str = strM21183if;
                        z = z2;
                        objArr = objArr2;
                        iObjectFieldOffset2 = 1048575;
                        i18 = i14;
                        i19 = 0;
                        if (i67 >= 18) {
                            iArr[i56] = iObjectFieldOffset;
                            i56++;
                        }
                        i2 = i812;
                    }
                }
                i17 = i77;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldR4);
                int i8122 = i17;
                if ((iCharAt11 & 4096) == 4096) {
                }
            }
            int i86 = i58 + 1;
            iArr2[i58] = iCharAt10;
            int i87 = i86 + 1;
            iArr2[i86] = ((iCharAt11 & 256) != 0 ? f16854static : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | (i67 << 20) | iObjectFieldOffset;
            i58 = i87 + 1;
            iArr2[i87] = (i19 << 20) | iObjectFieldOffset2;
            z2 = z;
            objArr2 = objArr;
            iCharAt = i15;
            iCharAt5 = i68;
            length = i13;
            i27 = i18;
            i57 = i69;
            strM21183if = str;
            iCharAt2 = i16;
            c = 55296;
        }
        return new e0<>(iArr2, objArr2, iCharAt, iCharAt2, t0Var.getDefaultInstance(), z2, false, iArr, iCharAt5, i54, newInstanceSchema, tVar, s1Var, cinstanceof, mapFieldSchema);
    }

    /* renamed from: import, reason: not valid java name */
    private static <T> int m20317import(T t, long j) {
        return z1.m21680protected(t, j);
    }

    /* renamed from: instanceof, reason: not valid java name */
    private int m20318instanceof(int i) {
        return this.f16862do[i];
    }

    /* renamed from: interface, reason: not valid java name */
    private void m20319interface(T t, T t2, int i) {
        int iX = x(i);
        long jM20331synchronized = m20331synchronized(iX);
        int iM20318instanceof = m20318instanceof(i);
        switch (w(iX)) {
            case 0:
                if (m20325public(t2, i)) {
                    z1.t(t, jM20331synchronized, z1.m21656abstract(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 1:
                if (m20325public(t2, i)) {
                    z1.v(t, jM20331synchronized, z1.m21684strictfp(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 2:
                if (m20325public(t2, i)) {
                    z1.B(t, jM20331synchronized, z1.m21674instanceof(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 3:
                if (m20325public(t2, i)) {
                    z1.B(t, jM20331synchronized, z1.m21674instanceof(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 4:
                if (m20325public(t2, i)) {
                    z1.y(t, jM20331synchronized, z1.m21680protected(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 5:
                if (m20325public(t2, i)) {
                    z1.B(t, jM20331synchronized, z1.m21674instanceof(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 6:
                if (m20325public(t2, i)) {
                    z1.y(t, jM20331synchronized, z1.m21680protected(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 7:
                if (m20325public(t2, i)) {
                    z1.k(t, jM20331synchronized, z1.m21682return(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 8:
                if (m20325public(t2, i)) {
                    z1.D(t, jM20331synchronized, z1.b(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 9:
                m20328strictfp(t, t2, i);
                break;
            case 10:
                if (m20325public(t2, i)) {
                    z1.D(t, jM20331synchronized, z1.b(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 11:
                if (m20325public(t2, i)) {
                    z1.y(t, jM20331synchronized, z1.m21680protected(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 12:
                if (m20325public(t2, i)) {
                    z1.y(t, jM20331synchronized, z1.m21680protected(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 13:
                if (m20325public(t2, i)) {
                    z1.y(t, jM20331synchronized, z1.m21680protected(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 14:
                if (m20325public(t2, i)) {
                    z1.B(t, jM20331synchronized, z1.m21674instanceof(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 15:
                if (m20325public(t2, i)) {
                    z1.y(t, jM20331synchronized, z1.m21680protected(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 16:
                if (m20325public(t2, i)) {
                    z1.B(t, jM20331synchronized, z1.m21674instanceof(t2, jM20331synchronized));
                    s(t, i);
                    break;
                }
                break;
            case 17:
                m20328strictfp(t, t2, i);
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                this.f16864final.mo21177new(t, t2, jM20331synchronized);
                break;
            case 50:
                y0.m21623protected(this.f16873while, t, t2, jM20331synchronized);
                break;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (m20311extends(t2, iM20318instanceof, i)) {
                    z1.D(t, jM20331synchronized, z1.b(t2, jM20331synchronized));
                    t(t, iM20318instanceof, i);
                    break;
                }
                break;
            case 60:
                m20337volatile(t, t2, i);
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (m20311extends(t2, iM20318instanceof, i)) {
                    z1.D(t, jM20331synchronized, z1.b(t2, jM20331synchronized));
                    t(t, iM20318instanceof, i);
                    break;
                }
                break;
            case 68:
                m20337volatile(t, t2, i);
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int j(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, Cthis.Cif cif) throws IOException {
        int iM21306transient;
        Unsafe unsafe = f16849finally;
        Internal.ProtobufList protobufListMutableCopyWithCapacity2 = (Internal.ProtobufList) unsafe.getObject(t, j2);
        if (!protobufListMutableCopyWithCapacity2.isModifiable()) {
            int size = protobufListMutableCopyWithCapacity2.size();
            protobufListMutableCopyWithCapacity2 = protobufListMutableCopyWithCapacity2.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
            unsafe.putObject(t, j2, protobufListMutableCopyWithCapacity2);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    return Cthis.m21291native(bArr, i, protobufListMutableCopyWithCapacity2, cif);
                }
                if (i5 == 1) {
                    return Cthis.m21307try(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif);
                }
                break;
            case 19:
            case 36:
                if (i5 == 2) {
                    return Cthis.m21298static(bArr, i, protobufListMutableCopyWithCapacity2, cif);
                }
                if (i5 == 5) {
                    return Cthis.m21276const(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif);
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    return Cthis.m21281extends(bArr, i, protobufListMutableCopyWithCapacity2, cif);
                }
                if (i5 == 0) {
                    return Cthis.m21302synchronized(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif);
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return Cthis.m21278default(bArr, i, protobufListMutableCopyWithCapacity2, cif);
                }
                if (i5 == 0) {
                    return Cthis.m21306transient(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    return Cthis.m21297return(bArr, i, protobufListMutableCopyWithCapacity2, cif);
                }
                if (i5 == 1) {
                    return Cthis.m21274catch(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif);
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    return Cthis.m21296public(bArr, i, protobufListMutableCopyWithCapacity2, cif);
                }
                if (i5 == 5) {
                    return Cthis.m21303this(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif);
                }
                break;
            case 25:
            case 42:
                if (i5 == 2) {
                    return Cthis.m21288import(bArr, i, protobufListMutableCopyWithCapacity2, cif);
                }
                if (i5 == 0) {
                    return Cthis.m21279do(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif);
                }
                break;
            case 26:
                if (i5 == 2) {
                    return (j & 536870912) == 0 ? Cthis.m21271abstract(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif) : Cthis.m21277continue(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif);
                }
                break;
            case 27:
                if (i5 == 2) {
                    return Cthis.m21309while(m20305class(i6), i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif);
                }
                break;
            case 28:
                if (i5 == 2) {
                    return Cthis.m21284for(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif);
                }
                break;
            case 30:
            case 44:
                if (i5 == 2) {
                    iM21306transient = Cthis.m21278default(bArr, i, protobufListMutableCopyWithCapacity2, cif);
                } else if (i5 == 0) {
                    iM21306transient = Cthis.m21306transient(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif);
                }
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t;
                u1 u1Var = generatedMessageLite.f16465do;
                if (u1Var == u1.m21421for()) {
                    u1Var = null;
                }
                u1 u1Var2 = (u1) y0.m21622private(i4, protobufListMutableCopyWithCapacity2, m20302break(i6), u1Var, this.f16869super);
                if (u1Var2 != null) {
                    generatedMessageLite.f16465do = u1Var2;
                }
                return iM21306transient;
            case 33:
            case 47:
                if (i5 == 2) {
                    return Cthis.m21301switch(bArr, i, protobufListMutableCopyWithCapacity2, cif);
                }
                if (i5 == 0) {
                    return Cthis.m21283finally(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif);
                }
                break;
            case 34:
            case 48:
                if (i5 == 2) {
                    return Cthis.m21305throws(bArr, i, protobufListMutableCopyWithCapacity2, cif);
                }
                if (i5 == 0) {
                    return Cthis.m21293package(i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif);
                }
                break;
            case 49:
                if (i5 == 3) {
                    return Cthis.m21300super(m20305class(i6), i3, bArr, i, i2, protobufListMutableCopyWithCapacity2, cif);
                }
                break;
        }
        return i;
    }

    private int k(int i) {
        if (i < this.f16865for || i > this.f16868new) {
            return -1;
        }
        return u(i, 0);
    }

    private int l(int i, int i2) {
        if (i < this.f16865for || i > this.f16868new) {
            return -1;
        }
        return u(i, i2);
    }

    private int m(int i) {
        return this.f16862do[i + 2];
    }

    private <E> void n(Object obj, long j, Reader reader, Schema<E> schema, Cimplements cimplements) throws IOException {
        reader.readGroupList(this.f16864final.mo21178try(obj, j), schema, cimplements);
    }

    /* renamed from: native, reason: not valid java name */
    private static boolean m20320native(int i) {
        return (i & 536870912) != 0;
    }

    /* renamed from: new, reason: not valid java name */
    private int m20321new(byte[] bArr, int i, int i2, c2.Cif cif, Class<?> cls, Cthis.Cif cif2) throws IOException {
        switch (Cdo.f16874do[cif.ordinal()]) {
            case 1:
                int iM21289instanceof = Cthis.m21289instanceof(bArr, i, cif2);
                cif2.f17246for = Boolean.valueOf(cif2.f17247if != 0);
                return iM21289instanceof;
            case 2:
                return Cthis.m21286if(bArr, i, cif2);
            case 3:
                cif2.f17246for = Double.valueOf(Cthis.m21292new(bArr, i));
                return i + 8;
            case 4:
            case 5:
                cif2.f17246for = Integer.valueOf(Cthis.m21285goto(bArr, i));
                return i + 4;
            case 6:
            case 7:
                cif2.f17246for = Long.valueOf(Cthis.m21272break(bArr, i));
                return i + 8;
            case 8:
                cif2.f17246for = Float.valueOf(Cthis.m21275class(bArr, i));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int iM21295protected = Cthis.m21295protected(bArr, i, cif2);
                cif2.f17246for = Integer.valueOf(cif2.f17245do);
                return iM21295protected;
            case 12:
            case 13:
                int iM21289instanceof2 = Cthis.m21289instanceof(bArr, i, cif2);
                cif2.f17246for = Long.valueOf(cif2.f17247if);
                return iM21289instanceof2;
            case 14:
                return Cthis.m21304throw(q0.m21002do().m21011this(cls), bArr, i, i2, cif2);
            case 15:
                int iM21295protected2 = Cthis.m21295protected(bArr, i, cif2);
                cif2.f17246for = Integer.valueOf(CodedInputStream.m18414if(cif2.f17245do));
                return iM21295protected2;
            case 16:
                int iM21289instanceof3 = Cthis.m21289instanceof(bArr, i, cif2);
                cif2.f17246for = Long.valueOf(CodedInputStream.m18413for(cif2.f17247if));
                return iM21289instanceof3;
            case 17:
                return Cthis.m21299strictfp(bArr, i, cif2);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private <E> void o(Object obj, int i, Reader reader, Schema<E> schema, Cimplements cimplements) throws IOException {
        reader.readMessageList(this.f16864final.mo21178try(obj, m20331synchronized(i)), schema, cimplements);
    }

    private void p(Object obj, int i, Reader reader) throws IOException {
        if (m20320native(i)) {
            z1.D(obj, m20331synchronized(i), reader.readStringRequireUtf8());
        } else if (this.f16863else) {
            z1.D(obj, m20331synchronized(i), reader.readString());
        } else {
            z1.D(obj, m20331synchronized(i), reader.readBytes());
        }
    }

    /* renamed from: package, reason: not valid java name */
    private static List<?> m20322package(Object obj, long j) {
        return (List) z1.b(obj, j);
    }

    /* renamed from: private, reason: not valid java name */
    private static <T> long m20323private(T t, long j) {
        return z1.m21674instanceof(t, j);
    }

    /* renamed from: protected, reason: not valid java name */
    public static <T> e0<T> m20324protected(Class<T> cls, MessageInfo messageInfo, NewInstanceSchema newInstanceSchema, t tVar, s1<?, ?> s1Var, Cinstanceof<?> cinstanceof, MapFieldSchema mapFieldSchema) {
        return messageInfo instanceof t0 ? m20316implements((t0) messageInfo, newInstanceSchema, tVar, s1Var, cinstanceof, mapFieldSchema) : m20335transient((h1) messageInfo, newInstanceSchema, tVar, s1Var, cinstanceof, mapFieldSchema);
    }

    /* renamed from: public, reason: not valid java name */
    private boolean m20325public(T t, int i) {
        int iM = m(i);
        long j = 1048575 & iM;
        if (j != 1048575) {
            return (z1.m21680protected(t, j) & (1 << (iM >>> 20))) != 0;
        }
        int iX = x(i);
        long jM20331synchronized = m20331synchronized(iX);
        switch (w(iX)) {
            case 0:
                return z1.m21656abstract(t, jM20331synchronized) != 0.0d;
            case 1:
                return z1.m21684strictfp(t, jM20331synchronized) != 0.0f;
            case 2:
                return z1.m21674instanceof(t, jM20331synchronized) != 0;
            case 3:
                return z1.m21674instanceof(t, jM20331synchronized) != 0;
            case 4:
                return z1.m21680protected(t, jM20331synchronized) != 0;
            case 5:
                return z1.m21674instanceof(t, jM20331synchronized) != 0;
            case 6:
                return z1.m21680protected(t, jM20331synchronized) != 0;
            case 7:
                return z1.m21682return(t, jM20331synchronized);
            case 8:
                Object objB = z1.b(t, jM20331synchronized);
                if (objB instanceof String) {
                    return !((String) objB).isEmpty();
                }
                if (objB instanceof ByteString) {
                    return !ByteString.EMPTY.equals(objB);
                }
                throw new IllegalArgumentException();
            case 9:
                return z1.b(t, jM20331synchronized) != null;
            case 10:
                return !ByteString.EMPTY.equals(z1.b(t, jM20331synchronized));
            case 11:
                return z1.m21680protected(t, jM20331synchronized) != 0;
            case 12:
                return z1.m21680protected(t, jM20331synchronized) != 0;
            case 13:
                return z1.m21680protected(t, jM20331synchronized) != 0;
            case 14:
                return z1.m21674instanceof(t, jM20331synchronized) != 0;
            case 15:
                return z1.m21680protected(t, jM20331synchronized) != 0;
            case 16:
                return z1.m21674instanceof(t, jM20331synchronized) != 0;
            case 17:
                return z1.b(t, jM20331synchronized) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private void q(Object obj, int i, Reader reader) throws IOException {
        if (m20320native(i)) {
            reader.readStringListRequireUtf8(this.f16864final.mo21178try(obj, m20331synchronized(i)));
        } else {
            reader.readStringList(this.f16864final.mo21178try(obj, m20331synchronized(i)));
        }
    }

    private static Field r(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + name.length() + String.valueOf(string).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(string);
            throw new RuntimeException(sb.toString());
        }
    }

    /* renamed from: return, reason: not valid java name */
    private boolean m20326return(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m20325public(t, i) : (i3 & i4) != 0;
    }

    private void s(T t, int i) {
        int iM = m(i);
        long j = 1048575 & iM;
        if (j == 1048575) {
            return;
        }
        z1.y(t, j, (1 << (iM >>> 20)) | z1.m21680protected(t, j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: static, reason: not valid java name */
    private static boolean m20327static(Object obj, int i, Schema schema) {
        return schema.isInitialized(z1.b(obj, m20331synchronized(i)));
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m20328strictfp(T t, T t2, int i) {
        long jM20331synchronized = m20331synchronized(x(i));
        if (m20325public(t2, i)) {
            Object objB = z1.b(t, jM20331synchronized);
            Object objB2 = z1.b(t2, jM20331synchronized);
            if (objB != null && objB2 != null) {
                z1.D(t, jM20331synchronized, Internal.m19626static(objB, objB2));
                s(t, i);
            } else if (objB2 != null) {
                z1.D(t, jM20331synchronized, objB2);
                s(t, i);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: super, reason: not valid java name */
    private int m20329super(T t) {
        int i;
        int i2;
        int iM20902throw;
        int iM20885goto;
        int iH;
        int iM21631this;
        int iR;
        int iT;
        Unsafe unsafe = f16849finally;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        int i7 = 0;
        while (i4 < this.f16862do.length) {
            int iX = x(i4);
            int iM20318instanceof = m20318instanceof(i4);
            int iW = w(iX);
            if (iW <= 17) {
                i = this.f16862do[i4 + 2];
                int i8 = i & i3;
                i2 = 1 << (i >>> 20);
                if (i8 != i6) {
                    i7 = unsafe.getInt(t, i8);
                    i6 = i8;
                }
            } else {
                i = (!this.f16870this || iW < g.DOUBLE_LIST_PACKED.id() || iW > g.SINT64_LIST_PACKED.id()) ? 0 : this.f16862do[i4 + 2] & i3;
                i2 = 0;
            }
            long jM20331synchronized = m20331synchronized(iX);
            switch (iW) {
                case 0:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        iM20902throw = Cnative.m20902throw(iM20318instanceof, 0.0d);
                        i5 += iM20902throw;
                        break;
                    }
                case 1:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        iM20902throw = Cnative.m20903throws(iM20318instanceof, 0.0f);
                        i5 += iM20902throw;
                        break;
                    }
                case 2:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        iM20902throw = Cnative.m20897strictfp(iM20318instanceof, unsafe.getLong(t, jM20331synchronized));
                        i5 += iM20902throw;
                        break;
                    }
                case 3:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        iM20902throw = Cnative.u(iM20318instanceof, unsafe.getLong(t, jM20331synchronized));
                        i5 += iM20902throw;
                        break;
                    }
                case 4:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        iM20902throw = Cnative.m20874abstract(iM20318instanceof, unsafe.getInt(t, jM20331synchronized));
                        i5 += iM20902throw;
                        break;
                    }
                case 5:
                    if ((i7 & i2) == 0) {
                        break;
                    } else {
                        iM20902throw = Cnative.m20896static(iM20318instanceof, 0L);
                        i5 += iM20902throw;
                        break;
                    }
                case 6:
                    if ((i7 & i2) != 0) {
                        iM20902throw = Cnative.m20894public(iM20318instanceof, 0);
                        i5 += iM20902throw;
                        break;
                    }
                    break;
                case 7:
                    if ((i7 & i2) != 0) {
                        iM20885goto = Cnative.m20885goto(iM20318instanceof, true);
                        i5 += iM20885goto;
                    }
                    break;
                case 8:
                    if ((i7 & i2) != 0) {
                        Object object = unsafe.getObject(t, jM20331synchronized);
                        iM20885goto = object instanceof ByteString ? Cnative.m20883final(iM20318instanceof, (ByteString) object) : Cnative.p(iM20318instanceof, (String) object);
                        i5 += iM20885goto;
                    }
                    break;
                case 9:
                    if ((i7 & i2) != 0) {
                        iM20885goto = y0.m21632throw(iM20318instanceof, unsafe.getObject(t, jM20331synchronized), m20305class(i4));
                        i5 += iM20885goto;
                    }
                    break;
                case 10:
                    if ((i7 & i2) != 0) {
                        iM20885goto = Cnative.m20883final(iM20318instanceof, (ByteString) unsafe.getObject(t, jM20331synchronized));
                        i5 += iM20885goto;
                    }
                    break;
                case 11:
                    if ((i7 & i2) != 0) {
                        iM20885goto = Cnative.s(iM20318instanceof, unsafe.getInt(t, jM20331synchronized));
                        i5 += iM20885goto;
                    }
                    break;
                case 12:
                    if ((i7 & i2) != 0) {
                        iM20885goto = Cnative.m20887import(iM20318instanceof, unsafe.getInt(t, jM20331synchronized));
                        i5 += iM20885goto;
                    }
                    break;
                case 13:
                    if ((i7 & i2) != 0) {
                        iH = Cnative.h(iM20318instanceof, 0);
                        i5 += iH;
                    }
                    break;
                case 14:
                    if ((i7 & i2) != 0) {
                        iM20885goto = Cnative.j(iM20318instanceof, 0L);
                        i5 += iM20885goto;
                    }
                    break;
                case 15:
                    if ((i7 & i2) != 0) {
                        iM20885goto = Cnative.l(iM20318instanceof, unsafe.getInt(t, jM20331synchronized));
                        i5 += iM20885goto;
                    }
                    break;
                case 16:
                    if ((i7 & i2) != 0) {
                        iM20885goto = Cnative.n(iM20318instanceof, unsafe.getLong(t, jM20331synchronized));
                        i5 += iM20885goto;
                    }
                    break;
                case 17:
                    if ((i7 & i2) != 0) {
                        iM20885goto = Cnative.m20884finally(iM20318instanceof, (MessageLite) unsafe.getObject(t, jM20331synchronized), m20305class(i4));
                        i5 += iM20885goto;
                    }
                    break;
                case 18:
                    iM20885goto = y0.m21613goto(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), false);
                    i5 += iM20885goto;
                    break;
                case 19:
                    iM20885goto = y0.m21601case(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), false);
                    i5 += iM20885goto;
                    break;
                case 20:
                    iM20885goto = y0.m21610final(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), false);
                    i5 += iM20885goto;
                    break;
                case 21:
                    iM20885goto = y0.m21609extends(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), false);
                    i5 += iM20885goto;
                    break;
                case 22:
                    iM20885goto = y0.m21603class(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), false);
                    i5 += iM20885goto;
                    break;
                case 23:
                    iM20885goto = y0.m21613goto(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), false);
                    i5 += iM20885goto;
                    break;
                case 24:
                    iM20885goto = y0.m21601case(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), false);
                    i5 += iM20885goto;
                    break;
                case 25:
                    iM20885goto = y0.m21607do(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), false);
                    i5 += iM20885goto;
                    break;
                case 26:
                    iM20885goto = y0.m21629switch(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized));
                    i5 += iM20885goto;
                    break;
                case 27:
                    iM20885goto = y0.m21616import(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), m20305class(i4));
                    i5 += iM20885goto;
                    break;
                case 28:
                    iM20885goto = y0.m21612for(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized));
                    i5 += iM20885goto;
                    break;
                case 29:
                    iM20885goto = y0.m21633throws(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), false);
                    i5 += iM20885goto;
                    break;
                case 30:
                    iM20885goto = y0.m21620new(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), false);
                    i5 += iM20885goto;
                    break;
                case 31:
                    iM20885goto = y0.m21601case(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), false);
                    i5 += iM20885goto;
                    break;
                case 32:
                    iM20885goto = y0.m21613goto(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), false);
                    i5 += iM20885goto;
                    break;
                case 33:
                    iM20885goto = y0.m21619native(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), false);
                    i5 += iM20885goto;
                    break;
                case 34:
                    iM20885goto = y0.m21625return(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), false);
                    i5 += iM20885goto;
                    break;
                case 35:
                    iM21631this = y0.m21631this((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this > 0) {
                        if (this.f16870this) {
                            unsafe.putInt(t, i, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iH = iR + iT + iM21631this;
                        i5 += iH;
                    }
                    break;
                case 36:
                    iM21631this = y0.m21608else((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this > 0) {
                        if (this.f16870this) {
                            unsafe.putInt(t, i, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iH = iR + iT + iM21631this;
                        i5 += iH;
                    }
                    break;
                case 37:
                    iM21631this = y0.m21628super((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this > 0) {
                        if (this.f16870this) {
                            unsafe.putInt(t, i, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iH = iR + iT + iM21631this;
                        i5 += iH;
                    }
                    break;
                case 38:
                    iM21631this = y0.m21611finally((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this > 0) {
                        if (this.f16870this) {
                            unsafe.putInt(t, i, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iH = iR + iT + iM21631this;
                        i5 += iH;
                    }
                    break;
                case 39:
                    iM21631this = y0.m21604const((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this > 0) {
                        if (this.f16870this) {
                            unsafe.putInt(t, i, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iH = iR + iT + iM21631this;
                        i5 += iH;
                    }
                    break;
                case 40:
                    iM21631this = y0.m21631this((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this > 0) {
                        if (this.f16870this) {
                            unsafe.putInt(t, i, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iH = iR + iT + iM21631this;
                        i5 += iH;
                    }
                    break;
                case 41:
                    iM21631this = y0.m21608else((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this > 0) {
                        if (this.f16870this) {
                            unsafe.putInt(t, i, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iH = iR + iT + iM21631this;
                        i5 += iH;
                    }
                    break;
                case 42:
                    iM21631this = y0.m21614if((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this > 0) {
                        if (this.f16870this) {
                            unsafe.putInt(t, i, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iH = iR + iT + iM21631this;
                        i5 += iH;
                    }
                    break;
                case 43:
                    iM21631this = y0.m21606default((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this > 0) {
                        if (this.f16870this) {
                            unsafe.putInt(t, i, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iH = iR + iT + iM21631this;
                        i5 += iH;
                    }
                    break;
                case 44:
                    iM21631this = y0.m21635try((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this > 0) {
                        if (this.f16870this) {
                            unsafe.putInt(t, i, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iH = iR + iT + iM21631this;
                        i5 += iH;
                    }
                    break;
                case 45:
                    iM21631this = y0.m21608else((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this > 0) {
                        if (this.f16870this) {
                            unsafe.putInt(t, i, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iH = iR + iT + iM21631this;
                        i5 += iH;
                    }
                    break;
                case 46:
                    iM21631this = y0.m21631this((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this > 0) {
                        if (this.f16870this) {
                            unsafe.putInt(t, i, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iH = iR + iT + iM21631this;
                        i5 += iH;
                    }
                    break;
                case 47:
                    iM21631this = y0.m21624public((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this > 0) {
                        if (this.f16870this) {
                            unsafe.putInt(t, i, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iH = iR + iT + iM21631this;
                        i5 += iH;
                    }
                    break;
                case 48:
                    iM21631this = y0.m21626static((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this > 0) {
                        if (this.f16870this) {
                            unsafe.putInt(t, i, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iH = iR + iT + iM21631this;
                        i5 += iH;
                    }
                    break;
                case 49:
                    iM20885goto = y0.m21602catch(iM20318instanceof, (List) unsafe.getObject(t, jM20331synchronized), m20305class(i4));
                    i5 += iM20885goto;
                    break;
                case 50:
                    iM20885goto = this.f16873while.getSerializedSize(iM20318instanceof, unsafe.getObject(t, jM20331synchronized), m20304catch(i4));
                    i5 += iM20885goto;
                    break;
                case 51:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = Cnative.m20902throw(iM20318instanceof, 0.0d);
                        i5 += iM20885goto;
                    }
                    break;
                case 52:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = Cnative.m20903throws(iM20318instanceof, 0.0f);
                        i5 += iM20885goto;
                    }
                    break;
                case 53:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = Cnative.m20897strictfp(iM20318instanceof, e(t, jM20331synchronized));
                        i5 += iM20885goto;
                    }
                    break;
                case 54:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = Cnative.u(iM20318instanceof, e(t, jM20331synchronized));
                        i5 += iM20885goto;
                    }
                    break;
                case 55:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = Cnative.m20874abstract(iM20318instanceof, d(t, jM20331synchronized));
                        i5 += iM20885goto;
                    }
                    break;
                case 56:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = Cnative.m20896static(iM20318instanceof, 0L);
                        i5 += iM20885goto;
                    }
                    break;
                case 57:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iH = Cnative.m20894public(iM20318instanceof, 0);
                        i5 += iH;
                    }
                    break;
                case 58:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = Cnative.m20885goto(iM20318instanceof, true);
                        i5 += iM20885goto;
                    }
                    break;
                case 59:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        Object object2 = unsafe.getObject(t, jM20331synchronized);
                        iM20885goto = object2 instanceof ByteString ? Cnative.m20883final(iM20318instanceof, (ByteString) object2) : Cnative.p(iM20318instanceof, (String) object2);
                        i5 += iM20885goto;
                    }
                    break;
                case 60:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = y0.m21632throw(iM20318instanceof, unsafe.getObject(t, jM20331synchronized), m20305class(i4));
                        i5 += iM20885goto;
                    }
                    break;
                case 61:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = Cnative.m20883final(iM20318instanceof, (ByteString) unsafe.getObject(t, jM20331synchronized));
                        i5 += iM20885goto;
                    }
                    break;
                case 62:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = Cnative.s(iM20318instanceof, d(t, jM20331synchronized));
                        i5 += iM20885goto;
                    }
                    break;
                case 63:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = Cnative.m20887import(iM20318instanceof, d(t, jM20331synchronized));
                        i5 += iM20885goto;
                    }
                    break;
                case 64:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iH = Cnative.h(iM20318instanceof, 0);
                        i5 += iH;
                    }
                    break;
                case 65:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = Cnative.j(iM20318instanceof, 0L);
                        i5 += iM20885goto;
                    }
                    break;
                case 66:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = Cnative.l(iM20318instanceof, d(t, jM20331synchronized));
                        i5 += iM20885goto;
                    }
                    break;
                case 67:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = Cnative.n(iM20318instanceof, e(t, jM20331synchronized));
                        i5 += iM20885goto;
                    }
                    break;
                case 68:
                    if (m20311extends(t, iM20318instanceof, i4)) {
                        iM20885goto = Cnative.m20884finally(iM20318instanceof, (MessageLite) unsafe.getObject(t, jM20331synchronized), m20305class(i4));
                        i5 += iM20885goto;
                    }
                    break;
            }
            i4 += 3;
            i3 = 1048575;
        }
        int iM20338while = i5 + m20338while(this.f16869super, t);
        return this.f16858case ? iM20338while + this.f16871throw.mo19676for(t).m19387extends() : iM20338while;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: switch, reason: not valid java name */
    private <N> boolean m20330switch(Object obj, int i, int i2) {
        List list = (List) z1.b(obj, m20331synchronized(i));
        if (list.isEmpty()) {
            return true;
        }
        Schema schemaM20305class = m20305class(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (!schemaM20305class.isInitialized(list.get(i3))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: synchronized, reason: not valid java name */
    private static long m20331synchronized(int i) {
        return i & 1048575;
    }

    private void t(T t, int i, int i2) {
        z1.y(t, m(i2) & 1048575, i);
    }

    /* renamed from: this, reason: not valid java name */
    private static <T> float m20332this(T t, long j) {
        return z1.m21684strictfp(t, j);
    }

    /* renamed from: throw, reason: not valid java name */
    private int m20333throw(T t) {
        int iM20902throw;
        int iM21631this;
        int iR;
        int iT;
        Unsafe unsafe = f16849finally;
        int i = 0;
        for (int i2 = 0; i2 < this.f16862do.length; i2 += 3) {
            int iX = x(i2);
            int iW = w(iX);
            int iM20318instanceof = m20318instanceof(i2);
            long jM20331synchronized = m20331synchronized(iX);
            int i3 = (iW < g.DOUBLE_LIST_PACKED.id() || iW > g.SINT64_LIST_PACKED.id()) ? 0 : this.f16862do[i2 + 2] & 1048575;
            switch (iW) {
                case 0:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.m20902throw(iM20318instanceof, 0.0d);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.m20903throws(iM20318instanceof, 0.0f);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.m20897strictfp(iM20318instanceof, z1.m21674instanceof(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.u(iM20318instanceof, z1.m21674instanceof(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.m20874abstract(iM20318instanceof, z1.m21680protected(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.m20896static(iM20318instanceof, 0L);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.m20894public(iM20318instanceof, 0);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.m20885goto(iM20318instanceof, true);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (m20325public(t, i2)) {
                        Object objB = z1.b(t, jM20331synchronized);
                        iM20902throw = objB instanceof ByteString ? Cnative.m20883final(iM20318instanceof, (ByteString) objB) : Cnative.p(iM20318instanceof, (String) objB);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (m20325public(t, i2)) {
                        iM20902throw = y0.m21632throw(iM20318instanceof, z1.b(t, jM20331synchronized), m20305class(i2));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.m20883final(iM20318instanceof, (ByteString) z1.b(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.s(iM20318instanceof, z1.m21680protected(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.m20887import(iM20318instanceof, z1.m21680protected(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.h(iM20318instanceof, 0);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.j(iM20318instanceof, 0L);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.l(iM20318instanceof, z1.m21680protected(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.n(iM20318instanceof, z1.m21674instanceof(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (m20325public(t, i2)) {
                        iM20902throw = Cnative.m20884finally(iM20318instanceof, (MessageLite) z1.b(t, jM20331synchronized), m20305class(i2));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    iM20902throw = y0.m21613goto(iM20318instanceof, m20322package(t, jM20331synchronized), false);
                    i += iM20902throw;
                    break;
                case 19:
                    iM20902throw = y0.m21601case(iM20318instanceof, m20322package(t, jM20331synchronized), false);
                    i += iM20902throw;
                    break;
                case 20:
                    iM20902throw = y0.m21610final(iM20318instanceof, m20322package(t, jM20331synchronized), false);
                    i += iM20902throw;
                    break;
                case 21:
                    iM20902throw = y0.m21609extends(iM20318instanceof, m20322package(t, jM20331synchronized), false);
                    i += iM20902throw;
                    break;
                case 22:
                    iM20902throw = y0.m21603class(iM20318instanceof, m20322package(t, jM20331synchronized), false);
                    i += iM20902throw;
                    break;
                case 23:
                    iM20902throw = y0.m21613goto(iM20318instanceof, m20322package(t, jM20331synchronized), false);
                    i += iM20902throw;
                    break;
                case 24:
                    iM20902throw = y0.m21601case(iM20318instanceof, m20322package(t, jM20331synchronized), false);
                    i += iM20902throw;
                    break;
                case 25:
                    iM20902throw = y0.m21607do(iM20318instanceof, m20322package(t, jM20331synchronized), false);
                    i += iM20902throw;
                    break;
                case 26:
                    iM20902throw = y0.m21629switch(iM20318instanceof, m20322package(t, jM20331synchronized));
                    i += iM20902throw;
                    break;
                case 27:
                    iM20902throw = y0.m21616import(iM20318instanceof, m20322package(t, jM20331synchronized), m20305class(i2));
                    i += iM20902throw;
                    break;
                case 28:
                    iM20902throw = y0.m21612for(iM20318instanceof, m20322package(t, jM20331synchronized));
                    i += iM20902throw;
                    break;
                case 29:
                    iM20902throw = y0.m21633throws(iM20318instanceof, m20322package(t, jM20331synchronized), false);
                    i += iM20902throw;
                    break;
                case 30:
                    iM20902throw = y0.m21620new(iM20318instanceof, m20322package(t, jM20331synchronized), false);
                    i += iM20902throw;
                    break;
                case 31:
                    iM20902throw = y0.m21601case(iM20318instanceof, m20322package(t, jM20331synchronized), false);
                    i += iM20902throw;
                    break;
                case 32:
                    iM20902throw = y0.m21613goto(iM20318instanceof, m20322package(t, jM20331synchronized), false);
                    i += iM20902throw;
                    break;
                case 33:
                    iM20902throw = y0.m21619native(iM20318instanceof, m20322package(t, jM20331synchronized), false);
                    i += iM20902throw;
                    break;
                case 34:
                    iM20902throw = y0.m21625return(iM20318instanceof, m20322package(t, jM20331synchronized), false);
                    i += iM20902throw;
                    break;
                case 35:
                    iM21631this = y0.m21631this((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this <= 0) {
                        break;
                    } else {
                        if (this.f16870this) {
                            unsafe.putInt(t, i3, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iM20902throw = iR + iT + iM21631this;
                        i += iM20902throw;
                        break;
                    }
                case 36:
                    iM21631this = y0.m21608else((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this <= 0) {
                        break;
                    } else {
                        if (this.f16870this) {
                            unsafe.putInt(t, i3, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iM20902throw = iR + iT + iM21631this;
                        i += iM20902throw;
                        break;
                    }
                case 37:
                    iM21631this = y0.m21628super((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this <= 0) {
                        break;
                    } else {
                        if (this.f16870this) {
                            unsafe.putInt(t, i3, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iM20902throw = iR + iT + iM21631this;
                        i += iM20902throw;
                        break;
                    }
                case 38:
                    iM21631this = y0.m21611finally((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this <= 0) {
                        break;
                    } else {
                        if (this.f16870this) {
                            unsafe.putInt(t, i3, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iM20902throw = iR + iT + iM21631this;
                        i += iM20902throw;
                        break;
                    }
                case 39:
                    iM21631this = y0.m21604const((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this <= 0) {
                        break;
                    } else {
                        if (this.f16870this) {
                            unsafe.putInt(t, i3, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iM20902throw = iR + iT + iM21631this;
                        i += iM20902throw;
                        break;
                    }
                case 40:
                    iM21631this = y0.m21631this((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this <= 0) {
                        break;
                    } else {
                        if (this.f16870this) {
                            unsafe.putInt(t, i3, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iM20902throw = iR + iT + iM21631this;
                        i += iM20902throw;
                        break;
                    }
                case 41:
                    iM21631this = y0.m21608else((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this <= 0) {
                        break;
                    } else {
                        if (this.f16870this) {
                            unsafe.putInt(t, i3, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iM20902throw = iR + iT + iM21631this;
                        i += iM20902throw;
                        break;
                    }
                case 42:
                    iM21631this = y0.m21614if((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this <= 0) {
                        break;
                    } else {
                        if (this.f16870this) {
                            unsafe.putInt(t, i3, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iM20902throw = iR + iT + iM21631this;
                        i += iM20902throw;
                        break;
                    }
                case 43:
                    iM21631this = y0.m21606default((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this <= 0) {
                        break;
                    } else {
                        if (this.f16870this) {
                            unsafe.putInt(t, i3, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iM20902throw = iR + iT + iM21631this;
                        i += iM20902throw;
                        break;
                    }
                case 44:
                    iM21631this = y0.m21635try((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this <= 0) {
                        break;
                    } else {
                        if (this.f16870this) {
                            unsafe.putInt(t, i3, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iM20902throw = iR + iT + iM21631this;
                        i += iM20902throw;
                        break;
                    }
                case 45:
                    iM21631this = y0.m21608else((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this <= 0) {
                        break;
                    } else {
                        if (this.f16870this) {
                            unsafe.putInt(t, i3, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iM20902throw = iR + iT + iM21631this;
                        i += iM20902throw;
                        break;
                    }
                case 46:
                    iM21631this = y0.m21631this((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this <= 0) {
                        break;
                    } else {
                        if (this.f16870this) {
                            unsafe.putInt(t, i3, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iM20902throw = iR + iT + iM21631this;
                        i += iM20902throw;
                        break;
                    }
                case 47:
                    iM21631this = y0.m21624public((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this <= 0) {
                        break;
                    } else {
                        if (this.f16870this) {
                            unsafe.putInt(t, i3, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iM20902throw = iR + iT + iM21631this;
                        i += iM20902throw;
                        break;
                    }
                case 48:
                    iM21631this = y0.m21626static((List) unsafe.getObject(t, jM20331synchronized));
                    if (iM21631this <= 0) {
                        break;
                    } else {
                        if (this.f16870this) {
                            unsafe.putInt(t, i3, iM21631this);
                        }
                        iR = Cnative.r(iM20318instanceof);
                        iT = Cnative.t(iM21631this);
                        iM20902throw = iR + iT + iM21631this;
                        i += iM20902throw;
                        break;
                    }
                case 49:
                    iM20902throw = y0.m21602catch(iM20318instanceof, m20322package(t, jM20331synchronized), m20305class(i2));
                    i += iM20902throw;
                    break;
                case 50:
                    iM20902throw = this.f16873while.getSerializedSize(iM20318instanceof, z1.b(t, jM20331synchronized), m20304catch(i2));
                    i += iM20902throw;
                    break;
                case 51:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.m20902throw(iM20318instanceof, 0.0d);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.m20903throws(iM20318instanceof, 0.0f);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.m20897strictfp(iM20318instanceof, e(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.u(iM20318instanceof, e(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.m20874abstract(iM20318instanceof, d(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.m20896static(iM20318instanceof, 0L);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.m20894public(iM20318instanceof, 0);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.m20885goto(iM20318instanceof, true);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        Object objB2 = z1.b(t, jM20331synchronized);
                        iM20902throw = objB2 instanceof ByteString ? Cnative.m20883final(iM20318instanceof, (ByteString) objB2) : Cnative.p(iM20318instanceof, (String) objB2);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = y0.m21632throw(iM20318instanceof, z1.b(t, jM20331synchronized), m20305class(i2));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.m20883final(iM20318instanceof, (ByteString) z1.b(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.s(iM20318instanceof, d(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.m20887import(iM20318instanceof, d(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.h(iM20318instanceof, 0);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.j(iM20318instanceof, 0L);
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.l(iM20318instanceof, d(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.n(iM20318instanceof, e(t, jM20331synchronized));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m20311extends(t, iM20318instanceof, i2)) {
                        iM20902throw = Cnative.m20884finally(iM20318instanceof, (MessageLite) z1.b(t, jM20331synchronized), m20305class(i2));
                        i += iM20902throw;
                        break;
                    } else {
                        break;
                    }
            }
        }
        return i + m20338while(this.f16869super, t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [com.google.protobuf.Schema] */
    /* renamed from: throws, reason: not valid java name */
    private boolean m20334throws(T t, int i, int i2) {
        Map<?, ?> mapForMapData = this.f16873while.forMapData(z1.b(t, m20331synchronized(i)));
        if (mapForMapData.isEmpty()) {
            return true;
        }
        if (this.f16873while.forMapMetadata(m20304catch(i2)).f17347for.getJavaType() != c2.Cfor.MESSAGE) {
            return true;
        }
        ?? M21011this = 0;
        for (Object obj : mapForMapData.values()) {
            M21011this = M21011this;
            if (M21011this == 0) {
                M21011this = q0.m21002do().m21011this(obj.getClass());
            }
            if (!M21011this.isInitialized(obj)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: transient, reason: not valid java name */
    public static <T> e0<T> m20335transient(h1 h1Var, NewInstanceSchema newInstanceSchema, t tVar, s1<?, ?> s1Var, Cinstanceof<?> cinstanceof, MapFieldSchema mapFieldSchema) {
        int iM20231super;
        int iM20231super2;
        int i;
        boolean z = h1Var.getSyntax() == p0.PROTO3;
        d[] dVarArrM20577if = h1Var.m20577if();
        if (dVarArrM20577if.length == 0) {
            iM20231super = 0;
            iM20231super2 = 0;
        } else {
            iM20231super = dVarArrM20577if[0].m20231super();
            iM20231super2 = dVarArrM20577if[dVarArrM20577if.length - 1].m20231super();
        }
        int length = dVarArrM20577if.length;
        int[] iArr = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        int i2 = 0;
        int i3 = 0;
        for (d dVar : dVarArrM20577if) {
            if (dVar.m20232switch() == g.MAP) {
                i2++;
            } else if (dVar.m20232switch().id() >= 18 && dVar.m20232switch().id() <= 49) {
                i3++;
            }
        }
        int[] iArr2 = i2 > 0 ? new int[i2] : null;
        int[] iArr3 = i3 > 0 ? new int[i3] : null;
        int[] iArrM20576do = h1Var.m20576do();
        if (iArrM20576do == null) {
            iArrM20576do = f16847default;
        }
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i4 < dVarArrM20577if.length) {
            d dVar2 = dVarArrM20577if[i4];
            int iM20231super3 = dVar2.m20231super();
            v(dVar2, iArr, i5, objArr);
            if (i6 < iArrM20576do.length && iArrM20576do[i6] == iM20231super3) {
                iArrM20576do[i6] = i5;
                i6++;
            }
            if (dVar2.m20232switch() == g.MAP) {
                iArr2[i7] = i5;
                i7++;
            } else {
                if (dVar2.m20232switch().id() >= 18 && dVar2.m20232switch().id() <= 49) {
                    i = i5;
                    iArr3[i8] = (int) z1.j(dVar2.m20224final());
                    i8++;
                }
                i4++;
                i5 = i + 3;
            }
            i = i5;
            i4++;
            i5 = i + 3;
        }
        if (iArr2 == null) {
            iArr2 = f16847default;
        }
        if (iArr3 == null) {
            iArr3 = f16847default;
        }
        int[] iArr4 = new int[iArrM20576do.length + iArr2.length + iArr3.length];
        System.arraycopy(iArrM20576do, 0, iArr4, 0, iArrM20576do.length);
        System.arraycopy(iArr2, 0, iArr4, iArrM20576do.length, iArr2.length);
        System.arraycopy(iArr3, 0, iArr4, iArrM20576do.length + iArr2.length, iArr3.length);
        return new e0<>(iArr, objArr, iM20231super, iM20231super2, h1Var.getDefaultInstance(), z, true, iArr4, iArrM20576do.length, iArrM20576do.length + iArr2.length, newInstanceSchema, tVar, s1Var, cinstanceof, mapFieldSchema);
    }

    /* renamed from: try, reason: not valid java name */
    private static <T> double m20336try(T t, long j) {
        return z1.m21656abstract(t, j);
    }

    private int u(int i, int i2) {
        int length = (this.f16862do.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int iM20318instanceof = m20318instanceof(i4);
            if (i == iM20318instanceof) {
                return i4;
            }
            if (i < iM20318instanceof) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void v(d dVar, int[] iArr, int i, Object[] objArr) {
        int iJ;
        int iId;
        long j;
        int iJ2;
        int iNumberOfTrailingZeros;
        n0 n0VarM20227native = dVar.m20227native();
        if (n0VarM20227native != null) {
            iId = dVar.m20232switch().id() + 51;
            iJ = (int) z1.j(n0VarM20227native.m20832for());
            j = z1.j(n0VarM20227native.m20831do());
        } else {
            g gVarM20232switch = dVar.m20232switch();
            iJ = (int) z1.j(dVar.m20224final());
            iId = gVarM20232switch.id();
            if (!gVarM20232switch.isList() && !gVarM20232switch.isMap()) {
                Field fieldM20229return = dVar.m20229return();
                iJ2 = fieldM20229return == null ? 1048575 : (int) z1.j(fieldM20229return);
                iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(dVar.m20230static());
                iArr[i] = dVar.m20231super();
                iArr[i + 1] = (dVar.m20223extends() ? f16854static : 0) | (dVar.m20234throws() ? 536870912 : 0) | (iId << 20) | iJ;
                iArr[i + 2] = iJ2 | (iNumberOfTrailingZeros << 20);
                Class<?> clsM20226import = dVar.m20226import();
                if (dVar.m20235while() == null) {
                }
            } else {
                if (dVar.m20221class() == null) {
                    iJ2 = 0;
                    iNumberOfTrailingZeros = 0;
                    iArr[i] = dVar.m20231super();
                    iArr[i + 1] = (dVar.m20223extends() ? f16854static : 0) | (dVar.m20234throws() ? 536870912 : 0) | (iId << 20) | iJ;
                    iArr[i + 2] = iJ2 | (iNumberOfTrailingZeros << 20);
                    Class<?> clsM20226import2 = dVar.m20226import();
                    if (dVar.m20235while() == null) {
                        if (clsM20226import2 != null) {
                            objArr[((i / 3) * 2) + 1] = clsM20226import2;
                            return;
                        } else {
                            if (dVar.m20222const() != null) {
                                objArr[((i / 3) * 2) + 1] = dVar.m20222const();
                                return;
                            }
                            return;
                        }
                    }
                    int i2 = (i / 3) * 2;
                    objArr[i2] = dVar.m20235while();
                    if (clsM20226import2 != null) {
                        objArr[i2 + 1] = clsM20226import2;
                        return;
                    } else {
                        if (dVar.m20222const() != null) {
                            objArr[i2 + 1] = dVar.m20222const();
                            return;
                        }
                        return;
                    }
                }
                j = z1.j(dVar.m20221class());
            }
        }
        iJ2 = (int) j;
        iNumberOfTrailingZeros = 0;
        iArr[i] = dVar.m20231super();
        iArr[i + 1] = (dVar.m20223extends() ? f16854static : 0) | (dVar.m20234throws() ? 536870912 : 0) | (iId << 20) | iJ;
        iArr[i + 2] = iJ2 | (iNumberOfTrailingZeros << 20);
        Class<?> clsM20226import22 = dVar.m20226import();
        if (dVar.m20235while() == null) {
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m20337volatile(T t, T t2, int i) {
        int iX = x(i);
        int iM20318instanceof = m20318instanceof(i);
        long jM20331synchronized = m20331synchronized(iX);
        if (m20311extends(t2, iM20318instanceof, i)) {
            Object objB = z1.b(t, jM20331synchronized);
            Object objB2 = z1.b(t2, jM20331synchronized);
            if (objB != null && objB2 != null) {
                z1.D(t, jM20331synchronized, Internal.m19626static(objB, objB2));
                t(t, iM20318instanceof, i);
            } else if (objB2 != null) {
                z1.D(t, jM20331synchronized, objB2);
                t(t, iM20318instanceof, i);
            }
        }
    }

    private static int w(int i) {
        return (i & f16853return) >>> 20;
    }

    /* renamed from: while, reason: not valid java name */
    private <UT, UB> int m20338while(s1<UT, UB> s1Var, T t) {
        return s1Var.mo21142goto(s1Var.mo21139else(t));
    }

    private int x(int i) {
        return this.f16862do[i + 1];
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void y(T t, Writer writer) throws IOException {
        Iterator itM19390interface;
        Map.Entry<?, ?> entry;
        int i;
        if (this.f16858case) {
            FieldSet<T> fieldSetMo19676for = this.f16871throw.mo19676for(t);
            if (fieldSetMo19676for.m19392private()) {
                itM19390interface = null;
                entry = null;
            } else {
                itM19390interface = fieldSetMo19676for.m19390interface();
                entry = (Map.Entry) itM19390interface.next();
            }
        }
        int length = this.f16862do.length;
        Unsafe unsafe = f16849finally;
        int i2 = 1048575;
        int i3 = 0;
        int i4 = 1048575;
        int i5 = 0;
        while (i3 < length) {
            int iX = x(i3);
            int iM20318instanceof = m20318instanceof(i3);
            int iW = w(iX);
            if (this.f16866goto || iW > 17) {
                i = 0;
            } else {
                int i6 = this.f16862do[i3 + 2];
                int i7 = i6 & i2;
                if (i7 != i4) {
                    i5 = unsafe.getInt(t, i7);
                    i4 = i7;
                }
                i = 1 << (i6 >>> 20);
            }
            while (entry != null && this.f16871throw.mo19674do(entry) <= iM20318instanceof) {
                this.f16871throw.mo19671break(writer, entry);
                entry = itM19390interface.hasNext() ? (Map.Entry) itM19390interface.next() : null;
            }
            long jM20331synchronized = m20331synchronized(iX);
            switch (iW) {
                case 0:
                    if ((i & i5) != 0) {
                        writer.writeDouble(iM20318instanceof, m20336try(t, jM20331synchronized));
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 1:
                    if ((i & i5) != 0) {
                        writer.writeFloat(iM20318instanceof, m20332this(t, jM20331synchronized));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 2:
                    if ((i & i5) != 0) {
                        writer.writeInt64(iM20318instanceof, unsafe.getLong(t, jM20331synchronized));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 3:
                    if ((i & i5) != 0) {
                        writer.writeUInt64(iM20318instanceof, unsafe.getLong(t, jM20331synchronized));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 4:
                    if ((i & i5) != 0) {
                        writer.writeInt32(iM20318instanceof, unsafe.getInt(t, jM20331synchronized));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 5:
                    if ((i & i5) != 0) {
                        writer.writeFixed64(iM20318instanceof, unsafe.getLong(t, jM20331synchronized));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 6:
                    if ((i & i5) != 0) {
                        writer.writeFixed32(iM20318instanceof, unsafe.getInt(t, jM20331synchronized));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 7:
                    if ((i & i5) != 0) {
                        writer.writeBool(iM20318instanceof, m20315if(t, jM20331synchronized));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 8:
                    if ((i & i5) != 0) {
                        C(iM20318instanceof, unsafe.getObject(t, jM20331synchronized), writer);
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 9:
                    if ((i & i5) != 0) {
                        writer.writeMessage(iM20318instanceof, unsafe.getObject(t, jM20331synchronized), m20305class(i3));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 10:
                    if ((i & i5) != 0) {
                        writer.writeBytes(iM20318instanceof, (ByteString) unsafe.getObject(t, jM20331synchronized));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 11:
                    if ((i & i5) != 0) {
                        writer.writeUInt32(iM20318instanceof, unsafe.getInt(t, jM20331synchronized));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 12:
                    if ((i & i5) != 0) {
                        writer.writeEnum(iM20318instanceof, unsafe.getInt(t, jM20331synchronized));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 13:
                    if ((i & i5) != 0) {
                        writer.writeSFixed32(iM20318instanceof, unsafe.getInt(t, jM20331synchronized));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 14:
                    if ((i & i5) != 0) {
                        writer.writeSFixed64(iM20318instanceof, unsafe.getLong(t, jM20331synchronized));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 15:
                    if ((i & i5) != 0) {
                        writer.writeSInt32(iM20318instanceof, unsafe.getInt(t, jM20331synchronized));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 16:
                    if ((i & i5) != 0) {
                        writer.writeSInt64(iM20318instanceof, unsafe.getLong(t, jM20331synchronized));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 17:
                    if ((i & i5) != 0) {
                        writer.writeGroup(iM20318instanceof, unsafe.getObject(t, jM20331synchronized), m20305class(i3));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 18:
                    y0.l(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 19:
                    y0.t(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 20:
                    y0.z(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 21:
                    y0.S(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 22:
                    y0.x(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 23:
                    y0.r(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 24:
                    y0.p(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 25:
                    y0.h(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 26:
                    y0.O(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer);
                    break;
                case 27:
                    y0.D(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, m20305class(i3));
                    break;
                case 28:
                    y0.j(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer);
                    break;
                case 29:
                    y0.Q(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 30:
                    y0.n(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 31:
                    y0.F(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 32:
                    y0.H(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 33:
                    y0.J(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 34:
                    y0.L(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 35:
                    y0.l(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, true);
                    break;
                case 36:
                    y0.t(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, true);
                    break;
                case 37:
                    y0.z(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, true);
                    break;
                case 38:
                    y0.S(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, true);
                    break;
                case 39:
                    y0.x(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, true);
                    break;
                case 40:
                    y0.r(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, true);
                    break;
                case 41:
                    y0.p(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, true);
                    break;
                case 42:
                    y0.h(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, true);
                    break;
                case 43:
                    y0.Q(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, true);
                    break;
                case 44:
                    y0.n(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, true);
                    break;
                case 45:
                    y0.F(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, true);
                    break;
                case 46:
                    y0.H(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, true);
                    break;
                case 47:
                    y0.J(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, true);
                    break;
                case 48:
                    y0.L(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, true);
                    break;
                case 49:
                    y0.v(m20318instanceof(i3), (List) unsafe.getObject(t, jM20331synchronized), writer, m20305class(i3));
                    break;
                case 50:
                    B(writer, iM20318instanceof, unsafe.getObject(t, jM20331synchronized), i3);
                    break;
                case 51:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeDouble(iM20318instanceof, b(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 52:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeFloat(iM20318instanceof, c(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 53:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeInt64(iM20318instanceof, e(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 54:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeUInt64(iM20318instanceof, e(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 55:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeInt32(iM20318instanceof, d(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 56:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeFixed64(iM20318instanceof, e(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 57:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeFixed32(iM20318instanceof, d(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 58:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeBool(iM20318instanceof, a(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 59:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        C(iM20318instanceof, unsafe.getObject(t, jM20331synchronized), writer);
                        break;
                    }
                    break;
                case 60:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeMessage(iM20318instanceof, unsafe.getObject(t, jM20331synchronized), m20305class(i3));
                        break;
                    }
                    break;
                case 61:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeBytes(iM20318instanceof, (ByteString) unsafe.getObject(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 62:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeUInt32(iM20318instanceof, d(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 63:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeEnum(iM20318instanceof, d(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 64:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeSFixed32(iM20318instanceof, d(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 65:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeSFixed64(iM20318instanceof, e(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 66:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeSInt32(iM20318instanceof, d(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 67:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeSInt64(iM20318instanceof, e(t, jM20331synchronized));
                        break;
                    }
                    break;
                case 68:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        writer.writeGroup(iM20318instanceof, unsafe.getObject(t, jM20331synchronized), m20305class(i3));
                        break;
                    }
                    break;
            }
            i3 += 3;
            i2 = 1048575;
        }
        while (entry != null) {
            this.f16871throw.mo19671break(writer, entry);
            entry = itM19390interface.hasNext() ? (Map.Entry) itM19390interface.next() : null;
        }
        D(this.f16869super, t, writer);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void z(T t, Writer writer) throws IOException {
        Iterator itM19390interface;
        Map.Entry<?, ?> entry;
        if (this.f16858case) {
            FieldSet<T> fieldSetMo19676for = this.f16871throw.mo19676for(t);
            if (fieldSetMo19676for.m19392private()) {
                itM19390interface = null;
                entry = null;
            } else {
                itM19390interface = fieldSetMo19676for.m19390interface();
                entry = (Map.Entry) itM19390interface.next();
            }
        }
        int length = this.f16862do.length;
        for (int i = 0; i < length; i += 3) {
            int iX = x(i);
            int iM20318instanceof = m20318instanceof(i);
            while (entry != null && this.f16871throw.mo19674do(entry) <= iM20318instanceof) {
                this.f16871throw.mo19671break(writer, entry);
                entry = itM19390interface.hasNext() ? (Map.Entry) itM19390interface.next() : null;
            }
            switch (w(iX)) {
                case 0:
                    if (m20325public(t, i)) {
                        writer.writeDouble(iM20318instanceof, m20336try(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (m20325public(t, i)) {
                        writer.writeFloat(iM20318instanceof, m20332this(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (m20325public(t, i)) {
                        writer.writeInt64(iM20318instanceof, m20323private(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (m20325public(t, i)) {
                        writer.writeUInt64(iM20318instanceof, m20323private(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (m20325public(t, i)) {
                        writer.writeInt32(iM20318instanceof, m20317import(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (m20325public(t, i)) {
                        writer.writeFixed64(iM20318instanceof, m20323private(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (m20325public(t, i)) {
                        writer.writeFixed32(iM20318instanceof, m20317import(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (m20325public(t, i)) {
                        writer.writeBool(iM20318instanceof, m20315if(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (m20325public(t, i)) {
                        C(iM20318instanceof, z1.b(t, m20331synchronized(iX)), writer);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (m20325public(t, i)) {
                        writer.writeMessage(iM20318instanceof, z1.b(t, m20331synchronized(iX)), m20305class(i));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (m20325public(t, i)) {
                        writer.writeBytes(iM20318instanceof, (ByteString) z1.b(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (m20325public(t, i)) {
                        writer.writeUInt32(iM20318instanceof, m20317import(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (m20325public(t, i)) {
                        writer.writeEnum(iM20318instanceof, m20317import(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (m20325public(t, i)) {
                        writer.writeSFixed32(iM20318instanceof, m20317import(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (m20325public(t, i)) {
                        writer.writeSFixed64(iM20318instanceof, m20323private(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (m20325public(t, i)) {
                        writer.writeSInt32(iM20318instanceof, m20317import(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (m20325public(t, i)) {
                        writer.writeSInt64(iM20318instanceof, m20323private(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (m20325public(t, i)) {
                        writer.writeGroup(iM20318instanceof, z1.b(t, m20331synchronized(iX)), m20305class(i));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    y0.l(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 19:
                    y0.t(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 20:
                    y0.z(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 21:
                    y0.S(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 22:
                    y0.x(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 23:
                    y0.r(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 24:
                    y0.p(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 25:
                    y0.h(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 26:
                    y0.O(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer);
                    break;
                case 27:
                    y0.D(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, m20305class(i));
                    break;
                case 28:
                    y0.j(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer);
                    break;
                case 29:
                    y0.Q(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 30:
                    y0.n(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 31:
                    y0.F(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 32:
                    y0.H(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 33:
                    y0.J(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 34:
                    y0.L(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, false);
                    break;
                case 35:
                    y0.l(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 36:
                    y0.t(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 37:
                    y0.z(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 38:
                    y0.S(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 39:
                    y0.x(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 40:
                    y0.r(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 41:
                    y0.p(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 42:
                    y0.h(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 43:
                    y0.Q(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 44:
                    y0.n(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 45:
                    y0.F(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 46:
                    y0.H(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 47:
                    y0.J(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 48:
                    y0.L(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, true);
                    break;
                case 49:
                    y0.v(m20318instanceof(i), (List) z1.b(t, m20331synchronized(iX)), writer, m20305class(i));
                    break;
                case 50:
                    B(writer, iM20318instanceof, z1.b(t, m20331synchronized(iX)), i);
                    break;
                case 51:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeDouble(iM20318instanceof, b(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeFloat(iM20318instanceof, c(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeInt64(iM20318instanceof, e(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeUInt64(iM20318instanceof, e(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeInt32(iM20318instanceof, d(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeFixed64(iM20318instanceof, e(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeFixed32(iM20318instanceof, d(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeBool(iM20318instanceof, a(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        C(iM20318instanceof, z1.b(t, m20331synchronized(iX)), writer);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeMessage(iM20318instanceof, z1.b(t, m20331synchronized(iX)), m20305class(i));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeBytes(iM20318instanceof, (ByteString) z1.b(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeUInt32(iM20318instanceof, d(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeEnum(iM20318instanceof, d(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeSFixed32(iM20318instanceof, d(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeSFixed64(iM20318instanceof, e(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeSInt32(iM20318instanceof, d(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeSInt64(iM20318instanceof, e(t, m20331synchronized(iX)));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m20311extends(t, iM20318instanceof, i)) {
                        writer.writeGroup(iM20318instanceof, z1.b(t, m20331synchronized(iX)), m20305class(i));
                        break;
                    } else {
                        break;
                    }
            }
        }
        while (entry != null) {
            this.f16871throw.mo19671break(writer, entry);
            entry = itM19390interface.hasNext() ? (Map.Entry) itM19390interface.next() : null;
        }
        D(this.f16869super, t, writer);
    }

    @Override // com.google.protobuf.Schema
    public boolean equals(T t, T t2) {
        int length = this.f16862do.length;
        for (int i = 0; i < length; i += 3) {
            if (!m20303case(t, t2, i)) {
                return false;
            }
        }
        if (!this.f16869super.mo21139else(t).equals(this.f16869super.mo21139else(t2))) {
            return false;
        }
        if (this.f16858case) {
            return this.f16871throw.mo19676for(t).equals(this.f16871throw.mo19676for(t2));
        }
        return true;
    }

    /* renamed from: final, reason: not valid java name */
    public int m20339final() {
        return this.f16862do.length * 3;
    }

    @Override // com.google.protobuf.Schema
    public int getSerializedSize(T t) {
        return this.f16866goto ? m20333throw(t) : m20329super(t);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x008c. Please report as an issue. */
    public int h(T t, byte[] bArr, int i, int i2, int i3, Cthis.Cif cif) throws IOException {
        Unsafe unsafe;
        int i4;
        e0<T> e0Var;
        int i5;
        T t2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        T t3;
        T t4;
        int i15;
        T t5;
        int i16;
        int i17;
        e0<T> e0Var2 = this;
        T t6 = t;
        byte[] bArr2 = bArr;
        int i18 = i2;
        int i19 = i3;
        Cthis.Cif cif2 = cif;
        Unsafe unsafe2 = f16849finally;
        int iM21308volatile = i;
        int i20 = -1;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 1048575;
        while (true) {
            if (iM21308volatile < i18) {
                int i25 = iM21308volatile + 1;
                byte b = bArr2[iM21308volatile];
                if (b < 0) {
                    int iM21290interface = Cthis.m21290interface(b, bArr2, i25, cif2);
                    i6 = cif2.f17245do;
                    i25 = iM21290interface;
                } else {
                    i6 = b;
                }
                int i26 = i6 >>> 3;
                int i27 = i6 & 7;
                int iL = i26 > i20 ? e0Var2.l(i26, i21 / 3) : e0Var2.k(i26);
                if (iL == -1) {
                    i7 = i26;
                    i8 = i25;
                    i9 = i6;
                    i10 = i23;
                    i11 = i24;
                    unsafe = unsafe2;
                    i4 = i19;
                    i12 = 0;
                } else {
                    int i28 = e0Var2.f16862do[iL + 1];
                    int iW = w(i28);
                    long jM20331synchronized = m20331synchronized(i28);
                    int i29 = i6;
                    if (iW <= 17) {
                        int i30 = e0Var2.f16862do[iL + 2];
                        int i31 = 1 << (i30 >>> 20);
                        int i32 = i30 & 1048575;
                        if (i32 != i24) {
                            if (i24 != 1048575) {
                                unsafe2.putInt(t6, i24, i23);
                            }
                            i23 = unsafe2.getInt(t6, i32);
                            i11 = i32;
                        } else {
                            i11 = i24;
                        }
                        int i33 = i23;
                        switch (iW) {
                            case 0:
                                t3 = t6;
                                i13 = iL;
                                i7 = i26;
                                i14 = i29;
                                bArr2 = bArr;
                                if (i27 == 1) {
                                    z1.t(t3, jM20331synchronized, Cthis.m21292new(bArr2, i25));
                                    iM21308volatile = i25 + 8;
                                    i23 = i33 | i31;
                                    i18 = i2;
                                    t6 = t3;
                                    i21 = i13;
                                    i22 = i14;
                                    i20 = i7;
                                    i24 = i11;
                                    i19 = i3;
                                    break;
                                } else {
                                    i8 = i25;
                                    i10 = i33;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                    break;
                                }
                            case 1:
                                t3 = t6;
                                i13 = iL;
                                i7 = i26;
                                i14 = i29;
                                bArr2 = bArr;
                                if (i27 == 5) {
                                    z1.v(t3, jM20331synchronized, Cthis.m21275class(bArr2, i25));
                                    iM21308volatile = i25 + 4;
                                    i23 = i33 | i31;
                                    i18 = i2;
                                    t6 = t3;
                                    i21 = i13;
                                    i22 = i14;
                                    i20 = i7;
                                    i24 = i11;
                                    i19 = i3;
                                    break;
                                } else {
                                    i8 = i25;
                                    i10 = i33;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                    break;
                                }
                            case 2:
                            case 3:
                                T t7 = t6;
                                i13 = iL;
                                i7 = i26;
                                i14 = i29;
                                bArr2 = bArr;
                                if (i27 == 0) {
                                    int iM21289instanceof = Cthis.m21289instanceof(bArr2, i25, cif2);
                                    t4 = t7;
                                    unsafe2.putLong(t, jM20331synchronized, cif2.f17247if);
                                    i23 = i33 | i31;
                                    iM21308volatile = iM21289instanceof;
                                    i21 = i13;
                                    i22 = i14;
                                    t6 = t4;
                                    i20 = i7;
                                    i24 = i11;
                                    i18 = i2;
                                    i19 = i3;
                                    break;
                                } else {
                                    i8 = i25;
                                    i10 = i33;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                    break;
                                }
                            case 4:
                            case 11:
                                t3 = t6;
                                i13 = iL;
                                i7 = i26;
                                i14 = i29;
                                bArr2 = bArr;
                                if (i27 == 0) {
                                    iM21308volatile = Cthis.m21295protected(bArr2, i25, cif2);
                                    unsafe2.putInt(t3, jM20331synchronized, cif2.f17245do);
                                    i23 = i33 | i31;
                                    i18 = i2;
                                    t6 = t3;
                                    i21 = i13;
                                    i22 = i14;
                                    i20 = i7;
                                    i24 = i11;
                                    i19 = i3;
                                    break;
                                } else {
                                    i8 = i25;
                                    i10 = i33;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                    break;
                                }
                            case 5:
                            case 14:
                                T t8 = t6;
                                i13 = iL;
                                i7 = i26;
                                i14 = i29;
                                bArr2 = bArr;
                                if (i27 == 1) {
                                    t4 = t8;
                                    unsafe2.putLong(t, jM20331synchronized, Cthis.m21272break(bArr2, i25));
                                    iM21308volatile = i25 + 8;
                                    i23 = i33 | i31;
                                    i21 = i13;
                                    i22 = i14;
                                    t6 = t4;
                                    i20 = i7;
                                    i24 = i11;
                                    i18 = i2;
                                    i19 = i3;
                                    break;
                                } else {
                                    i8 = i25;
                                    i10 = i33;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                    break;
                                }
                            case 6:
                            case 13:
                                i15 = i2;
                                t5 = t6;
                                i13 = iL;
                                i7 = i26;
                                i14 = i29;
                                bArr2 = bArr;
                                if (i27 == 5) {
                                    unsafe2.putInt(t5, jM20331synchronized, Cthis.m21285goto(bArr2, i25));
                                    iM21308volatile = i25 + 4;
                                    int i34 = i33 | i31;
                                    t6 = t5;
                                    i18 = i15;
                                    i21 = i13;
                                    i22 = i14;
                                    i24 = i11;
                                    i19 = i3;
                                    i23 = i34;
                                    i20 = i7;
                                    break;
                                } else {
                                    i8 = i25;
                                    i10 = i33;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                    break;
                                }
                            case 7:
                                i15 = i2;
                                t5 = t6;
                                i13 = iL;
                                i7 = i26;
                                i14 = i29;
                                bArr2 = bArr;
                                if (i27 == 0) {
                                    iM21308volatile = Cthis.m21289instanceof(bArr2, i25, cif2);
                                    z1.k(t5, jM20331synchronized, cif2.f17247if != 0);
                                    int i342 = i33 | i31;
                                    t6 = t5;
                                    i18 = i15;
                                    i21 = i13;
                                    i22 = i14;
                                    i24 = i11;
                                    i19 = i3;
                                    i23 = i342;
                                    i20 = i7;
                                    break;
                                } else {
                                    i8 = i25;
                                    i10 = i33;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                    break;
                                }
                            case 8:
                                i15 = i2;
                                t5 = t6;
                                i13 = iL;
                                i7 = i26;
                                i14 = i29;
                                bArr2 = bArr;
                                if (i27 == 2) {
                                    iM21308volatile = (i28 & 536870912) == 0 ? Cthis.m21294private(bArr2, i25, cif2) : Cthis.m21299strictfp(bArr2, i25, cif2);
                                    unsafe2.putObject(t5, jM20331synchronized, cif2.f17246for);
                                    int i3422 = i33 | i31;
                                    t6 = t5;
                                    i18 = i15;
                                    i21 = i13;
                                    i22 = i14;
                                    i24 = i11;
                                    i19 = i3;
                                    i23 = i3422;
                                    i20 = i7;
                                    break;
                                } else {
                                    i8 = i25;
                                    i10 = i33;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                    break;
                                }
                            case 9:
                                t5 = t6;
                                i13 = iL;
                                i7 = i26;
                                i14 = i29;
                                bArr2 = bArr;
                                if (i27 == 2) {
                                    i15 = i2;
                                    iM21308volatile = Cthis.m21304throw(e0Var2.m20305class(i13), bArr2, i25, i15, cif2);
                                    if ((i33 & i31) == 0) {
                                        unsafe2.putObject(t5, jM20331synchronized, cif2.f17246for);
                                    } else {
                                        unsafe2.putObject(t5, jM20331synchronized, Internal.m19626static(unsafe2.getObject(t5, jM20331synchronized), cif2.f17246for));
                                    }
                                    int i34222 = i33 | i31;
                                    t6 = t5;
                                    i18 = i15;
                                    i21 = i13;
                                    i22 = i14;
                                    i24 = i11;
                                    i19 = i3;
                                    i23 = i34222;
                                    i20 = i7;
                                    break;
                                } else {
                                    i8 = i25;
                                    i10 = i33;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                    break;
                                }
                            case 10:
                                t3 = t6;
                                i13 = iL;
                                i7 = i26;
                                i14 = i29;
                                bArr2 = bArr;
                                if (i27 == 2) {
                                    iM21308volatile = Cthis.m21286if(bArr2, i25, cif2);
                                    unsafe2.putObject(t3, jM20331synchronized, cif2.f17246for);
                                    i23 = i33 | i31;
                                    i18 = i2;
                                    t6 = t3;
                                    i21 = i13;
                                    i22 = i14;
                                    i20 = i7;
                                    i24 = i11;
                                    i19 = i3;
                                    break;
                                } else {
                                    i8 = i25;
                                    i10 = i33;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                    break;
                                }
                            case 12:
                                t3 = t6;
                                i13 = iL;
                                i7 = i26;
                                i14 = i29;
                                bArr2 = bArr;
                                if (i27 != 0) {
                                    i8 = i25;
                                    i10 = i33;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                    break;
                                } else {
                                    iM21308volatile = Cthis.m21295protected(bArr2, i25, cif2);
                                    int i35 = cif2.f17245do;
                                    Internal.EnumVerifier enumVerifierM20302break = e0Var2.m20302break(i13);
                                    if (enumVerifierM20302break == null || enumVerifierM20302break.isInRange(i35)) {
                                        unsafe2.putInt(t3, jM20331synchronized, i35);
                                        i23 = i33 | i31;
                                        i18 = i2;
                                        t6 = t3;
                                        i21 = i13;
                                        i22 = i14;
                                        i20 = i7;
                                        i24 = i11;
                                        i19 = i3;
                                        break;
                                    } else {
                                        m20306const(t).m21438while(i14, Long.valueOf(i35));
                                        i18 = i2;
                                        t6 = t3;
                                        i23 = i33;
                                        i21 = i13;
                                        i22 = i14;
                                        i20 = i7;
                                        i24 = i11;
                                        i19 = i3;
                                    }
                                }
                                break;
                            case 15:
                                i13 = iL;
                                i14 = i29;
                                bArr2 = bArr;
                                i7 = i26;
                                if (i27 == 0) {
                                    iM21308volatile = Cthis.m21295protected(bArr2, i25, cif2);
                                    t3 = t;
                                    unsafe2.putInt(t3, jM20331synchronized, CodedInputStream.m18414if(cif2.f17245do));
                                    i23 = i33 | i31;
                                    i18 = i2;
                                    t6 = t3;
                                    i21 = i13;
                                    i22 = i14;
                                    i20 = i7;
                                    i24 = i11;
                                    i19 = i3;
                                    break;
                                } else {
                                    i8 = i25;
                                    i10 = i33;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                    break;
                                }
                            case 16:
                                i13 = iL;
                                i7 = i26;
                                if (i27 == 0) {
                                    bArr2 = bArr;
                                    int iM21289instanceof2 = Cthis.m21289instanceof(bArr2, i25, cif2);
                                    i14 = i29;
                                    unsafe2.putLong(t, jM20331synchronized, CodedInputStream.m18413for(cif2.f17247if));
                                    i23 = i33 | i31;
                                    t6 = t;
                                    i18 = i2;
                                    iM21308volatile = iM21289instanceof2;
                                    i21 = i13;
                                    i22 = i14;
                                    i20 = i7;
                                    i24 = i11;
                                    i19 = i3;
                                    break;
                                } else {
                                    i14 = i29;
                                    i8 = i25;
                                    i10 = i33;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                    break;
                                }
                            case 17:
                                if (i27 == 3) {
                                    iM21308volatile = Cthis.m21282final(e0Var2.m20305class(iL), bArr, i25, i2, (i26 << 3) | 4, cif);
                                    if ((i33 & i31) == 0) {
                                        unsafe2.putObject(t6, jM20331synchronized, cif2.f17246for);
                                    } else {
                                        unsafe2.putObject(t6, jM20331synchronized, Internal.m19626static(unsafe2.getObject(t6, jM20331synchronized), cif2.f17246for));
                                    }
                                    i23 = i33 | i31;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i3;
                                    i22 = i29;
                                    i21 = iL;
                                    i20 = i26;
                                    i24 = i11;
                                    break;
                                } else {
                                    i13 = iL;
                                    i7 = i26;
                                    i14 = i29;
                                    i8 = i25;
                                    i10 = i33;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i9 = i14;
                                    i4 = i3;
                                    break;
                                }
                            default:
                                i13 = iL;
                                i14 = i29;
                                i7 = i26;
                                i8 = i25;
                                i10 = i33;
                                i12 = i13;
                                unsafe = unsafe2;
                                i9 = i14;
                                i4 = i3;
                                break;
                        }
                    } else {
                        i7 = i26;
                        T t9 = t6;
                        bArr2 = bArr;
                        if (iW != 27) {
                            i12 = iL;
                            i10 = i23;
                            i11 = i24;
                            if (iW <= 49) {
                                int i36 = i25;
                                unsafe = unsafe2;
                                i17 = i29;
                                iM21308volatile = j(t, bArr, i25, i2, i29, i7, i27, i12, i28, iW, jM20331synchronized, cif);
                                if (iM21308volatile != i36) {
                                    e0Var2 = this;
                                    t6 = t;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i3;
                                    cif2 = cif;
                                    i20 = i7;
                                    i22 = i17;
                                    i21 = i12;
                                    i23 = i10;
                                    i24 = i11;
                                    unsafe2 = unsafe;
                                } else {
                                    i4 = i3;
                                    i8 = iM21308volatile;
                                    i9 = i17;
                                }
                            } else {
                                i16 = i25;
                                unsafe = unsafe2;
                                i17 = i29;
                                if (iW != 50) {
                                    iM21308volatile = g(t, bArr, i16, i2, i17, i7, i27, i28, iW, jM20331synchronized, i12, cif);
                                    if (iM21308volatile != i16) {
                                        e0Var2 = this;
                                        t6 = t;
                                        bArr2 = bArr;
                                        i18 = i2;
                                        i19 = i3;
                                        cif2 = cif;
                                        i20 = i7;
                                        i22 = i17;
                                        i21 = i12;
                                        i23 = i10;
                                        i24 = i11;
                                        unsafe2 = unsafe;
                                    } else {
                                        i4 = i3;
                                        i8 = iM21308volatile;
                                        i9 = i17;
                                    }
                                } else if (i27 == 2) {
                                    iM21308volatile = f(t, bArr, i16, i2, i12, jM20331synchronized, cif);
                                    if (iM21308volatile != i16) {
                                        e0Var2 = this;
                                        t6 = t;
                                        bArr2 = bArr;
                                        i18 = i2;
                                        i19 = i3;
                                        cif2 = cif;
                                        i20 = i7;
                                        i22 = i17;
                                        i21 = i12;
                                        i23 = i10;
                                        i24 = i11;
                                        unsafe2 = unsafe;
                                    } else {
                                        i4 = i3;
                                        i8 = iM21308volatile;
                                        i9 = i17;
                                    }
                                }
                            }
                        } else if (i27 == 2) {
                            Internal.ProtobufList protobufListMutableCopyWithCapacity2 = (Internal.ProtobufList) unsafe2.getObject(t9, jM20331synchronized);
                            if (!protobufListMutableCopyWithCapacity2.isModifiable()) {
                                int size = protobufListMutableCopyWithCapacity2.size();
                                protobufListMutableCopyWithCapacity2 = protobufListMutableCopyWithCapacity2.mutableCopyWithCapacity2(size == 0 ? 10 : size * 2);
                                unsafe2.putObject(t9, jM20331synchronized, protobufListMutableCopyWithCapacity2);
                            }
                            i11 = i24;
                            iM21308volatile = Cthis.m21309while(e0Var2.m20305class(iL), i29, bArr, i25, i2, protobufListMutableCopyWithCapacity2, cif);
                            t6 = t;
                            i18 = i2;
                            i22 = i29;
                            i20 = i7;
                            i21 = iL;
                            i23 = i23;
                            i24 = i11;
                            i19 = i3;
                        } else {
                            i12 = iL;
                            i10 = i23;
                            i11 = i24;
                            i16 = i25;
                            unsafe = unsafe2;
                            i17 = i29;
                        }
                        i4 = i3;
                        i8 = i16;
                        i9 = i17;
                    }
                }
                if (i9 != i4 || i4 == 0) {
                    iM21308volatile = (!this.f16858case || cif.f17248new == Cimplements.m20607new()) ? Cthis.m21308volatile(i9, bArr, i8, i2, m20306const(t), cif) : Cthis.m21280else(i9, bArr, i8, i2, t, this.f16872try, this.f16869super, cif);
                    t6 = t;
                    bArr2 = bArr;
                    i18 = i2;
                    i22 = i9;
                    e0Var2 = this;
                    cif2 = cif;
                    i20 = i7;
                    i21 = i12;
                    i23 = i10;
                    i24 = i11;
                    unsafe2 = unsafe;
                    i19 = i4;
                } else {
                    i5 = 1048575;
                    e0Var = this;
                    iM21308volatile = i8;
                    i22 = i9;
                    i23 = i10;
                    i24 = i11;
                }
            } else {
                unsafe = unsafe2;
                i4 = i19;
                e0Var = e0Var2;
                i5 = 1048575;
            }
        }
        if (i24 != i5) {
            t2 = t;
            unsafe.putInt(t2, i24, i23);
        } else {
            t2 = t;
        }
        u1 u1Var = null;
        for (int i37 = e0Var.f16859catch; i37 < e0Var.f16860class; i37++) {
            u1Var = (u1) e0Var.m20310else(t2, e0Var.f16857break[i37], u1Var, e0Var.f16869super);
        }
        if (u1Var != null) {
            e0Var.f16869super.mo21148super(t2, u1Var);
        }
        if (i4 == 0) {
            if (iM21308volatile != i2) {
                throw n.parseFailure();
            }
        } else if (iM21308volatile > i2 || i22 != i4) {
            throw n.parseFailure();
        }
        return iM21308volatile;
    }

    @Override // com.google.protobuf.Schema
    public int hashCode(T t) {
        int i;
        int iM19622native;
        int length = this.f16862do.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iX = x(i3);
            int iM20318instanceof = m20318instanceof(i3);
            long jM20331synchronized = m20331synchronized(iX);
            int iHashCode = 37;
            switch (w(iX)) {
                case 0:
                    i = i2 * 53;
                    iM19622native = Internal.m19622native(Double.doubleToLongBits(z1.m21656abstract(t, jM20331synchronized)));
                    i2 = i + iM19622native;
                    break;
                case 1:
                    i = i2 * 53;
                    iM19622native = Float.floatToIntBits(z1.m21684strictfp(t, jM20331synchronized));
                    i2 = i + iM19622native;
                    break;
                case 2:
                    i = i2 * 53;
                    iM19622native = Internal.m19622native(z1.m21674instanceof(t, jM20331synchronized));
                    i2 = i + iM19622native;
                    break;
                case 3:
                    i = i2 * 53;
                    iM19622native = Internal.m19622native(z1.m21674instanceof(t, jM20331synchronized));
                    i2 = i + iM19622native;
                    break;
                case 4:
                    i = i2 * 53;
                    iM19622native = z1.m21680protected(t, jM20331synchronized);
                    i2 = i + iM19622native;
                    break;
                case 5:
                    i = i2 * 53;
                    iM19622native = Internal.m19622native(z1.m21674instanceof(t, jM20331synchronized));
                    i2 = i + iM19622native;
                    break;
                case 6:
                    i = i2 * 53;
                    iM19622native = z1.m21680protected(t, jM20331synchronized);
                    i2 = i + iM19622native;
                    break;
                case 7:
                    i = i2 * 53;
                    iM19622native = Internal.m19610catch(z1.m21682return(t, jM20331synchronized));
                    i2 = i + iM19622native;
                    break;
                case 8:
                    i = i2 * 53;
                    iM19622native = ((String) z1.b(t, jM20331synchronized)).hashCode();
                    i2 = i + iM19622native;
                    break;
                case 9:
                    Object objB = z1.b(t, jM20331synchronized);
                    if (objB != null) {
                        iHashCode = objB.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iM19622native = z1.b(t, jM20331synchronized).hashCode();
                    i2 = i + iM19622native;
                    break;
                case 11:
                    i = i2 * 53;
                    iM19622native = z1.m21680protected(t, jM20331synchronized);
                    i2 = i + iM19622native;
                    break;
                case 12:
                    i = i2 * 53;
                    iM19622native = z1.m21680protected(t, jM20331synchronized);
                    i2 = i + iM19622native;
                    break;
                case 13:
                    i = i2 * 53;
                    iM19622native = z1.m21680protected(t, jM20331synchronized);
                    i2 = i + iM19622native;
                    break;
                case 14:
                    i = i2 * 53;
                    iM19622native = Internal.m19622native(z1.m21674instanceof(t, jM20331synchronized));
                    i2 = i + iM19622native;
                    break;
                case 15:
                    i = i2 * 53;
                    iM19622native = z1.m21680protected(t, jM20331synchronized);
                    i2 = i + iM19622native;
                    break;
                case 16:
                    i = i2 * 53;
                    iM19622native = Internal.m19622native(z1.m21674instanceof(t, jM20331synchronized));
                    i2 = i + iM19622native;
                    break;
                case 17:
                    Object objB2 = z1.b(t, jM20331synchronized);
                    if (objB2 != null) {
                        iHashCode = objB2.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    iM19622native = z1.b(t, jM20331synchronized).hashCode();
                    i2 = i + iM19622native;
                    break;
                case 50:
                    i = i2 * 53;
                    iM19622native = z1.b(t, jM20331synchronized).hashCode();
                    i2 = i + iM19622native;
                    break;
                case 51:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = Internal.m19622native(Double.doubleToLongBits(b(t, jM20331synchronized)));
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = Float.floatToIntBits(c(t, jM20331synchronized));
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = Internal.m19622native(e(t, jM20331synchronized));
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = Internal.m19622native(e(t, jM20331synchronized));
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = d(t, jM20331synchronized);
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = Internal.m19622native(e(t, jM20331synchronized));
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = d(t, jM20331synchronized);
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = Internal.m19610catch(a(t, jM20331synchronized));
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = ((String) z1.b(t, jM20331synchronized)).hashCode();
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = z1.b(t, jM20331synchronized).hashCode();
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = z1.b(t, jM20331synchronized).hashCode();
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = d(t, jM20331synchronized);
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = d(t, jM20331synchronized);
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = d(t, jM20331synchronized);
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = Internal.m19622native(e(t, jM20331synchronized));
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = d(t, jM20331synchronized);
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = Internal.m19622native(e(t, jM20331synchronized));
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (m20311extends(t, iM20318instanceof, i3)) {
                        i = i2 * 53;
                        iM19622native = z1.b(t, jM20331synchronized).hashCode();
                        i2 = i + iM19622native;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int iHashCode2 = (i2 * 53) + this.f16869super.mo21139else(t).hashCode();
        return this.f16858case ? (iHashCode2 * 53) + this.f16871throw.mo19676for(t).hashCode() : iHashCode2;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x008b  */
    @Override // com.google.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean isInitialized(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.f16859catch) {
            int i6 = this.f16857break[i5];
            int iM20318instanceof = m20318instanceof(i6);
            int iX = x(i6);
            int i7 = this.f16862do[i6 + 2];
            int i8 = i7 & 1048575;
            int i9 = 1 << (i7 >>> 20);
            if (i8 != i3) {
                if (i8 != 1048575) {
                    i4 = f16849finally.getInt(t, i8);
                }
                i2 = i4;
                i = i8;
            } else {
                i = i3;
                i2 = i4;
            }
            if (m20312finally(iX) && !m20326return(t, i6, i, i2, i9)) {
                return false;
            }
            int iW = w(iX);
            if (iW == 9 || iW == 17) {
                if (m20326return(t, i6, i, i2, i9) && !m20327static(t, iX, m20305class(i6))) {
                    return false;
                }
            } else if (iW == 27) {
                if (!m20330switch(t, iX, i6)) {
                    return false;
                }
            } else if (iW == 60 || iW == 68) {
                if (m20311extends(t, iM20318instanceof, i6) && !m20327static(t, iX, m20305class(i6))) {
                    return false;
                }
            } else if (iW != 49) {
                if (iW == 50 && !m20334throws(t, iX, i6)) {
                    return false;
                }
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        return !this.f16858case || this.f16871throw.mo19676for(t).m19385continue();
    }

    @Override // com.google.protobuf.Schema
    public void makeImmutable(T t) {
        int i;
        int i2 = this.f16859catch;
        while (true) {
            i = this.f16860class;
            if (i2 >= i) {
                break;
            }
            long jM20331synchronized = m20331synchronized(x(this.f16857break[i2]));
            Object objB = z1.b(t, jM20331synchronized);
            if (objB != null) {
                z1.D(t, jM20331synchronized, this.f16873while.toImmutable(objB));
            }
            i2++;
        }
        int length = this.f16857break.length;
        while (i < length) {
            this.f16864final.mo21176for(t, this.f16857break[i]);
            i++;
        }
        this.f16869super.mo21133break(t);
        if (this.f16858case) {
            this.f16871throw.mo19672case(t);
        }
    }

    @Override // com.google.protobuf.Schema
    public void mergeFrom(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.f16862do.length; i += 3) {
            m20319interface(t, t2, i);
        }
        y0.m21634transient(this.f16869super, t, t2);
        if (this.f16858case) {
            y0.m21618interface(this.f16871throw, t, t2);
        }
    }

    @Override // com.google.protobuf.Schema
    public T newInstance() {
        return (T) this.f16861const.newInstance(this.f16872try);
    }

    @Override // com.google.protobuf.Schema
    public void writeTo(T t, Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.Cdo.DESCENDING) {
            A(t, writer);
        } else if (this.f16866goto) {
            z(t, writer);
        } else {
            y(t, writer);
        }
    }

    @Override // com.google.protobuf.Schema
    public void mergeFrom(T t, Reader reader, Cimplements cimplements) throws IOException {
        Objects.requireNonNull(cimplements);
        m20301abstract(this.f16869super, this.f16871throw, t, reader, cimplements);
    }

    @Override // com.google.protobuf.Schema
    public void mergeFrom(T t, byte[] bArr, int i, int i2, Cthis.Cif cif) throws IOException {
        if (this.f16866goto) {
            i(t, bArr, i, i2, cif);
        } else {
            h(t, bArr, i, i2, 0, cif);
        }
    }
}
