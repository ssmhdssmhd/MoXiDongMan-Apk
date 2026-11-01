.class public Lcom/wsw/cospa/activity/SearchSourceView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;,
        Lcom/wsw/cospa/activity/SearchSourceView$onSourceFilterListener;
    }
.end annotation


# instance fields
.field private case:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field public closePopw:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090103
    .end annotation
.end field

.field private do:Landroid/app/Activity;

.field private else:Z

.field public error_view:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field private for:Landroid/widget/PopupWindow;

.field private goto:Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;

.field private if:Landroid/view/View;

.field public mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a2
    .end annotation
.end field

.field public mLoadingRootView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a1
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
    .end annotation
.end field

.field private new:Lcom/wsw/cospa/activity/SearchSourceView$onSourceFilterListener;

.field public searchView:Landroidx/appcompat/widget/SearchView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090389
    .end annotation
.end field

.field private try:Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;

.field public tvErrorView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016b
    .end annotation
.end field

.field public tvRetry:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a7
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/wsw/cospa/activity/SearchSourceView$onSourceFilterListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchSourceView;->do:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/activity/SearchSourceView;->new:Lcom/wsw/cospa/activity/SearchSourceView$onSourceFilterListener;

    return-void
.end method

.method public static synthetic case(Lcom/wsw/cospa/activity/SearchSourceView;)Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->goto:Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;

    return-object p0
.end method

.method public static synthetic do(Lcom/wsw/cospa/activity/SearchSourceView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/SearchSourceView;->super(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic else(Lcom/wsw/cospa/activity/SearchSourceView;Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;)Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchSourceView;->goto:Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;

    return-object p1
.end method

.method public static synthetic for(Lcom/wsw/cospa/activity/SearchSourceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/SearchSourceView;->throw()V

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/activity/SearchSourceView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/SearchSourceView;->while(I)V

    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/activity/SearchSourceView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/SearchSourceView;->else:Z

    return p1
.end method

.method private synthetic super(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchSourceView;->new:Lcom/wsw/cospa/activity/SearchSourceView$onSourceFilterListener;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/wsw/cospa/activity/SearchSourceView$onSourceFilterListener;->onDismiss()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic throw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->goto:Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->case:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->new:Lcom/wsw/cospa/activity/SearchSourceView$onSourceFilterListener;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lcom/wsw/cospa/activity/SearchSourceView$onSourceFilterListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public static synthetic try(Lcom/wsw/cospa/activity/SearchSourceView;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->do:Landroid/app/Activity;

    return-object p0
.end method

.method private synthetic while(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {v0}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->try:Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->try(I)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->new:Lcom/wsw/cospa/activity/SearchSourceView$onSourceFilterListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/wsw/cospa/activity/SearchSourceView$onSourceFilterListener;->onChange(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method


# virtual methods
.method public break()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "SourceSort"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->this:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->try:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " COLLATE LOCALIZED ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->break:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public catch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->error_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public class()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->error_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public const()V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchSourceView;->if:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    const v2, 0x7f12035a

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->closePopw:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->closePopw:Landroid/view/View;

    new-instance v2, Landroid/support/v4/ot1;

    invoke-direct {v2, p0}, Landroid/support/v4/ot1;-><init>(Lcom/wsw/cospa/activity/SearchSourceView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/support/v4/pt1;

    invoke-direct {v2, p0}, Landroid/support/v4/pt1;-><init>(Lcom/wsw/cospa/activity/SearchSourceView;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 13
    new-instance v0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;-><init>(Lcom/wsw/cospa/activity/SearchSourceView;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->try:Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;

    .line 14
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/wsw/cospa/activity/SearchSourceView;->do:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 15
    new-instance v2, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;-><init>(I)V

    .line 16
    iget-object v4, p0, Lcom/wsw/cospa/activity/SearchSourceView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 17
    iget-object v2, p0, Lcom/wsw/cospa/activity/SearchSourceView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->try:Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchSourceView;->try:Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->try:Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;

    new-instance v1, Landroid/support/v4/qt1;

    invoke-direct {v1, p0}, Landroid/support/v4/qt1;-><init>(Lcom/wsw/cospa/activity/SearchSourceView;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->searchView:Landroidx/appcompat/widget/SearchView;

    const-string v1, "\u641c\u7d22\u56fe\u6e90\u540d"

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/try;->const(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->searchView:Landroidx/appcompat/widget/SearchView;

    const v1, 0x7f090394

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->case:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 26
    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchSourceView;->do:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060384

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->case:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->onActionViewExpanded()V

    .line 29
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 30
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->case:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/wsw/cospa/activity/SearchSourceView$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/SearchSourceView$do;-><init>(Lcom/wsw/cospa/activity/SearchSourceView;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 32
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/SearchSourceView;->catch()V

    .line 33
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/SearchSourceView;->import()V

    return-void
.end method

.method public final()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public goto()Landroid/widget/PopupWindow;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->do:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0112

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->if:Landroid/view/View;

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/SearchSourceView;->const()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public import()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->else:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wsw/cospa/activity/SearchSourceView;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hw;->goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    .line 5
    invoke-virtual {v3}, Lorg/greenrobot/greendao/Property;->isNotNull()Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    sget-object v5, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->try:Lorg/greenrobot/greendao/Property;

    .line 6
    invoke-virtual {v5, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    sget-object v6, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->case:Lorg/greenrobot/greendao/Property;

    .line 7
    invoke-virtual {v6, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 8
    invoke-virtual {v3, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v8, v1

    .line 9
    invoke-virtual {v2, v5, v6, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 10
    invoke-virtual {v2, v4, v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->and(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v2, v7, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->break:Lorg/greenrobot/greendao/Property;

    aput-object v3, v2, v1

    .line 11
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/SearchSourceView;->break()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderRaw(Ljava/lang/String;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/model/do;->package()Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 16
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/SearchSourceView;->try:Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->refresh(Ljava/util/List;)V

    return-void
.end method

.method public native(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/j10;->native(Landroid/widget/PopupWindow;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public public(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->tvErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchSourceView;->tvRetry:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public this()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView;->for:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
