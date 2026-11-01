package android.support.v4;

import java.util.Enumeration;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class tk2 implements Enumeration {

    /* renamed from: do, reason: not valid java name */
    private final Object[] f6603do;

    /* renamed from: for, reason: not valid java name */
    private int f6604for = 0;

    /* renamed from: if, reason: not valid java name */
    private final int f6605if;

    public tk2(Object[] objArr, int i) {
        this.f6603do = objArr;
        this.f6605if = i;
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        return this.f6604for < this.f6605if;
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        int i = this.f6604for;
        if (i >= this.f6605if) {
            throw new NoSuchElementException();
        }
        Object[] objArr = this.f6603do;
        this.f6604for = i + 1;
        return objArr[i];
    }
}
