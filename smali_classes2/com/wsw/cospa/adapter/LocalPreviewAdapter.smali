.class public Lcom/wsw/cospa/adapter/LocalPreviewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;
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
.field private static final public:Ljava/lang/String; = "LocalPreviewAdapter"


# instance fields
.field private break:Z

.field private case:Lcom/wsw/cospa/bean/ComicSourceBean;

.field private catch:Z

.field private class:Z

.field private const:F

.field private do:Lcom/wsw/cospa/listener/OnItemClickListener;

.field private else:Lcom/wsw/cospa/widget/view/OnTapGestureListener;

.field private final:Z

.field private for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

.field private goto:I

.field private if:Landroid/content/Context;

.field private import:I

.field private native:I

.field private new:Landroid/view/LayoutInflater;

.field private super:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private this:Z

.field private throw:I

.field private try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;"
        }
    .end annotation
.end field

.field private while:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->goto:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->super:Ljava/util/ArrayList;

    .line 5
    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->if:Landroid/content/Context;

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iput-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    .line 7
    iput p2, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->goto:I

    const-string p2, "layout_inflater"

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->new:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic case(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->package(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->if:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic else(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->catch:Z

    return p0
.end method

.method private finally([II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1
    aget v2, p1, v1

    invoke-direct {p0, v2}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->public(I)Z

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

.method public static synthetic for(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->while:I

    return p1
.end method

.method public static synthetic goto(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->private(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    return p1
.end method

.method private import(ZZI)I
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

.method private instanceof([IIZZ)Z
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

    invoke-direct {p0, v6}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->public(I)Z

    move-result v6

    invoke-direct {p0, v6, p4, v5}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->import(ZZI)I

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

.method public static native(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
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
    sget-object p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->public:Ljava/lang/String;

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

.method public static synthetic new(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->this:Z

    return p0
.end method

.method private package(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->return()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    .line 3
    iget v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->while:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    iget v4, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->while:I

    invoke-static {p1, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    iget-boolean v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->break:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->switch(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->switch(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private private(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    iget v2, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->while:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x14

    new-array v1, v1, [I

    .line 2
    iget v3, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->native:I

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    move v11, v3

    :goto_1
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ge v11, v2, :cond_3

    const/4 v5, 0x0

    .line 3
    iget v9, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    iget v7, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->import:I

    const/4 v10, 0x1

    move-object/from16 v3, p1

    move-object v4, v1

    move v6, v9

    move v8, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 4
    iget v3, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    invoke-direct {v0, v1, v3}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->finally([II)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v5, 0x0

    .line 5
    iget v9, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    const/4 v7, 0x0

    const/16 v10, 0xa

    move-object/from16 v3, p1

    move-object v4, v1

    move v6, v9

    move v8, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 6
    iget v3, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    invoke-direct {v0, v1, v3, v12, v12}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->instanceof([IIZZ)Z

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
    iget v2, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->native:I

    iget v3, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->while:I

    mul-int/lit8 v4, v3, 0x2

    div-int/lit8 v4, v4, 0x3

    add-int v14, v2, v4

    add-int/2addr v2, v3

    sub-int/2addr v2, v13

    :goto_3
    if-le v2, v14, :cond_6

    const/4 v5, 0x0

    .line 8
    iget v9, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    iget v7, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->import:I

    const/4 v10, 0x1

    move-object/from16 v3, p1

    move-object v4, v1

    move v6, v9

    move v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 9
    iget v3, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    invoke-direct {v0, v1, v3}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->finally([II)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v5, 0x0

    .line 10
    iget v9, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x9

    const/16 v10, 0xa

    move-object/from16 v3, p1

    move-object v4, v1

    move v6, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 11
    iget v3, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->instanceof([IIZZ)Z

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
    iget v3, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->import:I

    iget v4, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

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
    invoke-direct {v0, v1, v14}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->finally([II)Z

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
    invoke-direct {v0, v1, v14, v13, v12}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->instanceof([IIZZ)Z

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
    iget v3, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->import:I

    iget v4, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

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
    invoke-direct {v0, v1, v14}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->finally([II)Z

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
    invoke-direct {v0, v1, v14, v13, v13}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->instanceof([IIZZ)Z

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
    iput v15, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    .line 23
    iput v2, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->while:I

    .line 24
    iput v3, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->import:I

    .line 25
    iput v11, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->native:I

    return-object p1
.end method

.method private public(I)Z
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

.method private return()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    int-to-double v0, v0

    iget v2, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->while:I

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

.method private static()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->while:I

    iget v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw:I

    mul-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static super(Landroid/content/Context;Landroid/graphics/Bitmap;)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p0, p0, p1

    return p0
.end method

.method private switch(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
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

.method public static synthetic this(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Lcom/wsw/cospa/activity/LocalPreviewActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->for:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    return-object p0
.end method

.method public static throw(Landroid/content/Context;Landroid/graphics/Bitmap;)F
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

.method public static synthetic try(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->goto:I

    return p0
.end method


# virtual methods
.method public abstract()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->super:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->super:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->super:Ljava/util/ArrayList;

    .line 12
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public declared-synchronized break(ILcom/wsw/cospa/bean/RipeFile;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized catch(Lcom/wsw/cospa/bean/RipeFile;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized class(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized const(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->class(ILjava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized continue(ZLjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {p1, v1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public default(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget p2, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->goto:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const p2, 0x7f0c0056

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->new:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0057

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->new:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    :goto_0
    new-instance p2, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public extends(Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;)V
    .locals 0
    .param p1    # Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final(I)Lcom/wsw/cospa/bean/RipeFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/RipeFile;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public implements(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->catch:Z

    return-void
.end method

.method public interface(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->this:Z

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

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throws(Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->default(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

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

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->extends(Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;)V

    return-void
.end method

.method public protected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->break:Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method

.method public setTapGestureListener(Lcom/wsw/cospa/widget/view/OnTapGestureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->else:Lcom/wsw/cospa/widget/view/OnTapGestureListener;

    return-void
.end method

.method public strictfp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->final:Z

    return-void
.end method

.method public throws(Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;I)V
    .locals 6
    .param p1    # Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "file://"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/RipeFile;

    .line 2
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    new-instance v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$do;-><init>(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->iv_failure:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->goto:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 10
    :try_start_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v4, -0x2

    .line 11
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v5

    .line 13
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    iget-object v5, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->if:Landroid/content/Context;

    invoke-static {v5}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 17
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v4

    .line 19
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    iget-object v4, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 21
    iget-object v4, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->if:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    iget-object v4, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, v3

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, v3

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :goto_0
    iget-object p2, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->super:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/SoftReference;

    iget-object v1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 27
    :cond_2
    iget-object p2, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->if:Landroid/content/Context;

    invoke-static {p2}, Landroid/support/v4/jh0;->this(Landroid/content/Context;)Landroid/support/v4/ph0;

    move-result-object p2

    .line 28
    invoke-virtual {p2}, Landroid/support/v4/ph0;->b()Lcom/wsw/cospa/for;

    move-result-object p2

    sget-object v0, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 29
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/for;->Q0(Lcom/bumptech/glide/load/engine/case;)Lcom/wsw/cospa/for;

    move-result-object p2

    .line 30
    invoke-virtual {p2, v2}, Lcom/wsw/cospa/for;->m1(Ljava/lang/String;)Lcom/wsw/cospa/for;

    move-result-object p2

    new-instance v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;-><init>(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;)V

    .line 31
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/else;->j0(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public transient(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->const:F

    return-void
.end method

.method public volatile(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->class:Z

    return-void
.end method

.method public while(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
