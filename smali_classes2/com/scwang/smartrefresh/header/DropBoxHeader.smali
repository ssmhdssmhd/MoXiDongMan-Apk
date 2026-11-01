.class public Lcom/scwang/smartrefresh/header/DropBoxHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/header/DropBoxHeader$try;
    }
.end annotation


# static fields
.field public static default:[Ljava/lang/String;

.field public static extends:[I

.field public static return:[Ljava/lang/String;

.field public static static:[I

.field public static switch:[Ljava/lang/String;

.field public static throws:[I


# instance fields
.field public break:I

.field public case:Lcom/scwang/smartrefresh/header/DropBoxHeader$try;

.field public catch:Z

.field public class:Landroid/graphics/drawable/Drawable;

.field public const:Landroid/graphics/drawable/Drawable;

.field public else:I

.field public final:Landroid/graphics/drawable/Drawable;

.field public goto:I

.field public import:Landroid/animation/ValueAnimator;

.field public native:Landroid/support/v4/qm1;

.field public new:Landroid/graphics/Path;

.field public public:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field public super:F

.field public this:I

.field public throw:F

.field public try:Landroid/graphics/Paint;

.field public while:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "M3 2h18v20h-18z"

    const-string v1, "m4,1c-1.105,0 -2,0.895 -2,2v3,11 3,1c0,1.105 0.895,2 2,2h2,12 2c1.105,0 2,-0.895 2,-2v-1,-3 -11,-3c0,-1.105 -0.895,-2 -2,-2h-2,-12 -2zM3.5,3h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,3h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,6h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,6h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,9h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,9h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,12h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,12h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,15h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,15h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,18h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,18h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5z"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->return:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    sput-object v1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->static:[I

    const-string v2, "M49,16.5l-14,-14l-27,0l0,53l41,0z"

    const-string v3, "m16,23.5h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1L16,21.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1z"

    const-string v4, "m16,15.5h10c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1L16,13.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1z"

    const-string v5, "M41,29.5L16,29.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1z"

    const-string v6, "M41,37.5L16,37.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1z"

    const-string v7, "M41,45.5L16,45.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1z"

    const-string v8, "M49,16.5l-14,-14l0,14z"

    .line 3
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->switch:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_1

    sput-object v0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->throws:[I

    const-string v0, "M6.021,2.188L6.021,11.362C5.46,11.327 4.843,11.414 4.229,11.663C2.624,12.312 1.696,13.729 2.155,14.825C2.62,15.924 4.294,16.284 5.898,15.634C7.131,15.134 7.856,14.184 7.965,13.272L7.958,4.387L15.02,3.028L15.02,9.406C14.422,9.343 13.746,9.432 13.076,9.703C11.471,10.353 10.544,11.77 11.004,12.866C11.467,13.964 13.141,14.325 14.746,13.675C15.979,13.174 16.836,12.224 16.947,11.313L16.958,0.002L6.021,2.188L6.021,2.188Z"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->default:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x67289f

    aput v2, v0, v1

    .line 6
    sput-object v0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->extends:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x130f0f
        -0x3bef8
    .end array-data

    :array_1
    .array-data 4
        -0x12b97
        -0x2a51a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/DropBoxHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->try:Landroid/graphics/Paint;

    .line 5
    new-instance v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;-><init>(Lcom/scwang/smartrefresh/header/DropBoxHeader$do;)V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->case:Lcom/scwang/smartrefresh/header/DropBoxHeader$try;

    .line 6
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->try:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v1, -0x915601

    .line 7
    iput v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->goto:I

    const v1, -0xd7c9bb

    .line 8
    iput v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->break:I

    const/high16 v1, 0x43160000    # 150.0f

    .line 9
    invoke-static {v1}, Landroid/support/v4/i02;->new(F)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 10
    sget-object v1, Landroid/support/v4/y02;->case:Landroid/support/v4/y02;

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->if:Landroid/support/v4/y02;

    .line 11
    sget-object v1, Lcom/scwang/smartrefresh/header/R$styleable;->DropBoxHeader:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->DropBoxHeader_dhDrawable1:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->class:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lcom/scwang/smartrefresh/header/internal/pathview/if;

    invoke-direct {p2}, Lcom/scwang/smartrefresh/header/internal/pathview/if;-><init>()V

    .line 15
    sget-object v1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->static:[I

    invoke-virtual {p2, v1}, Lcom/scwang/smartrefresh/header/internal/pathview/if;->case([I)V

    .line 16
    sget-object v1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->return:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/scwang/smartrefresh/header/internal/pathview/if;->else([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x14

    const/16 v4, 0x16

    .line 17
    invoke-virtual {p2, v3, v2, v1, v4}, Lcom/scwang/smartrefresh/header/internal/pathview/if;->for(IIII)V

    .line 18
    :cond_1
    iput-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->class:Landroid/graphics/drawable/Drawable;

    .line 19
    :goto_0
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->DropBoxHeader_dhDrawable2:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->const:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 21
    :cond_2
    new-instance p2, Lcom/scwang/smartrefresh/header/internal/pathview/if;

    invoke-direct {p2}, Lcom/scwang/smartrefresh/header/internal/pathview/if;-><init>()V

    .line 22
    sget-object v1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->throws:[I

    invoke-virtual {p2, v1}, Lcom/scwang/smartrefresh/header/internal/pathview/if;->case([I)V

    .line 23
    sget-object v1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->switch:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/scwang/smartrefresh/header/internal/pathview/if;->else([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/16 v4, 0x29

    const/16 v5, 0x35

    .line 24
    invoke-virtual {p2, v1, v2, v4, v5}, Lcom/scwang/smartrefresh/header/internal/pathview/if;->for(IIII)V

    .line 25
    :cond_3
    iput-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->const:Landroid/graphics/drawable/Drawable;

    .line 26
    :goto_1
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->DropBoxHeader_dhDrawable3:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->final:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 28
    :cond_4
    new-instance p2, Lcom/scwang/smartrefresh/header/internal/pathview/if;

    invoke-direct {p2}, Lcom/scwang/smartrefresh/header/internal/pathview/if;-><init>()V

    .line 29
    sget-object v1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->extends:[I

    invoke-virtual {p2, v1}, Lcom/scwang/smartrefresh/header/internal/pathview/if;->case([I)V

    .line 30
    sget-object v1, Lcom/scwang/smartrefresh/header/DropBoxHeader;->default:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/scwang/smartrefresh/header/internal/pathview/if;->else([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0xf

    const/16 v2, 0x10

    .line 31
    invoke-virtual {p2, v3, v0, v1, v2}, Lcom/scwang/smartrefresh/header/internal/pathview/if;->for(IIII)V

    .line 32
    :cond_5
    iput-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->final:Landroid/graphics/drawable/Drawable;

    .line 33
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private do(III)Lcom/scwang/smartrefresh/header/DropBoxHeader$try;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    div-int/lit8 v0, p3, 0x2

    .line 2
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->case:Lcom/scwang/smartrefresh/header/DropBoxHeader$try;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->do(IIII)Lcom/scwang/smartrefresh/header/DropBoxHeader$try;

    move-result-object p1

    return-object p1
.end method

.method private for(Lcom/scwang/smartrefresh/header/DropBoxHeader$try;)Landroid/graphics/Path;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget v0, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->do:I

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->try:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    .line 3
    iget v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->throw:F

    float-to-double v1, v1

    const-wide v3, 0x3ff41b2f769cf0e0L    # 1.2566370614359172

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    int-to-float v0, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v3, v1, v3

    const-wide v5, 0x3ff0c152382d7365L    # 1.0471975511965976

    sub-double v3, v5, v3

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, v0

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v8, v8, v0

    .line 6
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v10, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->try:I

    int-to-float v10, v10

    iget v11, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 7
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v10, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->do:I

    int-to-float v10, v10

    iget v11, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->new:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v10, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->do:I

    int-to-float v10, v10

    sub-float/2addr v10, v7

    iget v11, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->new:I

    int-to-float v11, v11

    sub-float/2addr v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v10, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->try:I

    int-to-float v10, v10

    sub-float/2addr v10, v7

    iget v7, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    int-to-float v7, v7

    sub-float/2addr v7, v8

    invoke-virtual {v9, v10, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    add-double/2addr v1, v5

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v0

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v6, v6, v0

    .line 13
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v8, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->try:I

    int-to-float v8, v8

    iget v9, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 14
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v8, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->do:I

    int-to-float v8, v8

    iget v9, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->for:I

    iget v10, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->new:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v8, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->do:I

    int-to-float v8, v8

    sub-float/2addr v8, v5

    iget v9, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->for:I

    iget v11, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->new:I

    add-int/2addr v9, v11

    int-to-float v9, v9

    div-float/2addr v9, v10

    add-float/2addr v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v8, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->try:I

    int-to-float v8, v8

    sub-float/2addr v8, v5

    iget v5, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    invoke-virtual {v7, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 18
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v0

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v0

    .line 20
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v6, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->goto:I

    int-to-float v6, v6

    iget v7, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 21
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v6, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->do:I

    int-to-float v6, v6

    iget v7, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->new:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 22
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v6, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->do:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget v7, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->new:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v6, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->goto:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget v5, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    int-to-float v5, v5

    sub-float/2addr v5, v3

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 24
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v0

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    .line 27
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->goto:I

    int-to-float v2, v2

    iget v4, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 28
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->do:I

    int-to-float v2, v2

    iget v4, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->for:I

    iget v5, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->new:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 29
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->do:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget v4, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->for:I

    iget v5, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->new:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v10

    add-float/2addr v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 30
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->goto:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget p1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 31
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 32
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    return-object p1
.end method

.method private if(Lcom/scwang/smartrefresh/header/DropBoxHeader$try;)Landroid/graphics/Path;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->try:I

    int-to-float v1, v1

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->else:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->do:I

    int-to-float v1, v1

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->for:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->goto:I

    int-to-float v1, v1

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->else:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->goto:I

    int-to-float v2, v1

    iget v3, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->this:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->throw:F

    mul-float v3, v3, v5

    add-float/2addr v2, v3

    iget v3, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->if:I

    int-to-float v3, v3

    int-to-float v1, v1

    iget v5, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->do:I

    int-to-float v1, v1

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->new:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->try:I

    int-to-float v1, v1

    iget v2, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->try:I

    int-to-float v2, v1

    iget v3, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->this:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget v4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->throw:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->if:I

    int-to-float v3, v3

    int-to-float v1, v1

    iget p1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->else:I

    int-to-float p1, p1

    invoke-virtual {v0, v2, v3, v1, p1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 9
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 10
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    return-object p1
.end method

.method private new(Lcom/scwang/smartrefresh/header/DropBoxHeader$try;I)Landroid/graphics/Path;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->try:I

    int-to-float v1, v1

    iget v3, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->do:I

    int-to-float v1, v1

    iget v3, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->if:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    iget v1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->goto:I

    int-to-float v1, v1

    iget v3, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    int-to-float p2, p2

    iget p1, p1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->case:I

    int-to-float p1, p1

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 9
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new:Landroid/graphics/Path;

    return-object p1
.end method

.method private try()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->this:I

    div-int/lit8 v0, v0, 0x5

    return v0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->else:I

    .line 3
    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader;->try()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->public:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v3

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->getRefreshFooter()Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->else:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7
    :cond_1
    invoke-direct {p0, v0, v1, v2}, Lcom/scwang/smartrefresh/header/DropBoxHeader;->do(III)Lcom/scwang/smartrefresh/header/DropBoxHeader$try;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->try:Landroid/graphics/Paint;

    iget v5, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->goto:I

    const/16 v6, 0x96

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    invoke-direct {p0, v1}, Lcom/scwang/smartrefresh/header/DropBoxHeader;->if(Lcom/scwang/smartrefresh/header/DropBoxHeader$try;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v5, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->try:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 10
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->try:Landroid/graphics/Paint;

    iget v5, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->goto:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    invoke-direct {p0, v1}, Lcom/scwang/smartrefresh/header/DropBoxHeader;->for(Lcom/scwang/smartrefresh/header/DropBoxHeader$try;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v5, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->try:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x40200000    # 2.5f

    .line 13
    iput v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->super:F

    .line 14
    :cond_2
    iget v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->super:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 15
    invoke-direct {p0, v1, v0}, Lcom/scwang/smartrefresh/header/DropBoxHeader;->new(Lcom/scwang/smartrefresh/header/DropBoxHeader$try;I)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 16
    iget v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->super:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 17
    iget-object v6, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->class:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 18
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v0, v7

    iget v8, v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->if:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v8, v8, v2

    float-to-int v2, v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v2, v8

    invoke-virtual {v6, v7, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 19
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->class:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 20
    iget v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->super:F

    sub-float/2addr v2, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 21
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->const:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 22
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v0, v8

    iget v9, v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->if:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float v9, v9, v2

    float-to-int v2, v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v2, v9

    invoke-virtual {v7, v8, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 23
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->const:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 24
    iget v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->super:F

    const/high16 v8, 0x40000000    # 2.0f

    sub-float/2addr v2, v8

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 25
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->final:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iget v8, v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->if:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v8, v8, v2

    float-to-int v2, v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v2, v8

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 27
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->final:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 28
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->catch:Z

    if-eqz v2, :cond_3

    .line 29
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    iget v5, v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->if:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v5, v8

    invoke-virtual {v6, v2, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 30
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->class:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 31
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    iget v5, v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->if:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v7, v2, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 32
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->const:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iget v1, v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$try;->if:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 34
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->final:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 36
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->while:Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->while:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->while:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/scwang/smartrefresh/header/DropBoxHeader$do;

    invoke-direct {v4, p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader$do;-><init>(Lcom/scwang/smartrefresh/header/DropBoxHeader;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->while:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/scwang/smartrefresh/header/DropBoxHeader$if;

    invoke-direct {v4, p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader$if;-><init>(Lcom/scwang/smartrefresh/header/DropBoxHeader;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 8
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->import:Landroid/animation/ValueAnimator;

    .line 9
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->import:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->import:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$for;

    invoke-direct {v1, p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader$for;-><init>(Lcom/scwang/smartrefresh/header/DropBoxHeader;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->import:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/scwang/smartrefresh/header/DropBoxHeader$new;

    invoke-direct {v1, p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader$new;-><init>(Lcom/scwang/smartrefresh/header/DropBoxHeader;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->while:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->while:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 5
    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->while:Landroid/animation/ValueAnimator;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->import:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->import:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 9
    iput-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->import:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->super:F

    const/4 p1, 0x0

    return p1
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->public:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 2
    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->this:I

    .line 3
    iget p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->break:I

    invoke-interface {p1, p0, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 4
    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/DropBoxHeader;->try()I

    move-result p1

    .line 5
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->class:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->const:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3, p3, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->final:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3, p3, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->else:I

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->native:Landroid/support/v4/qm1;

    sget-object p2, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-eq p1, p2, :cond_1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    sub-int/2addr p3, p4

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p1

    int-to-float p1, p5

    div-float/2addr p2, p1

    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->throw:F

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->import:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Landroid/support/v4/qm1;Landroid/support/v4/qm1;)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/qm1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/qm1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p3, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->native:Landroid/support/v4/qm1;

    .line 2
    sget-object p1, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    if-ne p3, p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->catch:Z

    :cond_0
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->break:I

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->public:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p0, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 5
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 6
    aget p1, p1, v1

    iput p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader;->goto:I

    :cond_1
    return-void
.end method
