.class public Lcom/google/android/material/shape/if$case;
.super Lcom/google/android/material/shape/if$else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation


# instance fields
.field private for:F

.field private if:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/if$else;-><init>()V

    return-void
.end method

.method public static synthetic for(Lcom/google/android/material/shape/if$case;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$case;->if:F

    return p1
.end method

.method public static synthetic if(Lcom/google/android/material/shape/if$case;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/shape/if$case;->if:F

    return p0
.end method

.method public static synthetic new(Lcom/google/android/material/shape/if$case;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/shape/if$case;->for:F

    return p0
.end method

.method public static synthetic try(Lcom/google/android/material/shape/if$case;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$case;->for:F

    return p1
.end method


# virtual methods
.method public do(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 2
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
    iget v0, p0, Lcom/google/android/material/shape/if$case;->if:F

    iget v1, p0, Lcom/google/android/material/shape/if$case;->for:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
