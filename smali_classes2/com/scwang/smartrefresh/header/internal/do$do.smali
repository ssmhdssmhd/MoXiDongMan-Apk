.class Lcom/scwang/smartrefresh/header/internal/do$do;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/header/internal/do;->catch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/scwang/smartrefresh/header/internal/do$new;

.field public final synthetic if:Lcom/scwang/smartrefresh/header/internal/do;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/header/internal/do;Lcom/scwang/smartrefresh/header/internal/do$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/internal/do$do;->if:Lcom/scwang/smartrefresh/header/internal/do;

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/internal/do$do;->do:Lcom/scwang/smartrefresh/header/internal/do$new;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9

    .line 1
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/internal/do$do;->if:Lcom/scwang/smartrefresh/header/internal/do;

    iget-boolean v0, p2, Lcom/scwang/smartrefresh/header/internal/do;->this:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do$do;->do:Lcom/scwang/smartrefresh/header/internal/do$new;

    invoke-virtual {p2, p1, v0}, Lcom/scwang/smartrefresh/header/internal/do;->do(FLcom/scwang/smartrefresh/header/internal/do$new;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do$do;->do:Lcom/scwang/smartrefresh/header/internal/do$new;

    invoke-virtual {p2, v0}, Lcom/scwang/smartrefresh/header/internal/do;->for(Lcom/scwang/smartrefresh/header/internal/do$new;)F

    move-result p2

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do$do;->do:Lcom/scwang/smartrefresh/header/internal/do$new;

    iget v1, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->class:F

    .line 5
    iget v2, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->catch:F

    .line 6
    iget v3, v0, Lcom/scwang/smartrefresh/header/internal/do$new;->const:F

    .line 7
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/internal/do$do;->if:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {v4, p1, v0}, Lcom/scwang/smartrefresh/header/internal/do;->const(FLcom/scwang/smartrefresh/header/internal/do$new;)V

    const v0, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_1

    div-float v5, p1, v4

    .line 8
    iget-object v6, p0, Lcom/scwang/smartrefresh/header/internal/do$do;->do:Lcom/scwang/smartrefresh/header/internal/do$new;

    sub-float v7, v0, p2

    sget-object v8, Lcom/scwang/smartrefresh/header/internal/do;->catch:Landroid/view/animation/Interpolator;

    .line 9
    invoke-interface {v8, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v7, v7, v5

    add-float/2addr v2, v7

    iput v2, v6, Lcom/scwang/smartrefresh/header/internal/do$new;->new:F

    :cond_1
    cmpl-float v2, p1, v4

    if-lez v2, :cond_2

    sub-float/2addr v0, p2

    sub-float p2, p1, v4

    div-float/2addr p2, v4

    .line 10
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/internal/do$do;->do:Lcom/scwang/smartrefresh/header/internal/do$new;

    sget-object v4, Lcom/scwang/smartrefresh/header/internal/do;->catch:Landroid/view/animation/Interpolator;

    .line 11
    invoke-interface {v4, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float v0, v0, p2

    add-float/2addr v1, v0

    iput v1, v2, Lcom/scwang/smartrefresh/header/internal/do$new;->try:F

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/internal/do$do;->if:Lcom/scwang/smartrefresh/header/internal/do;

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float v0, v0, p1

    add-float/2addr v3, v0

    invoke-virtual {p2, v3}, Lcom/scwang/smartrefresh/header/internal/do;->else(F)V

    const/high16 p2, 0x43580000    # 216.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x44870000    # 1080.0f

    .line 13
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/do$do;->if:Lcom/scwang/smartrefresh/header/internal/do;

    iget v1, v0, Lcom/scwang/smartrefresh/header/internal/do;->case:F

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    mul-float v1, v1, p2

    add-float/2addr p1, v1

    .line 14
    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/header/internal/do;->goto(F)V

    :goto_0
    return-void
.end method
