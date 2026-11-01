.class Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Particle"
.end annotation


# instance fields
.field public alpha:F

.field public baseCx:F

.field public baseCy:F

.field public baseRadius:F

.field public bottom:F

.field public color:I

.field public cx:F

.field public cy:F

.field public life:F

.field public mag:F

.field public neg:F

.field public overflow:F

.field public radius:F

.field public final synthetic this$0:Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;

.field public top:F


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->this$0:Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;-><init>(Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;)V

    return-void
.end method


# virtual methods
.method public advance(F)V
    .locals 9

    const v0, 0x3fb33333    # 1.4f

    div-float/2addr p1, v0

    .line 1
    iget v1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->life:F

    const/4 v2, 0x0

    cmpg-float v3, p1, v1

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->overflow:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v3

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v1

    sub-float v1, v4, v1

    sub-float/2addr v1, v3

    div-float/2addr p1, v1

    mul-float v0, v0, p1

    const v1, 0x3f333333    # 0.7f

    cmpl-float v3, p1, v1

    if-ltz v3, :cond_1

    sub-float/2addr p1, v1

    const v1, 0x3e99999a    # 0.3f

    div-float v2, p1, v1

    :cond_1
    sub-float/2addr v4, v2

    .line 2
    iput v4, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->alpha:F

    .line 3
    iget p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->bottom:F

    mul-float p1, p1, v0

    .line 4
    iget v1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->baseCx:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->cx:F

    .line 5
    iget v1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->baseCy:F

    float-to-double v1, v1

    iget v3, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->neg:F

    float-to-double v3, v3

    float-to-double v5, p1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iget v2, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->mag:F

    mul-float p1, p1, v2

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->cy:F

    .line 6
    invoke-static {}, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->access$100()F

    move-result p1

    iget v1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->baseRadius:F

    invoke-static {}, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator;->access$100()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    add-float/2addr p1, v1

    iput p1, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->radius:F

    return-void

    .line 7
    :cond_2
    :goto_0
    iput v2, p0, Lcom/wsw/cospa/widget/explosionfield/ExplosionAnimator$Particle;->alpha:F

    return-void
.end method
