.class public Lcom/luck/picture/lib/dialog/PictureSpinView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcom/luck/picture/lib/dialog/PictureIndeterminate;


# instance fields
.field private do:F

.field private for:Z

.field private if:I

.field private new:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/luck/picture/lib/dialog/PictureSpinView;->try()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/luck/picture/lib/dialog/PictureSpinView;->try()V

    return-void
.end method

.method public static synthetic do(Lcom/luck/picture/lib/dialog/PictureSpinView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/luck/picture/lib/dialog/PictureSpinView;->do:F

    return p0
.end method

.method public static synthetic for(Lcom/luck/picture/lib/dialog/PictureSpinView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/luck/picture/lib/dialog/PictureSpinView;->for:Z

    return p0
.end method

.method public static synthetic if(Lcom/luck/picture/lib/dialog/PictureSpinView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/dialog/PictureSpinView;->do:F

    return p1
.end method

.method public static synthetic new(Lcom/luck/picture/lib/dialog/PictureSpinView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/luck/picture/lib/dialog/PictureSpinView;->if:I

    return p0
.end method

.method private try()V
    .locals 1

    .line 1
    sget v0, Lcom/luck/picture/lib/R$drawable;->kprogresshud_spinner:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v0, 0x53

    .line 2
    iput v0, p0, Lcom/luck/picture/lib/dialog/PictureSpinView;->if:I

    .line 3
    new-instance v0, Lcom/luck/picture/lib/dialog/PictureSpinView$do;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/dialog/PictureSpinView$do;-><init>(Lcom/luck/picture/lib/dialog/PictureSpinView;)V

    iput-object v0, p0, Lcom/luck/picture/lib/dialog/PictureSpinView;->new:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/luck/picture/lib/dialog/PictureSpinView;->for:Z

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/dialog/PictureSpinView;->new:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/luck/picture/lib/dialog/PictureSpinView;->for:Z

    .line 2
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/dialog/PictureSpinView;->do:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAnimationSpeed(F)V
    .locals 1

    const/high16 v0, 0x42a60000    # 83.0f

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/dialog/PictureSpinView;->if:I

    return-void
.end method
