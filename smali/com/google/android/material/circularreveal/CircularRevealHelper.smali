.class public Lcom/google/android/material/circularreveal/CircularRevealHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/circularreveal/CircularRevealHelper$do;,
        Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;
    }
.end annotation


# static fields
.field private static final catch:Z = false

.field public static final class:I = 0x0

.field public static final const:I = 0x1

.field public static final final:I = 0x2

.field public static final super:I


# instance fields
.field private break:Z

.field private case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final do:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

.field private else:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final for:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private goto:Landroid/graphics/Paint;

.field private final if:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final new:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private this:Z

.field private final try:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    sput v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->super:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3
    sput v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->super:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    sput v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->super:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->do:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    .line 3
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 5
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->for:Landroid/graphics/Path;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->new:Landroid/graphics/Paint;

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->try:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private case(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->while()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->else:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->do:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 4
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->if:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->else:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v1

    neg-float v1, v2

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private catch()V
    .locals 5

    .line 1
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->super:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->for:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->for:Landroid/graphics/Path;

    iget v2, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->do:F

    iget v3, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->if:F

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->for:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private import()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->this:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->try:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private new(Landroid/graphics/Canvas;IF)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->goto:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->goto:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    iget-object p2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    iget v0, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->do:F

    iget v1, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->if:F

    iget p2, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->for:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    sub-float/2addr p2, p3

    iget-object p3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->goto:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private this(Lcom/google/android/material/circularreveal/CircularRevealWidget$try;)F
    .locals 6
    .param p1    # Lcom/google/android/material/circularreveal/CircularRevealWidget$try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->do:F

    iget v1, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->if:F

    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float v4, p1

    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v5, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-static/range {v0 .. v5}, Landroid/support/v4/zx0;->if(FFFFFF)F

    move-result p1

    return p1
.end method

.method private throw()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    sget v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->super:I

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->break:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    xor-int/2addr v0, v2

    return v0
.end method

.method private try(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->do:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->import()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    iget v1, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->do:F

    iget v2, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->if:F

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->for:F

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->try:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->throw()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x1000000

    const/high16 v1, 0x41200000    # 10.0f

    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->new(Landroid/graphics/Canvas;IF)V

    const/high16 v0, -0x10000

    const/high16 v1, 0x40a00000    # 5.0f

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->new(Landroid/graphics/Canvas;IF)V

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private while()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->this:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->else:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public break()Lcom/google/android/material/circularreveal/CircularRevealWidget$try;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    invoke-direct {v1, v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$try;)V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->do()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->this(Lcom/google/android/material/circularreveal/CircularRevealWidget$try;)F

    move-result v0

    iput v0, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->for:F

    :cond_1
    return-object v1
.end method

.method public class()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->do:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualIsOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->throw()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public const(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->else:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public do()V
    .locals 6

    .line 1
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->super:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->this:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->break:Z

    .line 4
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 5
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 8
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 9
    iget-object v4, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 10
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->new:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v2, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 11
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->this:Z

    .line 12
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->break:Z

    :cond_2
    return-void
.end method

.method public else()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->else:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->try:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public for(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->throw()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->super:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->do:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->import()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->try:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported strategy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->for:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 9
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->do:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v1, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 10
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->import()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 11
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->try:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 12
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    iget v1, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->do:F

    iget v2, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->if:F

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->for:F

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->new:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 14
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->import()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    iget v1, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->do:F

    iget v2, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->if:F

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->for:F

    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->try:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->do:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    .line 17
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->import()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 18
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->try:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 19
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public goto()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->try:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public if()V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->super:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->break:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->new:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->if:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public super(Lcom/google/android/material/circularreveal/CircularRevealWidget$try;)V
    .locals 2
    .param p1    # Lcom/google/android/material/circularreveal/CircularRevealWidget$try;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    invoke-direct {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$try;)V

    iput-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->for(Lcom/google/android/material/circularreveal/CircularRevealWidget$try;)V

    .line 5
    :goto_0
    iget v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->for:F

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->this(Lcom/google/android/material/circularreveal/CircularRevealWidget$try;)F

    move-result p1

    const v1, 0x38d1b717    # 1.0E-4f

    .line 7
    invoke-static {v0, p1, v1}, Landroid/support/v4/zx0;->try(FFF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->case:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->for:F

    .line 9
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->catch()V

    return-void
.end method
