.class public Lcom/wsw/cospa/widget/view/MultipleStatusView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final NULL_RESOURCE_ID:I = -0x1

.field public static final STATUS_CONTENT:I = 0x0

.field public static final STATUS_EMPTY:I = 0x2

.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_LOADING:I = 0x1

.field public static final STATUS_NO_NETWORK:I = 0x4


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContentViewResId:I

.field private mEmptyRetryView:Landroid/view/View;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewResId:I

.field private mErrorRetryView:Landroid/view/View;

.field private mErrorView:Landroid/view/View;

.field private mErrorViewResId:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mLoadingView:Landroid/view/View;

.field private mLoadingViewResId:I

.field private mNoNetworkRetryView:Landroid/view/View;

.field private mNoNetworkView:Landroid/view/View;

.field private mNoNetworkViewResId:I

.field private mOnRetryClickListener:Landroid/view/View$OnClickListener;

.field private mViewStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/MultipleStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/view/MultipleStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 5
    sget-object v0, Lcom/wsw/cospa/R$styleable;->MultipleStatusView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const p3, 0x7f0c0079

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mEmptyViewResId:I

    const/4 p2, 0x2

    const p3, 0x7f0c007a

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mErrorViewResId:I

    const/4 p2, 0x3

    const p3, 0x7f0c008d

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mLoadingViewResId:I

    const/4 p2, 0x4

    const p3, 0x7f0c00da

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mNoNetworkViewResId:I

    .line 10
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mContentViewResId:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private showViewByStatus(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    .line 4
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_5

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/16 v3, 0x8

    .line 6
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mNoNetworkView:Landroid/view/View;

    if-eqz v0, :cond_7

    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    const/16 v3, 0x8

    .line 8
    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_7
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_9

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const/16 v1, 0x8

    .line 10
    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public getViewStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mViewStatus:I

    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mInflater:Landroid/view/LayoutInflater;

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/MultipleStatusView;->showContent()V

    return-void
.end method

.method public setOnRetryClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mOnRetryClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final showContent()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mViewStatus:I

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 3
    iget v1, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mContentViewResId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mContentView:Landroid/view/View;

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f090117

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mContentView:Landroid/view/View;

    .line 7
    :cond_1
    :goto_0
    iget v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mViewStatus:I

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/view/MultipleStatusView;->showViewByStatus(I)V

    return-void
.end method

.method public final showEmpty()V
    .locals 3

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mViewStatus:I

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mEmptyViewResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mEmptyView:Landroid/view/View;

    const v1, 0x7f09015b

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mEmptyRetryView:Landroid/view/View;

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mOnRetryClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_1
    iget v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mViewStatus:I

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/view/MultipleStatusView;->showViewByStatus(I)V

    return-void
.end method

.method public final showError()V
    .locals 3

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mViewStatus:I

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mErrorView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mErrorViewResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mErrorView:Landroid/view/View;

    const v1, 0x7f090169

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mErrorRetryView:Landroid/view/View;

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mOnRetryClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mErrorView:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_1
    iget v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mViewStatus:I

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/view/MultipleStatusView;->showViewByStatus(I)V

    return-void
.end method

.method public final showLoading()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mViewStatus:I

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mLoadingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mLoadingViewResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5
    :cond_0
    iget v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mViewStatus:I

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/view/MultipleStatusView;->showViewByStatus(I)V

    return-void
.end method

.method public final showNoNetwork()V
    .locals 3

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mViewStatus:I

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mNoNetworkView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mNoNetworkViewResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mNoNetworkView:Landroid/view/View;

    const v1, 0x7f0902ff

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mNoNetworkRetryView:Landroid/view/View;

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mOnRetryClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mNoNetworkView:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_1
    iget v0, p0, Lcom/wsw/cospa/widget/view/MultipleStatusView;->mViewStatus:I

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/view/MultipleStatusView;->showViewByStatus(I)V

    return-void
.end method
