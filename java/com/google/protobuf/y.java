package com.google.protobuf;

import com.google.protobuf.MessageLite;
import com.google.protobuf.c2;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class y<K, V> {

    /* renamed from: new, reason: not valid java name */
    private static final int f17340new = 1;

    /* renamed from: try, reason: not valid java name */
    private static final int f17341try = 2;

    /* renamed from: do, reason: not valid java name */
    private final Cif<K, V> f17342do;

    /* renamed from: for, reason: not valid java name */
    private final V f17343for;

    /* renamed from: if, reason: not valid java name */
    private final K f17344if;

    /* renamed from: com.google.protobuf.y$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17345do;

        static {
            int[] iArr = new int[c2.Cif.values().length];
            f17345do = iArr;
            try {
                iArr[c2.Cif.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17345do[c2.Cif.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17345do[c2.Cif.GROUP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.google.protobuf.y$if, reason: invalid class name */
    public static class Cif<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final c2.Cif f17346do;

        /* renamed from: for, reason: not valid java name */
        public final c2.Cif f17347for;

        /* renamed from: if, reason: not valid java name */
        public final K f17348if;

        /* renamed from: new, reason: not valid java name */
        public final V f17349new;

        public Cif(c2.Cif cif, K k, c2.Cif cif2, V v) {
            this.f17346do = cif;
            this.f17348if = k;
            this.f17347for = cif2;
            this.f17349new = v;
        }
    }

    private y(c2.Cif cif, K k, c2.Cif cif2, V v) {
        this.f17342do = new Cif<>(cif, k, cif2, v);
        this.f17344if = k;
        this.f17343for = v;
    }

    /* renamed from: case, reason: not valid java name */
    public static <K, V> y<K, V> m21587case(c2.Cif cif, K k, c2.Cif cif2, V v) {
        return new y<>(cif, k, cif2, v);
    }

    /* renamed from: class, reason: not valid java name */
    public static <K, V> void m21588class(Cnative cnative, Cif<K, V> cif, K k, V v) throws IOException {
        FieldSet.e(cnative, cif.f17346do, 1, k);
        FieldSet.e(cnative, cif.f17347for, 2, v);
    }

    /* renamed from: goto, reason: not valid java name */
    public static <K, V> Map.Entry<K, V> m21589goto(CodedInputStream codedInputStream, Cif<K, V> cif, Cimplements cimplements) throws IOException {
        Object objM21591this = cif.f17348if;
        Object objM21591this2 = cif.f17349new;
        while (true) {
            int iL = codedInputStream.l();
            if (iL == 0) {
                break;
            }
            if (iL == c2.m19963for(1, cif.f17346do.getWireType())) {
                objM21591this = m21591this(codedInputStream, cimplements, cif.f17346do, objM21591this);
            } else if (iL == c2.m19963for(2, cif.f17347for.getWireType())) {
                objM21591this2 = m21591this(codedInputStream, cimplements, cif.f17347for, objM21591this2);
            } else if (!codedInputStream.t(iL)) {
                break;
            }
        }
        return new AbstractMap.SimpleImmutableEntry(objM21591this, objM21591this2);
    }

    /* renamed from: if, reason: not valid java name */
    public static <K, V> int m21590if(Cif<K, V> cif, K k, V v) {
        return FieldSet.m19375super(cif.f17346do, 1, k) + FieldSet.m19375super(cif.f17347for, 2, v);
    }

    /* renamed from: this, reason: not valid java name */
    public static <T> T m21591this(CodedInputStream codedInputStream, Cimplements cimplements, c2.Cif cif, T t) throws IOException {
        int i = Cdo.f17345do[cif.ordinal()];
        if (i == 1) {
            MessageLite.Builder builder = ((MessageLite) t).toBuilder();
            codedInputStream.mo18435protected(builder, cimplements);
            return (T) builder.buildPartial();
        }
        if (i == 2) {
            return (T) Integer.valueOf(codedInputStream.mo18425extends());
        }
        if (i != 3) {
            return (T) FieldSet.a(codedInputStream, cif, true);
        }
        throw new RuntimeException("Groups are not allowed in maps.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: break, reason: not valid java name */
    public void m21592break(z<K, V> zVar, CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        int iMo18436public = codedInputStream.mo18436public(codedInputStream.a());
        Cif<K, V> cif = this.f17342do;
        Object objM21591this = cif.f17348if;
        Object objM21591this2 = cif.f17349new;
        while (true) {
            int iL = codedInputStream.l();
            if (iL == 0) {
                break;
            }
            if (iL == c2.m19963for(1, this.f17342do.f17346do.getWireType())) {
                objM21591this = m21591this(codedInputStream, cimplements, this.f17342do.f17346do, objM21591this);
            } else if (iL == c2.m19963for(2, this.f17342do.f17347for.getWireType())) {
                objM21591this2 = m21591this(codedInputStream, cimplements, this.f17342do.f17347for, objM21591this2);
            } else if (!codedInputStream.t(iL)) {
                break;
            }
        }
        codedInputStream.mo18423do(0);
        codedInputStream.mo18431native(iMo18436public);
        zVar.put(objM21591this, objM21591this2);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m21593catch(Cnative cnative, int i, K k, V v) throws IOException {
        cnative.A0(i, 2);
        cnative.B0(m21590if(this.f17342do, k, v));
        m21588class(cnative, this.f17342do, k, v);
    }

    /* renamed from: do, reason: not valid java name */
    public int m21594do(int i, K k, V v) {
        return Cnative.r(i) + Cnative.m20886implements(m21590if(this.f17342do, k, v));
    }

    /* renamed from: else, reason: not valid java name */
    public Map.Entry<K, V> m21595else(ByteString byteString, Cimplements cimplements) throws IOException {
        return m21589goto(byteString.newCodedInput(), this.f17342do, cimplements);
    }

    /* renamed from: for, reason: not valid java name */
    public K m21596for() {
        return this.f17344if;
    }

    /* renamed from: new, reason: not valid java name */
    public Cif<K, V> m21597new() {
        return this.f17342do;
    }

    /* renamed from: try, reason: not valid java name */
    public V m21598try() {
        return this.f17343for;
    }

    private y(Cif<K, V> cif, K k, V v) {
        this.f17342do = cif;
        this.f17344if = k;
        this.f17343for = v;
    }
}
