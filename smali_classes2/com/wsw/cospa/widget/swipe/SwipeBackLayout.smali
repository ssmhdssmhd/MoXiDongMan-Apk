.class public Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;,
        Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$SwipeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DEFAULT_SCROLL_THRESHOLD:F = 0.3f

.field public static final EDGE_ALL:I = 0xb

.field public static final EDGE_BOTTOM:I = 0x8

.field private static final EDGE_FLAGS:[I

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final FULL_ALPHA:I = 0xff

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final OVERSCROLL_DISTANCE:I = 0xa

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentLeft:I

.field private mContentTop:I

.field private mContentView:Landroid/view/View;

.field private mDragHelper:Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

.field private mEdgeFlag:I

.field private mEnable:Z

.field private mInLayout:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$SwipeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrollPercent:F

.field private mScrollThreshold:F

.field private mShadowBottom:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTrackingEdge:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->EDGE_FLAGS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x8
        0xb
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04000e

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3e99999a    # 0.3f

    .line 4
    iput v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrollThreshold:F

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mEnable:Z

    const/high16 v1, -0x67000000

    .line 6
    iput v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrimColor:I

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 8
    new-instance v1, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$ViewDragCallback;-><init>(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$1;)V

    invoke-static {p0, v1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;)Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mDragHelper:Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    .line 9
    sget-object v1, Lcom/wsw/cospa/R$styleable;->SwipeBackLayout:[I

    const v2, 0x7f120196

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 10
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-lez p2, :cond_0

    .line 11
    invoke-virtual {p0, p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->setEdgeSize(I)V

    .line 12
    :cond_0
    sget-object p2, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->EDGE_FLAGS:[I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    aget p2, p2, p3

    .line 13
    invoke-virtual {p0, p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->setEdgeTrackingEnabled(I)V

    const/4 p2, 0x3

    const p3, 0x7f0801b5

    .line 14
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 p3, 0x4

    const v1, 0x7f0801b6

    .line 15
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const v1, 0x7f0801b4

    const/4 v2, 0x2

    .line 16
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 17
    invoke-virtual {p0, p2, v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->setShadow(II)V

    .line 18
    invoke-virtual {p0, p3, v2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->setShadow(II)V

    const/16 p2, 0x8

    .line 19
    invoke-virtual {p0, v1, p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->setShadow(II)V

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43c80000    # 400.0f

    mul-float p1, p1, p2

    .line 22
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mDragHelper:Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->setMinVelocity(F)V

    .line 23
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mDragHelper:Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    const/high16 p3, 0x40000000    # 2.0f

    mul-float p1, p1, p3

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->setMaxVelocity(F)V

    return-void
.end method

.method public static synthetic access$100(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mEdgeFlag:I

    return p0
.end method

.method public static synthetic access$1002(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mContentLeft:I

    return p1
.end method

.method public static synthetic access$1102(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mContentTop:I

    return p1
.end method

.method public static synthetic access$1200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrollThreshold:F

    return p0
.end method

.method public static synthetic access$1300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Lcom/wsw/cospa/widget/swipe/ViewDragHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mDragHelper:Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mTrackingEdge:I

    return p0
.end method

.method public static synthetic access$302(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mTrackingEdge:I

    return p1
.end method

.method public static synthetic access$400(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mListeners:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrollPercent:F

    return p0
.end method

.method public static synthetic access$502(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrollPercent:F

    return p1
.end method

.method public static synthetic access$600(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private drawScrim(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrimColor:I

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    .line 2
    iget v2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrimOpacity:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mTrackingEdge:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, p2, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p1, p2, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, p2, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3
    iget p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 p2, p2, 0x1

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrimOpacity:F

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    :cond_0
    iget p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 9
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 10
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrimOpacity:F

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 12
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13
    :cond_1
    iget p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_2

    .line 14
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 15
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 16
    invoke-virtual {p2, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrimOpacity:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 18
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method private setContentView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mContentView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public addSwipeListener(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$SwipeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mListeners:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mActivity:Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010054

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 10
    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->setContentView(Landroid/view/View;)V

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrollPercent:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrimOpacity:F

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mDragHelper:Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mContentView:Landroid/view/View;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 3
    iget p4, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrimOpacity:F

    const/4 v1, 0x0

    cmpl-float p4, p4, v1

    if-lez p4, :cond_1

    if-eqz v0, :cond_1

    iget-object p4, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mDragHelper:Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    .line 4
    invoke-virtual {p4}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->getViewDragState()I

    move-result p4

    if-eqz p4, :cond_1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->drawShadow(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->drawScrim(Landroid/graphics/Canvas;Landroid/view/View;)V

    :cond_1
    return p3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    iget-boolean v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mEnable:Z

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mDragHelper:Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    invoke-virtual {v1, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mInLayout:Z

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    iget p2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mContentLeft:I

    iget p3, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mContentTop:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget p5, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mContentTop:I

    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mContentView:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    .line 6
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mInLayout:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mEnable:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mDragHelper:Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public removeSwipeListener(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$SwipeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public scrollToFinishActivity()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 3
    iget v2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mTrackingEdge:I

    :goto_0
    move v4, v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2

    neg-int v0, v0

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    const/4 v1, 0x2

    .line 7
    iput v1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mTrackingEdge:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    neg-int v1, v1

    .line 8
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xa

    .line 9
    iput v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mTrackingEdge:I

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mDragHelper:Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2, v4, v1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setEdgeSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mDragHelper:Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->setEdgeSize(I)V

    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mEdgeFlag:I

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mDragHelper:Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    return-void
.end method

.method public setEnableGesture(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mEnable:Z

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrimColor:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setScrollThresHold(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mScrollThreshold:F

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Threshold value should be between 0 and 1.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSensitivity(Landroid/content/Context;F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mDragHelper:Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    invoke-virtual {v0, p1, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->setSensitivity(Landroid/content/Context;F)V

    return-void
.end method

.method public setShadow(II)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->setShadow(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_2

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setSwipeListener(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$SwipeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->addSwipeListener(Lcom/wsw/cospa/widget/swipe/SwipeBackLayout$SwipeListener;)V

    return-void
.end method
