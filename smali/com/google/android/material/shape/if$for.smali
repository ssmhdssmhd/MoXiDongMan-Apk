.class Lcom/google/android/material/shape/if$for;
.super Lcom/google/android/material/shape/if$this;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field private final for:F

.field private final if:Lcom/google/android/material/shape/if$case;

.field private final new:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/if$case;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/if$this;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/shape/if$for;->if:Lcom/google/android/material/shape/if$case;

    .line 3
    iput p2, p0, Lcom/google/android/material/shape/if$for;->for:F

    .line 4
    iput p3, p0, Lcom/google/android/material/shape/if$for;->new:F

    return-void
.end method


# virtual methods
.method public do(Landroid/graphics/Matrix;Landroid/support/v4/mx1;ILandroid/graphics/Canvas;)V
    .locals 5
    .param p2    # Landroid/support/v4/mx1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/if$for;->if:Lcom/google/android/material/shape/if$case;

    invoke-static {v0}, Lcom/google/android/material/shape/if$case;->new(Lcom/google/android/material/shape/if$case;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/shape/if$for;->new:F

    sub-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/google/android/material/shape/if$for;->if:Lcom/google/android/material/shape/if$case;

    invoke-static {v1}, Lcom/google/android/material/shape/if$case;->if(Lcom/google/android/material/shape/if$case;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/shape/if$for;->for:F

    sub-float/2addr v1, v2

    .line 3
    new-instance v2, Landroid/graphics/RectF;

    float-to-double v3, v0

    float-to-double v0, v1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v1, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 5
    iget p1, p0, Lcom/google/android/material/shape/if$for;->for:F

    iget v1, p0, Lcom/google/android/material/shape/if$for;->new:F

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/shape/if$for;->for()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 7
    invoke-virtual {p2, p4, v0, v2, p3}, Landroid/support/v4/mx1;->if(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    return-void
.end method

.method public for()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/if$for;->if:Lcom/google/android/material/shape/if$case;

    invoke-static {v0}, Lcom/google/android/material/shape/if$case;->new(Lcom/google/android/material/shape/if$case;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/shape/if$for;->new:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/shape/if$for;->if:Lcom/google/android/material/shape/if$case;

    invoke-static {v1}, Lcom/google/android/material/shape/if$case;->if(Lcom/google/android/material/shape/if$case;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/shape/if$for;->for:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
