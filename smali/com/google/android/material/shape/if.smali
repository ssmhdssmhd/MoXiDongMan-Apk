.class public Lcom/google/android/material/shape/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/if$try;,
        Lcom/google/android/material/shape/if$new;,
        Lcom/google/android/material/shape/if$goto;,
        Lcom/google/android/material/shape/if$case;,
        Lcom/google/android/material/shape/if$else;,
        Lcom/google/android/material/shape/if$if;,
        Lcom/google/android/material/shape/if$for;,
        Lcom/google/android/material/shape/if$this;
    }
.end annotation


# static fields
.field private static final break:F = 270.0f

.field public static final catch:F = 180.0f


# instance fields
.field public case:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public do:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/if$else;",
            ">;"
        }
    .end annotation
.end field

.field public for:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/shape/if$this;",
            ">;"
        }
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

.field private this:Z

.field public try:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/if;->else:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/if;->goto:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/shape/if;->throw(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/if;->else:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/if;->goto:Ljava/util/List;

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/if;->throw(FF)V

    return-void
.end method

.method private for(Lcom/google/android/material/shape/if$this;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/if;->if(F)V

    .line 2
    iget-object p2, p0, Lcom/google/android/material/shape/if;->goto:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/if;->import(F)V

    return-void
.end method

.method private goto()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if;->try:F

    return v0
.end method

.method private if(F)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/if;->goto()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/shape/if;->goto()F

    move-result v0

    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Lcom/google/android/material/shape/if$new;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/shape/if;->break()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/shape/if;->catch()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/shape/if;->break()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/shape/if;->catch()F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/material/shape/if$new;-><init>(FFFF)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/shape/if;->goto()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/shape/if$new;->case(Lcom/google/android/material/shape/if$new;F)V

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/material/shape/if$new;->else(Lcom/google/android/material/shape/if$new;F)V

    .line 7
    iget-object v0, p0, Lcom/google/android/material/shape/if;->goto:Ljava/util/List;

    new-instance v2, Lcom/google/android/material/shape/if$if;

    invoke-direct {v2, v1}, Lcom/google/android/material/shape/if$if;-><init>(Lcom/google/android/material/shape/if$new;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/if;->import(F)V

    return-void
.end method

.method private import(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if;->try:F

    return-void
.end method

.method private native(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if;->case:F

    return-void
.end method

.method private public(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if;->for:F

    return-void
.end method

.method private return(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if;->new:F

    return-void
.end method

.method private static(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if;->do:F

    return-void
.end method

.method private switch(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/shape/if;->if:F

    return-void
.end method

.method private this()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if;->case:F

    return v0
.end method


# virtual methods
.method public break()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if;->for:F

    return v0
.end method

.method public case(Landroid/graphics/Matrix;)Lcom/google/android/material/shape/if$this;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/if;->this()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/if;->if(F)V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/shape/if;->goto:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    new-instance v1, Lcom/google/android/material/shape/if$do;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/material/shape/if$do;-><init>(Lcom/google/android/material/shape/if;Ljava/util/List;Landroid/graphics/Matrix;)V

    return-object v1
.end method

.method public catch()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if;->new:F

    return v0
.end method

.method public class()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if;->do:F

    return v0
.end method

.method public const()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/if;->if:F

    return v0
.end method

.method public do(FFFFFF)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/material/shape/if$new;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/material/shape/if$new;-><init>(FFFF)V

    .line 2
    invoke-static {v0, p5}, Lcom/google/android/material/shape/if$new;->case(Lcom/google/android/material/shape/if$new;F)V

    .line 3
    invoke-static {v0, p6}, Lcom/google/android/material/shape/if$new;->else(Lcom/google/android/material/shape/if$new;F)V

    .line 4
    iget-object v1, p0, Lcom/google/android/material/shape/if;->else:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/google/android/material/shape/if$if;

    invoke-direct {v1, v0}, Lcom/google/android/material/shape/if$if;-><init>(Lcom/google/android/material/shape/if$new;)V

    add-float v0, p5, p6

    const/4 v2, 0x0

    cmpg-float p6, p6, v2

    if-gez p6, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43340000    # 180.0f

    if-eqz p6, :cond_1

    add-float/2addr p5, v3

    rem-float/2addr p5, v2

    :cond_1
    if-eqz p6, :cond_2

    add-float/2addr v3, v0

    rem-float/2addr v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 6
    :goto_1
    invoke-direct {p0, v1, p5, v3}, Lcom/google/android/material/shape/if;->for(Lcom/google/android/material/shape/if$this;FF)V

    add-float p5, p1, p3

    const/high16 p6, 0x3f000000    # 0.5f

    mul-float p5, p5, p6

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    float-to-double v0, v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float p3, p3, v2

    add-float/2addr p5, p3

    .line 8
    invoke-direct {p0, p5}, Lcom/google/android/material/shape/if;->public(F)V

    add-float p3, p2, p4

    mul-float p3, p3, p6

    sub-float/2addr p4, p2

    div-float/2addr p4, p1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p4, p4, p1

    add-float/2addr p3, p4

    .line 10
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/if;->return(F)V

    return-void
.end method

.method public else(FFFFFF)V
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 1
    new-instance v7, Lcom/google/android/material/shape/if$try;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/shape/if$try;-><init>(FFFFFF)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/shape/if;->else:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/shape/if;->this:Z

    .line 4
    invoke-direct {p0, p5}, Lcom/google/android/material/shape/if;->public(F)V

    .line 5
    invoke-direct {p0, p6}, Lcom/google/android/material/shape/if;->return(F)V

    return-void
.end method

.method public final(FF)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/material/shape/if$case;

    invoke-direct {v0}, Lcom/google/android/material/shape/if$case;-><init>()V

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/material/shape/if$case;->for(Lcom/google/android/material/shape/if$case;F)F

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/material/shape/if$case;->try(Lcom/google/android/material/shape/if$case;F)F

    .line 4
    iget-object v1, p0, Lcom/google/android/material/shape/if;->else:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/google/android/material/shape/if$for;

    invoke-virtual {p0}, Lcom/google/android/material/shape/if;->break()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/shape/if;->catch()F

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/shape/if$for;-><init>(Lcom/google/android/material/shape/if$case;FF)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/material/shape/if$for;->for()F

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v0, v2

    .line 7
    invoke-virtual {v1}, Lcom/google/android/material/shape/if$for;->for()F

    move-result v3

    add-float/2addr v3, v2

    .line 8
    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/material/shape/if;->for(Lcom/google/android/material/shape/if$this;FF)V

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/if;->public(F)V

    .line 10
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/if;->return(F)V

    return-void
.end method

.method public new(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/if;->else:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/android/material/shape/if;->else:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/shape/if$else;

    .line 3
    invoke-virtual {v2, p1, p2}, Lcom/google/android/material/shape/if$else;->do(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public super(FFFF)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/shape/if$goto;

    invoke-direct {v0}, Lcom/google/android/material/shape/if$goto;-><init>()V

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/material/shape/if$goto;->if(Lcom/google/android/material/shape/if$goto;F)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/material/shape/if$goto;->for(Lcom/google/android/material/shape/if$goto;F)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/material/shape/if$goto;->new(Lcom/google/android/material/shape/if$goto;F)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/material/shape/if$goto;->try(Lcom/google/android/material/shape/if$goto;F)V

    .line 6
    iget-object p1, p0, Lcom/google/android/material/shape/if;->else:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/material/shape/if;->this:Z

    .line 8
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/if;->public(F)V

    .line 9
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/if;->return(F)V

    return-void
.end method

.method public throw(FF)V
    .locals 2

    const/high16 v0, 0x43870000    # 270.0f

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/shape/if;->while(FFFF)V

    return-void
.end method

.method public try()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/shape/if;->this:Z

    return v0
.end method

.method public while(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/if;->static(F)V

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/if;->switch(F)V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/if;->public(F)V

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/if;->return(F)V

    .line 5
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/if;->import(F)V

    add-float/2addr p3, p4

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p3, p1

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/if;->native(F)V

    .line 7
    iget-object p1, p0, Lcom/google/android/material/shape/if;->else:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    iget-object p1, p0, Lcom/google/android/material/shape/if;->goto:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/material/shape/if;->this:Z

    return-void
.end method
