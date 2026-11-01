.class public Lorg/adw/library/widgets/discreteseekbar/internal/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/adw/library/widgets/discreteseekbar/internal/do$do;
    }
.end annotation


# instance fields
.field public case:Landroid/graphics/Point;

.field private final do:Landroid/view/WindowManager;

.field private for:Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

.field private if:Z

.field private new:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

.field private try:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->try:[I

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->case:Landroid/graphics/Point;

    const-string v0, "window"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->do:Landroid/view/WindowManager;

    .line 5
    new-instance v0, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;-><init>(Lorg/adw/library/widgets/discreteseekbar/internal/do;Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

    return-void
.end method

.method private case(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->do:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    iget-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

    invoke-static {p1}, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do(Lorg/adw/library/widgets/discreteseekbar/internal/do$do;)Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->if()V

    return-void
.end method

.method public static synthetic do(Lorg/adw/library/widgets/discreteseekbar/internal/do;)Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->new:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    return-object p0
.end method

.method private final(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->try:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->for(I)V

    return-void
.end method

.method private for(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x3

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 6
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->if(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x3e8

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 8
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 p1, 0x3

    .line 9
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscreteSeekBar Indicator:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private goto()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->case:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->case:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->measure(II)V

    return-void
.end method

.method private if(I)I
    .locals 1

    const v0, -0x68219

    and-int/2addr p1, v0

    const v0, 0x8000

    or-int/2addr p1, v0

    or-int/lit8 p1, p1, 0x8

    or-int/lit8 p1, p1, 0x10

    or-int/lit16 p1, p1, 0x200

    return p1
.end method

.method private super(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->case:Landroid/graphics/Point;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 3
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->goto()V

    .line 4
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 5
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

    invoke-static {v1}, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do(Lorg/adw/library/widgets/discreteseekbar/internal/do$do;)Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    .line 6
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->try:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x0

    .line 7
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 8
    iget-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->try:[I

    const/4 v2, 0x1

    aget p1, p1, v2

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    add-int/2addr p1, v1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 9
    iget-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->case:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 10
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public break(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

    invoke-virtual {v0, p1, p2}, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->if(II)V

    return-void
.end method

.method public catch(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->new:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    return-void
.end method

.method public class(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do(Lorg/adw/library/widgets/discreteseekbar/internal/do$do;)Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->setValue(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public const(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->else()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

    invoke-static {p1}, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do(Lorg/adw/library/widgets/discreteseekbar/internal/do$do;)Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->if()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->for(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x800033

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 6
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->super(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->if:Z

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->final(I)V

    .line 9
    invoke-direct {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->case(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public else()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->if:Z

    return v0
.end method

.method public new()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do(Lorg/adw/library/widgets/discreteseekbar/internal/do$do;)Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->do()V

    return-void
.end method

.method public this(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->else()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->final(I)V

    return-void
.end method

.method public throw(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->try()V

    .line 2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/do$do;->do(Lorg/adw/library/widgets/discreteseekbar/internal/do$do;)Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->for(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public try()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->else()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->if:Z

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->do:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/do;->for:Lorg/adw/library/widgets/discreteseekbar/internal/do$do;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    throw v0

    :cond_0
    :goto_0
    return-void
.end method
