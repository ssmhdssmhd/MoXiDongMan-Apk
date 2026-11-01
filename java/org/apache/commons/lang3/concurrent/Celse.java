package org.apache.commons.lang3.concurrent;

import android.support.v4.mq;
import org.apache.commons.lang3.Cgoto;

/* renamed from: org.apache.commons.lang3.concurrent.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse<T> implements ConcurrentInitializer<T> {

    /* renamed from: if, reason: not valid java name */
    private static final String f28674if = "ConstantInitializer@%d [ object = %s ]";

    /* renamed from: do, reason: not valid java name */
    private final T f28675do;

    public Celse(T t) {
        this.f28675do = t;
    }

    /* renamed from: do, reason: not valid java name */
    public final T m32304do() {
        return this.f28675do;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Celse) {
            return Cgoto.m32404while(m32304do(), ((Celse) obj).m32304do());
        }
        return false;
    }

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() throws mq {
        return m32304do();
    }

    public int hashCode() {
        if (m32304do() != null) {
            return m32304do().hashCode();
        }
        return 0;
    }

    public String toString() {
        return String.format(f28674if, Integer.valueOf(System.identityHashCode(this)), String.valueOf(m32304do()));
    }
}
