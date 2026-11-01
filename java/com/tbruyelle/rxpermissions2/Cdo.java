package com.tbruyelle.rxpermissions2;

import io.reactivex.functions.BiConsumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import java.util.List;
import org.slf4j.helpers.MessageFormatter;

/* renamed from: com.tbruyelle.rxpermissions2.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    public final String f20737do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f20738for;

    /* renamed from: if, reason: not valid java name */
    public final boolean f20739if;

    /* renamed from: com.tbruyelle.rxpermissions2.do$do, reason: invalid class name and collision with other inner class name */
    public class C0196do implements BiConsumer<StringBuilder, String> {
        public C0196do() {
        }

        @Override // io.reactivex.functions.BiConsumer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void accept(StringBuilder sb, String str) throws Exception {
            if (sb.length() == 0) {
                sb.append(str);
            } else {
                sb.append(", ");
                sb.append(str);
            }
        }
    }

    /* renamed from: com.tbruyelle.rxpermissions2.do$for, reason: invalid class name */
    public class Cfor implements Predicate<Cdo> {
        public Cfor() {
        }

        @Override // io.reactivex.functions.Predicate
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean test(Cdo cdo) throws Exception {
            return cdo.f20739if;
        }
    }

    /* renamed from: com.tbruyelle.rxpermissions2.do$if, reason: invalid class name */
    public class Cif implements Function<Cdo, String> {
        public Cif() {
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public String apply(Cdo cdo) throws Exception {
            return cdo.f20737do;
        }
    }

    /* renamed from: com.tbruyelle.rxpermissions2.do$new, reason: invalid class name */
    public class Cnew implements Predicate<Cdo> {
        public Cnew() {
        }

        @Override // io.reactivex.functions.Predicate
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean test(Cdo cdo) throws Exception {
            return cdo.f20738for;
        }
    }

    public Cdo(String str, boolean z) {
        this(str, z, false);
    }

    /* renamed from: do, reason: not valid java name */
    private Boolean m24559do(List<Cdo> list) {
        return io.reactivex.Cnew.fromIterable(list).all(new Cfor()).m4165try();
    }

    /* renamed from: for, reason: not valid java name */
    private Boolean m24560for(List<Cdo> list) {
        return io.reactivex.Cnew.fromIterable(list).any(new Cnew()).m4165try();
    }

    /* renamed from: if, reason: not valid java name */
    private String m24561if(List<Cdo> list) {
        return ((StringBuilder) io.reactivex.Cnew.fromIterable(list).map(new Cif()).collectInto(new StringBuilder(), new C0196do()).m4165try()).toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Cdo cdo = (Cdo) obj;
        if (this.f20739if == cdo.f20739if && this.f20738for == cdo.f20738for) {
            return this.f20737do.equals(cdo.f20737do);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f20737do.hashCode() * 31) + (this.f20739if ? 1 : 0)) * 31) + (this.f20738for ? 1 : 0);
    }

    public String toString() {
        return "Permission{name='" + this.f20737do + "', granted=" + this.f20739if + ", shouldShowRequestPermissionRationale=" + this.f20738for + MessageFormatter.DELIM_STOP;
    }

    public Cdo(String str, boolean z, boolean z2) {
        this.f20737do = str;
        this.f20739if = z;
        this.f20738for = z2;
    }

    public Cdo(List<Cdo> list) {
        this.f20737do = m24561if(list);
        this.f20739if = m24559do(list).booleanValue();
        this.f20738for = m24560for(list).booleanValue();
    }
}
