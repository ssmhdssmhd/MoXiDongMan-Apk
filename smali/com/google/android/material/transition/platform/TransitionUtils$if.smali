.class final Lcom/google/android/material/transition/platform/TransitionUtils$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/TransitionUtils;->import(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)Lcom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/graphics/RectF;

.field public final synthetic for:F

.field public final synthetic if:Landroid/graphics/RectF;

.field public final synthetic new:F

.field public final synthetic try:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$if;->do:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/google/android/material/transition/platform/TransitionUtils$if;->if:Landroid/graphics/RectF;

    iput p3, p0, Lcom/google/android/material/transition/platform/TransitionUtils$if;->for:F

    iput p4, p0, Lcom/google/android/material/transition/platform/TransitionUtils$if;->new:F

    iput p5, p0, Lcom/google/android/material/transition/platform/TransitionUtils$if;->try:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 3
    .param p1    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/TransitionUtils$if;->do:Landroid/graphics/RectF;

    invoke-interface {p1, v0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/transition/platform/TransitionUtils$if;->if:Landroid/graphics/RectF;

    invoke-interface {p2, v0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p2

    .line 3
    iget v0, p0, Lcom/google/android/material/transition/platform/TransitionUtils$if;->for:F

    iget v1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$if;->new:F

    iget v2, p0, Lcom/google/android/material/transition/platform/TransitionUtils$if;->try:F

    .line 4
    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->super(FFFFF)F

    move-result p1

    .line 5
    new-instance p2, Landroid/support/v4/private;

    invoke-direct {p2, p1}, Landroid/support/v4/private;-><init>(F)V

    return-object p2
.end method
