.class Lcom/scwang/smartrefresh/header/DropBoxHeader$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/DropBoxHeader;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/scwang/smartrefresh/header/DropBoxHeader;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/header/DropBoxHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$for;->do:Lcom/scwang/smartrefresh/header/DropBoxHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$for;->do:Lcom/scwang/smartrefresh/header/DropBoxHeader;

    iget v1, v0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->super:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-ltz v3, :cond_2

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v4, v1, v3

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v5, v1, v4

    if-gez v5, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p1, v2

    iput p1, v0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->super:F

    goto :goto_1

    :cond_1
    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p1, v4

    iput p1, v0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->super:F

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$for;->do:Lcom/scwang/smartrefresh/header/DropBoxHeader;

    iget v0, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->super:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->catch:Z

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->super:F

    .line 7
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$for;->do:Lcom/scwang/smartrefresh/header/DropBoxHeader;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
