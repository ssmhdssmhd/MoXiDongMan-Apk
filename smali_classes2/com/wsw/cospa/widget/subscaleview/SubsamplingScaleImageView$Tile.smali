.class Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tile"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private fileSRect:Landroid/graphics/Rect;

.field private loading:Z

.field private sRect:Landroid/graphics/Rect;

.field private sampleSize:I

.field private vRect:Landroid/graphics/Rect;

.field private visible:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;-><init>()V

    return-void
.end method

.method public static synthetic access$400(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;->visible:Z

    return p0
.end method

.method public static synthetic access$4000(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;->loading:Z

    return p0
.end method

.method public static synthetic access$4002(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;->loading:Z

    return p1
.end method

.method public static synthetic access$402(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;->visible:Z

    return p1
.end method

.method public static synthetic access$4100(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;->sRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$4102(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;->sRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public static synthetic access$4200(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;->vRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$4202(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;->vRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public static synthetic access$4300(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;->sampleSize:I

    return p0
.end method

.method public static synthetic access$4302(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;->sampleSize:I

    return p1
.end method

.method public static synthetic access$500(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$5000(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;->fileSRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$5002(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;->fileSRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView$Tile;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method
