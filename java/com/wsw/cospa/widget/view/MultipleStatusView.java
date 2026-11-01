package com.wsw.cospa.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class MultipleStatusView extends RelativeLayout {
    private static final int NULL_RESOURCE_ID = -1;
    public static final int STATUS_CONTENT = 0;
    public static final int STATUS_EMPTY = 2;
    public static final int STATUS_ERROR = 3;
    public static final int STATUS_LOADING = 1;
    public static final int STATUS_NO_NETWORK = 4;
    private View mContentView;
    private int mContentViewResId;
    private View mEmptyRetryView;
    private View mEmptyView;
    private int mEmptyViewResId;
    private View mErrorRetryView;
    private View mErrorView;
    private int mErrorViewResId;
    private LayoutInflater mInflater;
    private final ViewGroup.LayoutParams mLayoutParams;
    private View mLoadingView;
    private int mLoadingViewResId;
    private View mNoNetworkRetryView;
    private View mNoNetworkView;
    private int mNoNetworkViewResId;
    private View.OnClickListener mOnRetryClickListener;
    private int mViewStatus;

    public MultipleStatusView(Context context) {
        this(context, null);
    }

    private void showViewByStatus(int i) {
        View view = this.mLoadingView;
        if (view != null) {
            view.setVisibility(i == 1 ? 0 : 8);
        }
        View view2 = this.mEmptyView;
        if (view2 != null) {
            view2.setVisibility(i == 2 ? 0 : 8);
        }
        View view3 = this.mErrorView;
        if (view3 != null) {
            view3.setVisibility(i == 3 ? 0 : 8);
        }
        View view4 = this.mNoNetworkView;
        if (view4 != null) {
            view4.setVisibility(i == 4 ? 0 : 8);
        }
        View view5 = this.mContentView;
        if (view5 != null) {
            view5.setVisibility(i != 0 ? 8 : 0);
        }
    }

    public int getViewStatus() {
        return this.mViewStatus;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mInflater = LayoutInflater.from(getContext());
        showContent();
    }

    public void setOnRetryClickListener(View.OnClickListener onClickListener) {
        this.mOnRetryClickListener = onClickListener;
    }

    public final void showContent() {
        this.mViewStatus = 0;
        if (this.mContentView == null) {
            int i = this.mContentViewResId;
            if (i != -1) {
                View viewInflate = this.mInflater.inflate(i, (ViewGroup) null);
                this.mContentView = viewInflate;
                addView(viewInflate, 0, this.mLayoutParams);
            } else {
                this.mContentView = findViewById(R.id.arg_res_0x7f090117);
            }
        }
        showViewByStatus(this.mViewStatus);
    }

    public final void showEmpty() {
        this.mViewStatus = 2;
        if (this.mEmptyView == null) {
            View viewInflate = this.mInflater.inflate(this.mEmptyViewResId, (ViewGroup) null);
            this.mEmptyView = viewInflate;
            View viewFindViewById = viewInflate.findViewById(R.id.arg_res_0x7f09015b);
            this.mEmptyRetryView = viewFindViewById;
            View.OnClickListener onClickListener = this.mOnRetryClickListener;
            if (onClickListener != null && viewFindViewById != null) {
                viewFindViewById.setOnClickListener(onClickListener);
            }
            addView(this.mEmptyView, 0, this.mLayoutParams);
        }
        showViewByStatus(this.mViewStatus);
    }

    public final void showError() {
        this.mViewStatus = 3;
        if (this.mErrorView == null) {
            View viewInflate = this.mInflater.inflate(this.mErrorViewResId, (ViewGroup) null);
            this.mErrorView = viewInflate;
            View viewFindViewById = viewInflate.findViewById(R.id.arg_res_0x7f090169);
            this.mErrorRetryView = viewFindViewById;
            View.OnClickListener onClickListener = this.mOnRetryClickListener;
            if (onClickListener != null && viewFindViewById != null) {
                viewFindViewById.setOnClickListener(onClickListener);
            }
            addView(this.mErrorView, 0, this.mLayoutParams);
        }
        showViewByStatus(this.mViewStatus);
    }

    public final void showLoading() {
        this.mViewStatus = 1;
        if (this.mLoadingView == null) {
            View viewInflate = this.mInflater.inflate(this.mLoadingViewResId, (ViewGroup) null);
            this.mLoadingView = viewInflate;
            addView(viewInflate, 0, this.mLayoutParams);
        }
        showViewByStatus(this.mViewStatus);
    }

    public final void showNoNetwork() {
        this.mViewStatus = 4;
        if (this.mNoNetworkView == null) {
            View viewInflate = this.mInflater.inflate(this.mNoNetworkViewResId, (ViewGroup) null);
            this.mNoNetworkView = viewInflate;
            View viewFindViewById = viewInflate.findViewById(R.id.arg_res_0x7f0902ff);
            this.mNoNetworkRetryView = viewFindViewById;
            View.OnClickListener onClickListener = this.mOnRetryClickListener;
            if (onClickListener != null && viewFindViewById != null) {
                viewFindViewById.setOnClickListener(onClickListener);
            }
            addView(this.mNoNetworkView, 0, this.mLayoutParams);
        }
        showViewByStatus(this.mViewStatus);
    }

    public MultipleStatusView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MultipleStatusView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLayoutParams = new ViewGroup.LayoutParams(-1, -1);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MultipleStatusView, i, 0);
        this.mEmptyViewResId = typedArrayObtainStyledAttributes.getResourceId(1, R.layout.arg_res_0x7f0c0079);
        this.mErrorViewResId = typedArrayObtainStyledAttributes.getResourceId(2, R.layout.arg_res_0x7f0c007a);
        this.mLoadingViewResId = typedArrayObtainStyledAttributes.getResourceId(3, R.layout.arg_res_0x7f0c008d);
        this.mNoNetworkViewResId = typedArrayObtainStyledAttributes.getResourceId(4, R.layout.arg_res_0x7f0c00da);
        this.mContentViewResId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
    }
}
