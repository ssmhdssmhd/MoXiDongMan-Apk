.class public Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;
.super Landroid/support/v4/o12;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final this:I = 0xc


# instance fields
.field private case:Z

.field private else:Z

.field private goto:Ljava/lang/Runnable;

.field private final try:I


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;I)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/o12;-><init>(Landroid/content/res/ColorStateList;)V

    .line 2
    new-instance p1, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if$do;

    invoke-direct {p1, p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if$do;-><init>(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;)V

    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->goto:Ljava/lang/Runnable;

    .line 3
    iput p2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->try:I

    return-void
.end method

.method public static synthetic case(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->else:Z

    return p1
.end method

.method public static synthetic try(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->case:Z

    return p1
.end method


# virtual methods
.method public do(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->case:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->try:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public else()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->case:Z

    .line 2
    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->else:Z

    .line 3
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->goto:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->try:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->try:I

    return v0
.end method

.method public goto()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->goto:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->else:Z

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->else:Z

    return v0
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->else()V

    return-void
.end method
