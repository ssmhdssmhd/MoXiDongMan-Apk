.class public Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public do:B

.field public final synthetic if:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$if;->if:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-byte p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$if;->do:B

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-byte v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$if;->do:B

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$if;->if:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->switch:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v1, v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$if;->if:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->goto:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/2addr p1, v2

    iput p1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->const:I

    goto :goto_0

    :cond_2
    if-ne v2, v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$if;->if:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->throw:F

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v1, v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$if;->if:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->native:F

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne v1, v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$if;->if:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->public:I

    .line 9
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$if;->if:Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
