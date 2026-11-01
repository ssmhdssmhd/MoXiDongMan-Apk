package com.google.protobuf;

import com.google.protobuf.Cvolatile;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* renamed from: com.google.protobuf.protected, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cprotected extends Cimplements {

    /* renamed from: catch, reason: not valid java name */
    public static final Cprotected f17154catch = new Cprotected(true);

    /* renamed from: break, reason: not valid java name */
    private final Map<Cif, Cfor> f17155break;

    /* renamed from: else, reason: not valid java name */
    private final Map<String, Cfor> f17156else;

    /* renamed from: goto, reason: not valid java name */
    private final Map<String, Cfor> f17157goto;

    /* renamed from: this, reason: not valid java name */
    private final Map<Cif, Cfor> f17158this;

    /* renamed from: com.google.protobuf.protected$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17159do;

        static {
            int[] iArr = new int[Cvolatile.Cdo.values().length];
            f17159do = iArr;
            try {
                iArr[Cvolatile.Cdo.IMMUTABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17159do[Cvolatile.Cdo.MUTABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.google.protobuf.protected$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final Descriptors.Celse f17160do;

        /* renamed from: if, reason: not valid java name */
        public final Message f17161if;

        public /* synthetic */ Cfor(Descriptors.Celse celse, Message message, Cdo cdo) {
            this(celse, message);
        }

        private Cfor(Descriptors.Celse celse) {
            this.f17160do = celse;
            this.f17161if = null;
        }

        private Cfor(Descriptors.Celse celse, Message message) {
            this.f17160do = celse;
            this.f17161if = message;
        }
    }

    /* renamed from: com.google.protobuf.protected$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private final Descriptors.Cif f17162do;

        /* renamed from: if, reason: not valid java name */
        private final int f17163if;

        public Cif(Descriptors.Cif cif, int i) {
            this.f17162do = cif;
            this.f17163if = i;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Cif)) {
                return false;
            }
            Cif cif = (Cif) obj;
            return this.f17162do == cif.f17162do && this.f17163if == cif.f17163if;
        }

        public int hashCode() {
            return (this.f17162do.hashCode() * 65535) + this.f17163if;
        }
    }

    private Cprotected() {
        this.f17156else = new HashMap();
        this.f17157goto = new HashMap();
        this.f17158this = new HashMap();
        this.f17155break = new HashMap();
    }

    /* renamed from: class, reason: not valid java name */
    private void m20972class(Cfor cfor, Cvolatile.Cdo cdo) {
        Map<String, Cfor> map;
        Map<Cif, Cfor> map2;
        if (!cfor.f17160do.m19286extends()) {
            throw new IllegalArgumentException("ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field.");
        }
        int i = Cdo.f17159do[cdo.ordinal()];
        if (i == 1) {
            map = this.f17156else;
            map2 = this.f17158this;
        } else {
            if (i != 2) {
                return;
            }
            map = this.f17157goto;
            map2 = this.f17155break;
        }
        map.put(cfor.f17160do.mo19235if(), cfor);
        map2.put(new Cif(cfor.f17160do.m19282class(), cfor.f17160do.getNumber()), cfor);
        Descriptors.Celse celse = cfor.f17160do;
        if (celse.m19282class().m19328native().getMessageSetWireFormat() && celse.m19296static() == Descriptors.Celse.Cif.MESSAGE && celse.m19292package() && celse.m19297super() == celse.m19291native()) {
            map.put(celse.m19291native().mo19235if(), cfor);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public static Cprotected m20973default() {
        return new Cprotected();
    }

    /* renamed from: static, reason: not valid java name */
    public static Cprotected m20974static() {
        return f17154catch;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: throws, reason: not valid java name */
    public static Cfor m20975throws(Cvolatile<?, ?> cvolatile) {
        Cdo cdo = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (cvolatile.mo19451goto().m19302while() != Descriptors.Celse.Cdo.MESSAGE) {
            return new Cfor(cvolatile.mo19451goto(), objArr2 == true ? 1 : 0, objArr == true ? 1 : 0);
        }
        if (cvolatile.mo19450for() != null) {
            return new Cfor(cvolatile.mo19451goto(), cvolatile.mo19450for(), cdo);
        }
        String strValueOf = String.valueOf(cvolatile.mo19451goto().mo19235if());
        throw new IllegalStateException(strValueOf.length() != 0 ? "Registered message-type extension had null default instance: ".concat(strValueOf) : new String("Registered message-type extension had null default instance: "));
    }

    /* renamed from: break, reason: not valid java name */
    public void m20976break(Descriptors.Celse celse, Message message) {
        if (celse.m19302while() != Descriptors.Celse.Cdo.MESSAGE) {
            throw new IllegalArgumentException("ExtensionRegistry.add() provided a default instance for a non-message extension.");
        }
        m20972class(new Cfor(celse, message, null), Cvolatile.Cdo.IMMUTABLE);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m20977catch(Cvolatile<?, ?> cvolatile) {
        if (cvolatile.mo19455this() == Cvolatile.Cdo.IMMUTABLE || cvolatile.mo19455this() == Cvolatile.Cdo.MUTABLE) {
            m20972class(m20975throws(cvolatile), cvolatile.mo19455this());
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m20978const(GeneratedMessage.Cbreak<?, ?> cbreak) {
        m20977catch(cbreak);
    }

    @Deprecated
    /* renamed from: final, reason: not valid java name */
    public Cfor m20979final(String str) {
        return m20987throw(str);
    }

    /* renamed from: import, reason: not valid java name */
    public Cfor m20980import(String str) {
        return this.f17157goto.get(str);
    }

    /* renamed from: native, reason: not valid java name */
    public Cfor m20981native(Descriptors.Cif cif, int i) {
        return this.f17155break.get(new Cif(cif, i));
    }

    /* renamed from: public, reason: not valid java name */
    public Set<Cfor> m20982public(String str) {
        HashSet hashSet = new HashSet();
        for (Cif cif : this.f17158this.keySet()) {
            if (cif.f17162do.mo19235if().equals(str)) {
                hashSet.add(this.f17158this.get(cif));
            }
        }
        return hashSet;
    }

    /* renamed from: return, reason: not valid java name */
    public Set<Cfor> m20983return(String str) {
        HashSet hashSet = new HashSet();
        for (Cif cif : this.f17155break.keySet()) {
            if (cif.f17162do.mo19235if().equals(str)) {
                hashSet.add(this.f17155break.get(cif));
            }
        }
        return hashSet;
    }

    @Deprecated
    /* renamed from: super, reason: not valid java name */
    public Cfor m20984super(Descriptors.Cif cif, int i) {
        return m20988while(cif, i);
    }

    @Override // com.google.protobuf.Cimplements
    /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cprotected mo20611try() {
        return new Cprotected(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: this, reason: not valid java name */
    public void m20986this(Descriptors.Celse celse) {
        if (celse.m19302while() == Descriptors.Celse.Cdo.MESSAGE) {
            throw new IllegalArgumentException("ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension.");
        }
        Cfor cfor = new Cfor(celse, null, 0 == true ? 1 : 0);
        m20972class(cfor, Cvolatile.Cdo.IMMUTABLE);
        m20972class(cfor, Cvolatile.Cdo.MUTABLE);
    }

    /* renamed from: throw, reason: not valid java name */
    public Cfor m20987throw(String str) {
        return this.f17156else.get(str);
    }

    /* renamed from: while, reason: not valid java name */
    public Cfor m20988while(Descriptors.Cif cif, int i) {
        return this.f17158this.get(new Cif(cif, i));
    }

    private Cprotected(Cprotected cprotected) {
        super(cprotected);
        this.f17156else = Collections.unmodifiableMap(cprotected.f17156else);
        this.f17157goto = Collections.unmodifiableMap(cprotected.f17157goto);
        this.f17158this = Collections.unmodifiableMap(cprotected.f17158this);
        this.f17155break = Collections.unmodifiableMap(cprotected.f17155break);
    }

    public Cprotected(boolean z) {
        super(Cimplements.f16982case);
        this.f17156else = Collections.emptyMap();
        this.f17157goto = Collections.emptyMap();
        this.f17158this = Collections.emptyMap();
        this.f17155break = Collections.emptyMap();
    }
}
