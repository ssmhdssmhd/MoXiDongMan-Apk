package com.google.protobuf;

import com.google.protobuf.FieldSet;
import com.google.protobuf.Internal;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class y0 {

    /* renamed from: try, reason: not valid java name */
    private static final int f17354try = 40;

    /* renamed from: do, reason: not valid java name */
    private static final Class<?> f17350do = m21599abstract();

    /* renamed from: if, reason: not valid java name */
    private static final s1<?, ?> f17352if = m21627strictfp(false);

    /* renamed from: for, reason: not valid java name */
    private static final s1<?, ?> f17351for = m21627strictfp(true);

    /* renamed from: new, reason: not valid java name */
    private static final s1<?, ?> f17353new = new v1();

    private y0() {
    }

    public static void A(int i, List<?> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<?> it = list.iterator();
        while (it.hasNext()) {
            ((r) it.next()).m21043super(writer, i);
        }
    }

    public static void B(int i, Object obj, Writer writer) throws IOException {
        if (obj != null) {
            writer.writeMessage(i, obj);
        }
    }

    public static void C(int i, List<?> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeMessageList(i, list);
    }

    public static void D(int i, List<?> list, Writer writer, Schema schema) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeMessageList(i, list, schema);
    }

    public static void E(int i, int i2, Writer writer) throws IOException {
        if (i2 != 0) {
            writer.writeSFixed32(i, i2);
        }
    }

    public static void F(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSFixed32List(i, list, z);
    }

    public static void G(int i, long j, Writer writer) throws IOException {
        if (j != 0) {
            writer.writeSFixed64(i, j);
        }
    }

    public static void H(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSFixed64List(i, list, z);
    }

    public static void I(int i, int i2, Writer writer) throws IOException {
        if (i2 != 0) {
            writer.writeSInt32(i, i2);
        }
    }

    public static void J(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSInt32List(i, list, z);
    }

    public static void K(int i, long j, Writer writer) throws IOException {
        if (j != 0) {
            writer.writeSInt64(i, j);
        }
    }

    public static void L(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSInt64List(i, list, z);
    }

    public static void M(int i, Object obj, Writer writer) throws IOException {
        if (obj instanceof String) {
            N(i, (String) obj, writer);
        } else {
            i(i, (ByteString) obj, writer);
        }
    }

    private static void N(int i, String str, Writer writer) throws IOException {
        if (str == null || str.isEmpty()) {
            return;
        }
        writer.writeString(i, str);
    }

    public static void O(int i, List<String> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeStringList(i, list);
    }

    public static void P(int i, int i2, Writer writer) throws IOException {
        if (i2 != 0) {
            writer.writeUInt32(i, i2);
        }
    }

    public static void Q(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeUInt32List(i, list, z);
    }

    public static void R(int i, long j, Writer writer) throws IOException {
        if (j != 0) {
            writer.writeUInt64(i, j);
        }
    }

    public static void S(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeUInt64List(i, list, z);
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: abstract, reason: not valid java name */
    private static Class<?> m21599abstract() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean b(int i, int i2, int i3) {
        if (i2 < 40) {
            return true;
        }
        long j = i3;
        return ((((long) i2) - ((long) i)) + 1) + 9 <= ((2 * j) + 3) + ((j + 3) * 3);
    }

    /* renamed from: break, reason: not valid java name */
    public static int m21600break(int i, List<MessageLite> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM20882extends = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iM20882extends += Cnative.m20882extends(i, list.get(i2));
        }
        return iM20882extends;
    }

    public static boolean c(d[] dVarArr) {
        if (dVarArr.length == 0) {
            return false;
        }
        return b(dVarArr[0].m20231super(), dVarArr[dVarArr.length - 1].m20231super(), dVarArr.length);
    }

    /* renamed from: case, reason: not valid java name */
    public static int m21601case(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? Cnative.r(i) + Cnative.m20886implements(size * 4) : size * Cnative.m20894public(i, 0);
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m21602catch(int i, List<MessageLite> list, Schema schema) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM20884finally = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iM20884finally += Cnative.m20884finally(i, list.get(i2), schema);
        }
        return iM20884finally;
    }

    /* renamed from: class, reason: not valid java name */
    public static int m21603class(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM21604const = m21604const(list);
        return z ? Cnative.r(i) + Cnative.m20886implements(iM21604const) : iM21604const + (size * Cnative.r(i));
    }

    /* renamed from: const, reason: not valid java name */
    public static int m21604const(List<Integer> list) {
        int iM20880continue;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof m) {
            m mVar = (m) list;
            iM20880continue = 0;
            while (i < size) {
                iM20880continue += Cnative.m20880continue(mVar.getInt(i));
                i++;
            }
        } else {
            iM20880continue = 0;
            while (i < size) {
                iM20880continue += Cnative.m20880continue(list.get(i).intValue());
                i++;
            }
        }
        return iM20880continue;
    }

    /* renamed from: continue, reason: not valid java name */
    public static Object m21605continue(Class<?> cls, String str) {
        try {
            String name = cls.getName();
            String strE = e(str, true);
            StringBuilder sb = new StringBuilder(name.length() + 19 + String.valueOf(strE).length());
            sb.append(name);
            sb.append("$");
            sb.append(strE);
            sb.append("DefaultEntryHolder");
            Field[] declaredFields = Class.forName(sb.toString()).getDeclaredFields();
            if (declaredFields.length == 1) {
                return z1.d(declaredFields[0]);
            }
            String name2 = cls.getName();
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 63 + name2.length());
            sb2.append("Unable to look up map field default entry holder class for ");
            sb2.append(str);
            sb2.append(" in ");
            sb2.append(name2);
            throw new IllegalStateException(sb2.toString());
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    public static <UT, UB> UB d(int i, int i2, UB ub, s1<UT, UB> s1Var) {
        if (ub == null) {
            ub = s1Var.mo21140final();
        }
        s1Var.mo21151try(ub, i, i2);
        return ub;
    }

    /* renamed from: default, reason: not valid java name */
    public static int m21606default(List<Integer> list) {
        int iT;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof m) {
            m mVar = (m) list;
            iT = 0;
            while (i < size) {
                iT += Cnative.t(mVar.getInt(i));
                i++;
            }
        } else {
            iT = 0;
            while (i < size) {
                iT += Cnative.t(list.get(i).intValue());
                i++;
            }
        }
        return iT;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m21607do(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? Cnative.r(i) + Cnative.m20886implements(size) : size * Cnative.m20885goto(i, true);
    }

    public static String e(String str, boolean z) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if ('a' > cCharAt || cCharAt > 'z') {
                if ('A' > cCharAt || cCharAt > 'Z') {
                    if ('0' <= cCharAt && cCharAt <= '9') {
                        sb.append(cCharAt);
                    }
                    z = true;
                } else if (i != 0 || z) {
                    sb.append(cCharAt);
                } else {
                    sb.append((char) (cCharAt + ' '));
                }
            } else if (z) {
                sb.append((char) (cCharAt - ' '));
            } else {
                sb.append(cCharAt);
            }
            z = false;
        }
        return sb.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public static int m21608else(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: extends, reason: not valid java name */
    public static int m21609extends(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM21611finally = m21611finally(list);
        return z ? Cnative.r(i) + Cnative.m20886implements(iM21611finally) : iM21611finally + (size * Cnative.r(i));
    }

    public static s1<?, ?> f() {
        return f17353new;
    }

    /* renamed from: final, reason: not valid java name */
    public static int m21610final(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        int iM21628super = m21628super(list);
        return z ? Cnative.r(i) + Cnative.m20886implements(iM21628super) : iM21628super + (list.size() * Cnative.r(i));
    }

    /* renamed from: finally, reason: not valid java name */
    public static int m21611finally(List<Long> list) {
        int iV;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof v) {
            v vVar = (v) list;
            iV = 0;
            while (i < size) {
                iV += Cnative.v(vVar.getLong(i));
                i++;
            }
        } else {
            iV = 0;
            while (i < size) {
                iV += Cnative.v(list.get(i).longValue());
                i++;
            }
        }
        return iV;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m21612for(int i, List<ByteString> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iR = size * Cnative.r(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            iR += Cnative.m20898super(list.get(i2));
        }
        return iR;
    }

    public static void g(int i, boolean z, Writer writer) throws IOException {
        if (z) {
            writer.writeBool(i, true);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m21613goto(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? Cnative.r(i) + Cnative.m20886implements(size * 8) : size * Cnative.m20896static(i, 0L);
    }

    public static void h(int i, List<Boolean> list, Writer writer, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeBoolList(i, list, z);
    }

    public static void i(int i, ByteString byteString, Writer writer) throws IOException {
        if (byteString == null || byteString.isEmpty()) {
            return;
        }
        writer.writeBytes(i, byteString);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m21614if(List<?> list) {
        return list.size();
    }

    /* renamed from: implements, reason: not valid java name */
    public static s1<?, ?> m21615implements() {
        return f17352if;
    }

    /* renamed from: import, reason: not valid java name */
    public static int m21616import(int i, List<?> list, Schema schema) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iR = Cnative.r(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            iR += obj instanceof r ? Cnative.m20904transient((r) obj) : Cnative.c((MessageLite) obj, schema);
        }
        return iR;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static s1<?, ?> m21617instanceof() {
        return f17351for;
    }

    /* renamed from: interface, reason: not valid java name */
    public static <T, FT extends FieldSet.FieldDescriptorLite<FT>> void m21618interface(Cinstanceof<FT> cinstanceof, T t, T t2) {
        FieldSet<T> fieldSetMo19676for = cinstanceof.mo19676for(t2);
        if (fieldSetMo19676for.m19392private()) {
            return;
        }
        cinstanceof.mo19679new(t).m19399transient(fieldSetMo19676for);
    }

    public static void j(int i, List<ByteString> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeBytesList(i, list);
    }

    public static void k(int i, double d, Writer writer) throws IOException {
        if (Double.compare(d, 0.0d) != 0) {
            writer.writeDouble(i, d);
        }
    }

    public static void l(int i, List<Double> list, Writer writer, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeDoubleList(i, list, z);
    }

    public static void m(int i, int i2, Writer writer) throws IOException {
        if (i2 != 0) {
            writer.writeEnum(i, i2);
        }
    }

    public static void n(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeEnumList(i, list, z);
    }

    /* renamed from: native, reason: not valid java name */
    public static int m21619native(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM21624public = m21624public(list);
        return z ? Cnative.r(i) + Cnative.m20886implements(iM21624public) : iM21624public + (size * Cnative.r(i));
    }

    /* renamed from: new, reason: not valid java name */
    public static int m21620new(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM21635try = m21635try(list);
        return z ? Cnative.r(i) + Cnative.m20886implements(iM21635try) : iM21635try + (size * Cnative.r(i));
    }

    public static void o(int i, int i2, Writer writer) throws IOException {
        if (i2 != 0) {
            writer.writeFixed32(i, i2);
        }
    }

    public static void p(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFixed32List(i, list, z);
    }

    /* renamed from: package, reason: not valid java name */
    public static <UT, UB> UB m21621package(int i, List<Integer> list, Internal.EnumLiteMap<?> enumLiteMap, UB ub, s1<UT, UB> s1Var) {
        if (enumLiteMap == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int iIntValue = list.get(i3).intValue();
                if (enumLiteMap.findValueByNumber(iIntValue) != null) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(iIntValue));
                    }
                    i2++;
                } else {
                    ub = (UB) d(i, iIntValue, ub, s1Var);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (enumLiteMap.findValueByNumber(iIntValue2) == null) {
                    ub = (UB) d(i, iIntValue2, ub, s1Var);
                    it.remove();
                }
            }
        }
        return ub;
    }

    /* renamed from: private, reason: not valid java name */
    public static <UT, UB> UB m21622private(int i, List<Integer> list, Internal.EnumVerifier enumVerifier, UB ub, s1<UT, UB> s1Var) {
        if (enumVerifier == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int iIntValue = list.get(i3).intValue();
                if (enumVerifier.isInRange(iIntValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(iIntValue));
                    }
                    i2++;
                } else {
                    ub = (UB) d(i, iIntValue, ub, s1Var);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!enumVerifier.isInRange(iIntValue2)) {
                    ub = (UB) d(i, iIntValue2, ub, s1Var);
                    it.remove();
                }
            }
        }
        return ub;
    }

    /* renamed from: protected, reason: not valid java name */
    public static <T> void m21623protected(MapFieldSchema mapFieldSchema, T t, T t2, long j) {
        z1.D(t, j, mapFieldSchema.mergeFrom(z1.b(t, j), z1.b(t2, j)));
    }

    /* renamed from: public, reason: not valid java name */
    public static int m21624public(List<Integer> list) {
        int iM;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof m) {
            m mVar = (m) list;
            iM = 0;
            while (i < size) {
                iM += Cnative.m(mVar.getInt(i));
                i++;
            }
        } else {
            iM = 0;
            while (i < size) {
                iM += Cnative.m(list.get(i).intValue());
                i++;
            }
        }
        return iM;
    }

    public static void q(int i, long j, Writer writer) throws IOException {
        if (j != 0) {
            writer.writeFixed64(i, j);
        }
    }

    public static void r(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFixed64List(i, list, z);
    }

    /* renamed from: return, reason: not valid java name */
    public static int m21625return(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM21626static = m21626static(list);
        return z ? Cnative.r(i) + Cnative.m20886implements(iM21626static) : iM21626static + (size * Cnative.r(i));
    }

    public static void s(int i, float f, Writer writer) throws IOException {
        if (Float.compare(f, 0.0f) != 0) {
            writer.writeFloat(i, f);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static int m21626static(List<Long> list) {
        int iO;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof v) {
            v vVar = (v) list;
            iO = 0;
            while (i < size) {
                iO += Cnative.o(vVar.getLong(i));
                i++;
            }
        } else {
            iO = 0;
            while (i < size) {
                iO += Cnative.o(list.get(i).longValue());
                i++;
            }
        }
        return iO;
    }

    /* renamed from: strictfp, reason: not valid java name */
    private static s1<?, ?> m21627strictfp(boolean z) {
        try {
            Class<?> clsM21636volatile = m21636volatile();
            if (clsM21636volatile == null) {
                return null;
            }
            return (s1) clsM21636volatile.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static int m21628super(List<Long> list) {
        int iM20905volatile;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof v) {
            v vVar = (v) list;
            iM20905volatile = 0;
            while (i < size) {
                iM20905volatile += Cnative.m20905volatile(vVar.getLong(i));
                i++;
            }
        } else {
            iM20905volatile = 0;
            while (i < size) {
                iM20905volatile += Cnative.m20905volatile(list.get(i).longValue());
                i++;
            }
        }
        return iM20905volatile;
    }

    /* renamed from: switch, reason: not valid java name */
    public static int m21629switch(int i, List<?> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iR = Cnative.r(i) * size;
        if (list instanceof LazyStringList) {
            LazyStringList lazyStringList = (LazyStringList) list;
            while (i2 < size) {
                Object raw = lazyStringList.getRaw(i2);
                iR += raw instanceof ByteString ? Cnative.m20898super((ByteString) raw) : Cnative.q((String) raw);
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                iR += obj instanceof ByteString ? Cnative.m20898super((ByteString) obj) : Cnative.q((String) obj);
                i2++;
            }
        }
        return iR;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m21630synchronized(Class<?> cls) {
        Class<?> cls2;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && (cls2 = f17350do) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void t(int i, List<Float> list, Writer writer, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFloatList(i, list, z);
    }

    /* renamed from: this, reason: not valid java name */
    public static int m21631this(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m21632throw(int i, Object obj, Schema schema) {
        return obj instanceof r ? Cnative.m20893protected(i, (r) obj) : Cnative.a(i, (MessageLite) obj, schema);
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m21633throws(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM21606default = m21606default(list);
        return z ? Cnative.r(i) + Cnative.m20886implements(iM21606default) : iM21606default + (size * Cnative.r(i));
    }

    /* renamed from: transient, reason: not valid java name */
    public static <T, UT, UB> void m21634transient(s1<UT, UB> s1Var, T t, T t2) {
        s1Var.mo21150throw(t, s1Var.mo21135catch(s1Var.mo21139else(t), s1Var.mo21139else(t2)));
    }

    /* renamed from: try, reason: not valid java name */
    public static int m21635try(List<Integer> list) {
        int iM20890native;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof m) {
            m mVar = (m) list;
            iM20890native = 0;
            while (i < size) {
                iM20890native += Cnative.m20890native(mVar.getInt(i));
                i++;
            }
        } else {
            iM20890native = 0;
            while (i < size) {
                iM20890native += Cnative.m20890native(list.get(i).intValue());
                i++;
            }
        }
        return iM20890native;
    }

    public static void u(int i, List<?> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeGroupList(i, list);
    }

    public static void v(int i, List<?> list, Writer writer, Schema schema) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeGroupList(i, list, schema);
    }

    /* renamed from: volatile, reason: not valid java name */
    private static Class<?> m21636volatile() {
        return w1.class;
    }

    public static void w(int i, int i2, Writer writer) throws IOException {
        if (i2 != 0) {
            writer.writeInt32(i, i2);
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static int m21637while(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iR = Cnative.r(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            iR += obj instanceof r ? Cnative.m20904transient((r) obj) : Cnative.b((MessageLite) obj);
        }
        return iR;
    }

    public static void x(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeInt32List(i, list, z);
    }

    public static void y(int i, long j, Writer writer) throws IOException {
        if (j != 0) {
            writer.writeInt64(i, j);
        }
    }

    public static void z(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeInt64List(i, list, z);
    }
}
