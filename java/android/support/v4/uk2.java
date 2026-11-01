package android.support.v4;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class uk2 implements Iterator {

    /* renamed from: do, reason: not valid java name */
    private final Object[] f6919do;

    /* renamed from: if, reason: not valid java name */
    private int f6920if = 0;

    public uk2(Object[] objArr) {
        this.f6919do = objArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f6920if < this.f6919do.length;
    }

    @Override // java.util.Iterator
    public Object next() {
        int i = this.f6920if;
        Object[] objArr = this.f6919do;
        if (i >= objArr.length) {
            throw new NoSuchElementException();
        }
        this.f6920if = i + 1;
        return objArr[i];
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
