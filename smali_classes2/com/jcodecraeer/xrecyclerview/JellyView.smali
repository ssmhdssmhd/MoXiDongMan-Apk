.class public Lcom/jcodecraeer/xrecyclerview/JellyView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/jcodecraeer/xrecyclerview/BaseRefreshHeader;


# instance fields
.field public do:Landroid/graphics/Path;

.field private for:I

.field public if:Landroid/graphics/Paint;

.field private new:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->for:I

    .line 3
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->new:I

    .line 4
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/JellyView;->do()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->for:I

    .line 7
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->new:I

    .line 8
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/JellyView;->do()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->for:I

    .line 11
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->new:I

    .line 12
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/JellyView;->do()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->for:I

    .line 15
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->new:I

    .line 16
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/JellyView;->do()V

    return-void
.end method

.method private do()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->do:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->if:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->if:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public getJellyHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->new:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->for:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->do:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->do:Landroid/graphics/Path;

    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->for:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->do:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->for:I

    iget v4, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->new:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->for:I

    int-to-float v5, v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 5
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->do:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->do:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->if:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onMove(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->new:I

    float-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->new:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delta = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public refreshComplete()V
    .locals 0

    return-void
.end method

.method public releaseAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setJellyColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->if:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setJellyHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->new:I

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/JellyView;->for:I

    return-void
.end method
