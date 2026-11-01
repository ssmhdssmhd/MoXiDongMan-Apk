package com.google.protobuf;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.protobuf.Internal;
import com.google.protobuf.Writer;
import com.google.protobuf.a2;
import com.google.protobuf.c2;
import com.google.protobuf.y;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Map;
import java.util.Queue;

/* renamed from: com.google.protobuf.catch, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Ccatch extends Cthrow implements Writer {

    /* renamed from: case, reason: not valid java name */
    private static final int f16708case = 1;

    /* renamed from: else, reason: not valid java name */
    private static final int f16709else = 2;

    /* renamed from: try, reason: not valid java name */
    public static final int f16710try = 4096;

    /* renamed from: do, reason: not valid java name */
    private final Cfinal f16711do;

    /* renamed from: for, reason: not valid java name */
    public final ArrayDeque<com.google.protobuf.Cfor> f16712for;

    /* renamed from: if, reason: not valid java name */
    private final int f16713if;

    /* renamed from: new, reason: not valid java name */
    public int f16714new;

    /* renamed from: com.google.protobuf.catch$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f16715do;

        static {
            int[] iArr = new int[c2.Cif.values().length];
            f16715do = iArr;
            try {
                iArr[c2.Cif.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16715do[c2.Cif.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16715do[c2.Cif.FIXED64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16715do[c2.Cif.INT32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16715do[c2.Cif.INT64.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16715do[c2.Cif.SFIXED32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16715do[c2.Cif.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16715do[c2.Cif.SINT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16715do[c2.Cif.SINT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f16715do[c2.Cif.STRING.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f16715do[c2.Cif.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f16715do[c2.Cif.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f16715do[c2.Cif.FLOAT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f16715do[c2.Cif.DOUBLE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f16715do[c2.Cif.MESSAGE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f16715do[c2.Cif.BYTES.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f16715do[c2.Cif.ENUM.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public /* synthetic */ Ccatch(Cfinal cfinal, int i, Cdo cdo) {
        this(cfinal, i);
    }

    private final void a(int i, m mVar, boolean z) throws IOException {
        if (!z) {
            for (int size = mVar.size() - 1; size >= 0; size--) {
                writeInt32(i, mVar.getInt(size));
            }
            return;
        }
        mo19994default((mVar.size() * 10) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = mVar.size() - 1; size2 >= 0; size2--) {
            mo20000synchronized(mVar.getInt(size2));
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    /* renamed from: abstract, reason: not valid java name */
    private final void m19969abstract(int i, List<Double> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeDouble(i, list.get(size).doubleValue());
            }
            return;
        }
        mo19994default((list.size() * 8) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo19999interface(Double.doubleToRawLongBits(list.get(size2).doubleValue()));
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    private final void b(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeInt32(i, list.get(size).intValue());
            }
            return;
        }
        mo19994default((list.size() * 10) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo20000synchronized(list.get(size2).intValue());
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    private void c(int i, Object obj) throws IOException {
        if (obj instanceof String) {
            writeString(i, (String) obj);
        } else {
            writeBytes(i, (ByteString) obj);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m19971catch() {
        return Cnew.v();
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m19972class() {
        return Ctry.u();
    }

    public static final void d(Writer writer, int i, c2.Cif cif, Object obj) throws IOException {
        switch (Cdo.f16715do[cif.ordinal()]) {
            case 1:
                writer.writeBool(i, ((Boolean) obj).booleanValue());
                return;
            case 2:
                writer.writeFixed32(i, ((Integer) obj).intValue());
                return;
            case 3:
                writer.writeFixed64(i, ((Long) obj).longValue());
                return;
            case 4:
                writer.writeInt32(i, ((Integer) obj).intValue());
                return;
            case 5:
                writer.writeInt64(i, ((Long) obj).longValue());
                return;
            case 6:
                writer.writeSFixed32(i, ((Integer) obj).intValue());
                return;
            case 7:
                writer.writeSFixed64(i, ((Long) obj).longValue());
                return;
            case 8:
                writer.writeSInt32(i, ((Integer) obj).intValue());
                return;
            case 9:
                writer.writeSInt64(i, ((Long) obj).longValue());
                return;
            case 10:
                writer.writeString(i, (String) obj);
                return;
            case 11:
                writer.writeUInt32(i, ((Integer) obj).intValue());
                return;
            case 12:
                writer.writeUInt64(i, ((Long) obj).longValue());
                return;
            case 13:
                writer.writeFloat(i, ((Float) obj).floatValue());
                return;
            case 14:
                writer.writeDouble(i, ((Double) obj).doubleValue());
                return;
            case 15:
                writer.writeMessage(i, obj);
                return;
            case 16:
                writer.writeBytes(i, (ByteString) obj);
                return;
            case 17:
                if (obj instanceof Internal.EnumLite) {
                    writer.writeEnum(i, ((Internal.EnumLite) obj).getNumber());
                    return;
                } else {
                    if (!(obj instanceof Integer)) {
                        throw new IllegalArgumentException("Unexpected type for enum in map.");
                    }
                    writer.writeEnum(i, ((Integer) obj).intValue());
                    return;
                }
            default:
                String strValueOf = String.valueOf(cif);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 32);
                sb.append("Unsupported map value type for: ");
                sb.append(strValueOf);
                throw new IllegalArgumentException(sb.toString());
        }
    }

    private final void f(int i, m mVar, boolean z) throws IOException {
        if (!z) {
            for (int size = mVar.size() - 1; size >= 0; size--) {
                writeSInt32(i, mVar.getInt(size));
            }
            return;
        }
        mo19994default((mVar.size() * 5) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = mVar.size() - 1; size2 >= 0; size2--) {
            e(mVar.getInt(size2));
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    /* renamed from: finally, reason: not valid java name */
    private final void m19973finally(int i, Cconst cconst, boolean z) throws IOException {
        if (!z) {
            for (int size = cconst.size() - 1; size >= 0; size--) {
                writeBool(i, cconst.getBoolean(size));
            }
            return;
        }
        mo19994default(cconst.size() + 10);
        int iMo19991break = mo19991break();
        for (int size2 = cconst.size() - 1; size2 >= 0; size2--) {
            mo19996extends(cconst.getBoolean(size2));
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    private final void g(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeSInt32(i, list.get(size).intValue());
            }
            return;
        }
        mo19994default((list.size() * 5) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            e(list.get(size2).intValue());
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static byte m19974goto(long j) {
        byte b;
        if (((-128) & j) == 0) {
            return (byte) 1;
        }
        if (j < 0) {
            return (byte) 10;
        }
        if (((-34359738368L) & j) != 0) {
            b = (byte) 6;
            j >>>= 28;
        } else {
            b = 2;
        }
        if (((-2097152) & j) != 0) {
            b = (byte) (b + 2);
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? (byte) (b + 1) : b;
    }

    private final void i(int i, v vVar, boolean z) throws IOException {
        if (!z) {
            for (int size = vVar.size() - 1; size >= 0; size--) {
                writeSInt64(i, vVar.getLong(size));
            }
            return;
        }
        mo19994default((vVar.size() * 10) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = vVar.size() - 1; size2 >= 0; size2--) {
            h(vVar.getLong(size2));
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    /* renamed from: implements, reason: not valid java name */
    private final void m19975implements(int i, h hVar, boolean z) throws IOException {
        if (!z) {
            for (int size = hVar.size() - 1; size >= 0; size--) {
                writeFloat(i, hVar.getFloat(size));
            }
            return;
        }
        mo19994default((hVar.size() * 4) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = hVar.size() - 1; size2 >= 0; size2--) {
            mo19993continue(Float.floatToRawIntBits(hVar.getFloat(size2)));
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    /* renamed from: instanceof, reason: not valid java name */
    private final void m19976instanceof(int i, List<Float> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFloat(i, list.get(size).floatValue());
            }
            return;
        }
        mo19994default((list.size() * 4) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo19993continue(Float.floatToRawIntBits(list.get(size2).floatValue()));
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    private final void j(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeSInt64(i, list.get(size).longValue());
            }
            return;
        }
        mo19994default((list.size() * 10) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            h(list.get(size2).longValue());
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    private final void m(int i, m mVar, boolean z) throws IOException {
        if (!z) {
            for (int size = mVar.size() - 1; size >= 0; size--) {
                writeUInt32(i, mVar.getInt(size));
            }
            return;
        }
        mo19994default((mVar.size() * 5) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = mVar.size() - 1; size2 >= 0; size2--) {
            q(mVar.getInt(size2));
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    private final void n(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeUInt32(i, list.get(size).intValue());
            }
            return;
        }
        mo19994default((list.size() * 5) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            q(list.get(size2).intValue());
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    /* renamed from: native, reason: not valid java name */
    public static Ccatch m19977native(Cfinal cfinal) {
        return m19981public(cfinal, 4096);
    }

    private final void o(int i, v vVar, boolean z) throws IOException {
        if (!z) {
            for (int size = vVar.size() - 1; size >= 0; size--) {
                writeUInt64(i, vVar.getLong(size));
            }
            return;
        }
        mo19994default((vVar.size() * 10) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = vVar.size() - 1; size2 >= 0; size2--) {
            r(vVar.getLong(size2));
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    private final void p(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeUInt64(i, list.get(size).longValue());
            }
            return;
        }
        mo19994default((list.size() * 10) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            r(list.get(size2).longValue());
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    /* renamed from: package, reason: not valid java name */
    private final void m19978package(int i, List<Boolean> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeBool(i, list.get(size).booleanValue());
            }
            return;
        }
        mo19994default(list.size() + 10);
        int iMo19991break = mo19991break();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo19996extends(list.get(size2).booleanValue());
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    /* renamed from: private, reason: not valid java name */
    private final void m19979private(int i, Cswitch cswitch, boolean z) throws IOException {
        if (!z) {
            for (int size = cswitch.size() - 1; size >= 0; size--) {
                writeDouble(i, cswitch.getDouble(size));
            }
            return;
        }
        mo19994default((cswitch.size() * 8) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = cswitch.size() - 1; size2 >= 0; size2--) {
            mo19999interface(Double.doubleToRawLongBits(cswitch.getDouble(size2)));
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    /* renamed from: protected, reason: not valid java name */
    private final void m19980protected(int i, v vVar, boolean z) throws IOException {
        if (!z) {
            for (int size = vVar.size() - 1; size >= 0; size--) {
                writeFixed64(i, vVar.getLong(size));
            }
            return;
        }
        mo19994default((vVar.size() * 8) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = vVar.size() - 1; size2 >= 0; size2--) {
            mo19999interface(vVar.getLong(size2));
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    /* renamed from: public, reason: not valid java name */
    public static Ccatch m19981public(Cfinal cfinal, int i) {
        return m19972class() ? m19988throws(cfinal, i) : m19983static(cfinal, i);
    }

    /* renamed from: return, reason: not valid java name */
    public static Ccatch m19982return(Cfinal cfinal, int i) {
        return new Cif(cfinal, i);
    }

    /* renamed from: static, reason: not valid java name */
    public static Ccatch m19983static(Cfinal cfinal, int i) {
        return new Cfor(cfinal, i);
    }

    /* renamed from: strictfp, reason: not valid java name */
    private final void m19984strictfp(int i, m mVar, boolean z) throws IOException {
        if (!z) {
            for (int size = mVar.size() - 1; size >= 0; size--) {
                writeFixed32(i, mVar.getInt(size));
            }
            return;
        }
        mo19994default((mVar.size() * 4) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = mVar.size() - 1; size2 >= 0; size2--) {
            mo19993continue(mVar.getInt(size2));
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    /* renamed from: super, reason: not valid java name */
    public static Ccatch m19985super(Cfinal cfinal) {
        return m19987throw(cfinal, 4096);
    }

    /* renamed from: switch, reason: not valid java name */
    public static Ccatch m19986switch(Cfinal cfinal, int i) {
        if (m19971catch()) {
            return new Cnew(cfinal, i);
        }
        throw new UnsupportedOperationException("Unsafe operations not supported");
    }

    /* renamed from: throw, reason: not valid java name */
    public static Ccatch m19987throw(Cfinal cfinal, int i) {
        return m19971catch() ? m19986switch(cfinal, i) : m19982return(cfinal, i);
    }

    /* renamed from: throws, reason: not valid java name */
    public static Ccatch m19988throws(Cfinal cfinal, int i) {
        if (m19972class()) {
            return new Ctry(cfinal, i);
        }
        throw new UnsupportedOperationException("Unsafe operations not supported");
    }

    /* renamed from: transient, reason: not valid java name */
    private final void m19989transient(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFixed64(i, list.get(size).longValue());
            }
            return;
        }
        mo19994default((list.size() * 8) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo19999interface(list.get(size2).longValue());
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    /* renamed from: volatile, reason: not valid java name */
    private final void m19990volatile(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFixed32(i, list.get(size).intValue());
            }
            return;
        }
        mo19994default((list.size() * 4) + 10);
        int iMo19991break = mo19991break();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo19993continue(list.get(size2).intValue());
        }
        q(mo19991break() - iMo19991break);
        l(i, 2);
    }

    /* renamed from: break, reason: not valid java name */
    public abstract int mo19991break();

    /* renamed from: const, reason: not valid java name */
    public final com.google.protobuf.Cfor m19992const() {
        return this.f16711do.mo20435do(this.f16713if);
    }

    /* renamed from: continue, reason: not valid java name */
    public abstract void mo19993continue(int i);

    /* renamed from: default, reason: not valid java name */
    public abstract void mo19994default(int i);

    public abstract void e(int i);

    /* renamed from: else, reason: not valid java name */
    public final Queue<com.google.protobuf.Cfor> m19995else() {
        mo20001this();
        return this.f16712for;
    }

    /* renamed from: extends, reason: not valid java name */
    public abstract void mo19996extends(boolean z);

    @Override // com.google.protobuf.Writer
    public final Writer.Cdo fieldOrder() {
        return Writer.Cdo.DESCENDING;
    }

    /* renamed from: final, reason: not valid java name */
    public final com.google.protobuf.Cfor m19997final(int i) {
        return this.f16711do.mo20435do(Math.max(i, this.f16713if));
    }

    public abstract void h(long j);

    /* renamed from: import, reason: not valid java name */
    public final com.google.protobuf.Cfor m19998import(int i) {
        return this.f16711do.mo20436if(Math.max(i, this.f16713if));
    }

    /* renamed from: interface, reason: not valid java name */
    public abstract void mo19999interface(long j);

    public abstract void k(String str);

    public abstract void l(int i, int i2);

    public abstract void q(int i);

    public abstract void r(long j);

    /* renamed from: synchronized, reason: not valid java name */
    public abstract void mo20000synchronized(int i);

    /* renamed from: this, reason: not valid java name */
    public abstract void mo20001this();

    /* renamed from: while, reason: not valid java name */
    public final com.google.protobuf.Cfor m20002while() {
        return this.f16711do.mo20436if(this.f16713if);
    }

    @Override // com.google.protobuf.Writer
    public final void writeBoolList(int i, List<Boolean> list, boolean z) throws IOException {
        if (list instanceof Cconst) {
            m19973finally(i, (Cconst) list, z);
        } else {
            m19978package(i, list, z);
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeBytesList(int i, List<ByteString> list) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            writeBytes(i, list.get(size));
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeDouble(int i, double d) throws IOException {
        writeFixed64(i, Double.doubleToRawLongBits(d));
    }

    @Override // com.google.protobuf.Writer
    public final void writeDoubleList(int i, List<Double> list, boolean z) throws IOException {
        if (list instanceof Cswitch) {
            m19979private(i, (Cswitch) list, z);
        } else {
            m19969abstract(i, list, z);
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeEnum(int i, int i2) throws IOException {
        writeInt32(i, i2);
    }

    @Override // com.google.protobuf.Writer
    public final void writeEnumList(int i, List<Integer> list, boolean z) throws IOException {
        writeInt32List(i, list, z);
    }

    @Override // com.google.protobuf.Writer
    public final void writeFixed32List(int i, List<Integer> list, boolean z) throws IOException {
        if (list instanceof m) {
            m19984strictfp(i, (m) list, z);
        } else {
            m19990volatile(i, list, z);
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeFixed64List(int i, List<Long> list, boolean z) throws IOException {
        if (list instanceof v) {
            m19980protected(i, (v) list, z);
        } else {
            m19989transient(i, list, z);
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeFloat(int i, float f) throws IOException {
        writeFixed32(i, Float.floatToRawIntBits(f));
    }

    @Override // com.google.protobuf.Writer
    public final void writeFloatList(int i, List<Float> list, boolean z) throws IOException {
        if (list instanceof h) {
            m19975implements(i, (h) list, z);
        } else {
            m19976instanceof(i, list, z);
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeGroupList(int i, List<?> list) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            writeGroup(i, list.get(size));
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeInt32List(int i, List<Integer> list, boolean z) throws IOException {
        if (list instanceof m) {
            a(i, (m) list, z);
        } else {
            b(i, list, z);
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeInt64(int i, long j) throws IOException {
        writeUInt64(i, j);
    }

    @Override // com.google.protobuf.Writer
    public final void writeInt64List(int i, List<Long> list, boolean z) throws IOException {
        writeUInt64List(i, list, z);
    }

    @Override // com.google.protobuf.Writer
    public <K, V> void writeMap(int i, y.Cif<K, V> cif, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            int iMo19991break = mo19991break();
            d(this, 2, cif.f17347for, entry.getValue());
            d(this, 1, cif.f17346do, entry.getKey());
            q(mo19991break() - iMo19991break);
            l(i, 2);
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeMessageList(int i, List<?> list) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            writeMessage(i, list.get(size));
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeMessageSetItem(int i, Object obj) throws IOException {
        l(1, 4);
        if (obj instanceof ByteString) {
            writeBytes(3, (ByteString) obj);
        } else {
            writeMessage(3, obj);
        }
        writeUInt32(2, i);
        l(1, 3);
    }

    @Override // com.google.protobuf.Writer
    public final void writeSFixed32(int i, int i2) throws IOException {
        writeFixed32(i, i2);
    }

    @Override // com.google.protobuf.Writer
    public final void writeSFixed32List(int i, List<Integer> list, boolean z) throws IOException {
        writeFixed32List(i, list, z);
    }

    @Override // com.google.protobuf.Writer
    public final void writeSFixed64(int i, long j) throws IOException {
        writeFixed64(i, j);
    }

    @Override // com.google.protobuf.Writer
    public final void writeSFixed64List(int i, List<Long> list, boolean z) throws IOException {
        writeFixed64List(i, list, z);
    }

    @Override // com.google.protobuf.Writer
    public final void writeSInt32List(int i, List<Integer> list, boolean z) throws IOException {
        if (list instanceof m) {
            f(i, (m) list, z);
        } else {
            g(i, list, z);
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeSInt64List(int i, List<Long> list, boolean z) throws IOException {
        if (list instanceof v) {
            i(i, (v) list, z);
        } else {
            j(i, list, z);
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeStringList(int i, List<String> list) throws IOException {
        if (!(list instanceof LazyStringList)) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeString(i, list.get(size));
            }
            return;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            c(i, lazyStringList.getRaw(size2));
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeUInt32List(int i, List<Integer> list, boolean z) throws IOException {
        if (list instanceof m) {
            m(i, (m) list, z);
        } else {
            n(i, list, z);
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeUInt64List(int i, List<Long> list, boolean z) throws IOException {
        if (list instanceof v) {
            o(i, (v) list, z);
        } else {
            p(i, list, z);
        }
    }

    private Ccatch(Cfinal cfinal, int i) {
        this.f16712for = new ArrayDeque<>(4);
        if (i <= 0) {
            throw new IllegalArgumentException("chunkSize must be > 0");
        }
        this.f16711do = (Cfinal) Internal.m19632try(cfinal, "alloc");
        this.f16713if = i;
    }

    /* renamed from: com.google.protobuf.catch$for, reason: invalid class name */
    public static final class Cfor extends Ccatch {

        /* renamed from: break, reason: not valid java name */
        private int f16716break;

        /* renamed from: catch, reason: not valid java name */
        private int f16717catch;

        /* renamed from: class, reason: not valid java name */
        private int f16718class;

        /* renamed from: const, reason: not valid java name */
        private int f16719const;

        /* renamed from: final, reason: not valid java name */
        private int f16720final;

        /* renamed from: goto, reason: not valid java name */
        private com.google.protobuf.Cfor f16721goto;

        /* renamed from: this, reason: not valid java name */
        private byte[] f16722this;

        public Cfor(Cfinal cfinal, int i) {
            super(cfinal, i, null);
            t();
        }

        private void A(int i) {
            byte[] bArr = this.f16722this;
            int i2 = this.f16720final;
            int i3 = i2 - 1;
            this.f16720final = i3;
            bArr[i2] = (byte) (i >>> 14);
            int i4 = i3 - 1;
            this.f16720final = i4;
            bArr[i3] = (byte) (((i >>> 7) & 127) | 128);
            this.f16720final = i4 - 1;
            bArr[i4] = (byte) ((i & 127) | 128);
        }

        private void B(int i) {
            byte[] bArr = this.f16722this;
            int i2 = this.f16720final;
            int i3 = i2 - 1;
            this.f16720final = i3;
            bArr[i2] = (byte) (i >>> 7);
            this.f16720final = i3 - 1;
            bArr[i3] = (byte) ((i & 127) | 128);
        }

        private void C(long j) {
            byte[] bArr = this.f16722this;
            int i = this.f16720final;
            int i2 = i - 1;
            this.f16720final = i2;
            bArr[i] = (byte) (j >>> 49);
            int i3 = i2 - 1;
            this.f16720final = i3;
            bArr[i2] = (byte) (((j >>> 42) & 127) | 128);
            int i4 = i3 - 1;
            this.f16720final = i4;
            bArr[i3] = (byte) (((j >>> 35) & 127) | 128);
            int i5 = i4 - 1;
            this.f16720final = i5;
            bArr[i4] = (byte) (((j >>> 28) & 127) | 128);
            int i6 = i5 - 1;
            this.f16720final = i6;
            bArr[i5] = (byte) (((j >>> 21) & 127) | 128);
            int i7 = i6 - 1;
            this.f16720final = i7;
            bArr[i6] = (byte) (((j >>> 14) & 127) | 128);
            int i8 = i7 - 1;
            this.f16720final = i8;
            bArr[i7] = (byte) (((j >>> 7) & 127) | 128);
            this.f16720final = i8 - 1;
            bArr[i8] = (byte) ((j & 127) | 128);
        }

        private void D(long j) {
            byte[] bArr = this.f16722this;
            int i = this.f16720final;
            int i2 = i - 1;
            this.f16720final = i2;
            bArr[i] = (byte) (j >>> 28);
            int i3 = i2 - 1;
            this.f16720final = i3;
            bArr[i2] = (byte) (((j >>> 21) & 127) | 128);
            int i4 = i3 - 1;
            this.f16720final = i4;
            bArr[i3] = (byte) (((j >>> 14) & 127) | 128);
            int i5 = i4 - 1;
            this.f16720final = i5;
            bArr[i4] = (byte) (((j >>> 7) & 127) | 128);
            this.f16720final = i5 - 1;
            bArr[i5] = (byte) ((j & 127) | 128);
        }

        private void E(long j) {
            byte[] bArr = this.f16722this;
            int i = this.f16720final;
            int i2 = i - 1;
            this.f16720final = i2;
            bArr[i] = (byte) (j >>> 21);
            int i3 = i2 - 1;
            this.f16720final = i3;
            bArr[i2] = (byte) (((j >>> 14) & 127) | 128);
            int i4 = i3 - 1;
            this.f16720final = i4;
            bArr[i3] = (byte) (((j >>> 7) & 127) | 128);
            this.f16720final = i4 - 1;
            bArr[i4] = (byte) ((j & 127) | 128);
        }

        private void F(long j) {
            byte[] bArr = this.f16722this;
            int i = this.f16720final;
            int i2 = i - 1;
            this.f16720final = i2;
            bArr[i] = (byte) (j >>> 56);
            int i3 = i2 - 1;
            this.f16720final = i3;
            bArr[i2] = (byte) (((j >>> 49) & 127) | 128);
            int i4 = i3 - 1;
            this.f16720final = i4;
            bArr[i3] = (byte) (((j >>> 42) & 127) | 128);
            int i5 = i4 - 1;
            this.f16720final = i5;
            bArr[i4] = (byte) (((j >>> 35) & 127) | 128);
            int i6 = i5 - 1;
            this.f16720final = i6;
            bArr[i5] = (byte) (((j >>> 28) & 127) | 128);
            int i7 = i6 - 1;
            this.f16720final = i7;
            bArr[i6] = (byte) (((j >>> 21) & 127) | 128);
            int i8 = i7 - 1;
            this.f16720final = i8;
            bArr[i7] = (byte) (((j >>> 14) & 127) | 128);
            int i9 = i8 - 1;
            this.f16720final = i9;
            bArr[i8] = (byte) (((j >>> 7) & 127) | 128);
            this.f16720final = i9 - 1;
            bArr[i9] = (byte) ((j & 127) | 128);
        }

        private void G(long j) {
            byte[] bArr = this.f16722this;
            int i = this.f16720final;
            this.f16720final = i - 1;
            bArr[i] = (byte) j;
        }

        private void H(long j) {
            byte[] bArr = this.f16722this;
            int i = this.f16720final;
            int i2 = i - 1;
            this.f16720final = i2;
            bArr[i] = (byte) (j >>> 42);
            int i3 = i2 - 1;
            this.f16720final = i3;
            bArr[i2] = (byte) (((j >>> 35) & 127) | 128);
            int i4 = i3 - 1;
            this.f16720final = i4;
            bArr[i3] = (byte) (((j >>> 28) & 127) | 128);
            int i5 = i4 - 1;
            this.f16720final = i5;
            bArr[i4] = (byte) (((j >>> 21) & 127) | 128);
            int i6 = i5 - 1;
            this.f16720final = i6;
            bArr[i5] = (byte) (((j >>> 14) & 127) | 128);
            int i7 = i6 - 1;
            this.f16720final = i7;
            bArr[i6] = (byte) (((j >>> 7) & 127) | 128);
            this.f16720final = i7 - 1;
            bArr[i7] = (byte) ((j & 127) | 128);
        }

        private void I(long j) {
            byte[] bArr = this.f16722this;
            int i = this.f16720final;
            int i2 = i - 1;
            this.f16720final = i2;
            bArr[i] = (byte) (j >>> 35);
            int i3 = i2 - 1;
            this.f16720final = i3;
            bArr[i2] = (byte) (((j >>> 28) & 127) | 128);
            int i4 = i3 - 1;
            this.f16720final = i4;
            bArr[i3] = (byte) (((j >>> 21) & 127) | 128);
            int i5 = i4 - 1;
            this.f16720final = i5;
            bArr[i4] = (byte) (((j >>> 14) & 127) | 128);
            int i6 = i5 - 1;
            this.f16720final = i6;
            bArr[i5] = (byte) (((j >>> 7) & 127) | 128);
            this.f16720final = i6 - 1;
            bArr[i6] = (byte) ((j & 127) | 128);
        }

        private void J(long j) {
            byte[] bArr = this.f16722this;
            int i = this.f16720final;
            int i2 = i - 1;
            this.f16720final = i2;
            bArr[i] = (byte) (j >>> 63);
            int i3 = i2 - 1;
            this.f16720final = i3;
            bArr[i2] = (byte) (((j >>> 56) & 127) | 128);
            int i4 = i3 - 1;
            this.f16720final = i4;
            bArr[i3] = (byte) (((j >>> 49) & 127) | 128);
            int i5 = i4 - 1;
            this.f16720final = i5;
            bArr[i4] = (byte) (((j >>> 42) & 127) | 128);
            int i6 = i5 - 1;
            this.f16720final = i6;
            bArr[i5] = (byte) (((j >>> 35) & 127) | 128);
            int i7 = i6 - 1;
            this.f16720final = i7;
            bArr[i6] = (byte) (((j >>> 28) & 127) | 128);
            int i8 = i7 - 1;
            this.f16720final = i8;
            bArr[i7] = (byte) (((j >>> 21) & 127) | 128);
            int i9 = i8 - 1;
            this.f16720final = i9;
            bArr[i8] = (byte) (((j >>> 14) & 127) | 128);
            int i10 = i9 - 1;
            this.f16720final = i10;
            bArr[i9] = (byte) (((j >>> 7) & 127) | 128);
            this.f16720final = i10 - 1;
            bArr[i10] = (byte) ((j & 127) | 128);
        }

        private void K(long j) {
            byte[] bArr = this.f16722this;
            int i = this.f16720final;
            int i2 = i - 1;
            this.f16720final = i2;
            bArr[i] = (byte) (((int) j) >>> 14);
            int i3 = i2 - 1;
            this.f16720final = i3;
            bArr[i2] = (byte) (((j >>> 7) & 127) | 128);
            this.f16720final = i3 - 1;
            bArr[i3] = (byte) ((j & 127) | 128);
        }

        private void L(long j) {
            byte[] bArr = this.f16722this;
            int i = this.f16720final;
            int i2 = i - 1;
            this.f16720final = i2;
            bArr[i] = (byte) (j >>> 7);
            this.f16720final = i2 - 1;
            bArr[i2] = (byte) ((((int) j) & 127) | 128);
        }

        private void t() {
            v(m20002while());
        }

        private void u(int i) {
            v(m19998import(i));
        }

        private void v(com.google.protobuf.Cfor cfor) {
            if (!cfor.mo20488for()) {
                throw new RuntimeException("Allocator returned non-heap buffer");
            }
            mo20001this();
            this.f16712for.addFirst(cfor);
            this.f16721goto = cfor;
            this.f16722this = cfor.mo20486do();
            int iMo20490if = cfor.mo20490if();
            this.f16717catch = cfor.mo20493try() + iMo20490if;
            int iMo20487else = iMo20490if + cfor.mo20487else();
            this.f16716break = iMo20487else;
            this.f16718class = iMo20487else - 1;
            int i = this.f16717catch - 1;
            this.f16719const = i;
            this.f16720final = i;
        }

        private void x(int i) {
            byte[] bArr = this.f16722this;
            int i2 = this.f16720final;
            int i3 = i2 - 1;
            this.f16720final = i3;
            bArr[i2] = (byte) (i >>> 28);
            int i4 = i3 - 1;
            this.f16720final = i4;
            bArr[i3] = (byte) (((i >>> 21) & 127) | 128);
            int i5 = i4 - 1;
            this.f16720final = i5;
            bArr[i4] = (byte) (((i >>> 14) & 127) | 128);
            int i6 = i5 - 1;
            this.f16720final = i6;
            bArr[i5] = (byte) (((i >>> 7) & 127) | 128);
            this.f16720final = i6 - 1;
            bArr[i6] = (byte) ((i & 127) | 128);
        }

        private void y(int i) {
            byte[] bArr = this.f16722this;
            int i2 = this.f16720final;
            int i3 = i2 - 1;
            this.f16720final = i3;
            bArr[i2] = (byte) (i >>> 21);
            int i4 = i3 - 1;
            this.f16720final = i4;
            bArr[i3] = (byte) (((i >>> 14) & 127) | 128);
            int i5 = i4 - 1;
            this.f16720final = i5;
            bArr[i4] = (byte) (((i >>> 7) & 127) | 128);
            this.f16720final = i5 - 1;
            bArr[i5] = (byte) ((i & 127) | 128);
        }

        private void z(int i) {
            byte[] bArr = this.f16722this;
            int i2 = this.f16720final;
            this.f16720final = i2 - 1;
            bArr[i2] = (byte) i;
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: break */
        public int mo19991break() {
            return this.f16714new + s();
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: continue */
        public void mo19993continue(int i) {
            byte[] bArr = this.f16722this;
            int i2 = this.f16720final;
            int i3 = i2 - 1;
            this.f16720final = i3;
            bArr[i2] = (byte) ((i >> 24) & 255);
            int i4 = i3 - 1;
            this.f16720final = i4;
            bArr[i3] = (byte) ((i >> 16) & 255);
            int i5 = i4 - 1;
            this.f16720final = i5;
            bArr[i4] = (byte) ((i >> 8) & 255);
            this.f16720final = i5 - 1;
            bArr[i5] = (byte) (i & 255);
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: default */
        public void mo19994default(int i) {
            if (w() < i) {
                u(i);
            }
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: do, reason: not valid java name */
        public void mo20003do(byte b) {
            byte[] bArr = this.f16722this;
            int i = this.f16720final;
            this.f16720final = i - 1;
            bArr[i] = b;
        }

        @Override // com.google.protobuf.Ccatch
        public void e(int i) {
            q(Cnative.w(i));
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: extends */
        public void mo19996extends(boolean z) {
            mo20003do(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: for, reason: not valid java name */
        public void mo20004for(byte[] bArr, int i, int i2) {
            if (w() < i2) {
                u(i2);
            }
            int i3 = this.f16720final - i2;
            this.f16720final = i3;
            System.arraycopy(bArr, i, this.f16722this, i3 + 1, i2);
        }

        @Override // com.google.protobuf.Ccatch
        public void h(long j) {
            r(Cnative.x(j));
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: if, reason: not valid java name */
        public void mo20005if(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            if (w() < iRemaining) {
                u(iRemaining);
            }
            int i = this.f16720final - iRemaining;
            this.f16720final = i;
            byteBuffer.get(this.f16722this, i + 1, iRemaining);
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: interface */
        public void mo19999interface(long j) {
            byte[] bArr = this.f16722this;
            int i = this.f16720final;
            int i2 = i - 1;
            this.f16720final = i2;
            bArr[i] = (byte) (((int) (j >> 56)) & 255);
            int i3 = i2 - 1;
            this.f16720final = i3;
            bArr[i2] = (byte) (((int) (j >> 48)) & 255);
            int i4 = i3 - 1;
            this.f16720final = i4;
            bArr[i3] = (byte) (((int) (j >> 40)) & 255);
            int i5 = i4 - 1;
            this.f16720final = i5;
            bArr[i4] = (byte) (((int) (j >> 32)) & 255);
            int i6 = i5 - 1;
            this.f16720final = i6;
            bArr[i5] = (byte) (((int) (j >> 24)) & 255);
            int i7 = i6 - 1;
            this.f16720final = i7;
            bArr[i6] = (byte) (((int) (j >> 16)) & 255);
            int i8 = i7 - 1;
            this.f16720final = i8;
            bArr[i7] = (byte) (((int) (j >> 8)) & 255);
            this.f16720final = i8 - 1;
            bArr[i8] = (byte) (((int) j) & 255);
        }

        @Override // com.google.protobuf.Ccatch
        public void k(String str) {
            int i;
            int i2;
            int i3;
            char cCharAt;
            mo19994default(str.length());
            int length = str.length() - 1;
            this.f16720final -= length;
            while (length >= 0 && (cCharAt = str.charAt(length)) < 128) {
                this.f16722this[this.f16720final + length] = (byte) cCharAt;
                length--;
            }
            if (length == -1) {
                this.f16720final--;
                return;
            }
            this.f16720final += length;
            while (length >= 0) {
                char cCharAt2 = str.charAt(length);
                if (cCharAt2 < 128 && (i3 = this.f16720final) > this.f16718class) {
                    byte[] bArr = this.f16722this;
                    this.f16720final = i3 - 1;
                    bArr[i3] = (byte) cCharAt2;
                } else if (cCharAt2 < 2048 && (i2 = this.f16720final) > this.f16716break) {
                    byte[] bArr2 = this.f16722this;
                    int i4 = i2 - 1;
                    this.f16720final = i4;
                    bArr2[i2] = (byte) ((cCharAt2 & '?') | 128);
                    this.f16720final = i4 - 1;
                    bArr2[i4] = (byte) ((cCharAt2 >>> 6) | 960);
                } else if ((cCharAt2 < 55296 || 57343 < cCharAt2) && (i = this.f16720final) > this.f16716break + 1) {
                    byte[] bArr3 = this.f16722this;
                    int i5 = i - 1;
                    this.f16720final = i5;
                    bArr3[i] = (byte) ((cCharAt2 & '?') | 128);
                    int i6 = i5 - 1;
                    this.f16720final = i6;
                    bArr3[i5] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                    this.f16720final = i6 - 1;
                    bArr3[i6] = (byte) ((cCharAt2 >>> '\f') | 480);
                } else {
                    if (this.f16720final > this.f16716break + 2) {
                        if (length != 0) {
                            char cCharAt3 = str.charAt(length - 1);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt2)) {
                                length--;
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt2);
                                byte[] bArr4 = this.f16722this;
                                int i7 = this.f16720final;
                                int i8 = i7 - 1;
                                this.f16720final = i8;
                                bArr4[i7] = (byte) ((codePoint & 63) | 128);
                                int i9 = i8 - 1;
                                this.f16720final = i9;
                                bArr4[i8] = (byte) (((codePoint >>> 6) & 63) | 128);
                                int i10 = i9 - 1;
                                this.f16720final = i10;
                                bArr4[i9] = (byte) (((codePoint >>> 12) & 63) | 128);
                                this.f16720final = i10 - 1;
                                bArr4[i10] = (byte) ((codePoint >>> 18) | MountainSceneView.f20267finally);
                            }
                        }
                        throw new a2.Cnew(length - 1, length);
                    }
                    mo19994default(length);
                    length++;
                }
                length--;
            }
        }

        @Override // com.google.protobuf.Ccatch
        public void l(int i, int i2) {
            q(c2.m19963for(i, i2));
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: new, reason: not valid java name */
        public void mo20006new(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            if (w() < iRemaining) {
                this.f16714new += iRemaining;
                this.f16712for.addFirst(com.google.protobuf.Cfor.m20481break(byteBuffer));
                t();
            }
            int i = this.f16720final - iRemaining;
            this.f16720final = i;
            byteBuffer.get(this.f16722this, i + 1, iRemaining);
        }

        @Override // com.google.protobuf.Ccatch
        public void q(int i) {
            if ((i & (-128)) == 0) {
                z(i);
                return;
            }
            if ((i & (-16384)) == 0) {
                B(i);
                return;
            }
            if (((-2097152) & i) == 0) {
                A(i);
            } else if (((-268435456) & i) == 0) {
                y(i);
            } else {
                x(i);
            }
        }

        @Override // com.google.protobuf.Ccatch
        public void r(long j) {
            switch (Ccatch.m19974goto(j)) {
                case 1:
                    G(j);
                    break;
                case 2:
                    L(j);
                    break;
                case 3:
                    K(j);
                    break;
                case 4:
                    E(j);
                    break;
                case 5:
                    D(j);
                    break;
                case 6:
                    I(j);
                    break;
                case 7:
                    H(j);
                    break;
                case 8:
                    C(j);
                    break;
                case 9:
                    F(j);
                    break;
                case 10:
                    J(j);
                    break;
            }
        }

        public int s() {
            return this.f16719const - this.f16720final;
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: synchronized */
        public void mo20000synchronized(int i) {
            if (i >= 0) {
                q(i);
            } else {
                r(i);
            }
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: this */
        public void mo20001this() {
            if (this.f16721goto != null) {
                this.f16714new += s();
                com.google.protobuf.Cfor cfor = this.f16721goto;
                cfor.mo20489goto((this.f16720final - cfor.mo20490if()) + 1);
                this.f16721goto = null;
                this.f16720final = 0;
                this.f16719const = 0;
            }
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: try, reason: not valid java name */
        public void mo20007try(byte[] bArr, int i, int i2) {
            if (w() < i2) {
                this.f16714new += i2;
                this.f16712for.addFirst(com.google.protobuf.Cfor.m20483class(bArr, i, i2));
                t();
            } else {
                int i3 = this.f16720final - i2;
                this.f16720final = i3;
                System.arraycopy(bArr, i, this.f16722this, i3 + 1, i2);
            }
        }

        public int w() {
            return this.f16720final - this.f16718class;
        }

        @Override // com.google.protobuf.Writer
        public void writeBool(int i, boolean z) throws IOException {
            mo19994default(6);
            mo20003do(z ? (byte) 1 : (byte) 0);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeBytes(int i, ByteString byteString) throws IOException {
            try {
                byteString.writeToReverse(this);
                mo19994default(10);
                q(byteString.size());
                l(i, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.protobuf.Writer
        public void writeEndGroup(int i) {
            l(i, 4);
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed32(int i, int i2) throws IOException {
            mo19994default(9);
            mo19993continue(i2);
            l(i, 5);
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed64(int i, long j) throws IOException {
            mo19994default(13);
            mo19999interface(j);
            l(i, 1);
        }

        @Override // com.google.protobuf.Writer
        public void writeGroup(int i, Object obj) throws IOException {
            l(i, 4);
            q0.m21002do().m21005catch(obj, this);
            l(i, 3);
        }

        @Override // com.google.protobuf.Writer
        public void writeInt32(int i, int i2) throws IOException {
            mo19994default(15);
            mo20000synchronized(i2);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeMessage(int i, Object obj) throws IOException {
            int iMo19991break = mo19991break();
            q0.m21002do().m21005catch(obj, this);
            int iMo19991break2 = mo19991break() - iMo19991break;
            mo19994default(10);
            q(iMo19991break2);
            l(i, 2);
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt32(int i, int i2) throws IOException {
            mo19994default(10);
            e(i2);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt64(int i, long j) throws IOException {
            mo19994default(15);
            h(j);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeStartGroup(int i) {
            l(i, 3);
        }

        @Override // com.google.protobuf.Writer
        public void writeString(int i, String str) throws IOException {
            int iMo19991break = mo19991break();
            k(str);
            int iMo19991break2 = mo19991break() - iMo19991break;
            mo19994default(10);
            q(iMo19991break2);
            l(i, 2);
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt32(int i, int i2) throws IOException {
            mo19994default(10);
            q(i2);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt64(int i, long j) throws IOException {
            mo19994default(15);
            r(j);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeGroup(int i, Object obj, Schema schema) throws IOException {
            l(i, 4);
            schema.writeTo(obj, this);
            l(i, 3);
        }

        @Override // com.google.protobuf.Writer
        public void writeMessage(int i, Object obj, Schema schema) throws IOException {
            int iMo19991break = mo19991break();
            schema.writeTo(obj, this);
            int iMo19991break2 = mo19991break() - iMo19991break;
            mo19994default(10);
            q(iMo19991break2);
            l(i, 2);
        }
    }

    /* renamed from: com.google.protobuf.catch$if, reason: invalid class name */
    public static final class Cif extends Ccatch {

        /* renamed from: break, reason: not valid java name */
        private int f16723break;

        /* renamed from: goto, reason: not valid java name */
        private ByteBuffer f16724goto;

        /* renamed from: this, reason: not valid java name */
        private int f16725this;

        public Cif(Cfinal cfinal, int i) {
            super(cfinal, i, null);
            t();
        }

        private void A(int i) {
            int i2 = this.f16723break - 3;
            this.f16723break = i2;
            this.f16724goto.putInt(i2, (((i & 127) | 128) << 8) | ((2080768 & i) << 10) | (((i & 16256) | 16384) << 9));
        }

        private void B(int i) {
            int i2 = this.f16723break - 2;
            this.f16723break = i2;
            this.f16724goto.putShort(i2 + 1, (short) ((i & 127) | 128 | ((i & 16256) << 1)));
        }

        private void C(long j) {
            int i = this.f16723break - 8;
            this.f16723break = i;
            this.f16724goto.putLong(i + 1, (j & 127) | 128 | ((71494644084506624L & j) << 7) | (((558551906910208L & j) | 562949953421312L) << 6) | (((4363686772736L & j) | 4398046511104L) << 5) | (((34091302912L & j) | 34359738368L) << 4) | (((266338304 & j) | 268435456) << 3) | (((2080768 & j) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 2) | (((16256 & j) | 16384) << 1));
        }

        private void D(long j) {
            int i = this.f16723break - 8;
            this.f16723break = i;
            this.f16724goto.putLong(i + 1, (j & 127) | 128 | (((71494644084506624L & j) | 72057594037927936L) << 7) | (((558551906910208L & j) | 562949953421312L) << 6) | (((4363686772736L & j) | 4398046511104L) << 5) | (((34091302912L & j) | 34359738368L) << 4) | (((266338304 & j) | 268435456) << 3) | (((2080768 & j) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 2) | (((16256 & j) | 16384) << 1));
        }

        private void E(long j) {
            int i = this.f16723break - 5;
            this.f16723break = i;
            this.f16724goto.putLong(i - 2, (((j & 127) | 128) << 24) | ((34091302912L & j) << 28) | (((266338304 & j) | 268435456) << 27) | (((2080768 & j) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 26) | (((16256 & j) | 16384) << 25));
        }

        private void F(long j) {
            y((int) j);
        }

        private void G(long j) {
            ByteBuffer byteBuffer = this.f16724goto;
            int i = this.f16723break;
            this.f16723break = i - 1;
            byteBuffer.put(i, (byte) (j >>> 56));
            D(j & 72057594037927935L);
        }

        private void H(long j) {
            z((int) j);
        }

        private void I(long j) {
            int i = this.f16723break - 7;
            this.f16723break = i;
            this.f16724goto.putLong(i, (((j & 127) | 128) << 8) | ((558551906910208L & j) << 14) | (((4363686772736L & j) | 4398046511104L) << 13) | (((34091302912L & j) | 34359738368L) << 12) | (((266338304 & j) | 268435456) << 11) | (((2080768 & j) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 10) | (((16256 & j) | 16384) << 9));
        }

        private void J(long j) {
            int i = this.f16723break - 6;
            this.f16723break = i;
            this.f16724goto.putLong(i - 1, (((j & 127) | 128) << 16) | ((4363686772736L & j) << 21) | (((34091302912L & j) | 34359738368L) << 20) | (((266338304 & j) | 268435456) << 19) | (((2080768 & j) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 18) | (((16256 & j) | 16384) << 17));
        }

        private void K(long j) {
            ByteBuffer byteBuffer = this.f16724goto;
            int i = this.f16723break;
            this.f16723break = i - 1;
            byteBuffer.put(i, (byte) (j >>> 63));
            ByteBuffer byteBuffer2 = this.f16724goto;
            int i2 = this.f16723break;
            this.f16723break = i2 - 1;
            byteBuffer2.put(i2, (byte) (((j >>> 56) & 127) | 128));
            D(j & 72057594037927935L);
        }

        private void L(long j) {
            A((int) j);
        }

        private void M(long j) {
            B((int) j);
        }

        private int s() {
            return this.f16725this - this.f16723break;
        }

        private void t() {
            v(m19992const());
        }

        private void u(int i) {
            v(m19997final(i));
        }

        private void v(com.google.protobuf.Cfor cfor) {
            if (!cfor.mo20491new()) {
                throw new RuntimeException("Allocated buffer does not have NIO buffer");
            }
            ByteBuffer byteBufferMo20485case = cfor.mo20485case();
            if (!byteBufferMo20485case.isDirect()) {
                throw new RuntimeException("Allocator returned non-direct buffer");
            }
            mo20001this();
            this.f16712for.addFirst(cfor);
            this.f16724goto = byteBufferMo20485case;
            this.f16724goto.order(ByteOrder.LITTLE_ENDIAN);
            int iLimit = this.f16724goto.limit() - 1;
            this.f16725this = iLimit;
            this.f16723break = iLimit;
        }

        private int w() {
            return this.f16723break + 1;
        }

        private void x(int i) {
            ByteBuffer byteBuffer = this.f16724goto;
            int i2 = this.f16723break;
            this.f16723break = i2 - 1;
            byteBuffer.put(i2, (byte) (i >>> 28));
            int i3 = this.f16723break - 4;
            this.f16723break = i3;
            this.f16724goto.putInt(i3 + 1, (i & 127) | 128 | ((((i >>> 21) & 127) | 128) << 24) | ((((i >>> 14) & 127) | 128) << 16) | ((((i >>> 7) & 127) | 128) << 8));
        }

        private void y(int i) {
            int i2 = this.f16723break - 4;
            this.f16723break = i2;
            this.f16724goto.putInt(i2 + 1, (i & 127) | 128 | ((266338304 & i) << 3) | (((2080768 & i) | 2097152) << 2) | (((i & 16256) | 16384) << 1));
        }

        private void z(int i) {
            ByteBuffer byteBuffer = this.f16724goto;
            int i2 = this.f16723break;
            this.f16723break = i2 - 1;
            byteBuffer.put(i2, (byte) i);
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: break */
        public int mo19991break() {
            return this.f16714new + s();
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: continue */
        public void mo19993continue(int i) {
            int i2 = this.f16723break - 4;
            this.f16723break = i2;
            this.f16724goto.putInt(i2 + 1, i);
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: default */
        public void mo19994default(int i) {
            if (w() < i) {
                u(i);
            }
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: do */
        public void mo20003do(byte b) {
            ByteBuffer byteBuffer = this.f16724goto;
            int i = this.f16723break;
            this.f16723break = i - 1;
            byteBuffer.put(i, b);
        }

        @Override // com.google.protobuf.Ccatch
        public void e(int i) {
            q(Cnative.w(i));
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: extends */
        public void mo19996extends(boolean z) {
            mo20003do(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: for */
        public void mo20004for(byte[] bArr, int i, int i2) {
            if (w() < i2) {
                u(i2);
            }
            int i3 = this.f16723break - i2;
            this.f16723break = i3;
            this.f16724goto.put(bArr, i, i2);
        }

        @Override // com.google.protobuf.Ccatch
        public void h(long j) {
            r(Cnative.x(j));
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: if */
        public void mo20005if(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            if (w() < iRemaining) {
                u(iRemaining);
            }
            int i = this.f16723break - iRemaining;
            this.f16723break = i;
            this.f16724goto.put(byteBuffer);
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: interface */
        public void mo19999interface(long j) {
            int i = this.f16723break - 8;
            this.f16723break = i;
            this.f16724goto.putLong(i + 1, j);
        }

        @Override // com.google.protobuf.Ccatch
        public void k(String str) {
            int i;
            int i2;
            int i3;
            char cCharAt;
            mo19994default(str.length());
            int length = str.length() - 1;
            this.f16723break -= length;
            while (length >= 0 && (cCharAt = str.charAt(length)) < 128) {
                this.f16724goto.put(this.f16723break + length, (byte) cCharAt);
                length--;
            }
            if (length == -1) {
                this.f16723break--;
                return;
            }
            this.f16723break += length;
            while (length >= 0) {
                char cCharAt2 = str.charAt(length);
                if (cCharAt2 < 128 && (i3 = this.f16723break) >= 0) {
                    ByteBuffer byteBuffer = this.f16724goto;
                    this.f16723break = i3 - 1;
                    byteBuffer.put(i3, (byte) cCharAt2);
                } else if (cCharAt2 < 2048 && (i2 = this.f16723break) > 0) {
                    ByteBuffer byteBuffer2 = this.f16724goto;
                    this.f16723break = i2 - 1;
                    byteBuffer2.put(i2, (byte) ((cCharAt2 & '?') | 128));
                    ByteBuffer byteBuffer3 = this.f16724goto;
                    int i4 = this.f16723break;
                    this.f16723break = i4 - 1;
                    byteBuffer3.put(i4, (byte) ((cCharAt2 >>> 6) | 960));
                } else if ((cCharAt2 < 55296 || 57343 < cCharAt2) && (i = this.f16723break) > 1) {
                    ByteBuffer byteBuffer4 = this.f16724goto;
                    this.f16723break = i - 1;
                    byteBuffer4.put(i, (byte) ((cCharAt2 & '?') | 128));
                    ByteBuffer byteBuffer5 = this.f16724goto;
                    int i5 = this.f16723break;
                    this.f16723break = i5 - 1;
                    byteBuffer5.put(i5, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                    ByteBuffer byteBuffer6 = this.f16724goto;
                    int i6 = this.f16723break;
                    this.f16723break = i6 - 1;
                    byteBuffer6.put(i6, (byte) ((cCharAt2 >>> '\f') | 480));
                } else {
                    if (this.f16723break > 2) {
                        if (length != 0) {
                            char cCharAt3 = str.charAt(length - 1);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt2)) {
                                length--;
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt2);
                                ByteBuffer byteBuffer7 = this.f16724goto;
                                int i7 = this.f16723break;
                                this.f16723break = i7 - 1;
                                byteBuffer7.put(i7, (byte) ((codePoint & 63) | 128));
                                ByteBuffer byteBuffer8 = this.f16724goto;
                                int i8 = this.f16723break;
                                this.f16723break = i8 - 1;
                                byteBuffer8.put(i8, (byte) (((codePoint >>> 6) & 63) | 128));
                                ByteBuffer byteBuffer9 = this.f16724goto;
                                int i9 = this.f16723break;
                                this.f16723break = i9 - 1;
                                byteBuffer9.put(i9, (byte) (((codePoint >>> 12) & 63) | 128));
                                ByteBuffer byteBuffer10 = this.f16724goto;
                                int i10 = this.f16723break;
                                this.f16723break = i10 - 1;
                                byteBuffer10.put(i10, (byte) ((codePoint >>> 18) | MountainSceneView.f20267finally));
                            }
                        }
                        throw new a2.Cnew(length - 1, length);
                    }
                    mo19994default(length);
                    length++;
                }
                length--;
            }
        }

        @Override // com.google.protobuf.Ccatch
        public void l(int i, int i2) {
            q(c2.m19963for(i, i2));
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: new */
        public void mo20006new(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            if (w() < iRemaining) {
                this.f16714new += iRemaining;
                this.f16712for.addFirst(com.google.protobuf.Cfor.m20481break(byteBuffer));
                t();
            } else {
                int i = this.f16723break - iRemaining;
                this.f16723break = i;
                this.f16724goto.put(byteBuffer);
            }
        }

        @Override // com.google.protobuf.Ccatch
        public void q(int i) {
            if ((i & (-128)) == 0) {
                z(i);
                return;
            }
            if ((i & (-16384)) == 0) {
                B(i);
                return;
            }
            if (((-2097152) & i) == 0) {
                A(i);
            } else if (((-268435456) & i) == 0) {
                y(i);
            } else {
                x(i);
            }
        }

        @Override // com.google.protobuf.Ccatch
        public void r(long j) {
            switch (Ccatch.m19974goto(j)) {
                case 1:
                    H(j);
                    break;
                case 2:
                    M(j);
                    break;
                case 3:
                    L(j);
                    break;
                case 4:
                    F(j);
                    break;
                case 5:
                    E(j);
                    break;
                case 6:
                    J(j);
                    break;
                case 7:
                    I(j);
                    break;
                case 8:
                    C(j);
                    break;
                case 9:
                    G(j);
                    break;
                case 10:
                    K(j);
                    break;
            }
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: synchronized */
        public void mo20000synchronized(int i) {
            if (i >= 0) {
                q(i);
            } else {
                r(i);
            }
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: this */
        public void mo20001this() {
            if (this.f16724goto != null) {
                this.f16714new += s();
                this.f16724goto = null;
                this.f16723break = 0;
                this.f16725this = 0;
            }
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: try */
        public void mo20007try(byte[] bArr, int i, int i2) {
            if (w() < i2) {
                this.f16714new += i2;
                this.f16712for.addFirst(com.google.protobuf.Cfor.m20483class(bArr, i, i2));
                t();
            } else {
                int i3 = this.f16723break - i2;
                this.f16723break = i3;
                this.f16724goto.put(bArr, i, i2);
            }
        }

        @Override // com.google.protobuf.Writer
        public void writeBool(int i, boolean z) {
            mo19994default(6);
            mo20003do(z ? (byte) 1 : (byte) 0);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeBytes(int i, ByteString byteString) {
            try {
                byteString.writeToReverse(this);
                mo19994default(10);
                q(byteString.size());
                l(i, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.protobuf.Writer
        public void writeEndGroup(int i) {
            l(i, 4);
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed32(int i, int i2) {
            mo19994default(9);
            mo19993continue(i2);
            l(i, 5);
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed64(int i, long j) {
            mo19994default(13);
            mo19999interface(j);
            l(i, 1);
        }

        @Override // com.google.protobuf.Writer
        public void writeGroup(int i, Object obj) throws IOException {
            l(i, 4);
            q0.m21002do().m21005catch(obj, this);
            l(i, 3);
        }

        @Override // com.google.protobuf.Writer
        public void writeInt32(int i, int i2) {
            mo19994default(15);
            mo20000synchronized(i2);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeMessage(int i, Object obj) throws IOException {
            int iMo19991break = mo19991break();
            q0.m21002do().m21005catch(obj, this);
            int iMo19991break2 = mo19991break() - iMo19991break;
            mo19994default(10);
            q(iMo19991break2);
            l(i, 2);
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt32(int i, int i2) {
            mo19994default(10);
            e(i2);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt64(int i, long j) {
            mo19994default(15);
            h(j);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeStartGroup(int i) {
            l(i, 3);
        }

        @Override // com.google.protobuf.Writer
        public void writeString(int i, String str) {
            int iMo19991break = mo19991break();
            k(str);
            int iMo19991break2 = mo19991break() - iMo19991break;
            mo19994default(10);
            q(iMo19991break2);
            l(i, 2);
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt32(int i, int i2) {
            mo19994default(10);
            q(i2);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt64(int i, long j) {
            mo19994default(15);
            r(j);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeGroup(int i, Object obj, Schema schema) throws IOException {
            l(i, 4);
            schema.writeTo(obj, this);
            l(i, 3);
        }

        @Override // com.google.protobuf.Writer
        public void writeMessage(int i, Object obj, Schema schema) throws IOException {
            int iMo19991break = mo19991break();
            schema.writeTo(obj, this);
            int iMo19991break2 = mo19991break() - iMo19991break;
            mo19994default(10);
            q(iMo19991break2);
            l(i, 2);
        }
    }

    /* renamed from: com.google.protobuf.catch$new, reason: invalid class name */
    public static final class Cnew extends Ccatch {

        /* renamed from: break, reason: not valid java name */
        private long f16726break;

        /* renamed from: catch, reason: not valid java name */
        private long f16727catch;

        /* renamed from: goto, reason: not valid java name */
        private ByteBuffer f16728goto;

        /* renamed from: this, reason: not valid java name */
        private long f16729this;

        public Cnew(Cfinal cfinal, int i) {
            super(cfinal, i, null);
            w();
        }

        private void A(int i) {
            long j = this.f16727catch;
            this.f16727catch = j - 1;
            z1.o(j, (byte) (i >>> 28));
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) (((i >>> 21) & 127) | 128));
            long j3 = this.f16727catch;
            this.f16727catch = j3 - 1;
            z1.o(j3, (byte) (((i >>> 14) & 127) | 128));
            long j4 = this.f16727catch;
            this.f16727catch = j4 - 1;
            z1.o(j4, (byte) (((i >>> 7) & 127) | 128));
            long j5 = this.f16727catch;
            this.f16727catch = j5 - 1;
            z1.o(j5, (byte) ((i & 127) | 128));
        }

        private void B(int i) {
            long j = this.f16727catch;
            this.f16727catch = j - 1;
            z1.o(j, (byte) (i >>> 21));
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) (((i >>> 14) & 127) | 128));
            long j3 = this.f16727catch;
            this.f16727catch = j3 - 1;
            z1.o(j3, (byte) (((i >>> 7) & 127) | 128));
            long j4 = this.f16727catch;
            this.f16727catch = j4 - 1;
            z1.o(j4, (byte) ((i & 127) | 128));
        }

        private void C(int i) {
            long j = this.f16727catch;
            this.f16727catch = j - 1;
            z1.o(j, (byte) i);
        }

        private void D(int i) {
            long j = this.f16727catch;
            this.f16727catch = j - 1;
            z1.o(j, (byte) (i >>> 14));
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) (((i >>> 7) & 127) | 128));
            long j3 = this.f16727catch;
            this.f16727catch = j3 - 1;
            z1.o(j3, (byte) ((i & 127) | 128));
        }

        private void E(int i) {
            long j = this.f16727catch;
            this.f16727catch = j - 1;
            z1.o(j, (byte) (i >>> 7));
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) ((i & 127) | 128));
        }

        private void F(long j) {
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) (j >>> 49));
            long j3 = this.f16727catch;
            this.f16727catch = j3 - 1;
            z1.o(j3, (byte) (((j >>> 42) & 127) | 128));
            long j4 = this.f16727catch;
            this.f16727catch = j4 - 1;
            z1.o(j4, (byte) (((j >>> 35) & 127) | 128));
            long j5 = this.f16727catch;
            this.f16727catch = j5 - 1;
            z1.o(j5, (byte) (((j >>> 28) & 127) | 128));
            long j6 = this.f16727catch;
            this.f16727catch = j6 - 1;
            z1.o(j6, (byte) (((j >>> 21) & 127) | 128));
            long j7 = this.f16727catch;
            this.f16727catch = j7 - 1;
            z1.o(j7, (byte) (((j >>> 14) & 127) | 128));
            long j8 = this.f16727catch;
            this.f16727catch = j8 - 1;
            z1.o(j8, (byte) (((j >>> 7) & 127) | 128));
            long j9 = this.f16727catch;
            this.f16727catch = j9 - 1;
            z1.o(j9, (byte) ((j & 127) | 128));
        }

        private void G(long j) {
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) (j >>> 28));
            long j3 = this.f16727catch;
            this.f16727catch = j3 - 1;
            z1.o(j3, (byte) (((j >>> 21) & 127) | 128));
            long j4 = this.f16727catch;
            this.f16727catch = j4 - 1;
            z1.o(j4, (byte) (((j >>> 14) & 127) | 128));
            long j5 = this.f16727catch;
            this.f16727catch = j5 - 1;
            z1.o(j5, (byte) (((j >>> 7) & 127) | 128));
            long j6 = this.f16727catch;
            this.f16727catch = j6 - 1;
            z1.o(j6, (byte) ((j & 127) | 128));
        }

        private void H(long j) {
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) (j >>> 21));
            long j3 = this.f16727catch;
            this.f16727catch = j3 - 1;
            z1.o(j3, (byte) (((j >>> 14) & 127) | 128));
            long j4 = this.f16727catch;
            this.f16727catch = j4 - 1;
            z1.o(j4, (byte) (((j >>> 7) & 127) | 128));
            long j5 = this.f16727catch;
            this.f16727catch = j5 - 1;
            z1.o(j5, (byte) ((j & 127) | 128));
        }

        private void I(long j) {
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) (j >>> 56));
            long j3 = this.f16727catch;
            this.f16727catch = j3 - 1;
            z1.o(j3, (byte) (((j >>> 49) & 127) | 128));
            long j4 = this.f16727catch;
            this.f16727catch = j4 - 1;
            z1.o(j4, (byte) (((j >>> 42) & 127) | 128));
            long j5 = this.f16727catch;
            this.f16727catch = j5 - 1;
            z1.o(j5, (byte) (((j >>> 35) & 127) | 128));
            long j6 = this.f16727catch;
            this.f16727catch = j6 - 1;
            z1.o(j6, (byte) (((j >>> 28) & 127) | 128));
            long j7 = this.f16727catch;
            this.f16727catch = j7 - 1;
            z1.o(j7, (byte) (((j >>> 21) & 127) | 128));
            long j8 = this.f16727catch;
            this.f16727catch = j8 - 1;
            z1.o(j8, (byte) (((j >>> 14) & 127) | 128));
            long j9 = this.f16727catch;
            this.f16727catch = j9 - 1;
            z1.o(j9, (byte) (((j >>> 7) & 127) | 128));
            long j10 = this.f16727catch;
            this.f16727catch = j10 - 1;
            z1.o(j10, (byte) ((j & 127) | 128));
        }

        private void J(long j) {
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) j);
        }

        private void K(long j) {
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) (j >>> 42));
            long j3 = this.f16727catch;
            this.f16727catch = j3 - 1;
            z1.o(j3, (byte) (((j >>> 35) & 127) | 128));
            long j4 = this.f16727catch;
            this.f16727catch = j4 - 1;
            z1.o(j4, (byte) (((j >>> 28) & 127) | 128));
            long j5 = this.f16727catch;
            this.f16727catch = j5 - 1;
            z1.o(j5, (byte) (((j >>> 21) & 127) | 128));
            long j6 = this.f16727catch;
            this.f16727catch = j6 - 1;
            z1.o(j6, (byte) (((j >>> 14) & 127) | 128));
            long j7 = this.f16727catch;
            this.f16727catch = j7 - 1;
            z1.o(j7, (byte) (((j >>> 7) & 127) | 128));
            long j8 = this.f16727catch;
            this.f16727catch = j8 - 1;
            z1.o(j8, (byte) ((j & 127) | 128));
        }

        private void L(long j) {
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) (j >>> 35));
            long j3 = this.f16727catch;
            this.f16727catch = j3 - 1;
            z1.o(j3, (byte) (((j >>> 28) & 127) | 128));
            long j4 = this.f16727catch;
            this.f16727catch = j4 - 1;
            z1.o(j4, (byte) (((j >>> 21) & 127) | 128));
            long j5 = this.f16727catch;
            this.f16727catch = j5 - 1;
            z1.o(j5, (byte) (((j >>> 14) & 127) | 128));
            long j6 = this.f16727catch;
            this.f16727catch = j6 - 1;
            z1.o(j6, (byte) (((j >>> 7) & 127) | 128));
            long j7 = this.f16727catch;
            this.f16727catch = j7 - 1;
            z1.o(j7, (byte) ((j & 127) | 128));
        }

        private void M(long j) {
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) (j >>> 63));
            long j3 = this.f16727catch;
            this.f16727catch = j3 - 1;
            z1.o(j3, (byte) (((j >>> 56) & 127) | 128));
            long j4 = this.f16727catch;
            this.f16727catch = j4 - 1;
            z1.o(j4, (byte) (((j >>> 49) & 127) | 128));
            long j5 = this.f16727catch;
            this.f16727catch = j5 - 1;
            z1.o(j5, (byte) (((j >>> 42) & 127) | 128));
            long j6 = this.f16727catch;
            this.f16727catch = j6 - 1;
            z1.o(j6, (byte) (((j >>> 35) & 127) | 128));
            long j7 = this.f16727catch;
            this.f16727catch = j7 - 1;
            z1.o(j7, (byte) (((j >>> 28) & 127) | 128));
            long j8 = this.f16727catch;
            this.f16727catch = j8 - 1;
            z1.o(j8, (byte) (((j >>> 21) & 127) | 128));
            long j9 = this.f16727catch;
            this.f16727catch = j9 - 1;
            z1.o(j9, (byte) (((j >>> 14) & 127) | 128));
            long j10 = this.f16727catch;
            this.f16727catch = j10 - 1;
            z1.o(j10, (byte) (((j >>> 7) & 127) | 128));
            long j11 = this.f16727catch;
            this.f16727catch = j11 - 1;
            z1.o(j11, (byte) ((j & 127) | 128));
        }

        private void N(long j) {
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) (((int) j) >>> 14));
            long j3 = this.f16727catch;
            this.f16727catch = j3 - 1;
            z1.o(j3, (byte) (((j >>> 7) & 127) | 128));
            long j4 = this.f16727catch;
            this.f16727catch = j4 - 1;
            z1.o(j4, (byte) ((j & 127) | 128));
        }

        private void O(long j) {
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) (j >>> 7));
            long j3 = this.f16727catch;
            this.f16727catch = j3 - 1;
            z1.o(j3, (byte) ((((int) j) & 127) | 128));
        }

        private int t() {
            return (int) (this.f16727catch - this.f16729this);
        }

        private int u() {
            return (int) (this.f16726break - this.f16727catch);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean v() {
            return z1.g();
        }

        private void w() {
            y(m19992const());
        }

        private void x(int i) {
            y(m19997final(i));
        }

        private void y(com.google.protobuf.Cfor cfor) {
            if (!cfor.mo20491new()) {
                throw new RuntimeException("Allocated buffer does not have NIO buffer");
            }
            ByteBuffer byteBufferMo20485case = cfor.mo20485case();
            if (!byteBufferMo20485case.isDirect()) {
                throw new RuntimeException("Allocator returned non-direct buffer");
            }
            mo20001this();
            this.f16712for.addFirst(cfor);
            this.f16728goto = byteBufferMo20485case;
            long jM21688this = z1.m21688this(this.f16728goto);
            this.f16729this = jM21688this;
            long jLimit = jM21688this + (this.f16728goto.limit() - 1);
            this.f16726break = jLimit;
            this.f16727catch = jLimit;
        }

        private int z() {
            return t() + 1;
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: break */
        public int mo19991break() {
            return this.f16714new + u();
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: continue */
        public void mo19993continue(int i) {
            long j = this.f16727catch;
            this.f16727catch = j - 1;
            z1.o(j, (byte) ((i >> 24) & 255));
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) ((i >> 16) & 255));
            long j3 = this.f16727catch;
            this.f16727catch = j3 - 1;
            z1.o(j3, (byte) ((i >> 8) & 255));
            long j4 = this.f16727catch;
            this.f16727catch = j4 - 1;
            z1.o(j4, (byte) (i & 255));
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: default */
        public void mo19994default(int i) {
            if (z() < i) {
                x(i);
            }
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: do */
        public void mo20003do(byte b) {
            long j = this.f16727catch;
            this.f16727catch = j - 1;
            z1.o(j, b);
        }

        @Override // com.google.protobuf.Ccatch
        public void e(int i) {
            q(Cnative.w(i));
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: extends */
        public void mo19996extends(boolean z) {
            mo20003do(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: for */
        public void mo20004for(byte[] bArr, int i, int i2) {
            if (z() < i2) {
                x(i2);
            }
            this.f16727catch -= i2;
            this.f16728goto.put(bArr, i, i2);
        }

        @Override // com.google.protobuf.Ccatch
        public void h(long j) {
            r(Cnative.x(j));
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: if */
        public void mo20005if(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            if (z() < iRemaining) {
                x(iRemaining);
            }
            this.f16727catch -= iRemaining;
            this.f16728goto.put(byteBuffer);
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: interface */
        public void mo19999interface(long j) {
            long j2 = this.f16727catch;
            this.f16727catch = j2 - 1;
            z1.o(j2, (byte) (((int) (j >> 56)) & 255));
            long j3 = this.f16727catch;
            this.f16727catch = j3 - 1;
            z1.o(j3, (byte) (((int) (j >> 48)) & 255));
            long j4 = this.f16727catch;
            this.f16727catch = j4 - 1;
            z1.o(j4, (byte) (((int) (j >> 40)) & 255));
            long j5 = this.f16727catch;
            this.f16727catch = j5 - 1;
            z1.o(j5, (byte) (((int) (j >> 32)) & 255));
            long j6 = this.f16727catch;
            this.f16727catch = j6 - 1;
            z1.o(j6, (byte) (((int) (j >> 24)) & 255));
            long j7 = this.f16727catch;
            this.f16727catch = j7 - 1;
            z1.o(j7, (byte) (((int) (j >> 16)) & 255));
            long j8 = this.f16727catch;
            this.f16727catch = j8 - 1;
            z1.o(j8, (byte) (((int) (j >> 8)) & 255));
            long j9 = this.f16727catch;
            this.f16727catch = j9 - 1;
            z1.o(j9, (byte) (((int) j) & 255));
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
        @Override // com.google.protobuf.Ccatch
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void k(String str) {
            char cCharAt;
            mo19994default(str.length());
            int length = str.length();
            while (true) {
                length--;
                if (length < 0 || (cCharAt = str.charAt(length)) >= 128) {
                    break;
                }
                long j = this.f16727catch;
                this.f16727catch = j - 1;
                z1.o(j, (byte) cCharAt);
            }
            if (length == -1) {
                return;
            }
            while (length >= 0) {
                char cCharAt2 = str.charAt(length);
                if (cCharAt2 < 128) {
                    long j2 = this.f16727catch;
                    if (j2 >= this.f16729this) {
                        this.f16727catch = j2 - 1;
                        z1.o(j2, (byte) cCharAt2);
                    } else if (cCharAt2 < 2048) {
                        long j3 = this.f16727catch;
                        if (j3 > this.f16729this) {
                            this.f16727catch = j3 - 1;
                            z1.o(j3, (byte) ((cCharAt2 & '?') | 128));
                            long j4 = this.f16727catch;
                            this.f16727catch = j4 - 1;
                            z1.o(j4, (byte) ((cCharAt2 >>> 6) | 960));
                        } else if (cCharAt2 < 55296 || 57343 < cCharAt2) {
                            long j5 = this.f16727catch;
                            if (j5 > this.f16729this + 1) {
                                this.f16727catch = j5 - 1;
                                z1.o(j5, (byte) ((cCharAt2 & '?') | 128));
                                long j6 = this.f16727catch;
                                this.f16727catch = j6 - 1;
                                z1.o(j6, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                                long j7 = this.f16727catch;
                                this.f16727catch = j7 - 1;
                                z1.o(j7, (byte) ((cCharAt2 >>> '\f') | 480));
                            } else {
                                if (this.f16727catch > this.f16729this + 2) {
                                    if (length != 0) {
                                        char cCharAt3 = str.charAt(length - 1);
                                        if (Character.isSurrogatePair(cCharAt3, cCharAt2)) {
                                            length--;
                                            int codePoint = Character.toCodePoint(cCharAt3, cCharAt2);
                                            long j8 = this.f16727catch;
                                            this.f16727catch = j8 - 1;
                                            z1.o(j8, (byte) ((codePoint & 63) | 128));
                                            long j9 = this.f16727catch;
                                            this.f16727catch = j9 - 1;
                                            z1.o(j9, (byte) (((codePoint >>> 6) & 63) | 128));
                                            long j10 = this.f16727catch;
                                            this.f16727catch = j10 - 1;
                                            z1.o(j10, (byte) (((codePoint >>> 12) & 63) | 128));
                                            long j11 = this.f16727catch;
                                            this.f16727catch = j11 - 1;
                                            z1.o(j11, (byte) ((codePoint >>> 18) | MountainSceneView.f20267finally));
                                        }
                                    }
                                    throw new a2.Cnew(length - 1, length);
                                }
                                mo19994default(length);
                                length++;
                            }
                        }
                    }
                }
                length--;
            }
        }

        @Override // com.google.protobuf.Ccatch
        public void l(int i, int i2) {
            q(c2.m19963for(i, i2));
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: new */
        public void mo20006new(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            if (z() < iRemaining) {
                this.f16714new += iRemaining;
                this.f16712for.addFirst(com.google.protobuf.Cfor.m20481break(byteBuffer));
                w();
            } else {
                this.f16727catch -= iRemaining;
                this.f16728goto.put(byteBuffer);
            }
        }

        @Override // com.google.protobuf.Ccatch
        public void q(int i) {
            if ((i & (-128)) == 0) {
                C(i);
                return;
            }
            if ((i & (-16384)) == 0) {
                E(i);
                return;
            }
            if (((-2097152) & i) == 0) {
                D(i);
            } else if (((-268435456) & i) == 0) {
                B(i);
            } else {
                A(i);
            }
        }

        @Override // com.google.protobuf.Ccatch
        public void r(long j) {
            switch (Ccatch.m19974goto(j)) {
                case 1:
                    J(j);
                    break;
                case 2:
                    O(j);
                    break;
                case 3:
                    N(j);
                    break;
                case 4:
                    H(j);
                    break;
                case 5:
                    G(j);
                    break;
                case 6:
                    L(j);
                    break;
                case 7:
                    K(j);
                    break;
                case 8:
                    F(j);
                    break;
                case 9:
                    I(j);
                    break;
                case 10:
                    M(j);
                    break;
            }
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: synchronized */
        public void mo20000synchronized(int i) {
            if (i >= 0) {
                q(i);
            } else {
                r(i);
            }
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: this */
        public void mo20001this() {
            if (this.f16728goto != null) {
                this.f16714new += u();
                this.f16728goto = null;
                this.f16727catch = 0L;
                this.f16726break = 0L;
            }
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: try */
        public void mo20007try(byte[] bArr, int i, int i2) {
            if (z() < i2) {
                this.f16714new += i2;
                this.f16712for.addFirst(com.google.protobuf.Cfor.m20483class(bArr, i, i2));
                w();
            } else {
                this.f16727catch -= i2;
                this.f16728goto.put(bArr, i, i2);
            }
        }

        @Override // com.google.protobuf.Writer
        public void writeBool(int i, boolean z) {
            mo19994default(6);
            mo20003do(z ? (byte) 1 : (byte) 0);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeBytes(int i, ByteString byteString) {
            try {
                byteString.writeToReverse(this);
                mo19994default(10);
                q(byteString.size());
                l(i, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.protobuf.Writer
        public void writeEndGroup(int i) {
            l(i, 4);
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed32(int i, int i2) {
            mo19994default(9);
            mo19993continue(i2);
            l(i, 5);
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed64(int i, long j) {
            mo19994default(13);
            mo19999interface(j);
            l(i, 1);
        }

        @Override // com.google.protobuf.Writer
        public void writeGroup(int i, Object obj) throws IOException {
            l(i, 4);
            q0.m21002do().m21005catch(obj, this);
            l(i, 3);
        }

        @Override // com.google.protobuf.Writer
        public void writeInt32(int i, int i2) {
            mo19994default(15);
            mo20000synchronized(i2);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeMessage(int i, Object obj) throws IOException {
            int iMo19991break = mo19991break();
            q0.m21002do().m21005catch(obj, this);
            int iMo19991break2 = mo19991break() - iMo19991break;
            mo19994default(10);
            q(iMo19991break2);
            l(i, 2);
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt32(int i, int i2) {
            mo19994default(10);
            e(i2);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt64(int i, long j) {
            mo19994default(15);
            h(j);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeStartGroup(int i) {
            l(i, 3);
        }

        @Override // com.google.protobuf.Writer
        public void writeString(int i, String str) {
            int iMo19991break = mo19991break();
            k(str);
            int iMo19991break2 = mo19991break() - iMo19991break;
            mo19994default(10);
            q(iMo19991break2);
            l(i, 2);
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt32(int i, int i2) {
            mo19994default(10);
            q(i2);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt64(int i, long j) {
            mo19994default(15);
            r(j);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeGroup(int i, Object obj, Schema schema) throws IOException {
            l(i, 4);
            schema.writeTo(obj, this);
            l(i, 3);
        }

        @Override // com.google.protobuf.Writer
        public void writeMessage(int i, Object obj, Schema schema) throws IOException {
            int iMo19991break = mo19991break();
            schema.writeTo(obj, this);
            int iMo19991break2 = mo19991break() - iMo19991break;
            mo19994default(10);
            q(iMo19991break2);
            l(i, 2);
        }
    }

    /* renamed from: com.google.protobuf.catch$try, reason: invalid class name */
    public static final class Ctry extends Ccatch {

        /* renamed from: break, reason: not valid java name */
        private long f16730break;

        /* renamed from: catch, reason: not valid java name */
        private long f16731catch;

        /* renamed from: class, reason: not valid java name */
        private long f16732class;

        /* renamed from: const, reason: not valid java name */
        private long f16733const;

        /* renamed from: final, reason: not valid java name */
        private long f16734final;

        /* renamed from: goto, reason: not valid java name */
        private com.google.protobuf.Cfor f16735goto;

        /* renamed from: this, reason: not valid java name */
        private byte[] f16736this;

        public Ctry(Cfinal cfinal, int i) {
            super(cfinal, i, null);
            v();
        }

        private void A(int i) {
            byte[] bArr = this.f16736this;
            long j = this.f16734final;
            this.f16734final = j - 1;
            z1.q(bArr, j, (byte) (i >>> 21));
            byte[] bArr2 = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr2, j2, (byte) (((i >>> 14) & 127) | 128));
            byte[] bArr3 = this.f16736this;
            long j3 = this.f16734final;
            this.f16734final = j3 - 1;
            z1.q(bArr3, j3, (byte) (((i >>> 7) & 127) | 128));
            byte[] bArr4 = this.f16736this;
            long j4 = this.f16734final;
            this.f16734final = j4 - 1;
            z1.q(bArr4, j4, (byte) ((i & 127) | 128));
        }

        private void B(int i) {
            byte[] bArr = this.f16736this;
            long j = this.f16734final;
            this.f16734final = j - 1;
            z1.q(bArr, j, (byte) i);
        }

        private void C(int i) {
            byte[] bArr = this.f16736this;
            long j = this.f16734final;
            this.f16734final = j - 1;
            z1.q(bArr, j, (byte) (i >>> 14));
            byte[] bArr2 = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr2, j2, (byte) (((i >>> 7) & 127) | 128));
            byte[] bArr3 = this.f16736this;
            long j3 = this.f16734final;
            this.f16734final = j3 - 1;
            z1.q(bArr3, j3, (byte) ((i & 127) | 128));
        }

        private void D(int i) {
            byte[] bArr = this.f16736this;
            long j = this.f16734final;
            this.f16734final = j - 1;
            z1.q(bArr, j, (byte) (i >>> 7));
            byte[] bArr2 = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr2, j2, (byte) ((i & 127) | 128));
        }

        private void E(long j) {
            byte[] bArr = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr, j2, (byte) (j >>> 49));
            byte[] bArr2 = this.f16736this;
            long j3 = this.f16734final;
            this.f16734final = j3 - 1;
            z1.q(bArr2, j3, (byte) (((j >>> 42) & 127) | 128));
            byte[] bArr3 = this.f16736this;
            long j4 = this.f16734final;
            this.f16734final = j4 - 1;
            z1.q(bArr3, j4, (byte) (((j >>> 35) & 127) | 128));
            byte[] bArr4 = this.f16736this;
            long j5 = this.f16734final;
            this.f16734final = j5 - 1;
            z1.q(bArr4, j5, (byte) (((j >>> 28) & 127) | 128));
            byte[] bArr5 = this.f16736this;
            long j6 = this.f16734final;
            this.f16734final = j6 - 1;
            z1.q(bArr5, j6, (byte) (((j >>> 21) & 127) | 128));
            byte[] bArr6 = this.f16736this;
            long j7 = this.f16734final;
            this.f16734final = j7 - 1;
            z1.q(bArr6, j7, (byte) (((j >>> 14) & 127) | 128));
            byte[] bArr7 = this.f16736this;
            long j8 = this.f16734final;
            this.f16734final = j8 - 1;
            z1.q(bArr7, j8, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr8 = this.f16736this;
            long j9 = this.f16734final;
            this.f16734final = j9 - 1;
            z1.q(bArr8, j9, (byte) ((j & 127) | 128));
        }

        private void F(long j) {
            byte[] bArr = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr, j2, (byte) (j >>> 28));
            byte[] bArr2 = this.f16736this;
            long j3 = this.f16734final;
            this.f16734final = j3 - 1;
            z1.q(bArr2, j3, (byte) (((j >>> 21) & 127) | 128));
            byte[] bArr3 = this.f16736this;
            long j4 = this.f16734final;
            this.f16734final = j4 - 1;
            z1.q(bArr3, j4, (byte) (((j >>> 14) & 127) | 128));
            byte[] bArr4 = this.f16736this;
            long j5 = this.f16734final;
            this.f16734final = j5 - 1;
            z1.q(bArr4, j5, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr5 = this.f16736this;
            long j6 = this.f16734final;
            this.f16734final = j6 - 1;
            z1.q(bArr5, j6, (byte) ((j & 127) | 128));
        }

        private void G(long j) {
            byte[] bArr = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr, j2, (byte) (j >>> 21));
            byte[] bArr2 = this.f16736this;
            long j3 = this.f16734final;
            this.f16734final = j3 - 1;
            z1.q(bArr2, j3, (byte) (((j >>> 14) & 127) | 128));
            byte[] bArr3 = this.f16736this;
            long j4 = this.f16734final;
            this.f16734final = j4 - 1;
            z1.q(bArr3, j4, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr4 = this.f16736this;
            long j5 = this.f16734final;
            this.f16734final = j5 - 1;
            z1.q(bArr4, j5, (byte) ((j & 127) | 128));
        }

        private void H(long j) {
            byte[] bArr = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr, j2, (byte) (j >>> 56));
            byte[] bArr2 = this.f16736this;
            long j3 = this.f16734final;
            this.f16734final = j3 - 1;
            z1.q(bArr2, j3, (byte) (((j >>> 49) & 127) | 128));
            byte[] bArr3 = this.f16736this;
            long j4 = this.f16734final;
            this.f16734final = j4 - 1;
            z1.q(bArr3, j4, (byte) (((j >>> 42) & 127) | 128));
            byte[] bArr4 = this.f16736this;
            long j5 = this.f16734final;
            this.f16734final = j5 - 1;
            z1.q(bArr4, j5, (byte) (((j >>> 35) & 127) | 128));
            byte[] bArr5 = this.f16736this;
            long j6 = this.f16734final;
            this.f16734final = j6 - 1;
            z1.q(bArr5, j6, (byte) (((j >>> 28) & 127) | 128));
            byte[] bArr6 = this.f16736this;
            long j7 = this.f16734final;
            this.f16734final = j7 - 1;
            z1.q(bArr6, j7, (byte) (((j >>> 21) & 127) | 128));
            byte[] bArr7 = this.f16736this;
            long j8 = this.f16734final;
            this.f16734final = j8 - 1;
            z1.q(bArr7, j8, (byte) (((j >>> 14) & 127) | 128));
            byte[] bArr8 = this.f16736this;
            long j9 = this.f16734final;
            this.f16734final = j9 - 1;
            z1.q(bArr8, j9, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr9 = this.f16736this;
            long j10 = this.f16734final;
            this.f16734final = j10 - 1;
            z1.q(bArr9, j10, (byte) ((j & 127) | 128));
        }

        private void I(long j) {
            byte[] bArr = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr, j2, (byte) j);
        }

        private void J(long j) {
            byte[] bArr = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr, j2, (byte) (j >>> 42));
            byte[] bArr2 = this.f16736this;
            long j3 = this.f16734final;
            this.f16734final = j3 - 1;
            z1.q(bArr2, j3, (byte) (((j >>> 35) & 127) | 128));
            byte[] bArr3 = this.f16736this;
            long j4 = this.f16734final;
            this.f16734final = j4 - 1;
            z1.q(bArr3, j4, (byte) (((j >>> 28) & 127) | 128));
            byte[] bArr4 = this.f16736this;
            long j5 = this.f16734final;
            this.f16734final = j5 - 1;
            z1.q(bArr4, j5, (byte) (((j >>> 21) & 127) | 128));
            byte[] bArr5 = this.f16736this;
            long j6 = this.f16734final;
            this.f16734final = j6 - 1;
            z1.q(bArr5, j6, (byte) (((j >>> 14) & 127) | 128));
            byte[] bArr6 = this.f16736this;
            long j7 = this.f16734final;
            this.f16734final = j7 - 1;
            z1.q(bArr6, j7, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr7 = this.f16736this;
            long j8 = this.f16734final;
            this.f16734final = j8 - 1;
            z1.q(bArr7, j8, (byte) ((j & 127) | 128));
        }

        private void K(long j) {
            byte[] bArr = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr, j2, (byte) (j >>> 35));
            byte[] bArr2 = this.f16736this;
            long j3 = this.f16734final;
            this.f16734final = j3 - 1;
            z1.q(bArr2, j3, (byte) (((j >>> 28) & 127) | 128));
            byte[] bArr3 = this.f16736this;
            long j4 = this.f16734final;
            this.f16734final = j4 - 1;
            z1.q(bArr3, j4, (byte) (((j >>> 21) & 127) | 128));
            byte[] bArr4 = this.f16736this;
            long j5 = this.f16734final;
            this.f16734final = j5 - 1;
            z1.q(bArr4, j5, (byte) (((j >>> 14) & 127) | 128));
            byte[] bArr5 = this.f16736this;
            long j6 = this.f16734final;
            this.f16734final = j6 - 1;
            z1.q(bArr5, j6, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr6 = this.f16736this;
            long j7 = this.f16734final;
            this.f16734final = j7 - 1;
            z1.q(bArr6, j7, (byte) ((j & 127) | 128));
        }

        private void L(long j) {
            byte[] bArr = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr, j2, (byte) (j >>> 63));
            byte[] bArr2 = this.f16736this;
            long j3 = this.f16734final;
            this.f16734final = j3 - 1;
            z1.q(bArr2, j3, (byte) (((j >>> 56) & 127) | 128));
            byte[] bArr3 = this.f16736this;
            long j4 = this.f16734final;
            this.f16734final = j4 - 1;
            z1.q(bArr3, j4, (byte) (((j >>> 49) & 127) | 128));
            byte[] bArr4 = this.f16736this;
            long j5 = this.f16734final;
            this.f16734final = j5 - 1;
            z1.q(bArr4, j5, (byte) (((j >>> 42) & 127) | 128));
            byte[] bArr5 = this.f16736this;
            long j6 = this.f16734final;
            this.f16734final = j6 - 1;
            z1.q(bArr5, j6, (byte) (((j >>> 35) & 127) | 128));
            byte[] bArr6 = this.f16736this;
            long j7 = this.f16734final;
            this.f16734final = j7 - 1;
            z1.q(bArr6, j7, (byte) (((j >>> 28) & 127) | 128));
            byte[] bArr7 = this.f16736this;
            long j8 = this.f16734final;
            this.f16734final = j8 - 1;
            z1.q(bArr7, j8, (byte) (((j >>> 21) & 127) | 128));
            byte[] bArr8 = this.f16736this;
            long j9 = this.f16734final;
            this.f16734final = j9 - 1;
            z1.q(bArr8, j9, (byte) (((j >>> 14) & 127) | 128));
            byte[] bArr9 = this.f16736this;
            long j10 = this.f16734final;
            this.f16734final = j10 - 1;
            z1.q(bArr9, j10, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr10 = this.f16736this;
            long j11 = this.f16734final;
            this.f16734final = j11 - 1;
            z1.q(bArr10, j11, (byte) ((j & 127) | 128));
        }

        private void M(long j) {
            byte[] bArr = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr, j2, (byte) (((int) j) >>> 14));
            byte[] bArr2 = this.f16736this;
            long j3 = this.f16734final;
            this.f16734final = j3 - 1;
            z1.q(bArr2, j3, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr3 = this.f16736this;
            long j4 = this.f16734final;
            this.f16734final = j4 - 1;
            z1.q(bArr3, j4, (byte) ((j & 127) | 128));
        }

        private void N(long j) {
            byte[] bArr = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr, j2, (byte) (j >>> 7));
            byte[] bArr2 = this.f16736this;
            long j3 = this.f16734final;
            this.f16734final = j3 - 1;
            z1.q(bArr2, j3, (byte) ((((int) j) & 127) | 128));
        }

        private int s() {
            return (int) this.f16734final;
        }

        public static boolean u() {
            return z1.f();
        }

        private void v() {
            x(m20002while());
        }

        private void w(int i) {
            x(m19998import(i));
        }

        private void x(com.google.protobuf.Cfor cfor) {
            if (!cfor.mo20488for()) {
                throw new RuntimeException("Allocator returned non-heap buffer");
            }
            mo20001this();
            this.f16712for.addFirst(cfor);
            this.f16735goto = cfor;
            this.f16736this = cfor.mo20486do();
            int iMo20490if = cfor.mo20490if();
            this.f16731catch = cfor.mo20493try() + iMo20490if;
            long jMo20487else = iMo20490if + cfor.mo20487else();
            this.f16730break = jMo20487else;
            this.f16732class = jMo20487else - 1;
            long j = this.f16731catch - 1;
            this.f16733const = j;
            this.f16734final = j;
        }

        private void z(int i) {
            byte[] bArr = this.f16736this;
            long j = this.f16734final;
            this.f16734final = j - 1;
            z1.q(bArr, j, (byte) (i >>> 28));
            byte[] bArr2 = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr2, j2, (byte) (((i >>> 21) & 127) | 128));
            byte[] bArr3 = this.f16736this;
            long j3 = this.f16734final;
            this.f16734final = j3 - 1;
            z1.q(bArr3, j3, (byte) (((i >>> 14) & 127) | 128));
            byte[] bArr4 = this.f16736this;
            long j4 = this.f16734final;
            this.f16734final = j4 - 1;
            z1.q(bArr4, j4, (byte) (((i >>> 7) & 127) | 128));
            byte[] bArr5 = this.f16736this;
            long j5 = this.f16734final;
            this.f16734final = j5 - 1;
            z1.q(bArr5, j5, (byte) ((i & 127) | 128));
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: break */
        public int mo19991break() {
            return this.f16714new + t();
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: continue */
        public void mo19993continue(int i) {
            byte[] bArr = this.f16736this;
            long j = this.f16734final;
            this.f16734final = j - 1;
            z1.q(bArr, j, (byte) ((i >> 24) & 255));
            byte[] bArr2 = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr2, j2, (byte) ((i >> 16) & 255));
            byte[] bArr3 = this.f16736this;
            long j3 = this.f16734final;
            this.f16734final = j3 - 1;
            z1.q(bArr3, j3, (byte) ((i >> 8) & 255));
            byte[] bArr4 = this.f16736this;
            long j4 = this.f16734final;
            this.f16734final = j4 - 1;
            z1.q(bArr4, j4, (byte) (i & 255));
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: default */
        public void mo19994default(int i) {
            if (y() < i) {
                w(i);
            }
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: do */
        public void mo20003do(byte b) {
            byte[] bArr = this.f16736this;
            long j = this.f16734final;
            this.f16734final = j - 1;
            z1.q(bArr, j, b);
        }

        @Override // com.google.protobuf.Ccatch
        public void e(int i) {
            q(Cnative.w(i));
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: extends */
        public void mo19996extends(boolean z) {
            mo20003do(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: for */
        public void mo20004for(byte[] bArr, int i, int i2) {
            if (i < 0 || i + i2 > bArr.length) {
                throw new ArrayIndexOutOfBoundsException(String.format("value.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            mo19994default(i2);
            this.f16734final -= i2;
            System.arraycopy(bArr, i, this.f16736this, s() + 1, i2);
        }

        @Override // com.google.protobuf.Ccatch
        public void h(long j) {
            r(Cnative.x(j));
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: if */
        public void mo20005if(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            mo19994default(iRemaining);
            this.f16734final -= iRemaining;
            byteBuffer.get(this.f16736this, s() + 1, iRemaining);
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: interface */
        public void mo19999interface(long j) {
            byte[] bArr = this.f16736this;
            long j2 = this.f16734final;
            this.f16734final = j2 - 1;
            z1.q(bArr, j2, (byte) (((int) (j >> 56)) & 255));
            byte[] bArr2 = this.f16736this;
            long j3 = this.f16734final;
            this.f16734final = j3 - 1;
            z1.q(bArr2, j3, (byte) (((int) (j >> 48)) & 255));
            byte[] bArr3 = this.f16736this;
            long j4 = this.f16734final;
            this.f16734final = j4 - 1;
            z1.q(bArr3, j4, (byte) (((int) (j >> 40)) & 255));
            byte[] bArr4 = this.f16736this;
            long j5 = this.f16734final;
            this.f16734final = j5 - 1;
            z1.q(bArr4, j5, (byte) (((int) (j >> 32)) & 255));
            byte[] bArr5 = this.f16736this;
            long j6 = this.f16734final;
            this.f16734final = j6 - 1;
            z1.q(bArr5, j6, (byte) (((int) (j >> 24)) & 255));
            byte[] bArr6 = this.f16736this;
            long j7 = this.f16734final;
            this.f16734final = j7 - 1;
            z1.q(bArr6, j7, (byte) (((int) (j >> 16)) & 255));
            byte[] bArr7 = this.f16736this;
            long j8 = this.f16734final;
            this.f16734final = j8 - 1;
            z1.q(bArr7, j8, (byte) (((int) (j >> 8)) & 255));
            byte[] bArr8 = this.f16736this;
            long j9 = this.f16734final;
            this.f16734final = j9 - 1;
            z1.q(bArr8, j9, (byte) (((int) j) & 255));
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00b5  */
        @Override // com.google.protobuf.Ccatch
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void k(String str) {
            char cCharAt;
            mo19994default(str.length());
            int length = str.length();
            while (true) {
                length--;
                if (length < 0 || (cCharAt = str.charAt(length)) >= 128) {
                    break;
                }
                byte[] bArr = this.f16736this;
                long j = this.f16734final;
                this.f16734final = j - 1;
                z1.q(bArr, j, (byte) cCharAt);
            }
            if (length == -1) {
                return;
            }
            while (length >= 0) {
                char cCharAt2 = str.charAt(length);
                if (cCharAt2 < 128) {
                    long j2 = this.f16734final;
                    if (j2 > this.f16732class) {
                        byte[] bArr2 = this.f16736this;
                        this.f16734final = j2 - 1;
                        z1.q(bArr2, j2, (byte) cCharAt2);
                    } else if (cCharAt2 < 2048) {
                        long j3 = this.f16734final;
                        if (j3 > this.f16730break) {
                            byte[] bArr3 = this.f16736this;
                            this.f16734final = j3 - 1;
                            z1.q(bArr3, j3, (byte) ((cCharAt2 & '?') | 128));
                            byte[] bArr4 = this.f16736this;
                            long j4 = this.f16734final;
                            this.f16734final = j4 - 1;
                            z1.q(bArr4, j4, (byte) ((cCharAt2 >>> 6) | 960));
                        } else if (cCharAt2 < 55296 || 57343 < cCharAt2) {
                            long j5 = this.f16734final;
                            if (j5 > this.f16730break + 1) {
                                byte[] bArr5 = this.f16736this;
                                this.f16734final = j5 - 1;
                                z1.q(bArr5, j5, (byte) ((cCharAt2 & '?') | 128));
                                byte[] bArr6 = this.f16736this;
                                long j6 = this.f16734final;
                                this.f16734final = j6 - 1;
                                z1.q(bArr6, j6, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                                byte[] bArr7 = this.f16736this;
                                long j7 = this.f16734final;
                                this.f16734final = j7 - 1;
                                z1.q(bArr7, j7, (byte) ((cCharAt2 >>> '\f') | 480));
                            } else {
                                if (this.f16734final > this.f16730break + 2) {
                                    if (length != 0) {
                                        char cCharAt3 = str.charAt(length - 1);
                                        if (Character.isSurrogatePair(cCharAt3, cCharAt2)) {
                                            length--;
                                            int codePoint = Character.toCodePoint(cCharAt3, cCharAt2);
                                            byte[] bArr8 = this.f16736this;
                                            long j8 = this.f16734final;
                                            this.f16734final = j8 - 1;
                                            z1.q(bArr8, j8, (byte) ((codePoint & 63) | 128));
                                            byte[] bArr9 = this.f16736this;
                                            long j9 = this.f16734final;
                                            this.f16734final = j9 - 1;
                                            z1.q(bArr9, j9, (byte) (((codePoint >>> 6) & 63) | 128));
                                            byte[] bArr10 = this.f16736this;
                                            long j10 = this.f16734final;
                                            this.f16734final = j10 - 1;
                                            z1.q(bArr10, j10, (byte) (((codePoint >>> 12) & 63) | 128));
                                            byte[] bArr11 = this.f16736this;
                                            long j11 = this.f16734final;
                                            this.f16734final = j11 - 1;
                                            z1.q(bArr11, j11, (byte) ((codePoint >>> 18) | MountainSceneView.f20267finally));
                                        }
                                    }
                                    throw new a2.Cnew(length - 1, length);
                                }
                                mo19994default(length);
                                length++;
                            }
                        }
                    }
                }
                length--;
            }
        }

        @Override // com.google.protobuf.Ccatch
        public void l(int i, int i2) {
            q(c2.m19963for(i, i2));
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: new */
        public void mo20006new(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            if (y() < iRemaining) {
                this.f16714new += iRemaining;
                this.f16712for.addFirst(com.google.protobuf.Cfor.m20481break(byteBuffer));
                v();
            }
            this.f16734final -= iRemaining;
            byteBuffer.get(this.f16736this, s() + 1, iRemaining);
        }

        @Override // com.google.protobuf.Ccatch
        public void q(int i) {
            if ((i & (-128)) == 0) {
                B(i);
                return;
            }
            if ((i & (-16384)) == 0) {
                D(i);
                return;
            }
            if (((-2097152) & i) == 0) {
                C(i);
            } else if (((-268435456) & i) == 0) {
                A(i);
            } else {
                z(i);
            }
        }

        @Override // com.google.protobuf.Ccatch
        public void r(long j) {
            switch (Ccatch.m19974goto(j)) {
                case 1:
                    I(j);
                    break;
                case 2:
                    N(j);
                    break;
                case 3:
                    M(j);
                    break;
                case 4:
                    G(j);
                    break;
                case 5:
                    F(j);
                    break;
                case 6:
                    K(j);
                    break;
                case 7:
                    J(j);
                    break;
                case 8:
                    E(j);
                    break;
                case 9:
                    H(j);
                    break;
                case 10:
                    L(j);
                    break;
            }
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: synchronized */
        public void mo20000synchronized(int i) {
            if (i >= 0) {
                q(i);
            } else {
                r(i);
            }
        }

        public int t() {
            return (int) (this.f16733const - this.f16734final);
        }

        @Override // com.google.protobuf.Ccatch
        /* renamed from: this */
        public void mo20001this() {
            if (this.f16735goto != null) {
                this.f16714new += t();
                this.f16735goto.mo20489goto((s() - this.f16735goto.mo20490if()) + 1);
                this.f16735goto = null;
                this.f16734final = 0L;
                this.f16733const = 0L;
            }
        }

        @Override // com.google.protobuf.Cthrow
        /* renamed from: try */
        public void mo20007try(byte[] bArr, int i, int i2) {
            if (i < 0 || i + i2 > bArr.length) {
                throw new ArrayIndexOutOfBoundsException(String.format("value.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            if (y() >= i2) {
                this.f16734final -= i2;
                System.arraycopy(bArr, i, this.f16736this, s() + 1, i2);
            } else {
                this.f16714new += i2;
                this.f16712for.addFirst(com.google.protobuf.Cfor.m20483class(bArr, i, i2));
                v();
            }
        }

        @Override // com.google.protobuf.Writer
        public void writeBool(int i, boolean z) {
            mo19994default(6);
            mo20003do(z ? (byte) 1 : (byte) 0);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeBytes(int i, ByteString byteString) {
            try {
                byteString.writeToReverse(this);
                mo19994default(10);
                q(byteString.size());
                l(i, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.protobuf.Writer
        public void writeEndGroup(int i) {
            l(i, 4);
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed32(int i, int i2) {
            mo19994default(9);
            mo19993continue(i2);
            l(i, 5);
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed64(int i, long j) {
            mo19994default(13);
            mo19999interface(j);
            l(i, 1);
        }

        @Override // com.google.protobuf.Writer
        public void writeGroup(int i, Object obj) throws IOException {
            l(i, 4);
            q0.m21002do().m21005catch(obj, this);
            l(i, 3);
        }

        @Override // com.google.protobuf.Writer
        public void writeInt32(int i, int i2) {
            mo19994default(15);
            mo20000synchronized(i2);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeMessage(int i, Object obj) throws IOException {
            int iMo19991break = mo19991break();
            q0.m21002do().m21005catch(obj, this);
            int iMo19991break2 = mo19991break() - iMo19991break;
            mo19994default(10);
            q(iMo19991break2);
            l(i, 2);
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt32(int i, int i2) {
            mo19994default(10);
            e(i2);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt64(int i, long j) {
            mo19994default(15);
            h(j);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeStartGroup(int i) {
            l(i, 3);
        }

        @Override // com.google.protobuf.Writer
        public void writeString(int i, String str) {
            int iMo19991break = mo19991break();
            k(str);
            int iMo19991break2 = mo19991break() - iMo19991break;
            mo19994default(10);
            q(iMo19991break2);
            l(i, 2);
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt32(int i, int i2) {
            mo19994default(10);
            q(i2);
            l(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt64(int i, long j) {
            mo19994default(15);
            r(j);
            l(i, 0);
        }

        public int y() {
            return (int) (this.f16734final - this.f16732class);
        }

        @Override // com.google.protobuf.Writer
        public void writeGroup(int i, Object obj, Schema schema) throws IOException {
            l(i, 4);
            schema.writeTo(obj, this);
            l(i, 3);
        }

        @Override // com.google.protobuf.Writer
        public void writeMessage(int i, Object obj, Schema schema) throws IOException {
            int iMo19991break = mo19991break();
            schema.writeTo(obj, this);
            int iMo19991break2 = mo19991break() - iMo19991break;
            mo19994default(10);
            q(iMo19991break2);
            l(i, 2);
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeGroupList(int i, List<?> list, Schema schema) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            writeGroup(i, list.get(size), schema);
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeMessageList(int i, List<?> list, Schema schema) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            writeMessage(i, list.get(size), schema);
        }
    }
}
