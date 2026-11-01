.class public Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;
    }
.end annotation


# static fields
.field public static DEFAULT_DURATION:J = 0x400L

.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final END_VALUE:F = 1.4f

.field private static final V:F

.field private static final W:F

.field private static final X:F

.field private static final Y:F


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field private mContainer:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mParticles:[Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Lcom/wsw/cospa/widget/explosionfield/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->X:F

    const/16 v0, 0x14

    .line 3
    invoke-static {v0}, Lcom/wsw/cospa/widget/explosionfield/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->Y:F

    const/4 v0, 0x2

    .line 4
    invoke-static {v0}, Lcom/wsw/cospa/widget/explosionfield/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->V:F

    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lcom/wsw/cospa/widget/explosionfield/Utils;->dp2Px(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->W:F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    const/16 p3, 0xe1

    new-array p3, p3, [Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;

    .line 4
    iput-object p3, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mParticles:[Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;

    .line 5
    new-instance p3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x11

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xf

    if-ge v3, v4, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    .line 8
    iget-object v6, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mParticles:[Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;

    mul-int/lit8 v7, v3, 0xf

    add-int/2addr v7, v5

    add-int/lit8 v5, v5, 0x1

    mul-int v8, v5, v0

    add-int/lit8 v9, v3, 0x1

    mul-int v9, v9, v1

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-direct {p0, v8, p3}, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->generateParticle(ILjava/util/Random;)Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;

    move-result-object v8

    aput-object v8, v6, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iput-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mContainer:Landroid/view/View;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 10
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 11
    sget-object p1, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    sget-wide p1, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->DEFAULT_DURATION:J

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3fb33333    # 1.4f
    .end array-data
.end method

.method public static synthetic access$100()F
    .locals 1

    .line 1
    sget v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->V:F

    return v0
.end method

.method private generateParticle(ILjava/util/Random;)Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;
    .locals 5

    .line 1
    new-instance v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;-><init>(Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$1;)V

    .line 2
    iput p1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->color:I

    .line 3
    sget p1, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->V:F

    iput p1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->radius:F

    .line 4
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 5
    sget v1, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->X:F

    sub-float/2addr v1, p1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float v1, v1, v3

    add-float/2addr p1, v1

    iput p1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->baseRadius:F

    goto :goto_0

    .line 6
    :cond_0
    sget v1, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->W:F

    sub-float/2addr p1, v1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float p1, p1, v3

    add-float/2addr v1, p1

    iput v1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->baseRadius:F

    .line 7
    :goto_0
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p1

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3e3851ec    # 0.18f

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float v4, v4, v3

    add-float/2addr v4, v2

    mul-float v1, v1, v4

    iput v1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->top:F

    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    mul-float v3, v1, v2

    .line 9
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    :goto_1
    iput v1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->top:F

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    mul-float v1, v1, v3

    const v3, 0x3fe66666    # 1.8f

    mul-float v1, v1, v3

    iput v1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->bottom:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    goto :goto_3

    :cond_2
    const v2, 0x3f4ccccd    # 0.8f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_3

    const p1, 0x3f19999a    # 0.6f

    goto :goto_2

    :cond_3
    const p1, 0x3e99999a    # 0.3f

    :goto_2
    mul-float v1, v1, p1

    .line 11
    :goto_3
    iput v1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->bottom:F

    const/high16 p1, 0x40800000    # 4.0f

    .line 12
    iget v2, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->top:F

    mul-float v2, v2, p1

    div-float/2addr v2, v1

    iput v2, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->mag:F

    neg-float p1, v2

    div-float/2addr p1, v1

    .line 13
    iput p1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->neg:F

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    sget v1, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->Y:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v4

    mul-float v2, v2, v1

    add-float/2addr p1, v2

    .line 15
    iput p1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->baseCx:F

    .line 16
    iput p1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->cx:F

    .line 17
    iget-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v4

    mul-float v1, v1, v2

    add-float/2addr p1, v1

    .line 18
    iput p1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->baseCy:F

    .line 19
    iput p1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->cy:F

    const p1, 0x3e0f5c29    # 0.14f

    .line 20
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float v1, v1, p1

    iput v1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->life:F

    const p1, 0x3ecccccd    # 0.4f

    .line 21
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    mul-float p2, p2, p1

    iput p2, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->overflow:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    iput p1, v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->alpha:F

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mParticles:[Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->advance(F)V

    .line 4
    iget v4, v3, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->alpha:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 5
    iget-object v4, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    iget v5, v3, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v4, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    iget v5, v3, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->color:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->alpha:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    iget v4, v3, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->cx:F

    iget v5, v3, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->cy:F

    iget v3, v3, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->radius:F

    iget-object v6, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
