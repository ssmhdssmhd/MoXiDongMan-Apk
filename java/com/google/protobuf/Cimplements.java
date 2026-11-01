package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.google.protobuf.implements, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cimplements {

    /* renamed from: case, reason: not valid java name */
    public static final Cimplements f16982case = new Cimplements(true);

    /* renamed from: for, reason: not valid java name */
    private static boolean f16983for = true;

    /* renamed from: if, reason: not valid java name */
    private static volatile boolean f16984if = false;

    /* renamed from: new, reason: not valid java name */
    public static final String f16985new = "com.google.protobuf.Extension";

    /* renamed from: try, reason: not valid java name */
    private static volatile Cimplements f16986try;

    /* renamed from: do, reason: not valid java name */
    private final Map<Cif, GeneratedMessageLite.Celse<?, ?>> f16987do;

    /* renamed from: com.google.protobuf.implements$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final Class<?> f16988do = m20612do();

        private Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public static Class<?> m20612do() {
            return Cvolatile.class;
        }
    }

    /* renamed from: com.google.protobuf.implements$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private final Object f16989do;

        /* renamed from: if, reason: not valid java name */
        private final int f16990if;

        public Cif(Object obj, int i) {
            this.f16989do = obj;
            this.f16990if = i;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Cif)) {
                return false;
            }
            Cif cif = (Cif) obj;
            return this.f16989do == cif.f16989do && this.f16990if == cif.f16990if;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f16989do) * 65535) + this.f16990if;
        }
    }

    public Cimplements() {
        this.f16987do = new HashMap();
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m20604case() {
        return f16984if;
    }

    /* renamed from: else, reason: not valid java name */
    public static Cimplements m20605else() {
        return f16983for ? Ctransient.m21328do() : new Cimplements();
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m20606goto(boolean z) {
        f16984if = z;
    }

    /* renamed from: new, reason: not valid java name */
    public static Cimplements m20607new() {
        Cimplements cimplementsM21330if = f16986try;
        if (cimplementsM21330if == null) {
            synchronized (Cimplements.class) {
                cimplementsM21330if = f16986try;
                if (cimplementsM21330if == null) {
                    cimplementsM21330if = f16983for ? Ctransient.m21330if() : f16982case;
                    f16986try = cimplementsM21330if;
                }
            }
        }
        return cimplementsM21330if;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m20608do(Cinterface<?, ?> cinterface) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (GeneratedMessageLite.Celse.class.isAssignableFrom(cinterface.getClass())) {
            m20610if((GeneratedMessageLite.Celse) cinterface);
        }
        if (f16983for && Ctransient.m21331new(this)) {
            try {
                getClass().getMethod("add", Cdo.f16988do).invoke(this, cinterface);
            } catch (Exception e) {
                throw new IllegalArgumentException(String.format("Could not invoke ExtensionRegistry#add for %s", cinterface), e);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public <ContainingType extends MessageLite> GeneratedMessageLite.Celse<ContainingType, ?> m20609for(ContainingType containingtype, int i) {
        return (GeneratedMessageLite.Celse) this.f16987do.get(new Cif(containingtype, i));
    }

    /* renamed from: if, reason: not valid java name */
    public final void m20610if(GeneratedMessageLite.Celse<?, ?> celse) {
        this.f16987do.put(new Cif(celse.m19542goto(), celse.mo19453new()), celse);
    }

    /* renamed from: try, reason: not valid java name */
    public Cimplements mo20611try() {
        return new Cimplements(this);
    }

    public Cimplements(Cimplements cimplements) {
        if (cimplements == f16982case) {
            this.f16987do = Collections.emptyMap();
        } else {
            this.f16987do = Collections.unmodifiableMap(cimplements.f16987do);
        }
    }

    public Cimplements(boolean z) {
        this.f16987do = Collections.emptyMap();
    }
}
