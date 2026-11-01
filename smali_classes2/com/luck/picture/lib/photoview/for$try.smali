.class Lcom/luck/picture/lib/photoview/for$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/photoview/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "try"
.end annotation


# instance fields
.field public final synthetic case:Lcom/luck/picture/lib/photoview/for;

.field private final do:F

.field private final for:J

.field private final if:F

.field private final new:F

.field private final try:F


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/photoview/for;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/for$try;->case:Lcom/luck/picture/lib/photoview/for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p4, p0, Lcom/luck/picture/lib/photoview/for$try;->do:F

    .line 3
    iput p5, p0, Lcom/luck/picture/lib/photoview/for$try;->if:F

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/luck/picture/lib/photoview/for$try;->for:J

    .line 5
    iput p2, p0, Lcom/luck/picture/lib/photoview/for$try;->new:F

    .line 6
    iput p3, p0, Lcom/luck/picture/lib/photoview/for$try;->try:F

    return-void
.end method

.method private do()F
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/luck/picture/lib/photoview/for$try;->for:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/luck/picture/lib/photoview/for$try;->case:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v2}, Lcom/luck/picture/lib/photoview/for;->while(Lcom/luck/picture/lib/photoview/for;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/luck/picture/lib/photoview/for$try;->case:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v1}, Lcom/luck/picture/lib/photoview/for;->import(Lcom/luck/picture/lib/photoview/for;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/for$try;->do()F

    move-result v0

    .line 2
    iget v1, p0, Lcom/luck/picture/lib/photoview/for$try;->new:F

    iget v2, p0, Lcom/luck/picture/lib/photoview/for$try;->try:F

    sub-float/2addr v2, v1

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 3
    iget-object v2, p0, Lcom/luck/picture/lib/photoview/for$try;->case:Lcom/luck/picture/lib/photoview/for;

    invoke-virtual {v2}, Lcom/luck/picture/lib/photoview/for;->a()F

    move-result v2

    div-float/2addr v1, v2

    .line 4
    iget-object v2, p0, Lcom/luck/picture/lib/photoview/for$try;->case:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v2}, Lcom/luck/picture/lib/photoview/for;->throw(Lcom/luck/picture/lib/photoview/for;)Lcom/luck/picture/lib/photoview/OnGestureListener;

    move-result-object v2

    iget v3, p0, Lcom/luck/picture/lib/photoview/for$try;->do:F

    iget v4, p0, Lcom/luck/picture/lib/photoview/for$try;->if:F

    invoke-interface {v2, v1, v3, v4}, Lcom/luck/picture/lib/photoview/OnGestureListener;->onScale(FFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/for$try;->case:Lcom/luck/picture/lib/photoview/for;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/for;->public(Lcom/luck/picture/lib/photoview/for;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/luck/picture/lib/photoview/do;->do(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
