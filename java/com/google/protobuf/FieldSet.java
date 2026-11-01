package com.google.protobuf;

import com.google.protobuf.FieldSet.FieldDescriptorLite;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLite;
import com.google.protobuf.c2;
import com.google.protobuf.q;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class FieldSet<T extends FieldDescriptorLite<T>> {

    /* renamed from: new, reason: not valid java name */
    private static final int f16371new = 16;

    /* renamed from: try, reason: not valid java name */
    private static final FieldSet f16372try = new FieldSet(true);

    /* renamed from: do, reason: not valid java name */
    private final b1<T, Object> f16373do;

    /* renamed from: for, reason: not valid java name */
    private boolean f16374for;

    /* renamed from: if, reason: not valid java name */
    private boolean f16375if;

    public interface FieldDescriptorLite<T extends FieldDescriptorLite<T>> extends Comparable<T> {
        Internal.EnumLiteMap<?> getEnumType();

        c2.Cfor getLiteJavaType();

        c2.Cif getLiteType();

        int getNumber();

        MessageLite.Builder internalMergeFrom(MessageLite.Builder builder, MessageLite messageLite);

        boolean isPacked();

        boolean isRepeated();
    }

    /* renamed from: com.google.protobuf.FieldSet$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f16376do;

        /* renamed from: if, reason: not valid java name */
        public static final /* synthetic */ int[] f16377if;

        static {
            int[] iArr = new int[c2.Cif.values().length];
            f16377if = iArr;
            try {
                iArr[c2.Cif.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16377if[c2.Cif.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16377if[c2.Cif.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16377if[c2.Cif.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16377if[c2.Cif.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16377if[c2.Cif.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16377if[c2.Cif.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16377if[c2.Cif.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16377if[c2.Cif.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f16377if[c2.Cif.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f16377if[c2.Cif.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f16377if[c2.Cif.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f16377if[c2.Cif.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f16377if[c2.Cif.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f16377if[c2.Cif.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f16377if[c2.Cif.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f16377if[c2.Cif.SINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f16377if[c2.Cif.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[c2.Cfor.values().length];
            f16376do = iArr2;
            try {
                iArr2[c2.Cfor.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f16376do[c2.Cfor.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f16376do[c2.Cfor.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f16376do[c2.Cfor.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f16376do[c2.Cfor.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f16376do[c2.Cfor.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f16376do[c2.Cfor.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f16376do[c2.Cfor.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f16376do[c2.Cfor.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    /* renamed from: com.google.protobuf.FieldSet$if, reason: invalid class name */
    public static final class Cif<T extends FieldDescriptorLite<T>> {

        /* renamed from: do, reason: not valid java name */
        private b1<T, Object> f16378do;

        /* renamed from: for, reason: not valid java name */
        private boolean f16379for;

        /* renamed from: if, reason: not valid java name */
        private boolean f16380if;

        /* renamed from: new, reason: not valid java name */
        private boolean f16381new;

        public /* synthetic */ Cif(Cdo cdo) {
            this();
        }

        /* renamed from: import, reason: not valid java name */
        private static <T extends FieldDescriptorLite<T>> void m19400import(b1<T, Object> b1Var) {
            for (int i = 0; i < b1Var.m19816catch(); i++) {
                m19401native(b1Var.m19815break(i));
            }
            Iterator it = b1Var.m19818const().iterator();
            while (it.hasNext()) {
                m19401native((Map.Entry) it.next());
            }
        }

        /* renamed from: native, reason: not valid java name */
        private static <T extends FieldDescriptorLite<T>> void m19401native(Map.Entry<T, Object> entry) {
            entry.setValue(m19407while(entry.getKey(), entry.getValue()));
        }

        /* renamed from: new, reason: not valid java name */
        private void m19402new() {
            if (this.f16379for) {
                return;
            }
            this.f16378do = FieldSet.m19362class(this.f16378do, true);
            this.f16379for = true;
        }

        /* renamed from: static, reason: not valid java name */
        private static void m19403static(c2.Cif cif, Object obj) {
            if (FieldSet.m19380volatile(cif, obj)) {
                return;
            }
            if (cif.getJavaType() != c2.Cfor.MESSAGE || !(obj instanceof MessageLite.Builder)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }

        /* renamed from: super, reason: not valid java name */
        private void m19404super(Map.Entry<T, Object> entry) {
            T key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof q) {
                value = ((q) value).m20999throw();
            }
            if (key.isRepeated()) {
                Object objM19414else = m19414else(key);
                if (objM19414else == null) {
                    objM19414else = new ArrayList();
                }
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    ((List) objM19414else).add(FieldSet.m19366final(it.next()));
                }
                this.f16378do.put(key, objM19414else);
                return;
            }
            if (key.getLiteJavaType() != c2.Cfor.MESSAGE) {
                this.f16378do.put(key, FieldSet.m19366final(value));
                return;
            }
            Object objM19414else2 = m19414else(key);
            if (objM19414else2 == null) {
                this.f16378do.put(key, FieldSet.m19366final(value));
            } else if (objM19414else2 instanceof MessageLite.Builder) {
                key.internalMergeFrom((MessageLite.Builder) objM19414else2, (MessageLite) value);
            } else {
                this.f16378do.put(key, key.internalMergeFrom(((MessageLite) objM19414else2).toBuilder(), (MessageLite) value).build());
            }
        }

        /* renamed from: throw, reason: not valid java name */
        private static Object m19405throw(Object obj) {
            return obj instanceof MessageLite.Builder ? ((MessageLite.Builder) obj).build() : obj;
        }

        /* renamed from: try, reason: not valid java name */
        public static <T extends FieldDescriptorLite<T>> Cif<T> m19406try(FieldSet<T> fieldSet) {
            Cif<T> cif = new Cif<>(FieldSet.m19362class(((FieldSet) fieldSet).f16373do, true));
            ((Cif) cif).f16380if = ((FieldSet) fieldSet).f16374for;
            return cif;
        }

        /* renamed from: while, reason: not valid java name */
        private static <T extends FieldDescriptorLite<T>> Object m19407while(T t, Object obj) {
            if (obj == null || t.getLiteJavaType() != c2.Cfor.MESSAGE) {
                return obj;
            }
            if (!t.isRepeated()) {
                return m19405throw(obj);
            }
            if (!(obj instanceof List)) {
                String strValueOf = String.valueOf(obj.getClass());
                StringBuilder sb = new StringBuilder(strValueOf.length() + 66);
                sb.append("Repeated field should contains a List but actually contains type: ");
                sb.append(strValueOf);
                throw new IllegalStateException(sb.toString());
            }
            List arrayList = (List) obj;
            for (int i = 0; i < arrayList.size(); i++) {
                Object obj2 = arrayList.get(i);
                Object objM19405throw = m19405throw(obj2);
                if (objM19405throw != obj2) {
                    if (arrayList == obj) {
                        arrayList = new ArrayList(arrayList);
                    }
                    arrayList.set(i, objM19405throw);
                }
            }
            return arrayList;
        }

        /* renamed from: break, reason: not valid java name */
        public Object m19408break(T t, int i) {
            if (!t.isRepeated()) {
                throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
            }
            Object objM19417goto = m19417goto(t);
            if (objM19417goto != null) {
                return ((List) objM19417goto).get(i);
            }
            throw new IndexOutOfBoundsException();
        }

        /* renamed from: case, reason: not valid java name */
        public Map<T, Object> m19409case() {
            if (!this.f16380if) {
                return this.f16378do.m19822throw() ? this.f16378do : Collections.unmodifiableMap(this.f16378do);
            }
            b1 b1VarM19362class = FieldSet.m19362class(this.f16378do, false);
            if (this.f16378do.m19822throw()) {
                b1VarM19362class.mo19823while();
            } else {
                m19400import(b1VarM19362class);
            }
            return b1VarM19362class;
        }

        /* renamed from: catch, reason: not valid java name */
        public int m19410catch(T t) {
            if (!t.isRepeated()) {
                throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
            }
            Object objM19414else = m19414else(t);
            if (objM19414else == null) {
                return 0;
            }
            return ((List) objM19414else).size();
        }

        /* renamed from: class, reason: not valid java name */
        public boolean m19411class(T t) {
            if (t.isRepeated()) {
                throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
            }
            return this.f16378do.get(t) != null;
        }

        /* renamed from: const, reason: not valid java name */
        public boolean m19412const() {
            for (int i = 0; i < this.f16378do.m19816catch(); i++) {
                if (!FieldSet.m19374strictfp(this.f16378do.m19815break(i))) {
                    return false;
                }
            }
            Iterator it = this.f16378do.m19818const().iterator();
            while (it.hasNext()) {
                if (!FieldSet.m19374strictfp((Map.Entry) it.next())) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: do, reason: not valid java name */
        public void m19413do(T t, Object obj) {
            List arrayList;
            m19402new();
            if (!t.isRepeated()) {
                throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
            }
            this.f16381new = this.f16381new || (obj instanceof MessageLite.Builder);
            m19403static(t.getLiteType(), obj);
            Object objM19414else = m19414else(t);
            if (objM19414else == null) {
                arrayList = new ArrayList();
                this.f16378do.put(t, arrayList);
            } else {
                arrayList = (List) objM19414else;
            }
            arrayList.add(obj);
        }

        /* renamed from: else, reason: not valid java name */
        public Object m19414else(T t) {
            return m19407while(t, m19417goto(t));
        }

        /* renamed from: final, reason: not valid java name */
        public void m19415final(FieldSet<T> fieldSet) {
            m19402new();
            for (int i = 0; i < ((FieldSet) fieldSet).f16373do.m19816catch(); i++) {
                m19404super(((FieldSet) fieldSet).f16373do.m19815break(i));
            }
            Iterator it = ((FieldSet) fieldSet).f16373do.m19818const().iterator();
            while (it.hasNext()) {
                m19404super((Map.Entry) it.next());
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m19416for(T t) {
            m19402new();
            this.f16378do.remove(t);
            if (this.f16378do.isEmpty()) {
                this.f16380if = false;
            }
        }

        /* renamed from: goto, reason: not valid java name */
        public Object m19417goto(T t) {
            Object obj = this.f16378do.get(t);
            return obj instanceof q ? ((q) obj).m20999throw() : obj;
        }

        /* renamed from: if, reason: not valid java name */
        public FieldSet<T> m19418if() {
            if (this.f16378do.isEmpty()) {
                return FieldSet.m19372native();
            }
            this.f16379for = false;
            b1<T, Object> b1VarM19362class = this.f16378do;
            if (this.f16381new) {
                b1VarM19362class = FieldSet.m19362class(b1VarM19362class, false);
                m19400import(b1VarM19362class);
            }
            FieldSet<T> fieldSet = new FieldSet<>(b1VarM19362class, null);
            ((FieldSet) fieldSet).f16374for = this.f16380if;
            return fieldSet;
        }

        /* renamed from: public, reason: not valid java name */
        public void m19419public(T t, Object obj) {
            m19402new();
            if (!t.isRepeated()) {
                m19403static(t.getLiteType(), obj);
            } else {
                if (!(obj instanceof List)) {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                for (Object obj2 : arrayList) {
                    m19403static(t.getLiteType(), obj2);
                    this.f16381new = this.f16381new || (obj2 instanceof MessageLite.Builder);
                }
                obj = arrayList;
            }
            if (obj instanceof q) {
                this.f16380if = true;
            }
            this.f16381new = this.f16381new || (obj instanceof MessageLite.Builder);
            this.f16378do.put(t, obj);
        }

        /* renamed from: return, reason: not valid java name */
        public void m19420return(T t, int i, Object obj) {
            m19402new();
            if (!t.isRepeated()) {
                throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
            }
            this.f16381new = this.f16381new || (obj instanceof MessageLite.Builder);
            Object objM19414else = m19414else(t);
            if (objM19414else == null) {
                throw new IndexOutOfBoundsException();
            }
            m19403static(t.getLiteType(), obj);
            ((List) objM19414else).set(i, obj);
        }

        /* renamed from: this, reason: not valid java name */
        public Object m19421this(T t, int i) {
            if (this.f16381new) {
                m19402new();
            }
            return m19405throw(m19408break(t, i));
        }

        private Cif() {
            this(b1.m19808import(16));
        }

        private Cif(b1<T, Object> b1Var) {
            this.f16378do = b1Var;
            this.f16379for = true;
        }
    }

    public /* synthetic */ FieldSet(b1 b1Var, Cdo cdo) {
        this(b1Var);
    }

    public static Object a(CodedInputStream codedInputStream, c2.Cif cif, boolean z) throws IOException {
        return z ? c2.m19965new(codedInputStream, cif, c2.Cnew.STRICT) : c2.m19965new(codedInputStream, cif, c2.Cnew.LOOSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static <T extends FieldDescriptorLite<T>> b1<T, Object> m19362class(b1<T, Object> b1Var, boolean z) {
        b1<T, Object> b1VarM19808import = b1.m19808import(16);
        for (int i = 0; i < b1Var.m19816catch(); i++) {
            m19363const(b1VarM19808import, b1Var.m19815break(i), z);
        }
        Iterator it = b1Var.m19818const().iterator();
        while (it.hasNext()) {
            m19363const(b1VarM19808import, (Map.Entry) it.next(), z);
        }
        return b1VarM19808import;
    }

    /* renamed from: const, reason: not valid java name */
    private static <T extends FieldDescriptorLite<T>> void m19363const(Map<T, Object> map, Map.Entry<T, Object> entry, boolean z) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof q) {
            map.put(key, ((q) value).m20999throw());
        } else if (z && (value instanceof List)) {
            map.put(key, new ArrayList((List) value));
        } else {
            map.put(key, value);
        }
    }

    private void d(c2.Cif cif, Object obj) {
        if (!m19380volatile(cif, obj)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    public static void e(Cnative cnative, c2.Cif cif, int i, Object obj) throws IOException {
        if (cif == c2.Cif.GROUP) {
            cnative.Z(i, (MessageLite) obj);
        } else {
            cnative.A0(i, m19367finally(cif, false));
            f(cnative, cif, obj);
        }
    }

    public static void f(Cnative cnative, c2.Cif cif, Object obj) throws IOException {
        switch (Cdo.f16377if[cif.ordinal()]) {
            case 1:
                cnative.U(((Double) obj).doubleValue());
                break;
            case 2:
                cnative.Y(((Float) obj).floatValue());
                break;
            case 3:
                cnative.e0(((Long) obj).longValue());
                break;
            case 4:
                cnative.C0(((Long) obj).longValue());
                break;
            case 5:
                cnative.d0(((Integer) obj).intValue());
                break;
            case 6:
                cnative.X(((Long) obj).longValue());
                break;
            case 7:
                cnative.W(((Integer) obj).intValue());
                break;
            case 8:
                cnative.N(((Boolean) obj).booleanValue());
                break;
            case 9:
                cnative.b0((MessageLite) obj);
                break;
            case 10:
                cnative.h0((MessageLite) obj);
                break;
            case 11:
                if (!(obj instanceof ByteString)) {
                    cnative.z0((String) obj);
                    break;
                } else {
                    cnative.T((ByteString) obj);
                    break;
                }
            case 12:
                if (!(obj instanceof ByteString)) {
                    cnative.Q((byte[]) obj);
                    break;
                } else {
                    cnative.T((ByteString) obj);
                    break;
                }
            case 13:
                cnative.B0(((Integer) obj).intValue());
                break;
            case 14:
                cnative.v0(((Integer) obj).intValue());
                break;
            case 15:
                cnative.w0(((Long) obj).longValue());
                break;
            case 16:
                cnative.x0(((Integer) obj).intValue());
                break;
            case 17:
                cnative.y0(((Long) obj).longValue());
                break;
            case 18:
                if (!(obj instanceof Internal.EnumLite)) {
                    cnative.V(((Integer) obj).intValue());
                    break;
                } else {
                    cnative.V(((Internal.EnumLite) obj).getNumber());
                    break;
                }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public static Object m19366final(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* renamed from: finally, reason: not valid java name */
    public static int m19367finally(c2.Cif cif, boolean z) {
        if (z) {
            return 2;
        }
        return cif.getWireType();
    }

    public static void g(FieldDescriptorLite<?> fieldDescriptorLite, Object obj, Cnative cnative) throws IOException {
        c2.Cif liteType = fieldDescriptorLite.getLiteType();
        int number = fieldDescriptorLite.getNumber();
        if (!fieldDescriptorLite.isRepeated()) {
            if (obj instanceof q) {
                e(cnative, liteType, number, ((q) obj).m20999throw());
                return;
            } else {
                e(cnative, liteType, number, obj);
                return;
            }
        }
        List list = (List) obj;
        if (!fieldDescriptorLite.isPacked()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                e(cnative, liteType, number, it.next());
            }
            return;
        }
        cnative.A0(number, 2);
        int iM19378throw = 0;
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            iM19378throw += m19378throw(liteType, it2.next());
        }
        cnative.t0(iM19378throw);
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            f(cnative, liteType, it3.next());
        }
    }

    private void i(Map.Entry<T, Object> entry, Cnative cnative) throws IOException {
        T key = entry.getKey();
        if (key.getLiteJavaType() != c2.Cfor.MESSAGE || key.isRepeated() || key.isPacked()) {
            g(key, entry.getValue(), cnative);
            return;
        }
        Object value = entry.getValue();
        if (value instanceof q) {
            value = ((q) value).m20999throw();
        }
        cnative.j0(entry.getKey().getNumber(), (MessageLite) value);
    }

    /* renamed from: implements, reason: not valid java name */
    private void m19370implements(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof q) {
            value = ((q) value).m20999throw();
        }
        if (key.isRepeated()) {
            Object objM19395return = m19395return(key);
            if (objM19395return == null) {
                objM19395return = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objM19395return).add(m19366final(it.next()));
            }
            this.f16373do.put(key, objM19395return);
            return;
        }
        if (key.getLiteJavaType() != c2.Cfor.MESSAGE) {
            this.f16373do.put(key, m19366final(value));
            return;
        }
        Object objM19395return2 = m19395return(key);
        if (objM19395return2 == null) {
            this.f16373do.put(key, m19366final(value));
        } else {
            this.f16373do.put(key, key.internalMergeFrom(((MessageLite) objM19395return2).toBuilder(), (MessageLite) value).build());
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static <T extends FieldDescriptorLite<T>> Cif<T> m19371instanceof() {
        return new Cif<>((Cdo) null);
    }

    /* renamed from: native, reason: not valid java name */
    public static <T extends FieldDescriptorLite<T>> FieldSet<T> m19372native() {
        return f16372try;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: strictfp, reason: not valid java name */
    public static <T extends FieldDescriptorLite<T>> boolean m19374strictfp(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.getLiteJavaType() == c2.Cfor.MESSAGE) {
            if (key.isRepeated()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((MessageLite) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (!(value instanceof MessageLite)) {
                    if (value instanceof q) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((MessageLite) value).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: super, reason: not valid java name */
    public static int m19375super(c2.Cif cif, int i, Object obj) {
        int iR = Cnative.r(i);
        if (cif == c2.Cif.GROUP) {
            iR *= 2;
        }
        return iR + m19378throw(cif, obj);
    }

    /* renamed from: switch, reason: not valid java name */
    private int m19376switch(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.getLiteJavaType() != c2.Cfor.MESSAGE || key.isRepeated() || key.isPacked()) ? m19381while(key, value) : value instanceof q ? Cnative.m20889interface(entry.getKey().getNumber(), (q) value) : Cnative.m20888instanceof(entry.getKey().getNumber(), (MessageLite) value);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static <T extends FieldDescriptorLite<T>> FieldSet<T> m19377synchronized() {
        return new FieldSet<>();
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m19378throw(c2.Cif cif, Object obj) {
        switch (Cdo.f16377if[cif.ordinal()]) {
            case 1:
                return Cnative.m20906while(((Double) obj).doubleValue());
            case 2:
                return Cnative.m20881default(((Float) obj).floatValue());
            case 3:
                return Cnative.m20905volatile(((Long) obj).longValue());
            case 4:
                return Cnative.v(((Long) obj).longValue());
            case 5:
                return Cnative.m20880continue(((Integer) obj).intValue());
            case 6:
                return Cnative.m20899switch(((Long) obj).longValue());
            case 7:
                return Cnative.m20895return(((Integer) obj).intValue());
            case 8:
                return Cnative.m20901this(((Boolean) obj).booleanValue());
            case 9:
                return Cnative.m20891package((MessageLite) obj);
            case 10:
                return obj instanceof q ? Cnative.m20904transient((q) obj) : Cnative.b((MessageLite) obj);
            case 11:
                return obj instanceof ByteString ? Cnative.m20898super((ByteString) obj) : Cnative.q((String) obj);
            case 12:
                return obj instanceof ByteString ? Cnative.m20898super((ByteString) obj) : Cnative.m20877catch((byte[]) obj);
            case 13:
                return Cnative.t(((Integer) obj).intValue());
            case 14:
                return Cnative.i(((Integer) obj).intValue());
            case 15:
                return Cnative.k(((Long) obj).longValue());
            case 16:
                return Cnative.m(((Integer) obj).intValue());
            case 17:
                return Cnative.o(((Long) obj).longValue());
            case 18:
                return obj instanceof Internal.EnumLite ? Cnative.m20890native(((Internal.EnumLite) obj).getNumber()) : Cnative.m20890native(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: volatile, reason: not valid java name */
    public static boolean m19380volatile(c2.Cif cif, Object obj) {
        Internal.m19623new(obj);
        switch (Cdo.f16376do[cif.getJavaType().ordinal()]) {
            case 1:
                return obj instanceof Integer;
            case 2:
                return obj instanceof Long;
            case 3:
                return obj instanceof Float;
            case 4:
                return obj instanceof Double;
            case 5:
                return obj instanceof Boolean;
            case 6:
                return obj instanceof String;
            case 7:
                return (obj instanceof ByteString) || (obj instanceof byte[]);
            case 8:
                return (obj instanceof Integer) || (obj instanceof Internal.EnumLite);
            case 9:
                return (obj instanceof MessageLite) || (obj instanceof q);
            default:
                return false;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static int m19381while(FieldDescriptorLite<?> fieldDescriptorLite, Object obj) {
        c2.Cif liteType = fieldDescriptorLite.getLiteType();
        int number = fieldDescriptorLite.getNumber();
        if (!fieldDescriptorLite.isRepeated()) {
            return m19375super(liteType, number, obj);
        }
        int iM19375super = 0;
        if (fieldDescriptorLite.isPacked()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iM19375super += m19378throw(liteType, it.next());
            }
            return Cnative.r(number) + iM19375super + Cnative.f(iM19375super);
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            iM19375super += m19375super(liteType, number, it2.next());
        }
        return iM19375super;
    }

    /* renamed from: abstract, reason: not valid java name */
    public boolean m19382abstract() {
        return this.f16375if;
    }

    public void b(T t, Object obj) {
        if (!t.isRepeated()) {
            d(t.getLiteType(), obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                d(t.getLiteType(), it.next());
            }
            obj = arrayList;
        }
        if (obj instanceof q) {
            this.f16374for = true;
        }
        this.f16373do.put(t, obj);
    }

    /* renamed from: break, reason: not valid java name */
    public void m19383break(T t) {
        this.f16373do.remove(t);
        if (this.f16373do.isEmpty()) {
            this.f16374for = false;
        }
    }

    public void c(T t, int i, Object obj) {
        if (!t.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object objM19395return = m19395return(t);
        if (objM19395return == null) {
            throw new IndexOutOfBoundsException();
        }
        d(t.getLiteType(), obj);
        ((List) objM19395return).set(i, obj);
    }

    /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
    public FieldSet<T> clone() {
        FieldSet<T> fieldSetM19377synchronized = m19377synchronized();
        for (int i = 0; i < this.f16373do.m19816catch(); i++) {
            Map.Entry<K, Object> entryM19815break = this.f16373do.m19815break(i);
            fieldSetM19377synchronized.b((FieldDescriptorLite) entryM19815break.getKey(), entryM19815break.getValue());
        }
        Iterator it = this.f16373do.m19818const().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            fieldSetM19377synchronized.b((FieldDescriptorLite) entry.getKey(), entry.getValue());
        }
        fieldSetM19377synchronized.f16374for = this.f16374for;
        return fieldSetM19377synchronized;
    }

    /* renamed from: continue, reason: not valid java name */
    public boolean m19385continue() {
        for (int i = 0; i < this.f16373do.m19816catch(); i++) {
            if (!m19374strictfp(this.f16373do.m19815break(i))) {
                return false;
            }
        }
        Iterator it = this.f16373do.m19818const().iterator();
        while (it.hasNext()) {
            if (!m19374strictfp((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: default, reason: not valid java name */
    public int m19386default(T t) {
        if (!t.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object objM19395return = m19395return(t);
        if (objM19395return == null) {
            return 0;
        }
        return ((List) objM19395return).size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FieldSet) {
            return this.f16373do.equals(((FieldSet) obj).f16373do);
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public int m19387extends() {
        int iM19381while = 0;
        for (int i = 0; i < this.f16373do.m19816catch(); i++) {
            Map.Entry<K, Object> entryM19815break = this.f16373do.m19815break(i);
            iM19381while += m19381while((FieldDescriptorLite) entryM19815break.getKey(), entryM19815break.getValue());
        }
        Iterator it = this.f16373do.m19818const().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            iM19381while += m19381while((FieldDescriptorLite) entry.getKey(), entry.getValue());
        }
        return iM19381while;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m19388goto(T t, Object obj) {
        List arrayList;
        if (!t.isRepeated()) {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        d(t.getLiteType(), obj);
        Object objM19395return = m19395return(t);
        if (objM19395return == null) {
            arrayList = new ArrayList();
            this.f16373do.put(t, arrayList);
        } else {
            arrayList = (List) objM19395return;
        }
        arrayList.add(obj);
    }

    public void h(Cnative cnative) throws IOException {
        for (int i = 0; i < this.f16373do.m19816catch(); i++) {
            i(this.f16373do.m19815break(i), cnative);
        }
        Iterator it = this.f16373do.m19818const().iterator();
        while (it.hasNext()) {
            i((Map.Entry) it.next(), cnative);
        }
    }

    public int hashCode() {
        return this.f16373do.hashCode();
    }

    /* renamed from: import, reason: not valid java name */
    public Iterator<Map.Entry<T, Object>> m19389import() {
        return this.f16374for ? new q.Cfor(this.f16373do.m19820goto().iterator()) : this.f16373do.m19820goto().iterator();
    }

    /* renamed from: interface, reason: not valid java name */
    public Iterator<Map.Entry<T, Object>> m19390interface() {
        return this.f16374for ? new q.Cfor(this.f16373do.entrySet().iterator()) : this.f16373do.entrySet().iterator();
    }

    public void j(Cnative cnative) throws IOException {
        for (int i = 0; i < this.f16373do.m19816catch(); i++) {
            Map.Entry<K, Object> entryM19815break = this.f16373do.m19815break(i);
            g((FieldDescriptorLite) entryM19815break.getKey(), entryM19815break.getValue(), cnative);
        }
        Iterator it = this.f16373do.m19818const().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            g((FieldDescriptorLite) entry.getKey(), entry.getValue(), cnative);
        }
    }

    /* renamed from: package, reason: not valid java name */
    public boolean m19391package(T t) {
        if (t.isRepeated()) {
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }
        return this.f16373do.get(t) != null;
    }

    /* renamed from: private, reason: not valid java name */
    public boolean m19392private() {
        return this.f16373do.isEmpty();
    }

    /* renamed from: protected, reason: not valid java name */
    public void m19393protected() {
        if (this.f16375if) {
            return;
        }
        this.f16373do.mo19823while();
        this.f16375if = true;
    }

    /* renamed from: public, reason: not valid java name */
    public Map<T, Object> m19394public() {
        if (!this.f16374for) {
            return this.f16373do.m19822throw() ? this.f16373do : Collections.unmodifiableMap(this.f16373do);
        }
        b1 b1VarM19362class = m19362class(this.f16373do, false);
        if (this.f16373do.m19822throw()) {
            b1VarM19362class.mo19823while();
        }
        return b1VarM19362class;
    }

    /* renamed from: return, reason: not valid java name */
    public Object m19395return(T t) {
        Object obj = this.f16373do.get(t);
        return obj instanceof q ? ((q) obj).m20999throw() : obj;
    }

    /* renamed from: static, reason: not valid java name */
    public int m19396static() {
        int iM19376switch = 0;
        for (int i = 0; i < this.f16373do.m19816catch(); i++) {
            iM19376switch += m19376switch(this.f16373do.m19815break(i));
        }
        Iterator it = this.f16373do.m19818const().iterator();
        while (it.hasNext()) {
            iM19376switch += m19376switch((Map.Entry) it.next());
        }
        return iM19376switch;
    }

    /* renamed from: this, reason: not valid java name */
    public void m19397this() {
        this.f16373do.clear();
        this.f16374for = false;
    }

    /* renamed from: throws, reason: not valid java name */
    public Object m19398throws(T t, int i) {
        if (!t.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object objM19395return = m19395return(t);
        if (objM19395return != null) {
            return ((List) objM19395return).get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    /* renamed from: transient, reason: not valid java name */
    public void m19399transient(FieldSet<T> fieldSet) {
        for (int i = 0; i < fieldSet.f16373do.m19816catch(); i++) {
            m19370implements(fieldSet.f16373do.m19815break(i));
        }
        Iterator it = fieldSet.f16373do.m19818const().iterator();
        while (it.hasNext()) {
            m19370implements((Map.Entry) it.next());
        }
    }

    private FieldSet() {
        this.f16373do = b1.m19808import(16);
    }

    private FieldSet(boolean z) {
        this(b1.m19808import(0));
        m19393protected();
    }

    private FieldSet(b1<T, Object> b1Var) {
        this.f16373do = b1Var;
        m19393protected();
    }
}
