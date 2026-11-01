.class public Lcom/wsw/cospa/widget/view/ChapterBottomSheet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;
    }
.end annotation


# instance fields
.field private bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

.field private dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mActivity:Lcom/wsw/cospa/base/BaseActivity;

.field private mAdapter:Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;

.field private mContext:Landroid/content/Context;

.field private mFastScroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mContext:Landroid/content/Context;

    .line 3
    check-cast p1, Lcom/wsw/cospa/base/BaseActivity;

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->initView()V

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/view/ChapterBottomSheet;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/wsw/cospa/widget/view/ChapterBottomSheet;)Lcom/wsw/cospa/bean/ComicShelfBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-object p0
.end method

.method public static moveToPosition(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    if-gt p2, v0, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_1
    if-gt p2, p0, :cond_2

    sub-int/2addr p2, v0

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    :cond_2
    if-lez p2, :cond_3

    add-int/lit8 p2, p2, -0x1

    .line 6
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-static {v0, v1}, Lcom/gyf/immersionbar/else;->interface(Landroid/app/Activity;Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public initData(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mAdapter:Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->refresh(Ljava/util/List;)V

    return-void
.end method

.method public initView()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mView:Landroid/view/View;

    const v1, 0x7f0904be

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mTitle:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mView:Landroid/view/View;

    const v1, 0x7f0902a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mView:Landroid/view/View;

    const v1, 0x7f0901b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mFastScroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 5
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mContext:Landroid/content/Context;

    const v2, 0x7f1200fa

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extends(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    .line 10
    invoke-static {}, Landroid/support/v4/j10;->goto()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n(I)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f12035e

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 12
    new-instance v0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;-><init>(Lcom/wsw/cospa/widget/view/ChapterBottomSheet;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mAdapter:Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;

    .line 13
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mAdapter:Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mFastScroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public isShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public refresh(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mAdapter:Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->refreshPosition(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->moveToPosition(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-static {v0, v1}, Lcom/gyf/immersionbar/else;->l2(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    :cond_0
    return-void
.end method
