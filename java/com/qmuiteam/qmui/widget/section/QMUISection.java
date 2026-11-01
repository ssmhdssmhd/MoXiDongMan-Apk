package com.qmuiteam.qmui.widget.section;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.qmuiteam.qmui.widget.section.QMUISection.Model;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class QMUISection<H extends Model<H>, T extends Model<T>> {

    /* renamed from: break, reason: not valid java name */
    public static final int f19930break = -1;

    /* renamed from: catch, reason: not valid java name */
    public static final int f19931catch = -2;

    /* renamed from: class, reason: not valid java name */
    public static final int f19932class = -3;

    /* renamed from: const, reason: not valid java name */
    public static final int f19933const = -4;

    /* renamed from: final, reason: not valid java name */
    public static final int f19934final = -4;

    /* renamed from: super, reason: not valid java name */
    public static final int f19935super = -1000;

    /* renamed from: this, reason: not valid java name */
    public static final int f19936this = -1;

    /* renamed from: case, reason: not valid java name */
    private boolean f19937case;

    /* renamed from: do, reason: not valid java name */
    private H f19938do;

    /* renamed from: else, reason: not valid java name */
    private boolean f19939else;

    /* renamed from: for, reason: not valid java name */
    private boolean f19940for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f19941goto;

    /* renamed from: if, reason: not valid java name */
    private ArrayList<T> f19942if;

    /* renamed from: new, reason: not valid java name */
    private boolean f19943new;

    /* renamed from: try, reason: not valid java name */
    private boolean f19944try;

    public interface Model<T> {
        T cloneForDiff();

        boolean isSameContent(T t);

        boolean isSameItem(T t);
    }

    public QMUISection(@NonNull H h, @Nullable List<T> list) {
        this(h, list, false);
    }

    /* renamed from: goto, reason: not valid java name */
    public static final boolean m24157goto(int i) {
        return i < -4;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m24158break() {
        return this.f19939else;
    }

    /* renamed from: case, reason: not valid java name */
    public T m24159case(int i) {
        if (i < 0 || i >= this.f19942if.size()) {
            return null;
        }
        return this.f19942if.get(i);
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m24160catch() {
        return this.f19937case;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m24161class() {
        return this.f19944try;
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m24162const() {
        return this.f19940for;
    }

    /* renamed from: do, reason: not valid java name */
    public QMUISection<H, T> m24163do() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = this.f19942if.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().cloneForDiff());
        }
        QMUISection<H, T> qMUISection = new QMUISection<>((Model) this.f19938do.cloneForDiff(), arrayList, this.f19940for, this.f19943new, this.f19944try, this.f19937case);
        qMUISection.f19939else = this.f19939else;
        qMUISection.f19941goto = this.f19941goto;
        return qMUISection;
    }

    /* renamed from: else, reason: not valid java name */
    public int m24164else() {
        return this.f19942if.size();
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m24165final() {
        return this.f19943new;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m24166for(T t) {
        return this.f19942if.contains(t);
    }

    /* renamed from: if, reason: not valid java name */
    public void m24167if(QMUISection<H, T> qMUISection) {
        qMUISection.f19944try = this.f19944try;
        qMUISection.f19937case = this.f19937case;
        qMUISection.f19940for = this.f19940for;
        qMUISection.f19943new = this.f19943new;
        qMUISection.f19939else = this.f19939else;
        qMUISection.f19941goto = this.f19941goto;
    }

    /* renamed from: import, reason: not valid java name */
    public void m24168import(boolean z) {
        this.f19937case = z;
    }

    /* renamed from: native, reason: not valid java name */
    public void m24169native(boolean z) {
        this.f19944try = z;
    }

    /* renamed from: new, reason: not valid java name */
    public void m24170new(@Nullable List<T> list, boolean z, boolean z2) {
        if (z) {
            if (list != null) {
                this.f19942if.addAll(0, list);
            }
            this.f19944try = z2;
        } else {
            if (list != null) {
                this.f19942if.addAll(list);
            }
            this.f19937case = z2;
        }
    }

    /* renamed from: public, reason: not valid java name */
    public void m24171public(boolean z) {
        this.f19940for = z;
    }

    /* renamed from: return, reason: not valid java name */
    public void m24172return(boolean z) {
        this.f19943new = z;
    }

    /* renamed from: super, reason: not valid java name */
    public QMUISection<H, T> m24173super() {
        QMUISection<H, T> qMUISection = new QMUISection<>(this.f19938do, this.f19942if, this.f19940for, this.f19943new, this.f19944try, this.f19937case);
        qMUISection.f19939else = this.f19939else;
        qMUISection.f19941goto = this.f19941goto;
        return qMUISection;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m24174this() {
        return this.f19941goto;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m24175throw(boolean z) {
        this.f19941goto = z;
    }

    /* renamed from: try, reason: not valid java name */
    public H m24176try() {
        return this.f19938do;
    }

    /* renamed from: while, reason: not valid java name */
    public void m24177while(boolean z) {
        this.f19939else = z;
    }

    public QMUISection(@NonNull H h, @Nullable List<T> list, boolean z) {
        this(h, list, z, false, false, false);
    }

    public QMUISection(@NonNull H h, @Nullable List<T> list, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f19939else = false;
        this.f19941goto = false;
        this.f19938do = h;
        ArrayList<T> arrayList = new ArrayList<>();
        this.f19942if = arrayList;
        if (list != null) {
            arrayList.addAll(list);
        }
        this.f19940for = z;
        this.f19943new = z2;
        this.f19944try = z3;
        this.f19937case = z4;
    }
}
