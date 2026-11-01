package com.jcodecraeer.xrecyclerview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.google.android.material.appbar.AppBarLayout;
import com.jcodecraeer.xrecyclerview.Cdo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class XRecyclerView extends RecyclerView {

    /* renamed from: return, reason: not valid java name */
    private static final int f18234return = 10000;

    /* renamed from: static, reason: not valid java name */
    private static final int f18235static = 10001;

    /* renamed from: switch, reason: not valid java name */
    private static final int f18236switch = 10002;

    /* renamed from: throws, reason: not valid java name */
    private static List<Integer> f18237throws = new ArrayList();

    /* renamed from: break, reason: not valid java name */
    private LoadingListener f18238break;

    /* renamed from: case, reason: not valid java name */
    private Cnew f18239case;

    /* renamed from: catch, reason: not valid java name */
    private ArrowRefreshHeader f18240catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f18241class;

    /* renamed from: const, reason: not valid java name */
    private boolean f18242const;

    /* renamed from: do, reason: not valid java name */
    private boolean f18243do;

    /* renamed from: else, reason: not valid java name */
    private float f18244else;

    /* renamed from: final, reason: not valid java name */
    private View f18245final;

    /* renamed from: for, reason: not valid java name */
    private int f18246for;

    /* renamed from: goto, reason: not valid java name */
    private float f18247goto;

    /* renamed from: if, reason: not valid java name */
    private boolean f18248if;

    /* renamed from: import, reason: not valid java name */
    private int f18249import;

    /* renamed from: native, reason: not valid java name */
    private int f18250native;

    /* renamed from: new, reason: not valid java name */
    private int f18251new;

    /* renamed from: public, reason: not valid java name */
    private ScrollAlphaChangeListener f18252public;

    /* renamed from: super, reason: not valid java name */
    private View f18253super;

    /* renamed from: this, reason: not valid java name */
    private CustomFooterViewCallBack f18254this;

    /* renamed from: throw, reason: not valid java name */
    private final RecyclerView.AdapterDataObserver f18255throw;

    /* renamed from: try, reason: not valid java name */
    private ArrayList<View> f18256try;

    /* renamed from: while, reason: not valid java name */
    private Cdo.EnumC0172do f18257while;

    public class DividerItemDecoration extends RecyclerView.ItemDecoration {

        /* renamed from: do, reason: not valid java name */
        private Drawable f18258do;

        /* renamed from: if, reason: not valid java name */
        private int f18260if;

        public DividerItemDecoration(Drawable drawable) {
            this.f18258do = drawable;
        }

        /* renamed from: do, reason: not valid java name */
        private void m22818do(Canvas canvas, RecyclerView recyclerView) {
            int paddingTop = recyclerView.getPaddingTop();
            int height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            int childCount = recyclerView.getChildCount();
            for (int i = 0; i < childCount - 1; i++) {
                View childAt = recyclerView.getChildAt(i);
                int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).rightMargin;
                this.f18258do.setBounds(right, paddingTop, this.f18258do.getIntrinsicWidth() + right, height);
                this.f18258do.draw(canvas);
            }
        }

        /* renamed from: if, reason: not valid java name */
        private void m22819if(Canvas canvas, RecyclerView recyclerView) {
            int paddingLeft = recyclerView.getPaddingLeft();
            int width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            int childCount = recyclerView.getChildCount();
            for (int i = 0; i < childCount - 1; i++) {
                View childAt = recyclerView.getChildAt(i);
                int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).bottomMargin;
                this.f18258do.setBounds(paddingLeft, bottom, width, this.f18258do.getIntrinsicHeight() + bottom);
                this.f18258do.draw(canvas);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            super.getItemOffsets(rect, view, recyclerView, state);
            if (recyclerView.getChildAdapterPosition(view) <= XRecyclerView.this.f18239case.m22824if() + 1) {
                return;
            }
            int orientation = ((LinearLayoutManager) recyclerView.getLayoutManager()).getOrientation();
            this.f18260if = orientation;
            if (orientation == 0) {
                rect.left = this.f18258do.getIntrinsicWidth();
            } else if (orientation == 1) {
                rect.top = this.f18258do.getIntrinsicHeight();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
            int i = this.f18260if;
            if (i == 0) {
                m22818do(canvas, recyclerView);
            } else if (i == 1) {
                m22819if(canvas, recyclerView);
            }
        }
    }

    public interface LoadingListener {
        void onLoadMore();

        void onRefresh();
    }

    public interface ScrollAlphaChangeListener {
        void onAlphaChange(int i);

        int setLimitHeight();
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.XRecyclerView$do, reason: invalid class name */
    public class Cdo extends GridLayoutManager.SpanSizeLookup {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ GridLayoutManager f18261do;

        public Cdo(GridLayoutManager gridLayoutManager) {
            this.f18261do = gridLayoutManager;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i) {
            if (XRecyclerView.this.f18239case.m22826try(i) || XRecyclerView.this.f18239case.m22825new(i) || XRecyclerView.this.f18239case.m22822case(i)) {
                return this.f18261do.getSpanCount();
            }
            return 1;
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.XRecyclerView$for, reason: invalid class name */
    public class Cfor extends RecyclerView.AdapterDataObserver {
        private Cfor() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            if (XRecyclerView.this.f18239case != null) {
                XRecyclerView.this.f18239case.notifyDataSetChanged();
            }
            if (XRecyclerView.this.f18239case == null || XRecyclerView.this.f18245final == null) {
                return;
            }
            int iM22824if = XRecyclerView.this.f18239case.m22824if() + 1;
            if (XRecyclerView.this.f18242const) {
                iM22824if++;
            }
            if (XRecyclerView.this.f18239case.getItemCount() == iM22824if) {
                XRecyclerView.this.f18245final.setVisibility(0);
                XRecyclerView.this.setVisibility(8);
            } else {
                XRecyclerView.this.f18245final.setVisibility(8);
                XRecyclerView.this.setVisibility(0);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2) {
            XRecyclerView.this.f18239case.notifyItemRangeChanged(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i, int i2) {
            XRecyclerView.this.f18239case.notifyItemRangeInserted(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i, int i2, int i3) {
            XRecyclerView.this.f18239case.notifyItemMoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i, int i2) {
            XRecyclerView.this.f18239case.notifyItemRangeRemoved(i, i2);
        }

        public /* synthetic */ Cfor(XRecyclerView xRecyclerView, Cdo cdo) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2, Object obj) {
            XRecyclerView.this.f18239case.notifyItemRangeChanged(i, i2, obj);
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.XRecyclerView$if, reason: invalid class name */
    public class Cif extends com.jcodecraeer.xrecyclerview.Cdo {
        public Cif() {
        }

        @Override // com.jcodecraeer.xrecyclerview.Cdo
        /* renamed from: do, reason: not valid java name */
        public void mo22820do(AppBarLayout appBarLayout, Cdo.EnumC0172do enumC0172do) {
            XRecyclerView.this.f18257while = enumC0172do;
        }
    }

    public XRecyclerView(Context context) {
        this(context, null);
    }

    /* renamed from: final, reason: not valid java name */
    private int m22792final(int[] iArr) {
        int i = iArr[0];
        for (int i2 : iArr) {
            if (i2 > i) {
                i = i2;
            }
        }
        return i;
    }

    private int getHeaders_includingRefreshCount() {
        Cnew cnew = this.f18239case;
        if (cnew == null) {
            return 0;
        }
        return cnew.m22824if() + 1;
    }

    /* renamed from: import, reason: not valid java name */
    private boolean m22796import() {
        ArrowRefreshHeader arrowRefreshHeader = this.f18240catch;
        return (arrowRefreshHeader == null || arrowRefreshHeader.getParent() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public boolean m22797native(int i) {
        return i == 10000 || i == 10001 || f18237throws.contains(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public View m22799super(int i) {
        ArrayList<View> arrayList;
        if (m22803while(i) && (arrayList = this.f18256try) != null) {
            return arrayList.get(i - 10002);
        }
        return null;
    }

    /* renamed from: throw, reason: not valid java name */
    private void m22801throw() {
        if (this.f18241class) {
            ArrowRefreshHeader arrowRefreshHeader = new ArrowRefreshHeader(getContext());
            this.f18240catch = arrowRefreshHeader;
            arrowRefreshHeader.setProgressStyle(this.f18246for);
        }
        LoadingMoreFooter loadingMoreFooter = new LoadingMoreFooter(getContext());
        loadingMoreFooter.setProgressStyle(this.f18251new);
        this.f18253super = loadingMoreFooter;
        loadingMoreFooter.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public boolean m22803while(int i) {
        ArrayList<View> arrayList = this.f18256try;
        return arrayList != null && f18237throws != null && arrayList.size() > 0 && f18237throws.contains(Integer.valueOf(i));
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m22804abstract(@NonNull View view, @NonNull CustomFooterViewCallBack customFooterViewCallBack) {
        if (view == null || customFooterViewCallBack == null) {
            return;
        }
        this.f18253super = view;
        this.f18254this = customFooterViewCallBack;
    }

    /* renamed from: class, reason: not valid java name */
    public void m22805class(View view) {
        List<Integer> list;
        ArrayList<View> arrayList = this.f18256try;
        if (arrayList == null || (list = f18237throws) == null) {
            return;
        }
        list.add(Integer.valueOf(arrayList.size() + 10002));
        this.f18256try.add(view);
        Cnew cnew = this.f18239case;
        if (cnew != null) {
            cnew.notifyDataSetChanged();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m22806const() {
        ArrayList<View> arrayList = this.f18256try;
        if (arrayList != null) {
            arrayList.clear();
            this.f18256try = null;
        }
        View view = this.f18253super;
        if (view instanceof LoadingMoreFooter) {
            ((LoadingMoreFooter) view).m22780do();
            this.f18253super = null;
        }
        ArrowRefreshHeader arrowRefreshHeader = this.f18240catch;
        if (arrowRefreshHeader != null) {
            arrowRefreshHeader.m22777do();
            this.f18240catch = null;
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public void m22807continue(String str, String str2) {
        View view = this.f18253super;
        if (view instanceof LoadingMoreFooter) {
            ((LoadingMoreFooter) view).setLoadingHint(str);
            ((LoadingMoreFooter) this.f18253super).setNoMoreHint(str2);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public void m22808default() {
        if (!this.f18241class || this.f18238break == null) {
            return;
        }
        this.f18240catch.setState(2);
        this.f18238break.onRefresh();
    }

    /* renamed from: extends, reason: not valid java name */
    public void m22809extends() {
        ArrowRefreshHeader arrowRefreshHeader = this.f18240catch;
        if (arrowRefreshHeader != null) {
            arrowRefreshHeader.refreshComplete();
        }
        setNoMore(false);
    }

    /* renamed from: finally, reason: not valid java name */
    public void m22810finally() {
        ArrayList<View> arrayList = this.f18256try;
        if (arrayList == null || f18237throws == null) {
            return;
        }
        arrayList.clear();
        Cnew cnew = this.f18239case;
        if (cnew != null) {
            cnew.notifyDataSetChanged();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public RecyclerView.Adapter getAdapter() {
        Cnew cnew = this.f18239case;
        if (cnew != null) {
            return cnew.m22823for();
        }
        return null;
    }

    public LoadingMoreFooter getDefaultFootView() {
        View view = this.f18253super;
        if (view != null && (view instanceof LoadingMoreFooter)) {
            return (LoadingMoreFooter) view;
        }
        return null;
    }

    public ArrowRefreshHeader getDefaultRefreshHeaderView() {
        ArrowRefreshHeader arrowRefreshHeader = this.f18240catch;
        if (arrowRefreshHeader == null) {
            return null;
        }
        return arrowRefreshHeader;
    }

    @Deprecated
    public View getEmptyView() {
        return this.f18245final;
    }

    public View getFootView() {
        return this.f18253super;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        AppBarLayout appBarLayout;
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        while (parent != null && !(parent instanceof CoordinatorLayout)) {
            parent = parent.getParent();
        }
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount() - 1;
            while (true) {
                if (childCount < 0) {
                    appBarLayout = null;
                    break;
                }
                View childAt = coordinatorLayout.getChildAt(childCount);
                if (childAt instanceof AppBarLayout) {
                    appBarLayout = (AppBarLayout) childAt;
                    break;
                }
                childCount--;
            }
            if (appBarLayout != null) {
                appBarLayout.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new Cif());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int i) {
        int iFindLastVisibleItemPosition;
        super.onScrollStateChanged(i);
        if (i != 0 || this.f18238break == null || this.f18243do || !this.f18242const) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            iFindLastVisibleItemPosition = ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
            staggeredGridLayoutManager.findLastVisibleItemPositions(iArr);
            iFindLastVisibleItemPosition = m22792final(iArr);
        } else {
            iFindLastVisibleItemPosition = ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        int itemCount = layoutManager.getItemCount() + getHeaders_includingRefreshCount();
        ArrowRefreshHeader arrowRefreshHeader = this.f18240catch;
        int state = arrowRefreshHeader != null ? arrowRefreshHeader.getState() : 3;
        if (layoutManager.getChildCount() <= 0 || iFindLastVisibleItemPosition < itemCount - this.f18249import || itemCount < layoutManager.getChildCount() || this.f18248if || state >= 2) {
            return;
        }
        this.f18243do = true;
        View view = this.f18253super;
        if (view instanceof LoadingMoreFooter) {
            ((LoadingMoreFooter) view).setState(0);
        } else {
            CustomFooterViewCallBack customFooterViewCallBack = this.f18254this;
            if (customFooterViewCallBack != null) {
                customFooterViewCallBack.onLoadingMore(view);
            }
        }
        this.f18238break.onLoadMore();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrolled(int i, int i2) {
        super.onScrolled(i, i2);
        ScrollAlphaChangeListener scrollAlphaChangeListener = this.f18252public;
        if (scrollAlphaChangeListener == null) {
            return;
        }
        int limitHeight = scrollAlphaChangeListener.setLimitHeight();
        int i3 = this.f18250native + i2;
        this.f18250native = i3;
        if (i3 <= 0) {
            this.f18252public.onAlphaChange(0);
        } else if (i3 > limitHeight || i3 <= 0) {
            this.f18252public.onAlphaChange(255);
        } else {
            this.f18252public.onAlphaChange((int) ((i3 / limitHeight) * 255.0f));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ArrowRefreshHeader arrowRefreshHeader;
        ArrowRefreshHeader arrowRefreshHeader2;
        LoadingListener loadingListener;
        if (this.f18244else == -1.0f) {
            this.f18244else = motionEvent.getRawY();
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f18244else = motionEvent.getRawY();
        } else if (action != 2) {
            this.f18244else = -1.0f;
            if (m22796import() && this.f18241class && this.f18257while == Cdo.EnumC0172do.EXPANDED && (arrowRefreshHeader2 = this.f18240catch) != null && arrowRefreshHeader2.releaseAction() && (loadingListener = this.f18238break) != null) {
                loadingListener.onRefresh();
            }
        } else {
            float rawY = motionEvent.getRawY() - this.f18244else;
            this.f18244else = motionEvent.getRawY();
            if (m22796import() && this.f18241class && this.f18257while == Cdo.EnumC0172do.EXPANDED && (arrowRefreshHeader = this.f18240catch) != null) {
                arrowRefreshHeader.onMove(rawY / this.f18247goto);
                if (this.f18240catch.getVisibleHeight() > 0 && this.f18240catch.getState() < 2) {
                    return false;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    /* renamed from: package, reason: not valid java name */
    public void m22811package(@NonNull View view) {
        ArrayList<View> arrayList = this.f18256try;
        if (arrayList == null || f18237throws == null || view == null) {
            return;
        }
        Iterator<View> it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            View next = it.next();
            if (next == view) {
                this.f18256try.remove(next);
                break;
            }
        }
        Cnew cnew = this.f18239case;
        if (cnew != null) {
            cnew.notifyDataSetChanged();
        }
    }

    /* renamed from: private, reason: not valid java name */
    public void m22812private() {
        setNoMore(false);
        m22813public();
        m22809extends();
    }

    /* renamed from: public, reason: not valid java name */
    public void m22813public() {
        this.f18243do = false;
        View view = this.f18253super;
        if (view instanceof LoadingMoreFooter) {
            ((LoadingMoreFooter) view).setState(1);
            return;
        }
        CustomFooterViewCallBack customFooterViewCallBack = this.f18254this;
        if (customFooterViewCallBack != null) {
            customFooterViewCallBack.onLoadMoreComplete(view);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public void m22814return(int i) {
        if (this.f18239case.f18265do == null) {
            return;
        }
        this.f18239case.f18265do.notifyItemChanged(i + getHeaders_includingRefreshCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void scrollToPosition(int i) {
        super.scrollToPosition(i);
        if (i == 0) {
            this.f18250native = 0;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        Cnew cnew = new Cnew(adapter);
        this.f18239case = cnew;
        super.setAdapter(cnew);
        adapter.registerAdapterDataObserver(this.f18255throw);
        this.f18255throw.onChanged();
    }

    public void setArrowImageView(int i) {
        ArrowRefreshHeader arrowRefreshHeader = this.f18240catch;
        if (arrowRefreshHeader != null) {
            arrowRefreshHeader.setArrowImageView(i);
        }
    }

    public void setDragRate(float f) {
        if (f <= 0.5d) {
            return;
        }
        this.f18247goto = f;
    }

    @Deprecated
    public void setEmptyView(View view) {
        this.f18245final = view;
        this.f18255throw.onChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutManager(RecyclerView.LayoutManager layoutManager) {
        super.setLayoutManager(layoutManager);
        if (this.f18239case == null || !(layoutManager instanceof GridLayoutManager)) {
            return;
        }
        GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
        gridLayoutManager.setSpanSizeLookup(new Cdo(gridLayoutManager));
    }

    public void setLimitNumberToCallLoadMore(int i) {
        this.f18249import = i;
    }

    public void setLoadingListener(LoadingListener loadingListener) {
        this.f18238break = loadingListener;
    }

    public void setLoadingMoreEnabled(boolean z) {
        this.f18242const = z;
        if (z) {
            return;
        }
        View view = this.f18253super;
        if (view instanceof LoadingMoreFooter) {
            ((LoadingMoreFooter) view).setState(1);
        }
    }

    public void setLoadingMoreProgressStyle(int i) {
        this.f18251new = i;
        View view = this.f18253super;
        if (view instanceof LoadingMoreFooter) {
            ((LoadingMoreFooter) view).setProgressStyle(i);
        }
    }

    public void setNoMore(boolean z) {
        this.f18243do = false;
        this.f18248if = z;
        View view = this.f18253super;
        if (view instanceof LoadingMoreFooter) {
            ((LoadingMoreFooter) view).setState(z ? 2 : 1);
            return;
        }
        CustomFooterViewCallBack customFooterViewCallBack = this.f18254this;
        if (customFooterViewCallBack != null) {
            customFooterViewCallBack.onSetNoMore(view, z);
        }
    }

    public void setPullRefreshEnabled(boolean z) {
        this.f18241class = z;
    }

    public void setRefreshHeader(ArrowRefreshHeader arrowRefreshHeader) {
        this.f18240catch = arrowRefreshHeader;
    }

    public void setRefreshProgressStyle(int i) {
        this.f18246for = i;
        ArrowRefreshHeader arrowRefreshHeader = this.f18240catch;
        if (arrowRefreshHeader != null) {
            arrowRefreshHeader.setProgressStyle(i);
        }
    }

    public void setRefreshTimeSpKeyName(String str) {
        ArrowRefreshHeader arrowRefreshHeader = this.f18240catch;
        if (arrowRefreshHeader != null) {
            arrowRefreshHeader.setXrRefreshTimeKey(str);
        }
    }

    public void setScrollAlphaChangeListener(ScrollAlphaChangeListener scrollAlphaChangeListener) {
        this.f18252public = scrollAlphaChangeListener;
    }

    /* renamed from: static, reason: not valid java name */
    public void m22815static(int i, Object obj) {
        if (this.f18239case.f18265do == null) {
            return;
        }
        this.f18239case.f18265do.notifyItemChanged(i + getHeaders_includingRefreshCount(), obj);
    }

    /* renamed from: switch, reason: not valid java name */
    public <T> void m22816switch(List<T> list, int i) {
        if (this.f18239case.f18265do == null) {
            return;
        }
        int headers_includingRefreshCount = getHeaders_includingRefreshCount();
        this.f18239case.f18265do.notifyItemInserted(i + headers_includingRefreshCount);
        this.f18239case.f18265do.notifyItemRangeChanged(headers_includingRefreshCount, list.size(), new Object());
    }

    /* renamed from: throws, reason: not valid java name */
    public <T> void m22817throws(List<T> list, int i) {
        if (this.f18239case.f18265do == null) {
            return;
        }
        int headers_includingRefreshCount = getHeaders_includingRefreshCount();
        this.f18239case.f18265do.notifyItemRemoved(i + headers_includingRefreshCount);
        this.f18239case.f18265do.notifyItemRangeChanged(headers_includingRefreshCount, list.size(), new Object());
    }

    public XRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public XRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18243do = false;
        this.f18248if = false;
        this.f18246for = -1;
        this.f18251new = -1;
        this.f18256try = new ArrayList<>();
        this.f18244else = -1.0f;
        this.f18247goto = 3.0f;
        this.f18241class = true;
        this.f18242const = true;
        this.f18255throw = new Cfor(this, null);
        this.f18257while = Cdo.EnumC0172do.EXPANDED;
        this.f18249import = 1;
        this.f18250native = 0;
        m22801throw();
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.XRecyclerView$new, reason: invalid class name */
    public class Cnew extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* renamed from: do, reason: not valid java name */
        private RecyclerView.Adapter f18265do;

        /* renamed from: com.jcodecraeer.xrecyclerview.XRecyclerView$new$do, reason: invalid class name */
        public class Cdo extends GridLayoutManager.SpanSizeLookup {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ GridLayoutManager f18267do;

            public Cdo(GridLayoutManager gridLayoutManager) {
                this.f18267do = gridLayoutManager;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i) {
                if (Cnew.this.m22826try(i) || Cnew.this.m22825new(i) || Cnew.this.m22822case(i)) {
                    return this.f18267do.getSpanCount();
                }
                return 1;
            }
        }

        /* renamed from: com.jcodecraeer.xrecyclerview.XRecyclerView$new$if, reason: invalid class name */
        public class Cif extends RecyclerView.ViewHolder {
            public Cif(View view) {
                super(view);
            }
        }

        public Cnew(RecyclerView.Adapter adapter) {
            this.f18265do = adapter;
        }

        /* renamed from: case, reason: not valid java name */
        public boolean m22822case(int i) {
            return i == 0;
        }

        /* renamed from: for, reason: not valid java name */
        public RecyclerView.Adapter m22823for() {
            return this.f18265do;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return (this.f18265do != null ? m22824if() + this.f18265do.getItemCount() : m22824if()) + (XRecyclerView.this.f18242const ? 2 : 1);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            int iM22824if;
            if (this.f18265do == null || i < m22824if() + 1 || (iM22824if = i - (m22824if() + 1)) >= this.f18265do.getItemCount()) {
                return -1L;
            }
            return this.f18265do.getItemId(iM22824if);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            int iM22824if = i - (m22824if() + 1);
            if (m22822case(i)) {
                return 10000;
            }
            if (m22826try(i)) {
                return ((Integer) XRecyclerView.f18237throws.get(i - 1)).intValue();
            }
            if (m22825new(i)) {
                return 10001;
            }
            RecyclerView.Adapter adapter = this.f18265do;
            if (adapter == null || iM22824if >= adapter.getItemCount()) {
                return 0;
            }
            int itemViewType = this.f18265do.getItemViewType(iM22824if);
            if (XRecyclerView.this.m22797native(itemViewType)) {
                throw new IllegalStateException("XRecyclerView require itemViewType in adapter should be less than 10000 ");
            }
            return itemViewType;
        }

        /* renamed from: if, reason: not valid java name */
        public int m22824if() {
            if (XRecyclerView.this.f18256try == null) {
                return 0;
            }
            return XRecyclerView.this.f18256try.size();
        }

        /* renamed from: new, reason: not valid java name */
        public boolean m22825new(int i) {
            return XRecyclerView.this.f18242const && i == getItemCount() - 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
            super.onAttachedToRecyclerView(recyclerView);
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof GridLayoutManager) {
                GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
                gridLayoutManager.setSpanSizeLookup(new Cdo(gridLayoutManager));
            }
            this.f18265do.onAttachedToRecyclerView(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (m22826try(i) || m22822case(i)) {
                return;
            }
            int iM22824if = i - (m22824if() + 1);
            RecyclerView.Adapter adapter = this.f18265do;
            if (adapter == null || iM22824if >= adapter.getItemCount()) {
                return;
            }
            this.f18265do.onBindViewHolder(viewHolder, iM22824if);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return i == 10000 ? new Cif(XRecyclerView.this.f18240catch) : XRecyclerView.this.m22803while(i) ? new Cif(XRecyclerView.this.m22799super(i)) : i == 10001 ? new Cif(XRecyclerView.this.f18253super) : this.f18265do.onCreateViewHolder(viewGroup, i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
            this.f18265do.onDetachedFromRecyclerView(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
            return this.f18265do.onFailedToRecycleView(viewHolder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            super.onViewAttachedToWindow(viewHolder);
            ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
            if (layoutParams != null && (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) && (m22826try(viewHolder.getLayoutPosition()) || m22822case(viewHolder.getLayoutPosition()) || m22825new(viewHolder.getLayoutPosition()))) {
                ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
            }
            this.f18265do.onViewAttachedToWindow(viewHolder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            this.f18265do.onViewDetachedFromWindow(viewHolder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            this.f18265do.onViewRecycled(viewHolder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void registerAdapterDataObserver(RecyclerView.AdapterDataObserver adapterDataObserver) {
            this.f18265do.registerAdapterDataObserver(adapterDataObserver);
        }

        /* renamed from: try, reason: not valid java name */
        public boolean m22826try(int i) {
            return XRecyclerView.this.f18256try != null && i >= 1 && i < XRecyclerView.this.f18256try.size() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void unregisterAdapterDataObserver(RecyclerView.AdapterDataObserver adapterDataObserver) {
            this.f18265do.unregisterAdapterDataObserver(adapterDataObserver);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List<Object> list) {
            if (m22826try(i) || m22822case(i)) {
                return;
            }
            int iM22824if = i - (m22824if() + 1);
            RecyclerView.Adapter adapter = this.f18265do;
            if (adapter == null || iM22824if >= adapter.getItemCount()) {
                return;
            }
            if (list.isEmpty()) {
                this.f18265do.onBindViewHolder(viewHolder, iM22824if);
            } else {
                this.f18265do.onBindViewHolder(viewHolder, iM22824if, list);
            }
        }
    }
}
