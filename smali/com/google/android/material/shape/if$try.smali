.class public Lcom/google/android/material/shape/if$try;
.super Lcom/google/android/material/shape/if$else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# instance fields
.field private case:F

.field private else:F

.field private for:F

.field private if:F

.field private new:F

.field private try:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/if$else;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/if$try;->goto(F)V

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/if$try;->break(F)V

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/if$try;->this(F)V

    .line 5
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/if$try;->catch(F)V

    .line 6
    invoke-direct {p0, p5}, Lcom/google/android/material/shape/if$try;->class(F)V

    .line 7
    invoke-direct {p0, p6}, Lcom/google/android/material/shape/if$try;->const(F)V

    return-void
.end method

.method private break(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$try;->for:F

    return-void
.end method

.method private case()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$try;->case:F

    return v0
.end method

.method private catch(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$try;->try:F

    return-void
.end method

.method private class(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$try;->case:F

    return-void
.end method

.method private const(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$try;->else:F

    return-void
.end method

.method private else()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$try;->else:F

    return v0
.end method

.method private for()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$try;->new:F

    return v0
.end method

.method private goto(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$try;->if:F

    return-void
.end method

.method private if()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$try;->if:F

    return v0
.end method

.method private new()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$try;->for:F

    return v0
.end method

.method private this(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$try;->new:F

    return-void
.end method

.method private try()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$try;->for:F

    return v0
.end method


# virtual methods
.method public do(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 8
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/if$else;->do:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 4
    iget v2, p0, Lcom/google/android/material/shape/if$try;->if:F

    iget v3, p0, Lcom/google/android/material/shape/if$try;->for:F

    iget v4, p0, Lcom/google/android/material/shape/if$try;->new:F

    iget v5, p0, Lcom/google/android/material/shape/if$try;->try:F

    iget v6, p0, Lcom/google/android/material/shape/if$try;->case:F

    iget v7, p0, Lcom/google/android/material/shape/if$try;->else:F

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 5
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
