package org.apache.commons.lang3.builder;

/* renamed from: org.apache.commons.lang3.builder.new, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cnew {

    /* renamed from: do, reason: not valid java name */
    private final Object f28620do;

    /* renamed from: if, reason: not valid java name */
    private final int f28621if;

    public Cnew(Object obj) {
        this.f28621if = System.identityHashCode(obj);
        this.f28620do = obj;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cnew)) {
            return false;
        }
        Cnew cnew = (Cnew) obj;
        return this.f28621if == cnew.f28621if && this.f28620do == cnew.f28620do;
    }

    public int hashCode() {
        return this.f28621if;
    }
}
