package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.collect.v0;
import com.google.common.math.Cnew;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

@ki0
/* renamed from: com.google.common.collect.throws, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cthrows<E> extends AbstractList<List<E>> implements RandomAccess {

    /* renamed from: do, reason: not valid java name */
    private final transient v0<List<E>> f14693do;

    /* renamed from: if, reason: not valid java name */
    private final transient int[] f14694if;

    /* renamed from: com.google.common.collect.throws$do, reason: invalid class name */
    public class Cdo extends v0<E> {
        public final /* synthetic */ int val$index;

        public Cdo(int i) {
            this.val$index = i;
        }

        @Override // java.util.List
        public E get(int i) {
            af1.m222private(i, size());
            return (E) ((List) Cthrows.this.f14693do.get(i)).get(Cthrows.this.m16369try(this.val$index, i));
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return Cthrows.this.f14693do.size();
        }
    }

    public Cthrows(v0<List<E>> v0Var) {
        this.f14693do = v0Var;
        int[] iArr = new int[v0Var.size() + 1];
        iArr[v0Var.size()] = 1;
        try {
            for (int size = v0Var.size() - 1; size >= 0; size--) {
                iArr[size] = Cnew.m17347new(iArr[size + 1], v0Var.get(size).size());
            }
            this.f14694if = iArr;
        } catch (ArithmeticException unused) {
            throw new IllegalArgumentException("Cartesian product too large; must have size at most Integer.MAX_VALUE");
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static <E> List<List<E>> m16367for(List<? extends List<? extends E>> list) {
        v0.Cdo cdo = new v0.Cdo(list.size());
        Iterator<? extends List<? extends E>> it = list.iterator();
        while (it.hasNext()) {
            v0 v0VarCopyOf = v0.copyOf((Collection) it.next());
            if (v0VarCopyOf.isEmpty()) {
                return v0.of();
            }
            cdo.mo15635do(v0VarCopyOf);
        }
        return new Cthrows(cdo.mo15642try());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public int m16369try(int i, int i2) {
        return (i / this.f14694if[i2 + 1]) % this.f14693do.get(i2).size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(@b51 Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof List)) {
            return -1;
        }
        List list = (List) obj;
        if (list.size() != this.f14693do.size()) {
            return -1;
        }
        ListIterator<E> listIterator = list.listIterator();
        int i = 0;
        while (listIterator.hasNext()) {
            int iNextIndex = listIterator.nextIndex();
            int iIndexOf = this.f14693do.get(iNextIndex).indexOf(listIterator.next());
            if (iIndexOf == -1) {
                return -1;
            }
            i += iIndexOf * this.f14694if[iNextIndex + 1];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public v0<E> get(int i) {
        af1.m222private(i, size());
        return new Cdo(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f14694if[0];
    }
}
