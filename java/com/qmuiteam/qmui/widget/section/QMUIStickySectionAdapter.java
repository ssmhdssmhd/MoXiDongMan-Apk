package com.qmuiteam.qmui.widget.section;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.qmuiteam.qmui.widget.section.QMUISection;
import com.qmuiteam.qmui.widget.section.QMUISection.Model;
import com.qmuiteam.qmui.widget.section.QMUIStickySectionAdapter.ViewHolder;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class QMUIStickySectionAdapter<H extends QMUISection.Model<H>, T extends QMUISection.Model<T>, VH extends ViewHolder> extends RecyclerView.Adapter<VH> {

    /* renamed from: break, reason: not valid java name */
    public static final int f19954break = -1;

    /* renamed from: catch, reason: not valid java name */
    public static final int f19955catch = 0;

    /* renamed from: class, reason: not valid java name */
    public static final int f19956class = 1;

    /* renamed from: const, reason: not valid java name */
    public static final int f19957const = 2;

    /* renamed from: final, reason: not valid java name */
    public static final int f19958final = 1000;

    /* renamed from: this, reason: not valid java name */
    private static final String f19959this = "StickySectionAdapter";

    /* renamed from: else, reason: not valid java name */
    private Callback<H, T> f19962else;

    /* renamed from: goto, reason: not valid java name */
    private ViewCallback f19964goto;

    /* renamed from: do, reason: not valid java name */
    private List<QMUISection<H, T>> f19961do = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    private List<QMUISection<H, T>> f19965if = new ArrayList();

    /* renamed from: for, reason: not valid java name */
    private SparseIntArray f19963for = new SparseIntArray();

    /* renamed from: new, reason: not valid java name */
    private SparseIntArray f19966new = new SparseIntArray();

    /* renamed from: try, reason: not valid java name */
    private ArrayList<QMUISection<H, T>> f19967try = new ArrayList<>(2);

    /* renamed from: case, reason: not valid java name */
    private ArrayList<QMUISection<H, T>> f19960case = new ArrayList<>(2);

    public interface Callback<H extends QMUISection.Model<H>, T extends QMUISection.Model<T>> {
        void loadMore(QMUISection<H, T> qMUISection, boolean z);

        void onItemClick(ViewHolder viewHolder, int i);

        boolean onItemLongClick(ViewHolder viewHolder, int i);
    }

    public interface PositionFinder<H extends QMUISection.Model<H>, T extends QMUISection.Model<T>> {
        boolean find(@NonNull QMUISection<H, T> qMUISection, @Nullable T t);
    }

    public interface ViewCallback {
        @Nullable
        RecyclerView.ViewHolder findViewHolderForAdapterPosition(int i);

        void requestChildFocus(View view);

        void scrollToPosition(int i, boolean z, boolean z2);
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: do, reason: not valid java name */
        public boolean f19968do;

        /* renamed from: for, reason: not valid java name */
        public boolean f19969for;

        /* renamed from: if, reason: not valid java name */
        public boolean f19970if;

        public ViewHolder(View view) {
            super(view);
            this.f19968do = false;
            this.f19970if = false;
            this.f19969for = false;
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.section.QMUIStickySectionAdapter$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ViewHolder f19971do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f19973if;

        public Cdo(ViewHolder viewHolder, int i) {
            this.f19971do = viewHolder;
            this.f19973if = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ViewHolder viewHolder = this.f19971do;
            int adapterPosition = viewHolder.f19969for ? this.f19973if : viewHolder.getAdapterPosition();
            if (adapterPosition == -1 || QMUIStickySectionAdapter.this.f19962else == null) {
                return;
            }
            QMUIStickySectionAdapter.this.f19962else.onItemClick(this.f19971do, adapterPosition);
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.section.QMUIStickySectionAdapter$if, reason: invalid class name */
    public class Cif implements View.OnLongClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ViewHolder f19974do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f19976if;

        public Cif(ViewHolder viewHolder, int i) {
            this.f19974do = viewHolder;
            this.f19976if = i;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ViewHolder viewHolder = this.f19974do;
            int adapterPosition = viewHolder.f19969for ? this.f19976if : viewHolder.getAdapterPosition();
            if (adapterPosition == -1 || QMUIStickySectionAdapter.this.f19962else == null) {
                return false;
            }
            return QMUIStickySectionAdapter.this.f19962else.onItemLongClick(this.f19974do, adapterPosition);
        }
    }

    /* renamed from: import, reason: not valid java name */
    private void m24191import(int i, boolean z) {
        while (i < this.f19965if.size()) {
            QMUISection<H, T> qMUISection = this.f19965if.get(i);
            if (z) {
                qMUISection.m24172return(true);
            } else {
                qMUISection.m24172return(false);
                z = (qMUISection.m24162const() || !qMUISection.m24160catch() || qMUISection.m24174this()) ? false : true;
            }
            i++;
        }
    }

    /* renamed from: native, reason: not valid java name */
    private void m24192native(int i, boolean z) {
        while (i >= 0) {
            QMUISection<H, T> qMUISection = this.f19965if.get(i);
            if (z) {
                qMUISection.m24172return(true);
            } else {
                qMUISection.m24172return(false);
                z = (qMUISection.m24162const() || !qMUISection.m24161class() || qMUISection.m24158break()) ? false : true;
            }
            i--;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m24193new(boolean z, boolean z2) {
        QMUISectionDiffCallback<H, T> qMUISectionDiffCallbackM24208for = m24208for(this.f19961do, this.f19965if);
        DiffUtil.DiffResult diffResultCalculateDiff = DiffUtil.calculateDiff(qMUISectionDiffCallbackM24208for, false);
        qMUISectionDiffCallbackM24208for.m24182if(this.f19963for, this.f19966new);
        diffResultCalculateDiff.dispatchUpdatesTo(this);
        if (!z && this.f19961do.size() == this.f19965if.size()) {
            for (int i = 0; i < this.f19965if.size(); i++) {
                this.f19965if.get(i).m24167if(this.f19961do.get(i));
            }
        } else {
            this.f19961do.clear();
            for (QMUISection<H, T> qMUISection : this.f19965if) {
                this.f19961do.add(z2 ? qMUISection.m24173super() : qMUISection.m24163do());
            }
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m24194strictfp(@NonNull QMUISection<H, T> qMUISection, boolean z) {
        for (int i = 0; i < this.f19963for.size(); i++) {
            int iKeyAt = this.f19963for.keyAt(i);
            int iValueAt = this.f19963for.valueAt(i);
            if (iValueAt >= 0 && iValueAt < this.f19965if.size() && this.f19966new.get(iKeyAt) == -2 && this.f19965if.get(iValueAt).m24176try().isSameItem(qMUISection.m24176try())) {
                this.f19964goto.scrollToPosition(iKeyAt, true, z);
                return;
            }
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m24195volatile(@NonNull QMUISection<H, T> qMUISection, @NonNull T t, boolean z) {
        QMUISection<H, T> qMUISectionM24201class;
        for (int i = 0; i < this.f19966new.size(); i++) {
            int iKeyAt = this.f19966new.keyAt(i);
            int iValueAt = this.f19966new.valueAt(i);
            if (iValueAt >= 0 && (qMUISectionM24201class = m24201class(iKeyAt)) == qMUISection && qMUISectionM24201class.m24159case(iValueAt).isSameItem(t)) {
                this.f19964goto.scrollToPosition(iKeyAt, false, z);
                return;
            }
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m24196while(QMUISection<H, T> qMUISection) {
        boolean z = (qMUISection.m24162const() || !qMUISection.m24161class() || qMUISection.m24158break()) ? false : true;
        boolean z2 = (qMUISection.m24162const() || !qMUISection.m24160catch() || qMUISection.m24174this()) ? false : true;
        int iIndexOf = this.f19965if.indexOf(qMUISection);
        if (iIndexOf < 0 || iIndexOf >= this.f19965if.size()) {
            return;
        }
        qMUISection.m24172return(false);
        m24192native(iIndexOf - 1, z);
        m24191import(iIndexOf + 1, z2);
    }

    public final void a(@Nullable List<QMUISection<H, T>> list, boolean z) {
        b(list, z, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: abstract, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onViewAttachedToWindow(@NonNull VH vh) {
        QMUISection<H, T> qMUISectionM24201class;
        if (vh.getItemViewType() != 2 || this.f19962else == null || vh.f19968do || (qMUISectionM24201class = m24201class(vh.getAdapterPosition())) == null) {
            return;
        }
        if (vh.f19970if) {
            if (this.f19967try.contains(qMUISectionM24201class)) {
                return;
            }
            this.f19967try.add(qMUISectionM24201class);
            this.f19962else.loadMore(qMUISectionM24201class, true);
            return;
        }
        if (this.f19960case.contains(qMUISectionM24201class)) {
            return;
        }
        this.f19960case.add(qMUISectionM24201class);
        this.f19962else.loadMore(qMUISectionM24201class, false);
    }

    public final void b(@Nullable List<QMUISection<H, T>> list, boolean z, boolean z2) {
        this.f19967try.clear();
        this.f19960case.clear();
        this.f19965if.clear();
        if (list != null) {
            this.f19965if.addAll(list);
        }
        if (z2 && !this.f19965if.isEmpty()) {
            m24196while(this.f19965if.get(0));
        }
        m24208for(this.f19961do, this.f19965if).m24182if(this.f19963for, this.f19966new);
        notifyDataSetChanged();
        this.f19961do.clear();
        for (QMUISection<H, T> qMUISection : this.f19965if) {
            this.f19961do.add(z ? qMUISection.m24173super() : qMUISection.m24163do());
        }
    }

    /* renamed from: break, reason: not valid java name */
    public int m24198break(int i) {
        if (i < 0 || i >= this.f19966new.size()) {
            return -1;
        }
        return this.f19966new.get(i);
    }

    public void c(ViewCallback viewCallback) {
        this.f19964goto = viewCallback;
    }

    /* renamed from: case, reason: not valid java name */
    public int m24199case(int i, int i2, boolean z) {
        QMUISection<H, T> qMUISection;
        if (z && i >= 0 && (qMUISection = this.f19965if.get(i)) != null && qMUISection.m24162const()) {
            qMUISection.m24171public(false);
            m24196while(qMUISection);
            m24193new(false, true);
        }
        for (int i3 = 0; i3 < getItemCount(); i3++) {
            if (this.f19963for.get(i3) == i && this.f19966new.get(i3) == i2) {
                return i3;
            }
        }
        return -1;
    }

    /* renamed from: catch, reason: not valid java name */
    public int m24200catch(int i) {
        while (getItemViewType(i) != 0) {
            i--;
            if (i < 0) {
                return -1;
            }
        }
        return i;
    }

    @Nullable
    /* renamed from: class, reason: not valid java name */
    public QMUISection<H, T> m24201class(int i) {
        int i2;
        if (i < 0 || i >= this.f19963for.size() || (i2 = this.f19963for.get(i)) < 0 || i2 >= this.f19965if.size()) {
            return null;
        }
        return this.f19965if.get(i2);
    }

    @Nullable
    /* renamed from: const, reason: not valid java name */
    public QMUISection<H, T> m24202const(int i) {
        if (i < 0 || i >= this.f19965if.size()) {
            return null;
        }
        return this.f19965if.get(i);
    }

    /* renamed from: continue, reason: not valid java name */
    public void m24203continue() {
        QMUISectionDiffCallback<H, T> qMUISectionDiffCallbackM24208for = m24208for(this.f19961do, this.f19965if);
        DiffUtil.DiffResult diffResultCalculateDiff = DiffUtil.calculateDiff(qMUISectionDiffCallbackM24208for, false);
        qMUISectionDiffCallbackM24208for.m24182if(this.f19963for, this.f19966new);
        diffResultCalculateDiff.dispatchUpdatesTo(this);
    }

    public void d(int i, boolean z) {
        QMUISection<H, T> qMUISectionM24201class = m24201class(i);
        if (qMUISectionM24201class == null) {
            return;
        }
        qMUISectionM24201class.m24171public(!qMUISectionM24201class.m24162const());
        m24196while(qMUISectionM24201class);
        m24193new(false, true);
        if (!z || qMUISectionM24201class.m24162const() || this.f19964goto == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f19963for.size(); i2++) {
            int iKeyAt = this.f19963for.keyAt(i2);
            if (m24198break(iKeyAt) == -2 && m24201class(iKeyAt) == qMUISectionM24201class) {
                this.f19964goto.scrollToPosition(iKeyAt, true, true);
                return;
            }
        }
    }

    @NonNull
    /* renamed from: default */
    public abstract VH mo24155default(@NonNull ViewGroup viewGroup, int i);

    /* renamed from: else, reason: not valid java name */
    public int m24204else(PositionFinder<H, T> positionFinder, boolean z) {
        Object obj;
        Object objM24159case = null;
        int i = 0;
        if (!z) {
            while (i < getItemCount()) {
                QMUISection<H, T> qMUISectionM24201class = m24201class(i);
                if (qMUISectionM24201class != null) {
                    int iM24198break = m24198break(i);
                    if (iM24198break == -2) {
                        if (positionFinder.find(qMUISectionM24201class, null)) {
                            return i;
                        }
                    } else if (iM24198break >= 0 && positionFinder.find(qMUISectionM24201class, qMUISectionM24201class.m24159case(iM24198break))) {
                        return i;
                    }
                }
                i++;
            }
            return -1;
        }
        for (int i2 = 0; i2 < this.f19965if.size(); i2++) {
            QMUISection<H, T> qMUISection = this.f19965if.get(i2);
            if (!positionFinder.find(qMUISection, null)) {
                for (int i3 = 0; i3 < qMUISection.m24164else(); i3++) {
                    if (positionFinder.find(qMUISection, qMUISection.m24159case(i3))) {
                        objM24159case = qMUISection.m24159case(i3);
                        if (qMUISection.m24162const()) {
                            qMUISection.m24171public(false);
                            m24196while(qMUISection);
                            m24193new(false, true);
                        }
                    }
                }
            }
            obj = objM24159case;
            objM24159case = qMUISection;
        }
        obj = null;
        while (i < getItemCount()) {
            QMUISection<H, T> qMUISectionM24201class2 = m24201class(i);
            if (qMUISectionM24201class2 == objM24159case) {
                int iM24198break2 = m24198break(i);
                if (iM24198break2 == -2 && obj == null) {
                    return i;
                }
                if (iM24198break2 >= 0 && qMUISectionM24201class2.m24159case(iM24198break2).isSameItem(obj)) {
                    return i;
                }
            }
            i++;
        }
        return -1;
    }

    @NonNull
    /* renamed from: extends, reason: not valid java name */
    public abstract VH m24205extends(@NonNull ViewGroup viewGroup);

    /* renamed from: final, reason: not valid java name */
    public int m24206final(int i) {
        if (i < 0 || i >= this.f19963for.size()) {
            return -1;
        }
        return this.f19963for.get(i);
    }

    @NonNull
    /* renamed from: finally, reason: not valid java name */
    public abstract VH m24207finally(@NonNull ViewGroup viewGroup);

    /* renamed from: for, reason: not valid java name */
    public QMUISectionDiffCallback<H, T> m24208for(List<QMUISection<H, T>> list, List<QMUISection<H, T>> list2) {
        return new QMUISectionDiffCallback<>(list, list2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f19966new.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        int iM24198break = m24198break(i);
        if (iM24198break == -1) {
            return -1;
        }
        if (iM24198break == -2) {
            return 0;
        }
        if (iM24198break == -3 || iM24198break == -4) {
            return 2;
        }
        if (iM24198break >= 0) {
            return 1;
        }
        return m24222this(iM24198break + 1000, i) + 1000;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m24209goto(QMUISection<H, T> qMUISection, List<T> list, boolean z, boolean z2) {
        if (z) {
            this.f19967try.remove(qMUISection);
        } else {
            this.f19960case.remove(qMUISection);
        }
        if (this.f19965if.indexOf(qMUISection) < 0) {
            return;
        }
        if (z && !qMUISection.m24162const()) {
            int i = 0;
            while (true) {
                if (i >= this.f19966new.size()) {
                    break;
                }
                int iKeyAt = this.f19966new.keyAt(i);
                if (this.f19966new.valueAt(i) == 0 && qMUISection == m24201class(iKeyAt)) {
                    ViewCallback viewCallback = this.f19964goto;
                    RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = viewCallback == null ? null : viewCallback.findViewHolderForAdapterPosition(iKeyAt);
                    if (viewHolderFindViewHolderForAdapterPosition != null) {
                        this.f19964goto.requestChildFocus(viewHolderFindViewHolderForAdapterPosition.itemView);
                    }
                } else {
                    i++;
                }
            }
        }
        qMUISection.m24170new(list, z, z2);
        m24196while(qMUISection);
        m24193new(true, true);
    }

    /* renamed from: if, reason: not valid java name */
    public void m24210if(List<QMUISection<H, T>> list, List<QMUISection<H, T>> list2) {
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m24211implements(@Nullable List<QMUISection<H, T>> list) {
        m24212instanceof(list, true);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final void m24212instanceof(@Nullable List<QMUISection<H, T>> list, boolean z) {
        m24221synchronized(list, z, true);
    }

    /* renamed from: interface, reason: not valid java name */
    public void m24213interface(@NonNull QMUISection<H, T> qMUISection, boolean z) {
        if (this.f19964goto == null) {
            return;
        }
        for (int i = 0; i < this.f19965if.size(); i++) {
            QMUISection<H, T> qMUISection2 = this.f19965if.get(i);
            if (qMUISection.m24176try().isSameItem(qMUISection2.m24176try())) {
                if (!qMUISection2.m24165final()) {
                    m24194strictfp(qMUISection2, z);
                    return;
                }
                m24196while(qMUISection2);
                m24193new(false, true);
                m24194strictfp(qMUISection2, z);
                return;
            }
        }
    }

    @NonNull
    /* renamed from: package */
    public abstract VH mo24156package(@NonNull ViewGroup viewGroup);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: private, reason: not valid java name and merged with bridge method [inline-methods] */
    public final VH onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return i == 0 ? (VH) m24205extends(viewGroup) : i == 1 ? (VH) m24207finally(viewGroup) : i == 2 ? (VH) mo24156package(viewGroup) : (VH) mo24155default(viewGroup, i - 1000);
    }

    /* renamed from: protected, reason: not valid java name */
    public void m24215protected(@Nullable QMUISection<H, T> qMUISection, @NonNull T t, boolean z) {
        if (this.f19964goto == null) {
            return;
        }
        for (int i = 0; i < this.f19965if.size(); i++) {
            QMUISection<H, T> qMUISection2 = this.f19965if.get(i);
            if ((qMUISection == null && qMUISection2.m24166for(t)) || qMUISection == qMUISection2) {
                if (!qMUISection2.m24162const() && !qMUISection2.m24165final()) {
                    m24195volatile(qMUISection2, t, z);
                    return;
                }
                qMUISection2.m24171public(false);
                m24196while(qMUISection2);
                m24193new(false, true);
                m24195volatile(qMUISection2, t, z);
                return;
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    public void m24216public(VH vh, int i, @Nullable QMUISection<H, T> qMUISection, int i2) {
    }

    /* renamed from: return, reason: not valid java name */
    public void m24217return(VH vh, int i, QMUISection<H, T> qMUISection) {
    }

    /* renamed from: static, reason: not valid java name */
    public void m24218static(VH vh, int i, QMUISection<H, T> qMUISection, int i2) {
    }

    @Nullable
    /* renamed from: super, reason: not valid java name */
    public T m24219super(int i) {
        QMUISection<H, T> qMUISectionM24201class;
        int iM24198break = m24198break(i);
        if (iM24198break >= 0 && (qMUISectionM24201class = m24201class(i)) != null) {
            return (T) qMUISectionM24201class.m24159case(iM24198break);
        }
        return null;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m24220switch(VH vh, int i, QMUISection<H, T> qMUISection, boolean z) {
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final void m24221synchronized(@Nullable List<QMUISection<H, T>> list, boolean z, boolean z2) {
        this.f19967try.clear();
        this.f19960case.clear();
        this.f19965if.clear();
        if (list != null) {
            this.f19965if.addAll(list);
        }
        m24210if(this.f19961do, this.f19965if);
        if (!this.f19965if.isEmpty() && z2) {
            m24196while(this.f19965if.get(0));
        }
        m24193new(true, z);
    }

    /* renamed from: this, reason: not valid java name */
    public int m24222this(int i, int i2) {
        return -1;
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m24223throw(int i) {
        QMUISection<H, T> qMUISectionM24201class = m24201class(i);
        if (qMUISectionM24201class == null) {
            return false;
        }
        return qMUISectionM24201class.m24162const();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void onBindViewHolder(@NonNull VH vh, int i) {
        QMUISection<H, T> qMUISectionM24201class = m24201class(i);
        int iM24198break = m24198break(i);
        if (iM24198break == -2) {
            m24217return(vh, i, qMUISectionM24201class);
        } else if (iM24198break >= 0) {
            m24218static(vh, i, qMUISectionM24201class, iM24198break);
        } else if (iM24198break == -3 || iM24198break == -4) {
            m24220switch(vh, i, qMUISectionM24201class, iM24198break == -3);
        } else {
            m24216public(vh, i, qMUISectionM24201class, iM24198break + 1000);
        }
        if (iM24198break == -4) {
            vh.f19970if = false;
        } else if (iM24198break == -3) {
            vh.f19970if = true;
        }
        vh.itemView.setOnClickListener(new Cdo(vh, i));
        vh.itemView.setOnLongClickListener(new Cif(vh, i));
    }

    /* renamed from: transient, reason: not valid java name */
    public void m24225transient(Callback<H, T> callback) {
        this.f19962else = callback;
    }

    /* renamed from: try, reason: not valid java name */
    public int m24226try(int i, int i2, boolean z) {
        return m24199case(i, i2 - 1000, z);
    }
}
