.class Lcom/wsw/cospa/activity/LocalPreviewActivity$this;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/LocalPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "this"
.end annotation


# instance fields
.field public do:I

.field public for:I

.field public if:I

.field public final synthetic new:Lcom/wsw/cospa/activity/LocalPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;Lcom/wsw/cospa/activity/LocalPreviewActivity$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "read_mode_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 2
    iget v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->do:I

    iget v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->if:I

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->do:I

    iget v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->for:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->do:I

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object v1, v1, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    iget v2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->for:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->k(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->j(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/activity/LocalPreviewActivity$this;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->k(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->j(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/activity/LocalPreviewActivity$this;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 8
    :cond_1
    :goto_0
    iput v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->for:I

    iput v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->if:I

    iput v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->do:I

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->k(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->j(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/activity/LocalPreviewActivity$this;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->m(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->B()V

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->bsb_auto:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {v0}, Lcom/xw/repo/BubbleSeekBar;->getMax()F

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object v1, v1, Lcom/wsw/cospa/activity/LocalPreviewActivity;->bsb_auto:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {v1}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v1

    .line 14
    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->k(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v3}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->j(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/activity/LocalPreviewActivity$this;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->k(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->new:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v3}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->j(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/activity/LocalPreviewActivity$this;

    move-result-object v3

    sub-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method
