.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshKernel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "final"
.end annotation


# instance fields
.field public final synthetic do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animSpinner(I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->default:Landroid/view/animation/Interpolator;

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->case:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->else(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public finishTwoLevel()Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v2, Landroid/support/v4/qm1;->TwoLevel:Landroid/support/v4/qm1;

    if-ne v1, v2, :cond_1

    .line 2
    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Landroid/support/v4/qm1;->TwoLevelFinish:Landroid/support/v4/qm1;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->try:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getRefreshContent()Lcom/scwang/smartrefresh/layout/api/RefreshContent;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    return-object v0
.end method

.method public getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object v0
.end method

.method public moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-ne v3, v1, :cond_2

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v0

    .line 4
    :cond_2
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    iget v10, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    .line 6
    iput v1, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-eqz p2, :cond_7

    .line 7
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Landroid/support/v4/qm1;

    iget-boolean v3, v2, Landroid/support/v4/qm1;->isDragging:Z

    if-nez v3, :cond_3

    iget-boolean v2, v2, Landroid/support/v4/qm1;->isOpening:Z

    if-eqz v2, :cond_7

    :cond_3
    int-to-float v2, v1

    .line 8
    iget v3, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    int-to-float v3, v3

    iget v4, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:F

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 9
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v3, Landroid/support/v4/qm1;->ReleaseToTwoLevel:Landroid/support/v4/qm1;

    if-eq v2, v3, :cond_7

    .line 10
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Landroid/support/v4/qm1;->ReleaseToRefresh:Landroid/support/v4/qm1;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    :cond_4
    neg-int v2, v1

    int-to-float v2, v2

    .line 11
    iget v3, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    int-to-float v3, v3

    iget v4, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:F

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget-boolean v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-nez v2, :cond_5

    .line 12
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Landroid/support/v4/qm1;->ReleaseToLoad:Landroid/support/v4/qm1;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    :cond_5
    if-gez v1, :cond_6

    .line 13
    iget-boolean v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-nez v2, :cond_6

    .line 14
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Landroid/support/v4/qm1;->PullUpToLoad:Landroid/support/v4/qm1;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    :cond_6
    if-lez v1, :cond_7

    .line 15
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Landroid/support/v4/qm1;->PullDownToRefresh:Landroid/support/v4/qm1;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 16
    :cond_7
    :goto_0
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_15

    if-ltz v1, :cond_9

    .line 17
    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v3, :cond_9

    .line 18
    iget-boolean v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->continue:Z

    invoke-virtual {v2, v4, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    if-gez v10, :cond_9

    const/4 v2, 0x0

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-gtz v1, :cond_b

    .line 19
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v5, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v5, :cond_b

    .line 20
    iget-boolean v6, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->strictfp:Z

    invoke-virtual {v4, v6, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v2, v1

    :goto_3
    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    if-lez v10, :cond_b

    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    :goto_4
    if-eqz v3, :cond_15

    .line 21
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget v5, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->import:I

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->native:I

    invoke-interface {v4, v2, v5, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->moveSpinner(III)V

    .line 22
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-eqz v4, :cond_c

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:Z

    if-eqz v4, :cond_c

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    if-eqz v4, :cond_c

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v4, v3, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v4, :cond_c

    .line 23
    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v3

    sget-object v4, Landroid/support/v4/y02;->new:Landroid/support/v4/y02;

    if-ne v3, v4, :cond_c

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 24
    invoke-virtual {v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 25
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 26
    :cond_c
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->private:Z

    if-eqz v4, :cond_d

    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v3, :cond_d

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v3

    sget-object v4, Landroid/support/v4/y02;->case:Landroid/support/v4/y02;

    if-ne v3, v4, :cond_d

    const/4 v3, 0x1

    goto :goto_5

    :cond_d
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_f

    .line 27
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:I

    if-eqz v3, :cond_e

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v3, 0x1

    .line 28
    :goto_7
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v5, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->abstract:Z

    if-eqz v5, :cond_10

    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v4, :cond_10

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v4

    sget-object v5, Landroid/support/v4/y02;->case:Landroid/support/v4/y02;

    if-ne v4, v5, :cond_10

    const/4 v4, 0x1

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    :goto_8
    if-nez v4, :cond_12

    .line 29
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:I

    if-eqz v4, :cond_11

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v4, 0x1

    :goto_a
    if-eqz v3, :cond_13

    if-gez v2, :cond_14

    if-gtz v10, :cond_14

    :cond_13
    if-eqz v4, :cond_15

    if-lez v2, :cond_14

    if-gez v10, :cond_15

    .line 30
    :cond_14
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    :cond_15
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x40000000    # 2.0f

    if-gez v1, :cond_16

    if-lez v10, :cond_20

    .line 31
    :cond_16
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_20

    .line 32
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 33
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v15, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    int-to-float v3, v15

    .line 34
    iget v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:F

    mul-float v3, v3, v4

    float-to-int v7, v3

    int-to-float v3, v8

    mul-float v3, v3, v13

    if-nez v15, :cond_17

    const/4 v4, 0x1

    goto :goto_b

    :cond_17
    move v4, v15

    :goto_b
    int-to-float v4, v4

    div-float v16, v3, v4

    .line 35
    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v3, Landroid/support/v4/qm1;->RefreshFinish:Landroid/support/v4/qm1;

    if-ne v2, v3, :cond_18

    if-nez p2, :cond_18

    goto :goto_c

    :cond_18
    move/from16 v17, v7

    goto/16 :goto_11

    .line 36
    :cond_19
    :goto_c
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-eq v10, v3, :cond_1d

    .line 37
    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v2

    sget-object v3, Landroid/support/v4/y02;->new:Landroid/support/v4/y02;

    if-ne v2, v3, :cond_1a

    .line 38
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 39
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:I

    if-eqz v3, :cond_1c

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Landroid/graphics/Paint;

    if-eqz v3, :cond_1c

    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->continue:Z

    iget-object v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v2, v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 40
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_e

    .line 41
    :cond_1a
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v2

    iget-boolean v2, v2, Landroid/support/v4/y02;->for:Z

    if-eqz v2, :cond_1c

    .line 42
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 44
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1b

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_d

    :cond_1b
    sget-object v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 45
    :goto_d
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 46
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 47
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 48
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:I

    add-int/2addr v3, v5

    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 50
    :cond_1c
    :goto_e
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    move/from16 v3, p2

    move/from16 v4, v16

    move v5, v8

    move v6, v15

    move/from16 v17, v7

    invoke-interface/range {v2 .. v7}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onMoving(ZFIII)V

    goto :goto_f

    :cond_1d
    move/from16 v17, v7

    :goto_f
    if-eqz p2, :cond_1f

    .line 51
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 52
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break:F

    float-to-int v2, v2

    .line 53
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 54
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break:F

    if-nez v3, :cond_1e

    const/4 v6, 0x1

    goto :goto_10

    :cond_1e
    move v6, v3

    :goto_10
    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 55
    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v4, v5, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    .line 56
    :cond_1f
    :goto_11
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-eq v10, v3, :cond_20

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v3, :cond_20

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v4, v2, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v4, :cond_20

    .line 57
    move-object v4, v2

    check-cast v4, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p2

    move/from16 v5, v16

    move v6, v8

    move v7, v15

    move/from16 v8, v17

    invoke-interface/range {v2 .. v8}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onHeaderMoving(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;ZFIII)V

    :cond_20
    if-lez v1, :cond_21

    if-gez v10, :cond_2a

    .line 58
    :cond_21
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_2a

    .line 59
    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    neg-int v7, v1

    .line 60
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v8, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    int-to-float v2, v8

    .line 61
    iget v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    mul-float v2, v2, v3

    float-to-int v15, v2

    int-to-float v2, v7

    mul-float v2, v2, v13

    if-nez v8, :cond_22

    const/4 v3, 0x1

    goto :goto_12

    :cond_22
    move v3, v8

    :goto_12
    int-to-float v3, v3

    div-float v13, v2, v3

    .line 62
    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v2, Landroid/support/v4/qm1;->LoadFinish:Landroid/support/v4/qm1;

    if-ne v1, v2, :cond_29

    if-nez p2, :cond_29

    .line 63
    :cond_23
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-eq v10, v2, :cond_27

    .line 64
    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v1

    sget-object v2, Landroid/support/v4/y02;->new:Landroid/support/v4/y02;

    if-ne v1, v2, :cond_24

    .line 65
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 66
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:I

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Landroid/graphics/Paint;

    if-eqz v2, :cond_26

    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->strictfp:Z

    iget-object v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v1, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 67
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_14

    .line 68
    :cond_24
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v1

    iget-boolean v1, v1, Landroid/support/v4/y02;->for:Z

    if-eqz v1, :cond_26

    .line 69
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 71
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_25

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_13

    :cond_25
    sget-object v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 72
    :goto_13
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 73
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    neg-int v4, v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 74
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 75
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:I

    sub-int/2addr v2, v4

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 77
    :cond_26
    :goto_14
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    move/from16 v2, p2

    move v3, v13

    move v4, v7

    move v5, v8

    move v6, v15

    invoke-interface/range {v1 .. v6}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onMoving(ZFIII)V

    :cond_27
    if-eqz p2, :cond_29

    .line 78
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 79
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break:F

    float-to-int v1, v1

    .line 80
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 81
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break:F

    if-nez v2, :cond_28

    goto :goto_15

    :cond_28
    move v11, v2

    :goto_15
    int-to-float v5, v11

    div-float/2addr v4, v5

    .line 82
    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3, v4, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    .line 83
    :cond_29
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-eq v10, v2, :cond_2a

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v2, :cond_2a

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v3, v1, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v3, :cond_2a

    .line 84
    move-object v3, v1

    check-cast v3, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    move-object v1, v2

    move-object v2, v3

    move/from16 v3, p2

    move v4, v13

    move v5, v7

    move v6, v8

    move v7, v15

    invoke-interface/range {v1 .. v7}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onFooterMoving(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;ZFIII)V

    :cond_2a
    return-object v0
.end method

.method public requestDefaultTranslationContentFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:Z

    if-nez v0, :cond_1

    .line 3
    iput-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:Z

    .line 4
    iput-boolean p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->continue:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:Z

    if-nez v0, :cond_1

    .line 7
    iput-boolean v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:Z

    .line 8
    iput-boolean p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->strictfp:Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Landroid/graphics/Paint;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public requestFloorDuration(I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->try:I

    return-object p0
.end method

.method public requestNeedTouchEventFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 1
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public requestRemeasureHeightFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    iget-boolean v1, v0, Landroid/support/v4/e10;->if:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/e10;->for()Landroid/support/v4/e10;

    move-result-object v0

    iput-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    iget-boolean v1, v0, Landroid/support/v4/e10;->if:Z

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/e10;->for()Landroid/support/v4/e10;

    move-result-object v0

    iput-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 2
    .param p1    # Landroid/support/v4/qm1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$do;->do:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->TwoLevel:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->TwoLevelFinish:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->TwoLevelReleased:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->Loading:Landroid/support/v4/qm1;

    if-ne v0, v1, :cond_d

    .line 6
    sget-object v0, Landroid/support/v4/qm1;->LoadFinish:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 7
    :pswitch_4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-ne v0, v1, :cond_d

    .line 8
    sget-object v0, Landroid/support/v4/qm1;->RefreshFinish:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 9
    :pswitch_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateLoading(Z)V

    goto/16 :goto_0

    .line 10
    :pswitch_6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V

    goto/16 :goto_0

    .line 11
    :pswitch_7
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v0, v0, Landroid/support/v4/qm1;->isOpening:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->LoadReleased:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->LoadReleased:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 14
    :pswitch_8
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v0, v0, Landroid/support/v4/qm1;->isOpening:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->RefreshReleased:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->RefreshReleased:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 17
    :pswitch_9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v0, v0, Landroid/support/v4/qm1;->isOpening:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->ReleaseToTwoLevel:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->ReleaseToTwoLevel:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 20
    :pswitch_a
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v1, v0, Landroid/support/v4/qm1;->isOpening:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Landroid/support/v4/qm1;->isFinishing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:Z

    if-nez v0, :cond_4

    .line 21
    :cond_3
    sget-object v0, Landroid/support/v4/qm1;->ReleaseToLoad:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->ReleaseToLoad:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 23
    :pswitch_b
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v0, v0, Landroid/support/v4/qm1;->isOpening:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->ReleaseToRefresh:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 25
    :cond_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->ReleaseToRefresh:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 26
    :pswitch_c
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v0, v0, Landroid/support/v4/qm1;->isOpening:Z

    if-nez v0, :cond_7

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:Z

    if-nez v0, :cond_7

    .line 27
    :cond_6
    sget-object v0, Landroid/support/v4/qm1;->PullUpCanceled:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    .line 28
    sget-object p1, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_0

    .line 29
    :cond_7
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->PullUpCanceled:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 30
    :pswitch_d
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v0, v0, Landroid/support/v4/qm1;->isOpening:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 31
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->PullDownCanceled:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    .line 32
    sget-object p1, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_0

    .line 33
    :cond_8
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->PullDownCanceled:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Landroid/support/v4/qm1;)V

    goto/16 :goto_0

    .line 34
    :pswitch_e
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v1, v0, Landroid/support/v4/qm1;->isOpening:Z

    if-nez v1, :cond_a

    iget-boolean v0, v0, Landroid/support/v4/qm1;->isFinishing:Z

    if-nez v0, :cond_a

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:Z

    if-nez v0, :cond_a

    .line 35
    :cond_9
    sget-object v0, Landroid/support/v4/qm1;->PullUpToLoad:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto :goto_0

    .line 36
    :cond_a
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->PullUpToLoad:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Landroid/support/v4/qm1;)V

    goto :goto_0

    .line 37
    :pswitch_f
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v0, v0, Landroid/support/v4/qm1;->isOpening:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 38
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->PullDownToRefresh:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto :goto_0

    .line 39
    :cond_b
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->PullDownToRefresh:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Landroid/support/v4/qm1;)V

    goto :goto_0

    .line 40
    :pswitch_10
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    if-eq v0, v1, :cond_c

    iget v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-nez v0, :cond_c

    .line 41
    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto :goto_0

    .line 42
    :cond_c
    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_d
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startTwoLevel(Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    new-instance p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final$do;

    invoke-direct {p1, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final$do;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;)V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    if-ne v0, v2, :cond_0

    .line 5
    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->try:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    :cond_2
    :goto_0
    return-object p0
.end method
