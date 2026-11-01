.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "class"
.end annotation


# instance fields
.field public case:J

.field public do:I

.field public else:J

.field public for:I

.field public final synthetic goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field public if:I

.field public new:F

.field public try:F


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;F)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->if:I

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->for:I

    const v0, 0x3f7ae148    # 0.98f

    .line 4
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->try:F

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->case:J

    .line 6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->else:J

    .line 7
    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->new:F

    .line 8
    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->do:I

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Runnable;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v2, v1, Landroid/support/v4/qm1;->isFinishing:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-eqz v2, :cond_8

    iget-boolean v1, v1, Landroid/support/v4/qm1;->isOpening:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v2, Landroid/support/v4/qm1;->Loading:Landroid/support/v4/qm1;

    if-eq v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 3
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    neg-int v0, v0

    if-lt v1, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v2, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-ne v1, v2, :cond_8

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    if-le v1, v0, :cond_8

    :cond_4
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    .line 5
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->new:F

    move v4, v1

    :goto_0
    mul-int v5, v1, v4

    if-lez v5, :cond_8

    float-to-double v5, v2

    .line 6
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->try:F

    float-to-double v7, v2

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->for:I

    mul-int v2, v2, v0

    int-to-float v2, v2

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v2, v9

    float-to-double v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-float v2, v5

    .line 7
    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->for:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v5, v7

    mul-float v5, v5, v2

    .line 8
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v7, v6

    if-gez v6, :cond_7

    .line 9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v2, v1, Landroid/support/v4/qm1;->isOpening:Z

    if-eqz v2, :cond_6

    sget-object v2, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-ne v1, v2, :cond_5

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    if-gt v4, v5, :cond_6

    :cond_5
    if-eq v1, v2, :cond_8

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    neg-int v0, v0

    if-ge v4, v0, :cond_8

    :cond_6
    return-object v3

    :cond_7
    int-to-float v4, v4

    add-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_0

    .line 10
    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->case:J

    .line 11
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Landroid/os/Handler;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->for:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method

.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Ljava/lang/Runnable;

    if-ne v1, p0, :cond_2

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v0, v0, Landroid/support/v4/qm1;->isFinishing:Z

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->else:J

    sub-long v2, v0, v2

    .line 4
    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->new:F

    float-to-double v4, v4

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->try:F

    float-to-double v6, v6

    iget-wide v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->case:J

    sub-long v8, v0, v8

    long-to-float v8, v8

    iget v9, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->for:I

    int-to-float v9, v9

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float v9, v10, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->new:F

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    div-float/2addr v2, v10

    mul-float v4, v4, v2

    .line 5
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 6
    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->else:J

    .line 7
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->do:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->do:I

    .line 8
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    mul-int v2, v2, v0

    const/4 v3, 0x1

    if-lez v2, :cond_0

    .line 9
    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v1, v0, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 10
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Landroid/os/Handler;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->for:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 11
    :cond_0
    iput-object v5, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Ljava/lang/Runnable;

    .line 12
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 13
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getScrollableView()Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->new:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-static {v0, v2}, Landroid/support/v4/i02;->try(Landroid/view/View;I)V

    .line 14
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-lez v2, :cond_2

    .line 15
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->goto:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Ljava/lang/Runnable;

    :cond_2
    :goto_0
    return-void
.end method
