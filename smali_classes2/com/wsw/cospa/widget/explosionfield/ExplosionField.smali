.class public Lcom/wsw/cospa/widget/explosionfield/ExplosionField;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mExpandInset:[I

.field private mExplosions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->mExpandInset:[I

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 7
    iput-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->mExpandInset:[I

    .line 8
    invoke-direct {p0}, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 11
    iput-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->mExpandInset:[I

    .line 12
    invoke-direct {p0}, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/explosionfield/ExplosionField;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    return-object p0
.end method

.method public static attach2Window(Landroid/app/Activity;)Lcom/wsw/cospa/widget/explosionfield/ExplosionField;
    .locals 3

    const v0, 0x1020002

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    new-instance v1, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->mExpandInset:[I

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/wsw/cospa/widget/explosionfield/Utils;->dp2Px(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public expandExplosionBound(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->mExpandInset:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-void
.end method

.method public explode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;JJ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;

    invoke-direct {v0, p0, p1, p2}, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 2
    new-instance p1, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$1;

    invoke-direct {p1, p0}, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$1;-><init>(Lcom/wsw/cospa/widget/explosionfield/ExplosionField;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 4
    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->start()V

    return-void
.end method

.method public explode(Landroid/view/View;)V
    .locals 7

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 10
    aget v4, v1, v3

    neg-int v4, v4

    const/4 v5, 0x1

    aget v1, v1, v5

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->mExpandInset:[I

    aget v3, v1, v3

    neg-int v3, v3

    aget v1, v1, v5

    neg-int v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->inset(II)V

    new-array v0, v0, [F

    .line 12
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$2;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/widget/explosionfield/ExplosionField$2;-><init>(Lcom/wsw/cospa/widget/explosionfield/ExplosionField;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v1, 0x64

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 16
    invoke-static {p1}, Lcom/wsw/cospa/widget/explosionfield/Utils;->createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-wide v5, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->DEFAULT_DURATION:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->explode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;JJ)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->mExplosions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;

    .line 3
    invoke-virtual {v1, p1}, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
