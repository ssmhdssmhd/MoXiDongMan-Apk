package android.support.v4;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import org.antlr.v4.runtime.Vocabulary;
import org.antlr.v4.runtime.misc.Cdo;
import org.antlr.v4.runtime.misc.IntSet;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes3.dex */
public class sn0 implements IntSet {

    /* renamed from: for, reason: not valid java name */
    public static final sn0 f6210for;

    /* renamed from: new, reason: not valid java name */
    public static final sn0 f6211new;

    /* renamed from: do, reason: not valid java name */
    public List<rn0> f6212do;

    /* renamed from: if, reason: not valid java name */
    public boolean f6213if;

    static {
        sn0 sn0VarM7518throw = m7518throw(0, is0.f2856extends);
        f6210for = sn0VarM7518throw;
        sn0VarM7518throw.m7533native(true);
        sn0 sn0Var = new sn0(new int[0]);
        f6211new = sn0Var;
        sn0Var.m7533native(true);
    }

    public sn0(List<rn0> list) {
        this.f6212do = list;
    }

    /* renamed from: import, reason: not valid java name */
    public static sn0 m7515import(sn0[] sn0VarArr) {
        sn0 sn0Var = new sn0(new int[0]);
        for (sn0 sn0Var2 : sn0VarArr) {
            sn0Var.addAll(sn0Var2);
        }
        return sn0Var;
    }

    /* renamed from: public, reason: not valid java name */
    public static sn0 m7516public(sn0 sn0Var, sn0 sn0Var2) {
        int i = 0;
        if (sn0Var == null || sn0Var.isNil()) {
            return new sn0(new int[0]);
        }
        sn0 sn0Var3 = new sn0(sn0Var);
        if (sn0Var2 != null && !sn0Var2.isNil()) {
            int i2 = 0;
            while (i < sn0Var3.f6212do.size() && i2 < sn0Var2.f6212do.size()) {
                rn0 rn0Var = sn0Var3.f6212do.get(i);
                rn0 rn0Var2 = sn0Var2.f6212do.get(i2);
                int i3 = rn0Var2.f5889if;
                int i4 = rn0Var.f5888do;
                if (i3 >= i4) {
                    int i5 = rn0Var2.f5888do;
                    if (i5 <= rn0Var.f5889if) {
                        rn0 rn0Var3 = i5 > i4 ? new rn0(rn0Var.f5888do, rn0Var2.f5888do - 1) : null;
                        rn0 rn0Var4 = rn0Var2.f5889if < rn0Var.f5889if ? new rn0(rn0Var2.f5889if + 1, rn0Var.f5889if) : null;
                        if (rn0Var3 != null) {
                            if (rn0Var4 != null) {
                                sn0Var3.f6212do.set(i, rn0Var3);
                                i++;
                                sn0Var3.f6212do.add(i, rn0Var4);
                            } else {
                                sn0Var3.f6212do.set(i, rn0Var3);
                            }
                        } else if (rn0Var4 != null) {
                            sn0Var3.f6212do.set(i, rn0Var4);
                        } else {
                            sn0Var3.f6212do.remove(i);
                        }
                    }
                    i++;
                }
                i2++;
            }
        }
        return sn0Var3;
    }

    /* renamed from: super, reason: not valid java name */
    public static sn0 m7517super(int i) {
        sn0 sn0Var = new sn0(new int[0]);
        sn0Var.add(i);
        return sn0Var;
    }

    /* renamed from: throw, reason: not valid java name */
    public static sn0 m7518throw(int i, int i2) {
        sn0 sn0Var = new sn0(new int[0]);
        sn0Var.m7525do(i, i2);
        return sn0Var;
    }

    @Override // org.antlr.v4.runtime.misc.IntSet
    public void add(int i) {
        if (this.f6213if) {
            throw new IllegalStateException("can't alter readonly IntervalSet");
        }
        m7525do(i, i);
    }

    /* renamed from: break, reason: not valid java name */
    public int m7519break(int i) {
        int size = this.f6212do.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            rn0 rn0Var = this.f6212do.get(i3);
            int i4 = rn0Var.f5889if;
            for (int i5 = rn0Var.f5888do; i5 <= i4; i5++) {
                if (i2 == i) {
                    return i5;
                }
                i2++;
            }
        }
        return -1;
    }

    /* renamed from: case, reason: not valid java name */
    public sn0 m7520case(int i, int i2) {
        return complement(m7518throw(i, i2));
    }

    /* renamed from: catch, reason: not valid java name */
    public List<rn0> m7521catch() {
        return this.f6212do;
    }

    /* renamed from: class, reason: not valid java name */
    public int m7522class() {
        if (isNil()) {
            throw new RuntimeException("set is empty");
        }
        return this.f6212do.get(r0.size() - 1).f5889if;
    }

    /* renamed from: const, reason: not valid java name */
    public int m7523const() {
        if (isNil()) {
            throw new RuntimeException("set is empty");
        }
        return this.f6212do.get(0).f5888do;
    }

    @Override // org.antlr.v4.runtime.misc.IntSet
    public boolean contains(int i) {
        int size = this.f6212do.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) / 2;
            rn0 rn0Var = this.f6212do.get(i3);
            int i4 = rn0Var.f5888do;
            if (rn0Var.f5889if < i) {
                i2 = i3 + 1;
            } else {
                if (i4 <= i) {
                    return true;
                }
                size = i3 - 1;
            }
        }
        return false;
    }

    /* renamed from: default, reason: not valid java name */
    public String m7524default(Vocabulary vocabulary) {
        StringBuilder sb = new StringBuilder();
        List<rn0> list = this.f6212do;
        if (list == null || list.isEmpty()) {
            return MessageFormatter.DELIM_STR;
        }
        if (size() > 1) {
            sb.append("{");
        }
        Iterator<rn0> it = this.f6212do.iterator();
        while (it.hasNext()) {
            rn0 next = it.next();
            int i = next.f5888do;
            int i2 = next.f5889if;
            if (i == i2) {
                sb.append(m7531goto(vocabulary, i));
            } else {
                for (int i3 = i; i3 <= i2; i3++) {
                    if (i3 > i) {
                        sb.append(", ");
                    }
                    sb.append(m7531goto(vocabulary, i3));
                }
            }
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        if (size() > 1) {
            sb.append("}");
        }
        return sb.toString();
    }

    /* renamed from: do, reason: not valid java name */
    public void m7525do(int i, int i2) {
        m7532if(rn0.m7059case(i, i2));
    }

    @Override // org.antlr.v4.runtime.misc.IntSet
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public sn0 complement(IntSet intSet) {
        sn0 sn0Var;
        if (intSet == null || intSet.isNil()) {
            return null;
        }
        if (intSet instanceof sn0) {
            sn0Var = (sn0) intSet;
        } else {
            sn0 sn0Var2 = new sn0(new int[0]);
            sn0Var2.addAll(intSet);
            sn0Var = sn0Var2;
        }
        return sn0Var.subtract(this);
    }

    @Override // org.antlr.v4.runtime.misc.IntSet
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof sn0)) {
            return false;
        }
        return this.f6212do.equals(((sn0) obj).f6212do);
    }

    /* renamed from: extends, reason: not valid java name */
    public String m7527extends(boolean z) {
        StringBuilder sb = new StringBuilder();
        List<rn0> list = this.f6212do;
        if (list == null || list.isEmpty()) {
            return MessageFormatter.DELIM_STR;
        }
        if (size() > 1) {
            sb.append("{");
        }
        Iterator<rn0> it = this.f6212do.iterator();
        while (it.hasNext()) {
            rn0 next = it.next();
            int i = next.f5888do;
            int i2 = next.f5889if;
            if (i == i2) {
                if (i == -1) {
                    sb.append("<EOF>");
                } else if (z) {
                    sb.append("'");
                    sb.appendCodePoint(i).append("'");
                } else {
                    sb.append(i);
                }
            } else if (z) {
                sb.append("'");
                StringBuilder sbAppendCodePoint = sb.appendCodePoint(i);
                sbAppendCodePoint.append("'..'");
                sbAppendCodePoint.appendCodePoint(i2).append("'");
            } else {
                sb.append(i);
                sb.append("..");
                sb.append(i2);
            }
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        if (size() > 1) {
            sb.append("}");
        }
        return sb.toString();
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m7528final() {
        return this.f6213if;
    }

    @Deprecated
    /* renamed from: finally, reason: not valid java name */
    public String m7529finally(String[] strArr) {
        return m7524default(cf2.m902do(strArr));
    }

    @Override // org.antlr.v4.runtime.misc.IntSet
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public sn0 addAll(IntSet intSet) {
        if (intSet == null) {
            return this;
        }
        if (intSet instanceof sn0) {
            sn0 sn0Var = (sn0) intSet;
            int size = sn0Var.f6212do.size();
            for (int i = 0; i < size; i++) {
                rn0 rn0Var = sn0Var.f6212do.get(i);
                m7525do(rn0Var.f5888do, rn0Var.f5889if);
            }
        } else {
            Iterator<Integer> it = intSet.toList().iterator();
            while (it.hasNext()) {
                add(it.next().intValue());
            }
        }
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public String m7531goto(Vocabulary vocabulary, int i) {
        return i == -1 ? "<EOF>" : i == -2 ? "<EPSILON>" : vocabulary.getDisplayName(i);
    }

    public int hashCode() {
        int iM9665for = y01.m9665for();
        for (rn0 rn0Var : this.f6212do) {
            iM9665for = y01.m9668try(y01.m9668try(iM9665for, rn0Var.f5888do), rn0Var.f5889if);
        }
        return y01.m9664do(iM9665for, this.f6212do.size() * 2);
    }

    /* renamed from: if, reason: not valid java name */
    public void m7532if(rn0 rn0Var) {
        if (this.f6213if) {
            throw new IllegalStateException("can't alter readonly IntervalSet");
        }
        if (rn0Var.f5889if < rn0Var.f5888do) {
            return;
        }
        ListIterator<rn0> listIterator = this.f6212do.listIterator();
        while (listIterator.hasNext()) {
            rn0 next = listIterator.next();
            if (rn0Var.equals(next)) {
                return;
            }
            if (rn0Var.m7064do(next) || !rn0Var.m7066for(next)) {
                rn0 rn0VarM7063const = rn0Var.m7063const(next);
                listIterator.set(rn0VarM7063const);
                while (listIterator.hasNext()) {
                    rn0 next2 = listIterator.next();
                    if (!rn0VarM7063const.m7064do(next2) && rn0VarM7063const.m7066for(next2)) {
                        return;
                    }
                    listIterator.remove();
                    listIterator.previous();
                    listIterator.set(rn0VarM7063const.m7063const(next2));
                    listIterator.next();
                }
                return;
            }
            if (rn0Var.m7061catch(next)) {
                listIterator.previous();
                listIterator.add(rn0Var);
                return;
            }
        }
        this.f6212do.add(rn0Var);
    }

    @Override // org.antlr.v4.runtime.misc.IntSet
    public boolean isNil() {
        List<rn0> list = this.f6212do;
        return list == null || list.isEmpty();
    }

    /* renamed from: native, reason: not valid java name */
    public void m7533native(boolean z) {
        if (this.f6213if && !z) {
            throw new IllegalStateException("can't alter readonly IntervalSet");
        }
        this.f6213if = z;
    }

    @Override // org.antlr.v4.runtime.misc.IntSet
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public sn0 and(IntSet intSet) {
        sn0 sn0Var = null;
        if (intSet == null) {
            return null;
        }
        List<rn0> list = this.f6212do;
        List<rn0> list2 = ((sn0) intSet).f6212do;
        int size = list.size();
        int size2 = list2.size();
        int i = 0;
        int i2 = 0;
        while (i < size && i2 < size2) {
            rn0 rn0Var = list.get(i);
            rn0 rn0Var2 = list2.get(i2);
            if (!rn0Var.m7061catch(rn0Var2)) {
                if (!rn0Var2.m7061catch(rn0Var)) {
                    if (rn0Var.m7065else(rn0Var2)) {
                        if (sn0Var == null) {
                            sn0Var = new sn0(new int[0]);
                        }
                        sn0Var.m7532if(rn0Var.m7069new(rn0Var2));
                    } else if (rn0Var2.m7065else(rn0Var)) {
                        if (sn0Var == null) {
                            sn0Var = new sn0(new int[0]);
                        }
                        sn0Var.m7532if(rn0Var.m7069new(rn0Var2));
                    } else if (!rn0Var.m7066for(rn0Var2)) {
                        if (sn0Var == null) {
                            sn0Var = new sn0(new int[0]);
                        }
                        sn0Var.m7532if(rn0Var.m7069new(rn0Var2));
                        if (!rn0Var.m7060break(rn0Var2)) {
                            if (rn0Var2.m7060break(rn0Var)) {
                            }
                        }
                    }
                }
                i2++;
            }
            i++;
        }
        return sn0Var == null ? new sn0(new int[0]) : sn0Var;
    }

    @Override // org.antlr.v4.runtime.misc.IntSet
    public void remove(int i) {
        if (this.f6213if) {
            throw new IllegalStateException("can't alter readonly IntervalSet");
        }
        int size = this.f6212do.size();
        for (int i2 = 0; i2 < size; i2++) {
            rn0 rn0Var = this.f6212do.get(i2);
            int i3 = rn0Var.f5888do;
            int i4 = rn0Var.f5889if;
            if (i < i3) {
                return;
            }
            if (i == i3 && i == i4) {
                this.f6212do.remove(i2);
                return;
            }
            if (i == i3) {
                rn0Var.f5888do = i3 + 1;
                return;
            }
            if (i == i4) {
                rn0Var.f5889if = i4 - 1;
                return;
            }
            if (i > i3 && i < i4) {
                rn0Var.f5889if = i - 1;
                m7525do(i + 1, i4);
            }
        }
    }

    @Override // org.antlr.v4.runtime.misc.IntSet
    /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
    public sn0 subtract(IntSet intSet) {
        if (intSet == null || intSet.isNil()) {
            return new sn0(this);
        }
        if (intSet instanceof sn0) {
            return m7516public(this, (sn0) intSet);
        }
        sn0 sn0Var = new sn0(new int[0]);
        sn0Var.addAll(intSet);
        return m7516public(this, sn0Var);
    }

    @Override // org.antlr.v4.runtime.misc.IntSet
    public int size() {
        int size = this.f6212do.size();
        if (size == 1) {
            rn0 rn0Var = this.f6212do.get(0);
            return (rn0Var.f5889if - rn0Var.f5888do) + 1;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            rn0 rn0Var2 = this.f6212do.get(i2);
            i += (rn0Var2.f5889if - rn0Var2.f5888do) + 1;
        }
        return i;
    }

    /* renamed from: static, reason: not valid java name */
    public int[] m7536static() {
        return m7537switch().m32023import();
    }

    /* renamed from: switch, reason: not valid java name */
    public Cdo m7537switch() {
        Cdo cdo = new Cdo(size());
        int size = this.f6212do.size();
        for (int i = 0; i < size; i++) {
            rn0 rn0Var = this.f6212do.get(i);
            int i2 = rn0Var.f5889if;
            for (int i3 = rn0Var.f5888do; i3 <= i2; i3++) {
                cdo.m32018do(i3);
            }
        }
        return cdo;
    }

    @Deprecated
    /* renamed from: this, reason: not valid java name */
    public String m7538this(String[] strArr, int i) {
        return m7531goto(cf2.m902do(strArr), i);
    }

    /* renamed from: throws, reason: not valid java name */
    public Set<Integer> m7539throws() {
        HashSet hashSet = new HashSet();
        for (rn0 rn0Var : this.f6212do) {
            int i = rn0Var.f5889if;
            for (int i2 = rn0Var.f5888do; i2 <= i; i2++) {
                hashSet.add(Integer.valueOf(i2));
            }
        }
        return hashSet;
    }

    @Override // org.antlr.v4.runtime.misc.IntSet
    public List<Integer> toList() {
        ArrayList arrayList = new ArrayList();
        int size = this.f6212do.size();
        for (int i = 0; i < size; i++) {
            rn0 rn0Var = this.f6212do.get(i);
            int i2 = rn0Var.f5889if;
            for (int i3 = rn0Var.f5888do; i3 <= i2; i3++) {
                arrayList.add(Integer.valueOf(i3));
            }
        }
        return arrayList;
    }

    @Override // org.antlr.v4.runtime.misc.IntSet
    public String toString() {
        return m7527extends(false);
    }

    /* renamed from: try, reason: not valid java name */
    public void m7540try() {
        if (this.f6213if) {
            throw new IllegalStateException("can't alter readonly IntervalSet");
        }
        this.f6212do.clear();
    }

    @Override // org.antlr.v4.runtime.misc.IntSet
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public sn0 or(IntSet intSet) {
        sn0 sn0Var = new sn0(new int[0]);
        sn0Var.addAll(this);
        sn0Var.addAll(intSet);
        return sn0Var;
    }

    public sn0(sn0 sn0Var) {
        this(new int[0]);
        addAll(sn0Var);
    }

    public sn0(int... iArr) {
        if (iArr == null) {
            this.f6212do = new ArrayList(2);
            return;
        }
        this.f6212do = new ArrayList(iArr.length);
        for (int i : iArr) {
            add(i);
        }
    }
}
