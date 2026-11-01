package freemarker.ext.beans;

import java.util.AbstractList;

/* renamed from: freemarker.ext.beans.package, reason: invalid class name */
/* loaded from: classes.dex */
class Cpackage extends AbstractList {

    /* renamed from: do, reason: not valid java name */
    private final Object[] f24602do;

    public Cpackage(Object[] objArr) {
        this.f24602do = objArr;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        return this.f24602do[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f24602do.length;
    }
}
