.class public Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;,
        Lcom/jcodecraeer/xrecyclerview/XRecyclerView$DividerItemDecoration;,
        Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;,
        Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;,
        Lcom/jcodecraeer/xrecyclerview/XRecyclerView$for;
    }
.end annotation


# static fields
.field private static final return:I = 0x2710

.field private static final static:I = 0x2711

.field private static final switch:I = 0x2712

.field private static throws:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private break:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

.field private case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

.field private catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

.field private class:Z

.field private const:Z

.field private do:Z

.field private else:F

.field private final:Landroid/view/View;

.field private for:I

.field private goto:F

.field private if:Z

.field private import:I

.field private native:I

.field private new:I

.field private public:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

.field private super:Landroid/view/View;

.field private this:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

.field private final throw:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private try:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private while:Lcom/jcodecraeer/xrecyclerview/do$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->throws:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->do:Z

    .line 5
    iput-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->if:Z

    const/4 p2, -0x1

    .line 6
    iput p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->for:I

    .line 7
    iput p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->new:I

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->try:Ljava/util/ArrayList;

    const/high16 p2, -0x40800000    # -1.0f

    .line 9
    iput p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->else:F

    const/high16 p2, 0x40400000    # 3.0f

    .line 10
    iput p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->goto:F

    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->class:Z

    .line 12
    iput-boolean p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->const:Z

    .line 13
    new-instance p3, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$for;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$for;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Lcom/jcodecraeer/xrecyclerview/XRecyclerView$do;)V

    iput-object p3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->throw:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 14
    sget-object p3, Lcom/jcodecraeer/xrecyclerview/do$do;->EXPANDED:Lcom/jcodecraeer/xrecyclerview/do$do;

    iput-object p3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->while:Lcom/jcodecraeer/xrecyclerview/do$do;

    .line 15
    iput p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->import:I

    .line 16
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->native:I

    .line 17
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->throw()V

    return-void
.end method

.method public static synthetic break(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic case(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->const:Z

    return p0
.end method

.method public static synthetic catch(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic do(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    return-object p0
.end method

.method public static synthetic else(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->try:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final([I)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    .line 2
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static synthetic for(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->native(I)Z

    move-result p0

    return p0
.end method

.method private getHeaders_includingRefreshCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;->if()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic goto(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    return-object p0
.end method

.method public static synthetic if()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->throws:Ljava/util/List;

    return-object v0
.end method

.method private import()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private native(I)Z
    .locals 1

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_1

    .line 1
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->throws:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic new(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Lcom/jcodecraeer/xrecyclerview/do$do;)Lcom/jcodecraeer/xrecyclerview/do$do;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->while:Lcom/jcodecraeer/xrecyclerview/do$do;

    return-object p1
.end method

.method private super(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->while(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->try:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    add-int/lit16 p1, p1, -0x2712

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public static synthetic this(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->while(I)Z

    move-result p0

    return p0
.end method

.method private throw()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->class:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    .line 3
    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->for:I

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setProgressStyle(I)V

    .line 4
    :cond_0
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;-><init>(Landroid/content/Context;)V

    .line 5
    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->new:I

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setProgressStyle(I)V

    .line 6
    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super:Landroid/view/View;

    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic try(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->final:Landroid/view/View;

    return-object p0
.end method

.method private while(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->try:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->throws:Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->throws:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public abstract(Landroid/view/View;Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super:Landroid/view/View;

    .line 2
    iput-object p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->this:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    :cond_1
    :goto_0
    return-void
.end method

.method public class(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->try:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->throws:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit16 v0, v0, 0x2712

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->try:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public const()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->try:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->try:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super:Landroid/view/View;

    instance-of v2, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v2, :cond_1

    .line 5
    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->do()V

    .line 6
    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super:Landroid/view/View;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->do()V

    .line 9
    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    :cond_2
    return-void
.end method

.method public continue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super:Landroid/view/View;

    instance-of v1, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setLoadingHint(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super:Landroid/view/View;

    check-cast p1, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    invoke-virtual {p1, p2}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setNoMoreHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public default()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->class:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->break:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setState(I)V

    .line 3
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->break:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    invoke-interface {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;->onRefresh()V

    :cond_0
    return-void
.end method

.method public extends()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->refreshComplete()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setNoMore(Z)V

    return-void
.end method

.method public finally()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->try:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->throws:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;->for()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultFootView()Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v2, :cond_1

    .line 3
    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getDefaultRefreshHeaderView()Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->final:Landroid/view/View;

    return-object v0
.end method

.method public getFootView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super:Landroid/view/View;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_4

    .line 6
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_2

    .line 10
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_4

    .line 11
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$if;

    invoke-direct {v0, p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$if;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;)V

    invoke-virtual {v2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_4
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_5

    .line 2
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->break:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->do:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->const:Z

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 4
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    new-array v1, v1, [I

    .line 8
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 9
    invoke-direct {p0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->final([I)I

    move-result v0

    goto :goto_0

    .line 10
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x3

    .line 12
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v3}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getState()I

    move-result v2

    .line 14
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_5

    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->import:I

    sub-int v3, v1, v3

    if-lt v0, v3, :cond_5

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    if-lt v1, p1, :cond_5

    iget-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->if:Z

    if-nez p1, :cond_5

    const/4 p1, 0x2

    if-ge v2, p1, :cond_5

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->do:Z

    .line 17
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super:Landroid/view/View;

    instance-of v0, p1, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v0, :cond_3

    .line 18
    check-cast p1, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setState(I)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->this:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    if-eqz v0, :cond_4

    .line 20
    invoke-interface {v0, p1}, Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;->onLoadingMore(Landroid/view/View;)V

    .line 21
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->break:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    invoke-interface {p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;->onLoadMore()V

    :cond_5
    return-void
.end method

.method public onScrolled(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 2
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->public:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;->setLimitHeight()I

    move-result p1

    .line 4
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->native:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->native:I

    if-gtz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->public:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;->onAlphaChange(I)V

    goto :goto_0

    :cond_1
    if-gt v0, p1, :cond_2

    if-lez v0, :cond_2

    int-to-float p2, v0

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float p2, p2, p1

    .line 6
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->public:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    float-to-int p2, p2

    invoke-interface {p1, p2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;->onAlphaChange(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->public:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    const/16 p2, 0xff

    invoke-interface {p1, p2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;->onAlphaChange(I)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->else:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->else:F

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 4
    iput v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->else:F

    .line 5
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->import()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->class:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->while:Lcom/jcodecraeer/xrecyclerview/do$do;

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/do$do;->EXPANDED:Lcom/jcodecraeer/xrecyclerview/do$do;

    if-ne v0, v1, :cond_4

    .line 6
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->releaseAction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->break:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    if-eqz v0, :cond_4

    .line 8
    invoke-interface {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;->onRefresh()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->else:F

    sub-float/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->else:F

    .line 11
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->import()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->class:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->while:Lcom/jcodecraeer/xrecyclerview/do$do;

    sget-object v3, Lcom/jcodecraeer/xrecyclerview/do$do;->EXPANDED:Lcom/jcodecraeer/xrecyclerview/do$do;

    if-ne v1, v3, :cond_4

    .line 12
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-nez v1, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->goto:F

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->onMove(F)V

    .line 14
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getVisibleHeight()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->getState()I

    move-result v0

    if-ge v0, v2, :cond_4

    const/4 p1, 0x0

    return p1

    .line 15
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->else:F

    .line 16
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public package(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->try:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->throws:Ljava/util/List;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v1, p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->try:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method public private()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setNoMore(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->public()V

    .line 3
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->extends()V

    return-void
.end method

.method public public()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->do:Z

    .line 2
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super:Landroid/view/View;

    instance-of v1, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setState(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->this:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, v0}, Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;->onLoadMoreComplete(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public return(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;->do(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;->do(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->native:I

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    invoke-direct {v0, p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    .line 2
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->throw:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 4
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->throw:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    return-void
.end method

.method public setArrowImageView(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setArrowImageView(I)V

    :cond_0
    return-void
.end method

.method public setDragRate(F)V
    .locals 5

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->goto:F

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->final:Landroid/view/View;

    .line 2
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->throw:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    if-eqz v0, :cond_0

    .line 3
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$do;

    invoke-direct {v0, p0, p1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$do;-><init>(Lcom/jcodecraeer/xrecyclerview/XRecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public setLimitNumberToCallLoadMore(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->import:I

    return-void
.end method

.method public setLoadingListener(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->break:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$LoadingListener;

    return-void
.end method

.method public setLoadingMoreEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->const:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super:Landroid/view/View;

    instance-of v0, p1, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setState(I)V

    :cond_0
    return-void
.end method

.method public setLoadingMoreProgressStyle(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->new:I

    .line 2
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super:Landroid/view/View;

    instance-of v1, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setProgressStyle(I)V

    :cond_0
    return-void
.end method

.method public setNoMore(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->do:Z

    .line 2
    iput-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->if:Z

    .line 3
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->super:Landroid/view/View;

    instance-of v1, v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->setState(I)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->this:Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1, v0, p1}, Lcom/jcodecraeer/xrecyclerview/CustomFooterViewCallBack;->onSetNoMore(Landroid/view/View;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPullRefreshEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->class:Z

    return-void
.end method

.method public setRefreshHeader(Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    return-void
.end method

.method public setRefreshProgressStyle(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->for:I

    .line 2
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setProgressStyle(I)V

    :cond_0
    return-void
.end method

.method public setRefreshTimeSpKeyName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->catch:Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/ArrowRefreshHeader;->setXrRefreshTimeKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setScrollAlphaChangeListener(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->public:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$ScrollAlphaChangeListener;

    return-void
.end method

.method public static(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;->do(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;->do(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public switch(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;->do(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v0

    add-int/2addr p2, v0

    .line 3
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    invoke-static {v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;->do(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 4
    iget-object p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    invoke-static {p2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;->do(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public throws(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    invoke-static {v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;->do(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->getHeaders_includingRefreshCount()I

    move-result v0

    add-int/2addr p2, v0

    .line 3
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    invoke-static {v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;->do(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 4
    iget-object p2, p0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->case:Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;

    invoke-static {p2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;->do(Lcom/jcodecraeer/xrecyclerview/XRecyclerView$new;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method
