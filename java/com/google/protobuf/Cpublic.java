package com.google.protobuf;

import com.google.protobuf.Writer;
import com.google.protobuf.c2;
import com.google.protobuf.y;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.protobuf.public, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cpublic implements Writer {

    /* renamed from: do, reason: not valid java name */
    private final Cnative f17164do;

    /* renamed from: com.google.protobuf.public$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17165do;

        static {
            int[] iArr = new int[c2.Cif.values().length];
            f17165do = iArr;
            try {
                iArr[c2.Cif.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17165do[c2.Cif.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17165do[c2.Cif.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17165do[c2.Cif.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17165do[c2.Cif.SINT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17165do[c2.Cif.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17165do[c2.Cif.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17165do[c2.Cif.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17165do[c2.Cif.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17165do[c2.Cif.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17165do[c2.Cif.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17165do[c2.Cif.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private Cpublic(Cnative cnative) {
        Cnative cnative2 = (Cnative) Internal.m19632try(cnative, "output");
        this.f17164do = cnative2;
        cnative2.f17090do = this;
    }

    /* renamed from: case, reason: not valid java name */
    private <K, V> void m20990case(int i, y.Cif<K, V> cif, Map<K, V> map) throws IOException {
        switch (Cdo.f17165do[cif.f17346do.ordinal()]) {
            case 1:
                V v = map.get(Boolean.FALSE);
                if (v != null) {
                    m20993for(i, false, v, cif);
                }
                V v2 = map.get(Boolean.TRUE);
                if (v2 != null) {
                    m20993for(i, true, v2, cif);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                m20995new(i, cif, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                m20996try(i, cif, map);
                return;
            case 12:
                m20992else(i, cif, map);
                return;
            default:
                String strValueOf = String.valueOf(cif.f17346do);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 27);
                sb.append("does not support key type: ");
                sb.append(strValueOf);
                throw new IllegalArgumentException(sb.toString());
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Cpublic m20991do(Cnative cnative) {
        Cpublic cpublic = cnative.f17090do;
        return cpublic != null ? cpublic : new Cpublic(cnative);
    }

    /* renamed from: else, reason: not valid java name */
    private <V> void m20992else(int i, y.Cif<String, V> cif, Map<String, V> map) throws IOException {
        int size = map.size();
        String[] strArr = new String[size];
        Iterator<String> it = map.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            strArr[i2] = it.next();
            i2++;
        }
        Arrays.sort(strArr);
        for (int i3 = 0; i3 < size; i3++) {
            String str = strArr[i3];
            V v = map.get(str);
            this.f17164do.A0(i, 2);
            this.f17164do.B0(y.m21590if(cif, str, v));
            y.m21588class(this.f17164do, cif, str, v);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private <V> void m20993for(int i, boolean z, V v, y.Cif<Boolean, V> cif) throws IOException {
        this.f17164do.A0(i, 2);
        this.f17164do.B0(y.m21590if(cif, Boolean.valueOf(z), v));
        y.m21588class(this.f17164do, cif, Boolean.valueOf(z), v);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m20994goto(int i, Object obj) throws IOException {
        if (obj instanceof String) {
            this.f17164do.writeString(i, (String) obj);
        } else {
            this.f17164do.writeBytes(i, (ByteString) obj);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private <V> void m20995new(int i, y.Cif<Integer, V> cif, Map<Integer, V> map) throws IOException {
        int size = map.size();
        int[] iArr = new int[size];
        Iterator<Integer> it = map.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = it.next().intValue();
            i2++;
        }
        Arrays.sort(iArr);
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = iArr[i3];
            V v = map.get(Integer.valueOf(i4));
            this.f17164do.A0(i, 2);
            this.f17164do.B0(y.m21590if(cif, Integer.valueOf(i4), v));
            y.m21588class(this.f17164do, cif, Integer.valueOf(i4), v);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private <V> void m20996try(int i, y.Cif<Long, V> cif, Map<Long, V> map) throws IOException {
        int size = map.size();
        long[] jArr = new long[size];
        Iterator<Long> it = map.keySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            jArr[i2] = it.next().longValue();
            i2++;
        }
        Arrays.sort(jArr);
        for (int i3 = 0; i3 < size; i3++) {
            long j = jArr[i3];
            V v = map.get(Long.valueOf(j));
            this.f17164do.A0(i, 2);
            this.f17164do.B0(y.m21590if(cif, Long.valueOf(j), v));
            y.m21588class(this.f17164do, cif, Long.valueOf(j), v);
        }
    }

    @Override // com.google.protobuf.Writer
    public Writer.Cdo fieldOrder() {
        return Writer.Cdo.ASCENDING;
    }

    /* renamed from: if, reason: not valid java name */
    public int m20997if() {
        return this.f17164do.z();
    }

    @Override // com.google.protobuf.Writer
    public void writeBool(int i, boolean z) throws IOException {
        this.f17164do.writeBool(i, z);
    }

    @Override // com.google.protobuf.Writer
    public void writeBoolList(int i, List<Boolean> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f17164do.writeBool(i, list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        this.f17164do.A0(i, 2);
        int iM20901this = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iM20901this += Cnative.m20901this(list.get(i3).booleanValue());
        }
        this.f17164do.B0(iM20901this);
        while (i2 < list.size()) {
            this.f17164do.N(list.get(i2).booleanValue());
            i2++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeBytes(int i, ByteString byteString) throws IOException {
        this.f17164do.writeBytes(i, byteString);
    }

    @Override // com.google.protobuf.Writer
    public void writeBytesList(int i, List<ByteString> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f17164do.writeBytes(i, list.get(i2));
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeDouble(int i, double d) throws IOException {
        this.f17164do.writeDouble(i, d);
    }

    @Override // com.google.protobuf.Writer
    public void writeDoubleList(int i, List<Double> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f17164do.writeDouble(i, list.get(i2).doubleValue());
                i2++;
            }
            return;
        }
        this.f17164do.A0(i, 2);
        int iM20906while = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iM20906while += Cnative.m20906while(list.get(i3).doubleValue());
        }
        this.f17164do.B0(iM20906while);
        while (i2 < list.size()) {
            this.f17164do.U(list.get(i2).doubleValue());
            i2++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeEndGroup(int i) throws IOException {
        this.f17164do.A0(i, 4);
    }

    @Override // com.google.protobuf.Writer
    public void writeEnum(int i, int i2) throws IOException {
        this.f17164do.writeEnum(i, i2);
    }

    @Override // com.google.protobuf.Writer
    public void writeEnumList(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f17164do.writeEnum(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        this.f17164do.A0(i, 2);
        int iM20890native = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iM20890native += Cnative.m20890native(list.get(i3).intValue());
        }
        this.f17164do.B0(iM20890native);
        while (i2 < list.size()) {
            this.f17164do.V(list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeFixed32(int i, int i2) throws IOException {
        this.f17164do.writeFixed32(i, i2);
    }

    @Override // com.google.protobuf.Writer
    public void writeFixed32List(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f17164do.writeFixed32(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        this.f17164do.A0(i, 2);
        int iM20895return = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iM20895return += Cnative.m20895return(list.get(i3).intValue());
        }
        this.f17164do.B0(iM20895return);
        while (i2 < list.size()) {
            this.f17164do.W(list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeFixed64(int i, long j) throws IOException {
        this.f17164do.writeFixed64(i, j);
    }

    @Override // com.google.protobuf.Writer
    public void writeFixed64List(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f17164do.writeFixed64(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        this.f17164do.A0(i, 2);
        int iM20899switch = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iM20899switch += Cnative.m20899switch(list.get(i3).longValue());
        }
        this.f17164do.B0(iM20899switch);
        while (i2 < list.size()) {
            this.f17164do.X(list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeFloat(int i, float f) throws IOException {
        this.f17164do.writeFloat(i, f);
    }

    @Override // com.google.protobuf.Writer
    public void writeFloatList(int i, List<Float> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f17164do.writeFloat(i, list.get(i2).floatValue());
                i2++;
            }
            return;
        }
        this.f17164do.A0(i, 2);
        int iM20881default = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iM20881default += Cnative.m20881default(list.get(i3).floatValue());
        }
        this.f17164do.B0(iM20881default);
        while (i2 < list.size()) {
            this.f17164do.Y(list.get(i2).floatValue());
            i2++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeGroup(int i, Object obj) throws IOException {
        this.f17164do.Z(i, (MessageLite) obj);
    }

    @Override // com.google.protobuf.Writer
    public void writeGroupList(int i, List<?> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            writeGroup(i, list.get(i2));
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeInt32(int i, int i2) throws IOException {
        this.f17164do.writeInt32(i, i2);
    }

    @Override // com.google.protobuf.Writer
    public void writeInt32List(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f17164do.writeInt32(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        this.f17164do.A0(i, 2);
        int iM20880continue = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iM20880continue += Cnative.m20880continue(list.get(i3).intValue());
        }
        this.f17164do.B0(iM20880continue);
        while (i2 < list.size()) {
            this.f17164do.d0(list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeInt64(int i, long j) throws IOException {
        this.f17164do.writeInt64(i, j);
    }

    @Override // com.google.protobuf.Writer
    public void writeInt64List(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f17164do.writeInt64(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        this.f17164do.A0(i, 2);
        int iM20905volatile = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iM20905volatile += Cnative.m20905volatile(list.get(i3).longValue());
        }
        this.f17164do.B0(iM20905volatile);
        while (i2 < list.size()) {
            this.f17164do.e0(list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.protobuf.Writer
    public <K, V> void writeMap(int i, y.Cif<K, V> cif, Map<K, V> map) throws IOException {
        if (this.f17164do.B()) {
            m20990case(i, cif, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f17164do.A0(i, 2);
            this.f17164do.B0(y.m21590if(cif, entry.getKey(), entry.getValue()));
            y.m21588class(this.f17164do, cif, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeMessage(int i, Object obj) throws IOException {
        this.f17164do.f0(i, (MessageLite) obj);
    }

    @Override // com.google.protobuf.Writer
    public void writeMessageList(int i, List<?> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            writeMessage(i, list.get(i2));
        }
    }

    @Override // com.google.protobuf.Writer
    public final void writeMessageSetItem(int i, Object obj) throws IOException {
        if (obj instanceof ByteString) {
            this.f17164do.s0(i, (ByteString) obj);
        } else {
            this.f17164do.j0(i, (MessageLite) obj);
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeSFixed32(int i, int i2) throws IOException {
        this.f17164do.writeSFixed32(i, i2);
    }

    @Override // com.google.protobuf.Writer
    public void writeSFixed32List(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f17164do.writeSFixed32(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        this.f17164do.A0(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += Cnative.i(list.get(i4).intValue());
        }
        this.f17164do.B0(i3);
        while (i2 < list.size()) {
            this.f17164do.v0(list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeSFixed64(int i, long j) throws IOException {
        this.f17164do.writeSFixed64(i, j);
    }

    @Override // com.google.protobuf.Writer
    public void writeSFixed64List(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f17164do.writeSFixed64(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        this.f17164do.A0(i, 2);
        int iK = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iK += Cnative.k(list.get(i3).longValue());
        }
        this.f17164do.B0(iK);
        while (i2 < list.size()) {
            this.f17164do.w0(list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeSInt32(int i, int i2) throws IOException {
        this.f17164do.writeSInt32(i, i2);
    }

    @Override // com.google.protobuf.Writer
    public void writeSInt32List(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f17164do.writeSInt32(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        this.f17164do.A0(i, 2);
        int iM = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iM += Cnative.m(list.get(i3).intValue());
        }
        this.f17164do.B0(iM);
        while (i2 < list.size()) {
            this.f17164do.x0(list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeSInt64(int i, long j) throws IOException {
        this.f17164do.writeSInt64(i, j);
    }

    @Override // com.google.protobuf.Writer
    public void writeSInt64List(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f17164do.writeSInt64(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        this.f17164do.A0(i, 2);
        int iO = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iO += Cnative.o(list.get(i3).longValue());
        }
        this.f17164do.B0(iO);
        while (i2 < list.size()) {
            this.f17164do.y0(list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeStartGroup(int i) throws IOException {
        this.f17164do.A0(i, 3);
    }

    @Override // com.google.protobuf.Writer
    public void writeString(int i, String str) throws IOException {
        this.f17164do.writeString(i, str);
    }

    @Override // com.google.protobuf.Writer
    public void writeStringList(int i, List<String> list) throws IOException {
        int i2 = 0;
        if (!(list instanceof LazyStringList)) {
            while (i2 < list.size()) {
                this.f17164do.writeString(i, list.get(i2));
                i2++;
            }
        } else {
            LazyStringList lazyStringList = (LazyStringList) list;
            while (i2 < list.size()) {
                m20994goto(i, lazyStringList.getRaw(i2));
                i2++;
            }
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeUInt32(int i, int i2) throws IOException {
        this.f17164do.writeUInt32(i, i2);
    }

    @Override // com.google.protobuf.Writer
    public void writeUInt32List(int i, List<Integer> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f17164do.writeUInt32(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        this.f17164do.A0(i, 2);
        int iT = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iT += Cnative.t(list.get(i3).intValue());
        }
        this.f17164do.B0(iT);
        while (i2 < list.size()) {
            this.f17164do.B0(list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeUInt64(int i, long j) throws IOException {
        this.f17164do.writeUInt64(i, j);
    }

    @Override // com.google.protobuf.Writer
    public void writeUInt64List(int i, List<Long> list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.f17164do.writeUInt64(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        this.f17164do.A0(i, 2);
        int iV = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iV += Cnative.v(list.get(i3).longValue());
        }
        this.f17164do.B0(iV);
        while (i2 < list.size()) {
            this.f17164do.C0(list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeGroup(int i, Object obj, Schema schema) throws IOException {
        this.f17164do.a0(i, (MessageLite) obj, schema);
    }

    @Override // com.google.protobuf.Writer
    public void writeMessage(int i, Object obj, Schema schema) throws IOException {
        this.f17164do.g0(i, (MessageLite) obj, schema);
    }

    @Override // com.google.protobuf.Writer
    public void writeGroupList(int i, List<?> list, Schema schema) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            writeGroup(i, list.get(i2), schema);
        }
    }

    @Override // com.google.protobuf.Writer
    public void writeMessageList(int i, List<?> list, Schema schema) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            writeMessage(i, list.get(i2), schema);
        }
    }
}
