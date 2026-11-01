.class public Lcom/wsw/cospa/adapter/LocalCompressAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/LocalCompressAdapter$PathViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final return:Ljava/lang/String;


# instance fields
.field private break:Z

.field private case:Ljava/util/zip/ZipFile;

.field private catch:Z

.field private class:Z

.field private const:Z

.field private do:Lcom/wsw/cospa/listener/OnItemClickListener;

.field private else:Lcom/wsw/cospa/bean/ComicSourceBean;

.field private final:F

.field private for:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

.field private goto:Lcom/wsw/cospa/widget/view/OnTapGestureListener;

.field private if:Landroid/content/Context;

.field private import:I

.field private native:I

.field private new:Landroid/view/LayoutInflater;

.field private public:I

.field private super:Z

.field private this:I

.field private throw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Node;",
            ">;"
        }
    .end annotation
.end field

.field private while:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->return:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->try:Ljava/util/List;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->this:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->throw:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->native:I

    .line 6
    iput v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->public:I

    .line 7
    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->if:Landroid/content/Context;

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    iput-object v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->for:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    .line 9
    iput p2, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->this:I

    const-string p2, "layout_inflater"

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->new:Landroid/view/LayoutInflater;

    return-void
.end method

.method private break(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, p1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p2, v2, p1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static case(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float v1, p1, v0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jd1;->for(Landroid/content/Context;)F

    move-result p0

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr p0, v2

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    sget-object p1, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->return:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLongImage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/if1;->do(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private default([IIZZ)Z
    .locals 8

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    return v1

    :cond_0
    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p2, :cond_4

    const/16 v4, 0x3c

    if-le v3, v4, :cond_1

    return v1

    .line 1
    :cond_1
    rem-int/lit8 v4, v2, 0x14

    aget v5, v0, v4

    sub-int/2addr v3, v5

    .line 2
    aput v1, v0, v4

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0xa

    if-ge v5, v6, :cond_3

    if-eqz p3, :cond_2

    mul-int/lit8 v6, v2, 0xa

    add-int/2addr v6, v5

    goto :goto_2

    :cond_2
    mul-int v6, v5, p2

    add-int/2addr v6, v2

    .line 3
    :goto_2
    aget v7, v0, v4

    aget v6, p1, v6

    invoke-direct {p0, v6}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->else(I)Z

    move-result v6

    invoke-direct {p0, v6, p4, v5}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->try(ZZI)I

    move-result v6

    add-int/2addr v7, v6

    aput v7, v0, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4
    :cond_3
    aget v4, v0, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/LocalCompressAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->if:Landroid/content/Context;

    return-object p0
.end method

.method private else(I)Z
    .locals 2

    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v1, v1, 0x3b

    add-int/2addr v0, v1

    mul-int/lit8 p1, p1, 0xb

    add-int/2addr v0, p1

    const/16 p1, 0x53fc

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final([II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1
    aget v2, p1, v1

    invoke-direct {p0, v2}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->else(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static for(Landroid/content/Context;Landroid/graphics/Bitmap;)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->new(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p0, p0, p1

    return p0
.end method

.method private goto()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    int-to-double v0, v0

    iget v2, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->import:I

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static new(Landroid/content/Context;Landroid/graphics/Bitmap;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jd1;->new(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method private super(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->goto()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    .line 3
    iget v1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->import:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    iget v4, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->import:I

    invoke-static {p1, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    iget-boolean v1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->catch:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->break(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->break(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private this()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->import:I

    iget v1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    mul-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private throw(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    iget v2, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->import:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x14

    new-array v1, v1, [I

    .line 2
    iget v3, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->public:I

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    move v11, v3

    :goto_1
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ge v11, v2, :cond_3

    const/4 v5, 0x0

    .line 3
    iget v9, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    iget v7, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->native:I

    const/4 v10, 0x1

    move-object/from16 v3, p1

    move-object v4, v1

    move v6, v9

    move v8, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 4
    iget v3, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    invoke-direct {v0, v1, v3}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->final([II)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v5, 0x0

    .line 5
    iget v9, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    const/4 v7, 0x0

    const/16 v10, 0xa

    move-object/from16 v3, p1

    move-object v4, v1

    move v6, v9

    move v8, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 6
    iget v3, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    invoke-direct {v0, v1, v3, v12, v12}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->default([IIZZ)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x9

    :cond_2
    add-int/2addr v11, v13

    goto :goto_1

    .line 7
    :cond_3
    :goto_2
    iget v2, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->public:I

    iget v3, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->import:I

    mul-int/lit8 v4, v3, 0x2

    div-int/lit8 v4, v4, 0x3

    add-int v14, v2, v4

    add-int/2addr v2, v3

    sub-int/2addr v2, v13

    :goto_3
    if-le v2, v14, :cond_6

    const/4 v5, 0x0

    .line 8
    iget v9, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    iget v7, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->native:I

    const/4 v10, 0x1

    move-object/from16 v3, p1

    move-object v4, v1

    move v6, v9

    move v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 9
    iget v3, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    invoke-direct {v0, v1, v3}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->final([II)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v5, 0x0

    .line 10
    iget v9, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x9

    const/16 v10, 0xa

    move-object/from16 v3, p1

    move-object v4, v1

    move v6, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 11
    iget v3, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->default([IIZZ)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, -0x9

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    :goto_4
    sub-int/2addr v2, v11

    add-int/lit8 v14, v2, 0x1

    .line 12
    iget v3, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->native:I

    iget v4, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    div-int/lit8 v4, v4, 0x3

    add-int v15, v3, v4

    move v10, v3

    :goto_5
    if-ge v10, v15, :cond_9

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object v4, v1

    move v7, v10

    move v8, v11

    move/from16 v16, v10

    move v10, v14

    .line 13
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 14
    invoke-direct {v0, v1, v14}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->final([II)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/16 v9, 0xa

    move-object/from16 v3, p1

    move-object v4, v1

    move/from16 v7, v16

    move v8, v11

    move v10, v14

    .line 15
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 16
    invoke-direct {v0, v1, v14, v13, v12}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->default([IIZZ)Z

    move-result v3

    if-nez v3, :cond_7

    move/from16 v10, v16

    goto :goto_7

    :cond_7
    move/from16 v10, v16

    add-int/lit8 v10, v10, 0x9

    goto :goto_6

    :cond_8
    move/from16 v10, v16

    :goto_6
    add-int/2addr v10, v13

    goto :goto_5

    .line 17
    :cond_9
    :goto_7
    iget v3, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->native:I

    iget v4, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    mul-int/lit8 v5, v4, 0x2

    div-int/lit8 v5, v5, 0x3

    add-int v12, v3, v5

    add-int/2addr v3, v4

    sub-int/2addr v3, v13

    move v15, v3

    :goto_8
    if-le v15, v12, :cond_c

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object v4, v1

    move v7, v15

    move v8, v11

    move/from16 v17, v10

    move v10, v14

    .line 18
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 19
    invoke-direct {v0, v1, v14}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->final([II)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v5, 0x0

    const/16 v6, 0xa

    add-int/lit8 v7, v15, -0x9

    const/16 v9, 0xa

    move-object/from16 v3, p1

    move-object v4, v1

    move v8, v11

    move v10, v14

    .line 20
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 21
    invoke-direct {v0, v1, v14, v13, v13}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->default([IIZZ)Z

    move-result v3

    if-nez v3, :cond_a

    move/from16 v3, v17

    goto :goto_9

    :cond_a
    add-int/lit8 v15, v15, -0x9

    :cond_b
    add-int/lit8 v15, v15, -0x1

    move/from16 v10, v17

    goto :goto_8

    :cond_c
    move v3, v10

    :goto_9
    sub-int/2addr v15, v3

    .line 22
    iput v15, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    .line 23
    iput v2, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->import:I

    .line 24
    iput v3, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->native:I

    .line 25
    iput v11, v0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->public:I

    return-object p1
.end method

.method private try(ZZI)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x3

    const/4 v1, 0x2

    if-ge p3, v1, :cond_2

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    return v0

    :cond_2
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ge p3, v2, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_4
    const/16 v2, 0x8

    if-ge p3, v2, :cond_6

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x3

    :goto_1
    return v0
.end method


# virtual methods
.method public catch(Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;I)V
    .locals 12
    .param p1    # Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/Node;

    .line 2
    iget-object v0, v0, Lcom/wsw/cospa/bean/Node;->zipEntry:Ljava/util/zip/ZipEntry;

    .line 3
    iget-object v1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    new-instance v2, Lcom/wsw/cospa/adapter/LocalCompressAdapter$do;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/adapter/LocalCompressAdapter$do;-><init>(Lcom/wsw/cospa/adapter/LocalCompressAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->iv_failure:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget v1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->this:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    .line 8
    :try_start_1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v7, -0x2

    .line 9
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v8

    .line 11
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    iget-object v8, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->if:Landroid/content/Context;

    invoke-static {v8}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    div-int/2addr v8, v5

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    iget-object v8, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 15
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v7

    .line 17
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    iget-object v7, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 19
    iget-object v7, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->if:Landroid/content/Context;

    invoke-static {v7}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    div-int/2addr v7, v5

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    iget-object v7, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object v1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, v6

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, v6

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :goto_0
    iget-object p2, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->throw:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v4, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-direct {v1, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->if:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->case:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 25
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 26
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while:I

    .line 27
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->import:I

    .line 28
    iget-boolean v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->break:Z

    if-eqz v0, :cond_1

    .line 29
    iget v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->this:I

    if-ne v0, v6, :cond_1

    .line 30
    invoke-direct {p0, p2}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->super(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 31
    :cond_1
    iget-boolean v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->class:Z

    if-eqz v0, :cond_2

    .line 32
    invoke-direct {p0, p2}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->throw(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 33
    :cond_2
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->iv_failure:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    iget v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->this:I

    const/4 v1, 0x2

    const/16 v2, 0xf

    const/16 v4, 0xe

    const/16 v7, 0xd

    const/4 v8, 0x0

    if-ne v0, v6, :cond_4

    .line 37
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 38
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->for:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x5

    if-ne v0, v1, :cond_3

    .line 39
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 40
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v1, v1, v9

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/2addr v1, v9

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 41
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 42
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 44
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v9

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v9, v9, v10

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/2addr v9, v10

    iput v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 45
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v9

    iput v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 46
    iput-boolean v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 47
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 52
    iget-object v1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p2}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object p2

    new-instance v2, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v2, v0, v4, v3}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v1, p2, v2}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V

    .line 53
    iget-object p1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1, v5}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    goto/16 :goto_1

    .line 54
    :cond_3
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 55
    iget-object v1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p2}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object v2

    new-instance v4, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v4, v0, v6, v3}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v1, v2, v4}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V

    .line 56
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v5}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 57
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 58
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    .line 59
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 60
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 61
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    .line 64
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 65
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    div-int/2addr v1, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 66
    iget-object p1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->for:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {v0, p2}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->case(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 68
    iget-object v9, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setOrientation(I)V

    if-eqz v0, :cond_5

    .line 69
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v5}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 70
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->for:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {v1, p2}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->new(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinScale(F)V

    .line 71
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->for:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {v1, p2}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->for(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 72
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->for:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {v1, p2}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->for(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    .line 73
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p2}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;)V

    .line 74
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 75
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    .line 76
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 77
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->if:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->if:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v1

    .line 81
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v1, v1, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    div-int/2addr v1, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 82
    iget-object p2, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->if:Landroid/content/Context;

    invoke-static {p2}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result p2

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 83
    iput-boolean v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 84
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 85
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    iget-object p1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 88
    :cond_5
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 89
    iget-object v5, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p2}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object v9

    new-instance v10, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v10, v0, v11, v3}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v5, v9, v10}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V

    .line 90
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v6}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 91
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomStyle(I)V

    .line 92
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinScale(F)V

    .line 93
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 94
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v6}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 95
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v6}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setPanEnabled(Z)V

    .line 96
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 97
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    .line 98
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    iget-object v3, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->if:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 100
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 103
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v1, v1, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    div-int/2addr v1, p2

    .line 104
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 105
    iput-boolean v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 106
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 109
    iget-object p1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public class(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget p2, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->this:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const p2, 0x7f0c0056

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->new:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0057

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->new:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    :goto_0
    new-instance p2, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public const(Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;)V
    .locals 3
    .param p1    # Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    iget-object p1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->for:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1a

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->for:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->volatile(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/goto;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/goto;->goto(Landroid/view/View;)V

    .line 11
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->recycle()V

    :cond_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public if(I)Ljava/util/zip/ZipEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/Node;

    iget-object p1, p1, Lcom/wsw/cospa/bean/Node;->zipEntry:Ljava/util/zip/ZipEntry;

    return-object p1
.end method

.method public declared-synchronized import(ZLjava/util/List;ZLjava/util/zip/ZipFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Node;",
            ">;Z",
            "Ljava/util/zip/ZipFile;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iput-object p4, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->case:Ljava/util/zip/ZipFile;

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->try:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p0, p4, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_0
    if-eqz p3, :cond_1

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->try:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->try:Ljava/util/List;

    invoke-interface {p1, p4, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p4, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->try:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->try:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->super:Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->catch(Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->class(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->const(Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;)V

    return-void
.end method

.method public public(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->const:Z

    return-void
.end method

.method public return(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->break:Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method

.method public setTapGestureListener(Lcom/wsw/cospa/widget/view/OnTapGestureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->goto:Lcom/wsw/cospa/widget/view/OnTapGestureListener;

    return-void
.end method

.method public static(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->catch:Z

    return-void
.end method

.method public switch(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->final:F

    return-void
.end method

.method public throws(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->class:Z

    return-void
.end method

.method public while()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->throw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x1a

    .line 6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v5, :cond_0

    .line 7
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    :cond_0
    invoke-virtual {v2}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->recycle()V

    .line 9
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->throw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->throw:Ljava/util/ArrayList;

    .line 12
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method
