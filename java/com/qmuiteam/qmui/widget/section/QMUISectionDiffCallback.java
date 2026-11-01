package com.qmuiteam.qmui.widget.section;

import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.DiffUtil;
import com.qmuiteam.qmui.widget.section.QMUISection;
import com.qmuiteam.qmui.widget.section.QMUISection.Model;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class QMUISectionDiffCallback<H extends QMUISection.Model<H>, T extends QMUISection.Model<T>> extends DiffUtil.Callback {

    /* renamed from: do, reason: not valid java name */
    private ArrayList<QMUISection<H, T>> f19946do = new ArrayList<>();

    /* renamed from: if, reason: not valid java name */
    private ArrayList<QMUISection<H, T>> f19948if = new ArrayList<>();

    /* renamed from: for, reason: not valid java name */
    private SparseIntArray f19947for = new SparseIntArray();

    /* renamed from: new, reason: not valid java name */
    private SparseIntArray f19949new = new SparseIntArray();

    /* renamed from: try, reason: not valid java name */
    private SparseIntArray f19950try = new SparseIntArray();

    /* renamed from: case, reason: not valid java name */
    private SparseIntArray f19945case = new SparseIntArray();

    /* renamed from: com.qmuiteam.qmui.widget.section.QMUISectionDiffCallback$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private SparseIntArray f19951do;

        /* renamed from: for, reason: not valid java name */
        private int f19952for;

        /* renamed from: if, reason: not valid java name */
        private SparseIntArray f19953if;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: for, reason: not valid java name */
        public final void m24186for(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("use appendWholeListCustomIndex for whole list");
            }
            this.f19951do.append(this.f19952for, i);
            this.f19953if.append(this.f19952for, i2);
            this.f19952for++;
        }

        /* renamed from: try, reason: not valid java name */
        private final void m24187try(int i) {
            this.f19951do.append(this.f19952for, -1);
            this.f19953if.append(this.f19952for, i);
            this.f19952for++;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m24188if(int i, int i2) {
            int i3 = i2 - 1000;
            if (!QMUISection.m24157goto(i3)) {
                throw new IllegalArgumentException("Index conflicts with index used internally, please use negative number for custom item");
            }
            m24186for(i, i3);
        }

        /* renamed from: new, reason: not valid java name */
        public final void m24189new(int i) {
            int i2 = i - 1000;
            if (!QMUISection.m24157goto(i2)) {
                throw new IllegalArgumentException("Index conflicts with index used internally, please use negative number for custom item");
            }
            m24187try(i2);
        }

        private Cif(SparseIntArray sparseIntArray, SparseIntArray sparseIntArray2) {
            this.f19951do = sparseIntArray;
            this.f19953if = sparseIntArray2;
            this.f19952for = 0;
        }
    }

    public QMUISectionDiffCallback(@Nullable List<QMUISection<H, T>> list, @Nullable List<QMUISection<H, T>> list2) {
        if (list != null) {
            this.f19946do.addAll(list);
        }
        if (list2 != null) {
            this.f19948if.addAll(list2);
        }
        m24178for(this.f19946do, this.f19947for, this.f19949new);
        m24178for(this.f19948if, this.f19950try, this.f19945case);
    }

    /* renamed from: for, reason: not valid java name */
    private void m24178for(List<QMUISection<H, T>> list, SparseIntArray sparseIntArray, SparseIntArray sparseIntArray2) {
        sparseIntArray.clear();
        sparseIntArray2.clear();
        Cif cif = new Cif(sparseIntArray, sparseIntArray2);
        if (list.isEmpty() || !list.get(0).m24165final()) {
            m24181else(cif, list);
        }
        for (int i = 0; i < list.size(); i++) {
            QMUISection<H, T> qMUISection = list.get(i);
            if (!qMUISection.m24165final()) {
                cif.m24186for(i, -2);
                if (!qMUISection.m24162const()) {
                    m24179case(cif, qMUISection, i);
                    if (qMUISection.m24161class()) {
                        cif.m24186for(i, -3);
                    }
                    for (int i2 = 0; i2 < qMUISection.m24164else(); i2++) {
                        cif.m24186for(i, i2);
                    }
                    if (qMUISection.m24160catch()) {
                        cif.m24186for(i, -4);
                    }
                    m24183new(cif, qMUISection, i);
                }
            }
        }
        if (list.isEmpty()) {
            m24184try(cif, list);
            return;
        }
        QMUISection<H, T> qMUISection2 = list.get(list.size() - 1);
        if (qMUISection2.m24165final()) {
            return;
        }
        if (qMUISection2.m24162const() || !qMUISection2.m24160catch()) {
            m24184try(cif, list);
        }
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public boolean areContentsTheSame(int i, int i2) {
        int i3 = this.f19947for.get(i);
        int i4 = this.f19949new.get(i);
        int i5 = this.f19950try.get(i2);
        int i6 = this.f19945case.get(i2);
        if (i5 < 0) {
            return m24180do(null, i4, null, i6);
        }
        QMUISection<H, T> qMUISection = this.f19946do.get(i3);
        QMUISection<H, T> qMUISection2 = this.f19948if.get(i5);
        if (i4 == -2) {
            return qMUISection.m24162const() == qMUISection2.m24162const() && qMUISection.m24176try().isSameContent(qMUISection2.m24176try());
        }
        if (i4 == -3 || i4 == -4) {
            return false;
        }
        if (QMUISection.m24157goto(i4)) {
            return m24180do(qMUISection, i4, qMUISection2, i6);
        }
        QMUISection.Model modelM24159case = qMUISection.m24159case(i4);
        QMUISection.Model modelM24159case2 = qMUISection2.m24159case(i6);
        if (modelM24159case == null && modelM24159case2 == null) {
            return true;
        }
        return (modelM24159case == null || modelM24159case2 == null || !modelM24159case.isSameContent(modelM24159case2)) ? false : true;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public boolean areItemsTheSame(int i, int i2) {
        int i3 = this.f19947for.get(i);
        int i4 = this.f19949new.get(i);
        int i5 = this.f19950try.get(i2);
        int i6 = this.f19945case.get(i2);
        if (i3 < 0 || i5 < 0) {
            return i3 == i5 && i4 == i6;
        }
        QMUISection<H, T> qMUISection = this.f19946do.get(i3);
        QMUISection<H, T> qMUISection2 = this.f19948if.get(i5);
        if (!qMUISection.m24176try().isSameItem(qMUISection2.m24176try())) {
            return false;
        }
        if (i4 < 0 && i4 == i6) {
            return true;
        }
        if (i4 < 0 || i6 < 0) {
            return false;
        }
        QMUISection.Model modelM24159case = qMUISection.m24159case(i4);
        QMUISection.Model modelM24159case2 = qMUISection2.m24159case(i6);
        if (modelM24159case == null && modelM24159case2 == null) {
            return true;
        }
        return (modelM24159case == null || modelM24159case2 == null || !modelM24159case.isSameItem(modelM24159case2)) ? false : true;
    }

    /* renamed from: case, reason: not valid java name */
    public void m24179case(Cif cif, QMUISection<H, T> qMUISection, int i) {
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m24180do(@Nullable QMUISection<H, T> qMUISection, int i, @Nullable QMUISection<H, T> qMUISection2, int i2) {
        return false;
    }

    /* renamed from: else, reason: not valid java name */
    public void m24181else(Cif cif, List<QMUISection<H, T>> list) {
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public int getNewListSize() {
        return this.f19950try.size();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public int getOldListSize() {
        return this.f19947for.size();
    }

    /* renamed from: if, reason: not valid java name */
    public void m24182if(@NonNull SparseIntArray sparseIntArray, @NonNull SparseIntArray sparseIntArray2) {
        sparseIntArray.clear();
        sparseIntArray2.clear();
        for (int i = 0; i < this.f19950try.size(); i++) {
            sparseIntArray.append(this.f19950try.keyAt(i), this.f19950try.valueAt(i));
        }
        for (int i2 = 0; i2 < this.f19945case.size(); i2++) {
            sparseIntArray2.append(this.f19945case.keyAt(i2), this.f19945case.valueAt(i2));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m24183new(Cif cif, QMUISection<H, T> qMUISection, int i) {
    }

    /* renamed from: try, reason: not valid java name */
    public void m24184try(Cif cif, List<QMUISection<H, T>> list) {
    }
}
