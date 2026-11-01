.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public do:I

.field public final synthetic for:Ljava/lang/Boolean;

.field public final synthetic if:I

.field public final synthetic new:Z

.field public final synthetic try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;ILjava/lang/Boolean;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->if:I

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->for:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->new:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->do:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->do:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 2
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v5, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    if-ne v4, v5, :cond_0

    iget-object v6, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Landroid/support/v4/qm1;

    sget-object v7, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-ne v6, v7, :cond_0

    .line 3
    iput-object v5, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Landroid/support/v4/qm1;

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v6, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_2

    iget-boolean v7, v4, Landroid/support/v4/qm1;->isHeader:Z

    if-eqz v7, :cond_2

    iget-boolean v7, v4, Landroid/support/v4/qm1;->isDragging:Z

    if-nez v7, :cond_1

    sget-object v7, Landroid/support/v4/qm1;->RefreshReleased:Landroid/support/v4/qm1;

    if-ne v4, v7, :cond_2

    .line 5
    :cond_1
    iput-object v1, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v5}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_0

    .line 8
    :cond_2
    sget-object v1, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-ne v4, v1, :cond_c

    iget-object v1, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_c

    iget-object v1, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->do:I

    .line 10
    iget-object v0, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Landroid/os/Handler;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->if:I

    int-to-long v3, v3

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v3, Landroid/support/v4/qm1;->RefreshFinish:Landroid/support/v4/qm1;

    invoke-virtual {v0, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    .line 12
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->for:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 13
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v3, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto/16 :goto_0

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->new:Z

    invoke-interface {v3, v0, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    move-result v0

    .line 15
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v4, :cond_5

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v5, v3, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v5, :cond_5

    .line 16
    check-cast v3, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->new:Z

    invoke-interface {v4, v3, v5}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onHeaderFinish(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;Z)V

    :cond_5
    const v3, 0x7fffffff

    if-ge v0, v3, :cond_c

    .line 17
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final:Z

    if-nez v4, :cond_6

    iget-boolean v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:Z

    if-eqz v3, :cond_8

    .line 18
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 19
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final:Z

    if-eqz v4, :cond_7

    .line 20
    iget v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch:F

    iput v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this:F

    .line 21
    iput v2, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->new:I

    .line 22
    iput-boolean v2, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final:Z

    const/4 v8, 0x0

    .line 23
    iget v9, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break:F

    iget v5, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->do:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v10, v4, v5

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->do(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 24
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v8, 0x2

    iget v9, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break:F

    iget v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch:F

    iget v5, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    int-to-float v5, v5

    add-float v10, v4, v5

    move-wide v4, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 25
    :cond_7
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:Z

    if-eqz v4, :cond_8

    .line 26
    iput v2, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    const/4 v8, 0x1

    .line 27
    iget v9, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break:F

    iget v10, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch:F

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->for(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 28
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v2, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:Z

    .line 29
    iput v2, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->new:I

    .line 30
    :cond_8
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-lez v4, :cond_a

    .line 31
    iget-object v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->default:Landroid/view/animation/Interpolator;

    iget v5, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->case:I

    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->else(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 32
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:Z

    if-eqz v3, :cond_9

    .line 33
    iget-object v1, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->scrollContentWhenFinished(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    :cond_9
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 34
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_a
    if-gez v4, :cond_b

    .line 35
    iget-object v1, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->default:Landroid/view/animation/Interpolator;

    iget v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->case:I

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->else(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 36
    :cond_b
    iget-object v0, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 37
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_c
    :goto_0
    return-void
.end method
