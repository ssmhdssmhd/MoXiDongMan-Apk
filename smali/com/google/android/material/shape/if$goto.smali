.class public Lcom/google/android/material/shape/if$goto;
.super Lcom/google/android/material/shape/if$else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "goto"
.end annotation


# instance fields
.field public for:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public if:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public new:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public try:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/if$else;-><init>()V

    return-void
.end method

.method private break(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$goto;->if:F

    return-void
.end method

.method private case()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$goto;->if:F

    return v0
.end method

.method private catch(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$goto;->for:F

    return-void
.end method

.method private class(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$goto;->new:F

    return-void
.end method

.method private const(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$goto;->try:F

    return-void
.end method

.method private else()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$goto;->for:F

    return v0
.end method

.method public static synthetic for(Lcom/google/android/material/shape/if$goto;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/if$goto;->catch(F)V

    return-void
.end method

.method private goto()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$goto;->new:F

    return v0
.end method

.method public static synthetic if(Lcom/google/android/material/shape/if$goto;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/if$goto;->break(F)V

    return-void
.end method

.method public static synthetic new(Lcom/google/android/material/shape/if$goto;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/if$goto;->class(F)V

    return-void
.end method

.method private this()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$goto;->try:F

    return v0
.end method

.method public static synthetic try(Lcom/google/android/material/shape/if$goto;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/if$goto;->const(F)V

    return-void
.end method


# virtual methods
.method public do(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 4
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
    invoke-direct {p0}, Lcom/google/android/material/shape/if$goto;->case()F

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/shape/if$goto;->else()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/shape/if$goto;->goto()F

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/shape/if$goto;->this()F

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 5
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
