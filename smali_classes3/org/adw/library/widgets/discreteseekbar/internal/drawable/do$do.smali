.class Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;


# direct methods
.method public constructor <init>(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;

    invoke-static {v2}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->try(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 3
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;

    invoke-static {v4}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->case(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 4
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;

    invoke-static {v4}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->else(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;)Landroid/view/animation/Interpolator;

    move-result-object v4

    long-to-float v2, v2

    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;

    invoke-static {v3}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->case(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 5
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;

    invoke-static {v3}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->goto(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x10

    add-long/2addr v0, v5

    invoke-virtual {v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 6
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;

    invoke-static {v0, v2}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->this(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;F)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->goto(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->break(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;Z)Z

    .line 9
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->this(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;F)V

    :goto_0
    return-void
.end method
