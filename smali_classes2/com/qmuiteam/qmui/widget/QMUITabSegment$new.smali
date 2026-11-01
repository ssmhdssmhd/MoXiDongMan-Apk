.class Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUITabSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation


# instance fields
.field private do:Z

.field public final synthetic for:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

.field private final if:Z


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;->for:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;->if:Z

    return-void
.end method


# virtual methods
.method public do(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;->do:Z

    return-void
.end method

.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;->for:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {p2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throw(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;->for:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;->if:Z

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;->do:Z

    invoke-virtual {p1, p3, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->u(Landroidx/viewpager/widget/PagerAdapter;ZZ)V

    :cond_0
    return-void
.end method
