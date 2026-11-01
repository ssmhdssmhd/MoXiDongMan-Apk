.class public Landroid/support/v4/yr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(FFLcom/google/android/material/shape/if;)V
    .locals 0
    .param p3    # Lcom/google/android/material/shape/if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public for(Lcom/google/android/material/shape/if;FFLandroid/graphics/RectF;Lcom/google/android/material/shape/CornerSize;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p5, p4}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/yr;->if(Lcom/google/android/material/shape/if;FFF)V

    return-void
.end method

.method public if(Lcom/google/android/material/shape/if;FFF)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2, p3, p1}, Landroid/support/v4/yr;->do(FFLcom/google/android/material/shape/if;)V

    return-void
.end method
