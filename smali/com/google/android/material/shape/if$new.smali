.class public Lcom/google/android/material/shape/if$new;
.super Lcom/google/android/material/shape/if$else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# static fields
.field private static final goto:Landroid/graphics/RectF;


# instance fields
.field public case:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public else:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

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
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/if$new;->goto:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/if$else;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/if$new;->while(F)V

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/if$new;->return(F)V

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/if$new;->import(F)V

    .line 5
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/if$new;->throw(F)V

    return-void
.end method

.method private break()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$new;->try:F

    return v0
.end method

.method public static synthetic case(Lcom/google/android/material/shape/if$new;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/if$new;->native(F)V

    return-void
.end method

.method private catch()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$new;->if:F

    return v0
.end method

.method private class()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$new;->new:F

    return v0
.end method

.method private const()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$new;->case:F

    return v0
.end method

.method public static synthetic else(Lcom/google/android/material/shape/if$new;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/if$new;->public(F)V

    return-void
.end method

.method private final()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$new;->else:F

    return v0
.end method

.method public static synthetic for(Lcom/google/android/material/shape/if$new;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/if$new;->super()F

    move-result p0

    return p0
.end method

.method public static synthetic goto(Lcom/google/android/material/shape/if$new;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/if$new;->const()F

    move-result p0

    return p0
.end method

.method public static synthetic if(Lcom/google/android/material/shape/if$new;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/if$new;->catch()F

    move-result p0

    return p0
.end method

.method private import(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$new;->new:F

    return-void
.end method

.method private native(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$new;->case:F

    return-void
.end method

.method public static synthetic new(Lcom/google/android/material/shape/if$new;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/if$new;->class()F

    move-result p0

    return p0
.end method

.method private public(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$new;->else:F

    return-void
.end method

.method private return(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$new;->for:F

    return-void
.end method

.method private super()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if$new;->for:F

    return v0
.end method

.method public static synthetic this(Lcom/google/android/material/shape/if$new;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/if$new;->final()F

    move-result p0

    return p0
.end method

.method private throw(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$new;->try:F

    return-void
.end method

.method public static synthetic try(Lcom/google/android/material/shape/if$new;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/if$new;->break()F

    move-result p0

    return p0
.end method

.method private while(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if$new;->if:F

    return-void
.end method


# virtual methods
.method public do(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5
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
    sget-object v0, Lcom/google/android/material/shape/if$new;->goto:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/material/shape/if$new;->catch()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/shape/if$new;->super()F

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/shape/if$new;->class()F

    move-result v3

    invoke-direct {p0}, Lcom/google/android/material/shape/if$new;->break()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/shape/if$new;->const()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/shape/if$new;->final()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 6
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
