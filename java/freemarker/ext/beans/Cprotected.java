package freemarker.ext.beans;

import java.lang.reflect.Array;
import java.util.AbstractList;

/* renamed from: freemarker.ext.beans.protected, reason: invalid class name */
/* loaded from: classes.dex */
class Cprotected extends AbstractList {

    /* renamed from: do, reason: not valid java name */
    private final Object f24604do;

    public Cprotected(Object obj) {
        this.f24604do = obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        return Array.get(this.f24604do, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return Array.getLength(this.f24604do);
    }
}
