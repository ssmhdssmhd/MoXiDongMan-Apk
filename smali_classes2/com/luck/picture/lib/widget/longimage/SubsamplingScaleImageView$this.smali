.class Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$this;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "this"
.end annotation


# instance fields
.field private do:F

.field private if:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>(FLandroid/graphics/PointF;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$this;->do:F

    .line 4
    iput-object p2, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$this;->if:Landroid/graphics/PointF;

    return-void
.end method

.method public synthetic constructor <init>(FLandroid/graphics/PointF;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$this;-><init>(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic do(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$this;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$this;->do:F

    return p0
.end method

.method public static synthetic for(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$this;)Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$this;->if:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic if(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$this;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$this;->do:F

    return p1
.end method
