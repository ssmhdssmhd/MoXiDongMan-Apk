.class Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$do;
.super Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private final do:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;

.field private final if:F


# direct methods
.method public constructor <init>(FFLorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;-><init>()V

    .line 2
    iput-object p3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;

    .line 3
    iput p2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$do;->if:F

    return-void
.end method


# virtual methods
.method public do()V
    .locals 0

    return-void
.end method

.method public for()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public new(I)V
    .locals 0

    return-void
.end method

.method public try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$do;->do:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$do;->if:F

    invoke-interface {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;->onAnimationFrame(F)V

    return-void
.end method
