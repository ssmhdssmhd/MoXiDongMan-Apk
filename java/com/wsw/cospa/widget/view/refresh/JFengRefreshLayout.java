package com.wsw.cospa.widget.view.refresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class JFengRefreshLayout extends SwipeRefreshLayout implements AbsListView.OnScrollListener {
    public static final String TAG = "JFengRefreshLayout";
    public int PRELOAD_SIZE;
    private boolean canBottomLoad;
    private RecyclerView contentRecyclerView;
    private AbsListView contentView;
    private boolean isLoading;
    public boolean mIsFirstTimeTouchBottom;
    private int mLastY;
    private View mListViewFooter;
    private JFengRefreshListener mRefreshListener;
    private int mTouchSlop;
    private int mYDown;
    private View refreshDataView;
    public float xDistance;
    public float xLast;
    public float yDistance;
    public float yLast;

    public JFengRefreshLayout(Context context) {
        this(context, null);
    }

    private boolean canLoad() {
        return this.canBottomLoad && isBottom() && !this.isLoading && isPullUp();
    }

    private void initListView() {
        if (this.refreshDataView == null && getChildCount() > 1) {
            this.refreshDataView = getChildAt(1);
        }
        View view = this.refreshDataView;
        if (view instanceof ListView) {
            ((ListView) view).setOnScrollListener(this);
            this.contentView = (AbsListView) this.refreshDataView;
        } else if (view instanceof GridView) {
            ((GridView) view).setOnScrollListener(this);
            this.contentView = (AbsListView) this.refreshDataView;
        } else if (view instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) view;
            this.contentRecyclerView = recyclerView;
            this.contentRecyclerView.addOnScrollListener(getOnBottomListener((LinearLayoutManager) recyclerView.getLayoutManager()));
        }
    }

    private boolean isBottom() {
        AbsListView absListView = this.contentView;
        return (absListView == null || absListView.getAdapter() == null || this.contentView.getLastVisiblePosition() != ((ListAdapter) this.contentView.getAdapter()).getCount() - 1) ? false : true;
    }

    private boolean isPullUp() {
        return this.mYDown - this.mLastY >= this.mTouchSlop;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadData() {
        if (this.mRefreshListener != null) {
            startLoading();
            this.mRefreshListener.onLoad();
        }
    }

    private void setLoading(boolean z) {
        AbsListView absListView = this.contentView;
        if (absListView == null) {
            return;
        }
        this.isLoading = z;
        try {
            if (z) {
                if (absListView instanceof ListView) {
                    ((ListView) absListView).addFooterView(this.mListViewFooter);
                    return;
                } else {
                    boolean z2 = absListView instanceof GridView;
                    return;
                }
            }
            if (absListView instanceof ListView) {
                ((ListView) absListView).removeFooterView(this.mListViewFooter);
            } else {
                boolean z3 = absListView instanceof GridView;
            }
            this.mYDown = 0;
            this.mLastY = 0;
        } catch (Exception e) {
            e.toString();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mYDown = (int) motionEvent.getRawY();
        } else if (action == 2) {
            this.mLastY = (int) motionEvent.getRawY();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void finishLoading() {
        setLoading(false);
    }

    public void finishRefresh() {
        setRefreshing(false);
    }

    public RecyclerView.OnScrollListener getOnBottomListener(final LinearLayoutManager linearLayoutManager) {
        return new RecyclerView.OnScrollListener() { // from class: com.wsw.cospa.widget.view.refresh.JFengRefreshLayout.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                int iFindLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
                int itemCount = JFengRefreshLayout.this.contentRecyclerView.getAdapter().getItemCount();
                JFengRefreshLayout jFengRefreshLayout = JFengRefreshLayout.this;
                boolean z = iFindLastCompletelyVisibleItemPosition >= itemCount - jFengRefreshLayout.PRELOAD_SIZE;
                if (jFengRefreshLayout.isRefreshing() || !z) {
                    return;
                }
                JFengRefreshLayout.this.loadData();
            }
        };
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.yDistance = 0.0f;
            this.xDistance = 0.0f;
            this.xLast = motionEvent.getX();
            this.yLast = motionEvent.getY();
        } else if (action == 2) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.xDistance += Math.abs(x - this.xLast);
            float fAbs = this.yDistance + Math.abs(y - this.yLast);
            this.yDistance = fAbs;
            this.xLast = x;
            this.yLast = y;
            if (this.xDistance > fAbs) {
                return false;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            initListView();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (canLoad()) {
            loadData();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    public void setCanBottomLoad(boolean z) {
        this.canBottomLoad = z;
    }

    public void setOnRefreshListener(JFengRefreshListener jFengRefreshListener) {
        super.setOnRefreshListener((SwipeRefreshLayout.OnRefreshListener) jFengRefreshListener);
        this.mRefreshListener = jFengRefreshListener;
    }

    public void setRefreshDataView(View view) {
        this.refreshDataView = view;
    }

    public void startLoading() {
        setLoading(true);
    }

    public void startRefresh() {
        if (isRefreshing()) {
            return;
        }
        post(new Runnable() { // from class: com.wsw.cospa.widget.view.refresh.JFengRefreshLayout.2
            @Override // java.lang.Runnable
            public void run() {
                JFengRefreshLayout.this.setRefreshing(true);
                if (JFengRefreshLayout.this.mRefreshListener != null) {
                    JFengRefreshLayout.this.mRefreshListener.onRefresh();
                }
            }
        });
    }

    public JFengRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isLoading = false;
        this.canBottomLoad = true;
        this.PRELOAD_SIZE = 1;
        this.mIsFirstTimeTouchBottom = true;
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mListViewFooter = LayoutInflater.from(context).inflate(R.layout.arg_res_0x7f0c0109, (ViewGroup) null, false);
        setColorSchemeResources(R.color.arg_res_0x7f0601c6, R.color.arg_res_0x7f0601c7, R.color.arg_res_0x7f0601c8, R.color.arg_res_0x7f0601c9);
    }
}
