.class final Lcom/google/android/material/shape/ShapeAppearancePathProvider$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public final do:Lcom/google/android/material/shape/ShapeAppearanceModel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final for:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final if:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final new:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final try:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$if;->new:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    .line 3
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$if;->do:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 4
    iput p2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$if;->try:F

    .line 5
    iput-object p3, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$if;->for:Landroid/graphics/RectF;

    .line 6
    iput-object p5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$if;->if:Landroid/graphics/Path;

    return-void
.end method
