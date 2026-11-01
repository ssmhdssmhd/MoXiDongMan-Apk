.class public Lcom/wsw/cospa/widget/ScrollBindHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/ScrollBindHelper$VisibleHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIME_OUT:J = 0x3e8L


# instance fields
.field private handler:Lcom/wsw/cospa/widget/ScrollBindHelper$VisibleHandler;

.field private isUserSeeking:Z

.field private final scrollContent:Landroid/view/View;

.field private final scrollView:Landroidx/core/widget/NestedScrollView;

.field private final seekBar:Landroid/widget/SeekBar;


# direct methods
.method private constructor <init>(Landroid/widget/SeekBar;Landroidx/core/widget/NestedScrollView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/wsw/cospa/widget/ScrollBindHelper$VisibleHandler;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/ScrollBindHelper$VisibleHandler;-><init>(Lcom/wsw/cospa/widget/ScrollBindHelper;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->handler:Lcom/wsw/cospa/widget/ScrollBindHelper$VisibleHandler;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->seekBar:Landroid/widget/SeekBar;

    .line 4
    iput-object p2, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->scrollContent:Landroid/view/View;

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/ScrollBindHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/ScrollBindHelper;->hideScroll()V

    return-void
.end method

.method public static bind(Landroid/widget/SeekBar;Landroidx/core/widget/NestedScrollView;)Lcom/wsw/cospa/widget/ScrollBindHelper;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/widget/ViewUtil;->init(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/wsw/cospa/widget/ScrollBindHelper;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/widget/ScrollBindHelper;-><init>(Landroid/widget/SeekBar;Landroidx/core/widget/NestedScrollView;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 4
    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    return-object v0
.end method

.method private getContentRange()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->scrollContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method private getScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->scrollContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private hideScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->seekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    return-void
.end method

.method private showScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/ScrollBindHelper;->showScroll()V

    .line 2
    iget-boolean p1, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->isUserSeeking:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->handler:Lcom/wsw/cospa/widget/ScrollBindHelper$VisibleHandler;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ScrollBindHelper$VisibleHandler;->reset()V

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 p3, 0x0

    invoke-direct {p0}, Lcom/wsw/cospa/widget/ScrollBindHelper;->getScrollRange()I

    move-result v0

    mul-int p2, p2, v0

    div-int/lit8 p2, p2, 0x64

    invoke-virtual {p1, p3, p2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    return-void
.end method

.method public onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->isUserSeeking:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/widget/ScrollBindHelper;->getContentRange()I

    move-result p1

    invoke-static {}, Lcom/wsw/cospa/widget/ViewUtil;->getScreenHeightPx()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    if-ge p1, p2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/ScrollBindHelper;->getScrollRange()I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->seekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_2

    mul-int/lit8 p3, p3, 0x64

    div-int/2addr p3, p1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->isUserSeeking:Z

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->handler:Lcom/wsw/cospa/widget/ScrollBindHelper$VisibleHandler;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/LastMsgHandler;->clearAll()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->isUserSeeking:Z

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ScrollBindHelper;->handler:Lcom/wsw/cospa/widget/ScrollBindHelper$VisibleHandler;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ScrollBindHelper$VisibleHandler;->reset()V

    return-void
.end method
