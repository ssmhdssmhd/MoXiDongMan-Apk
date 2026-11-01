.class public Lcom/google/android/material/transition/platform/goto$try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# instance fields
.field private final do:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field private final if:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/material/transition/platform/goto$try;->do:F

    .line 3
    iput p2, p0, Lcom/google/android/material/transition/platform/goto$try;->if:F

    return-void
.end method

.method public static synthetic do(Lcom/google/android/material/transition/platform/goto$try;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/transition/platform/goto$try;->do:F

    return p0
.end method

.method public static synthetic if(Lcom/google/android/material/transition/platform/goto$try;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/transition/platform/goto$try;->if:F

    return p0
.end method


# virtual methods
.method public for()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto$try;->if:F

    return v0
.end method

.method public new()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/platform/goto$try;->do:F

    return v0
.end method
