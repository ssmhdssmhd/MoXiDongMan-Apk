package com.google.common.collect;

import android.support.v4.ki0;
import android.support.v4.li0;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
abstract class o0<E> extends v0<E> {

    @li0
    /* renamed from: com.google.common.collect.o0$do, reason: invalid class name */
    public static class Cdo implements Serializable {
        private static final long serialVersionUID = 0;
        public final r0<?> collection;

        public Cdo(r0<?> r0Var) {
            this.collection = r0Var;
        }

        public Object readResolve() {
            return this.collection.asList();
        }
    }

    @li0
    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // com.google.common.collect.v0, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return delegateCollection().contains(obj);
    }

    public abstract r0<E> delegateCollection();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return delegateCollection().isEmpty();
    }

    @Override // com.google.common.collect.r0
    public boolean isPartialView() {
        return delegateCollection().isPartialView();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return delegateCollection().size();
    }

    @Override // com.google.common.collect.v0, com.google.common.collect.r0
    @li0
    public Object writeReplace() {
        return new Cdo(delegateCollection());
    }
}
