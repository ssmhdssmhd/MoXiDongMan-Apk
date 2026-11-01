package com.qmuiteam.qmui.widget.section;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.qmuiteam.qmui.layout.QMUIFrameLayout;
import com.qmuiteam.qmui.widget.section.QMUISection;
import com.qmuiteam.qmui.widget.section.QMUIStickySectionAdapter;
import com.qmuiteam.qmui.widget.section.QMUIStickySectionItemDecoration;

/* loaded from: classes2.dex */
public class QMUIStickySectionLayout extends QMUIFrameLayout implements QMUIStickySectionAdapter.ViewCallback {

    /* renamed from: case, reason: not valid java name */
    private int f19983case;

    /* renamed from: else, reason: not valid java name */
    private Runnable f19984else;

    /* renamed from: for, reason: not valid java name */
    private RecyclerView f19985for;

    /* renamed from: new, reason: not valid java name */
    private QMUIFrameLayout f19986new;

    /* renamed from: try, reason: not valid java name */
    private QMUIStickySectionItemDecoration f19987try;

    public interface StickySectionWrapViewConfig {
        void config(QMUIFrameLayout qMUIFrameLayout);
    }

    /* renamed from: com.qmuiteam.qmui.widget.section.QMUIStickySectionLayout$do, reason: invalid class name */
    public class Cdo implements View.OnLayoutChangeListener {
        public Cdo() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            QMUIStickySectionLayout.this.f19983case = i4 - i2;
            if (QMUIStickySectionLayout.this.f19983case <= 0 || QMUIStickySectionLayout.this.f19984else == null) {
                return;
            }
            QMUIStickySectionLayout.this.f19984else.run();
            QMUIStickySectionLayout.this.f19984else = null;
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.section.QMUIStickySectionLayout$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f19989do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ boolean f19991if;

        public Cfor(int i, boolean z) {
            this.f19989do = i;
            this.f19991if = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            QMUIStickySectionLayout.this.scrollToPosition(this.f19989do, false, this.f19991if);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [VH] */
    /* renamed from: com.qmuiteam.qmui.widget.section.QMUIStickySectionLayout$if, reason: invalid class name */
    public class Cif<VH> implements QMUIStickySectionItemDecoration.Callback<VH> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ QMUIStickySectionAdapter f19992do;

        public Cif(QMUIStickySectionAdapter qMUIStickySectionAdapter) {
            this.f19992do = qMUIStickySectionAdapter;
        }

        /* JADX WARN: Incorrect types in method signature: (TVH;I)V */
        @Override // com.qmuiteam.qmui.widget.section.QMUIStickySectionItemDecoration.Callback
        public void bindViewHolder(QMUIStickySectionAdapter.ViewHolder viewHolder, int i) {
            this.f19992do.bindViewHolder(viewHolder, i);
        }

        /* JADX WARN: Incorrect return type in method signature: (Landroid/view/ViewGroup;I)TVH; */
        @Override // com.qmuiteam.qmui.widget.section.QMUIStickySectionItemDecoration.Callback
        public QMUIStickySectionAdapter.ViewHolder createViewHolder(ViewGroup viewGroup, int i) {
            return (QMUIStickySectionAdapter.ViewHolder) this.f19992do.createViewHolder(viewGroup, i);
        }

        @Override // com.qmuiteam.qmui.widget.section.QMUIStickySectionItemDecoration.Callback
        public int getItemViewType(int i) {
            return this.f19992do.getItemViewType(i);
        }

        @Override // com.qmuiteam.qmui.widget.section.QMUIStickySectionItemDecoration.Callback
        public int getRelativeStickyItemPosition(int i) {
            return this.f19992do.m24200catch(i);
        }

        @Override // com.qmuiteam.qmui.widget.section.QMUIStickySectionItemDecoration.Callback
        public boolean isHeaderItem(int i) {
            return this.f19992do.getItemViewType(i) == 0;
        }

        @Override // com.qmuiteam.qmui.widget.section.QMUIStickySectionItemDecoration.Callback
        public void onHeaderVisibilityChanged(boolean z) {
        }

        @Override // com.qmuiteam.qmui.widget.section.QMUIStickySectionItemDecoration.Callback
        public void registerAdapterDataObserver(RecyclerView.AdapterDataObserver adapterDataObserver) {
            this.f19992do.registerAdapterDataObserver(adapterDataObserver);
        }
    }

    public QMUIStickySectionLayout(Context context) {
        this(context, null);
    }

    /* renamed from: case, reason: not valid java name */
    public void m24241case(StickySectionWrapViewConfig stickySectionWrapViewConfig) {
        if (stickySectionWrapViewConfig != null) {
            stickySectionWrapViewConfig.config(this.f19986new);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public <H extends QMUISection.Model<H>, T extends QMUISection.Model<T>, VH extends QMUIStickySectionAdapter.ViewHolder> void m24242else(QMUIStickySectionAdapter<H, T, VH> qMUIStickySectionAdapter, boolean z) {
        if (z) {
            QMUIStickySectionItemDecoration qMUIStickySectionItemDecoration = new QMUIStickySectionItemDecoration(this.f19986new, new Cif(qMUIStickySectionAdapter));
            this.f19987try = qMUIStickySectionItemDecoration;
            this.f19985for.addItemDecoration(qMUIStickySectionItemDecoration);
        }
        qMUIStickySectionAdapter.c(this);
        this.f19985for.setAdapter(qMUIStickySectionAdapter);
    }

    @Override // com.qmuiteam.qmui.widget.section.QMUIStickySectionAdapter.ViewCallback
    @Nullable
    public RecyclerView.ViewHolder findViewHolderForAdapterPosition(int i) {
        return this.f19985for.findViewHolderForAdapterPosition(i);
    }

    public RecyclerView getRecyclerView() {
        return this.f19985for;
    }

    @Nullable
    public View getStickySectionView() {
        if (this.f19986new.getVisibility() != 0 || this.f19986new.getChildCount() == 0) {
            return null;
        }
        return this.f19986new.getChildAt(0);
    }

    public QMUIFrameLayout getStickySectionWrapView() {
        return this.f19986new;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f19987try != null) {
            QMUIFrameLayout qMUIFrameLayout = this.f19986new;
            qMUIFrameLayout.layout(qMUIFrameLayout.getLeft(), this.f19987try.m24236this(), this.f19986new.getRight(), this.f19987try.m24236this() + this.f19986new.getHeight());
        }
    }

    @Override // com.qmuiteam.qmui.widget.section.QMUIStickySectionAdapter.ViewCallback
    public void requestChildFocus(View view) {
        this.f19985for.requestChildFocus(view, null);
    }

    @Override // com.qmuiteam.qmui.widget.section.QMUIStickySectionAdapter.ViewCallback
    public void scrollToPosition(int i, boolean z, boolean z2) {
        this.f19984else = null;
        RecyclerView.Adapter adapter = this.f19985for.getAdapter();
        if (adapter == null || i < 0 || i >= adapter.getItemCount()) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = this.f19985for.getLayoutManager();
        if (!(layoutManager instanceof LinearLayoutManager)) {
            this.f19985for.scrollToPosition(i);
            return;
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        int iFindFirstCompletelyVisibleItemPosition = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
        int iFindLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
        int height = 0;
        if (!z) {
            if (this.f19983case <= 0) {
                this.f19984else = new Cfor(i, z2);
            }
            height = this.f19986new.getHeight();
        }
        if (i < iFindFirstCompletelyVisibleItemPosition + 1 || i > iFindLastCompletelyVisibleItemPosition || z2) {
            linearLayoutManager.scrollToPositionWithOffset(i, height);
        }
    }

    public <H extends QMUISection.Model<H>, T extends QMUISection.Model<T>, VH extends QMUIStickySectionAdapter.ViewHolder> void setAdapter(QMUIStickySectionAdapter<H, T, VH> qMUIStickySectionAdapter) {
        m24242else(qMUIStickySectionAdapter, true);
    }

    public void setLayoutManager(@NonNull RecyclerView.LayoutManager layoutManager) {
        this.f19985for.setLayoutManager(layoutManager);
    }

    public QMUIStickySectionLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QMUIStickySectionLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19983case = -1;
        this.f19984else = null;
        this.f19986new = new QMUIFrameLayout(context);
        RecyclerView recyclerView = new RecyclerView(context);
        this.f19985for = recyclerView;
        addView(recyclerView, new FrameLayout.LayoutParams(-1, -1));
        addView(this.f19986new, new FrameLayout.LayoutParams(-1, -2));
        this.f19986new.addOnLayoutChangeListener(new Cdo());
    }
}
