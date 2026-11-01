.class Lcom/google/android/material/shape/MaterialShapeDrawable$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/shape/MaterialShapeDrawable;->goto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:F

.field public final synthetic if:Lcom/google/android/material/shape/MaterialShapeDrawable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$if;->if:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iput p2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$if;->do:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 2
    .param p1    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/support/v4/um1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/s0;

    iget v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$if;->do:F

    invoke-direct {v0, v1, p1}, Landroid/support/v4/s0;-><init>(FLcom/google/android/material/shape/CornerSize;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
