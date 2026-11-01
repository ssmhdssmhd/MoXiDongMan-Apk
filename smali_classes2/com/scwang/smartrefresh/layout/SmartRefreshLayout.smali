.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$catch;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;
    }
.end annotation


# static fields
.field public static W:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;

.field public static a0:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;

.field public static b0:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;

.field public static c0:Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

.field public E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

.field public F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

.field public G:Landroid/graphics/Paint;

.field public H:Landroid/os/Handler;

.field public I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field public J:Landroid/support/v4/qm1;

.field public K:Landroid/support/v4/qm1;

.field public L:J

.field public M:I

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Landroid/view/MotionEvent;

.field public U:Ljava/lang/Runnable;

.field public V:Landroid/animation/ValueAnimator;

.field public a:Z

.field public abstract:Z

.field public b:Z

.field public break:F

.field public c:Z

.field public case:I

.field public catch:F

.field public class:F

.field public const:C

.field public continue:Z

.field public d:Z

.field public default:Landroid/view/animation/Interpolator;

.field public do:I

.field public e:Z

.field public else:I

.field public extends:[I

.field public f:Z

.field public final:Z

.field public finally:Z

.field public for:I

.field public g:Z

.field public goto:F

.field public h:Z

.field public i:Z

.field public if:I

.field public implements:Z

.field public import:I

.field public instanceof:Z

.field public interface:Z

.field public j:Z

.field public k:Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;

.field public l:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

.field public m:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

.field public n:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

.field public native:I

.field public new:I

.field public o:I

.field public p:Z

.field public package:Z

.field public private:Z

.field public protected:Z

.field public public:I

.field public q:[I

.field public r:Landroidx/core/view/NestedScrollingChildHelper;

.field public return:I

.field public s:Landroidx/core/view/NestedScrollingParentHelper;

.field public static:I

.field public strictfp:Z

.field public super:Z

.field public switch:Landroid/widget/Scroller;

.field public synchronized:Z

.field public t:I

.field public this:F

.field public throw:I

.field public throws:Landroid/view/VelocityTracker;

.field public transient:Z

.field public try:I

.field public u:Landroid/support/v4/e10;

.field public v:I

.field public volatile:Z

.field public w:Landroid/support/v4/e10;

.field public while:I

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x12c

    .line 3
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->try:I

    .line 4
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->case:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 5
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->class:F

    const/16 v0, 0x6e

    .line 6
    iput-char v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const:C

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->throw:I

    .line 8
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->while:I

    .line 9
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->import:I

    .line 10
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->native:I

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 13
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->private:Z

    .line 14
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->abstract:Z

    .line 15
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->continue:Z

    .line 16
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->strictfp:Z

    .line 17
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    .line 18
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->interface:Z

    .line 19
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->protected:Z

    .line 20
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    .line 21
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->implements:Z

    .line 22
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->instanceof:Z

    .line 23
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->synchronized:Z

    .line 24
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:Z

    .line 25
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:Z

    .line 26
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:Z

    .line 27
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:Z

    .line 28
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:Z

    .line 29
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    .line 30
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:Z

    .line 31
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:Z

    .line 32
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:Z

    .line 33
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:Z

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 34
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:[I

    .line 35
    new-instance v3, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v3, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:Landroidx/core/view/NestedScrollingChildHelper;

    .line 36
    new-instance v3, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v3, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:Landroidx/core/view/NestedScrollingParentHelper;

    .line 37
    sget-object v3, Landroid/support/v4/e10;->for:Landroid/support/v4/e10;

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    .line 38
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    const/high16 v3, 0x40200000    # 2.5f

    .line 39
    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:F

    .line 40
    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:F

    .line 42
    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:F

    .line 43
    new-instance v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;

    invoke-direct {v3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 44
    sget-object v3, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    .line 45
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Landroid/support/v4/qm1;

    const-wide/16 v3, 0x0

    .line 46
    iput-wide v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:J

    .line 47
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:I

    .line 48
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:I

    .line 49
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    .line 50
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    const/4 v3, 0x0

    .line 51
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Landroid/view/MotionEvent;

    .line 52
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 53
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Landroid/os/Handler;

    .line 54
    new-instance v4, Landroid/widget/Scroller;

    invoke-direct {v4, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->switch:Landroid/widget/Scroller;

    .line 55
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->throws:Landroid/view/VelocityTracker;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->else:I

    .line 57
    new-instance v4, Landroid/support/v4/i02;

    sget v5, Landroid/support/v4/i02;->if:I

    invoke-direct {v4, v5}, Landroid/support/v4/i02;-><init>(I)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->default:Landroid/view/animation/Interpolator;

    .line 58
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->do:I

    .line 59
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->public:I

    .line 60
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->return:I

    const/high16 v3, 0x42700000    # 60.0f

    .line 61
    invoke-static {v3}, Landroid/support/v4/i02;->new(F)I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    const/high16 v3, 0x42c80000    # 100.0f

    .line 62
    invoke-static {v3}, Landroid/support/v4/i02;->new(F)I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    .line 63
    sget-object v3, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 64
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_android_clipToPadding:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 66
    :cond_0
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_android_clipChildren:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 68
    :cond_1
    sget-object v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b0:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;

    if-eqz v3, :cond_2

    .line 69
    invoke-interface {v3, p1, p0}, Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;->initialize(Landroid/content/Context;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    .line 70
    :cond_2
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDragRate:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->class:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->class:F

    .line 71
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderMaxDragRate:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:F

    .line 72
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterMaxDragRate:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    .line 73
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderTriggerRate:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:F

    .line 74
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterTriggerRate:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:F

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:F

    .line 75
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableRefresh:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    .line 76
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlReboundDuration:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->case:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->case:I

    .line 77
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableLoadMore:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 78
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderHeight:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    .line 79
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterHeight:I

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    .line 80
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderInsetStart:I

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:I

    .line 81
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterInsetStart:I

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:I

    .line 82
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDisableContentWhenRefresh:I

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:Z

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:Z

    .line 83
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDisableContentWhenLoading:I

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:Z

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:Z

    .line 84
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->continue:Z

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->continue:Z

    .line 85
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->strictfp:Z

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->strictfp:Z

    .line 86
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnablePreviewInEditMode:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->interface:Z

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->interface:Z

    .line 87
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableAutoLoadMore:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->implements:Z

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->implements:Z

    .line 88
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableOverScrollBounce:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->protected:Z

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->protected:Z

    .line 89
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnablePureScrollMode:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->instanceof:Z

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->instanceof:Z

    .line 90
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenLoaded:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->synchronized:Z

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->synchronized:Z

    .line 91
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenRefreshed:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:Z

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:Z

    .line 92
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableLoadMoreWhenContentNotFull:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:Z

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:Z

    .line 93
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenLoadFinished:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    .line 94
    sget v8, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenNoMoreData:I

    invoke-virtual {p2, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    .line 95
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableClipHeaderWhenFixedBehind:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->private:Z

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->private:Z

    .line 96
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableClipFooterWhenFixedBehind:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->abstract:Z

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->abstract:Z

    .line 97
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableOverScrollDrag:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    .line 98
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFixedHeaderViewId:I

    iget v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->throw:I

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->throw:I

    .line 99
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFixedFooterViewId:I

    iget v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->while:I

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->while:I

    .line 100
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderTranslationViewId:I

    iget v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->import:I

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->import:I

    .line 101
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterTranslationViewId:I

    iget v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->native:I

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->native:I

    .line 102
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableNestedScrolling:I

    iget-boolean v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:Z

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:Z

    .line 103
    iget-object v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v8, v7}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 104
    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:Z

    if-nez v7, :cond_4

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:Z

    .line 105
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:Z

    if-nez p1, :cond_6

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p1, 0x1

    :goto_3
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:Z

    .line 106
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:Z

    if-nez p1, :cond_8

    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 p1, 0x1

    :goto_5
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:Z

    .line 107
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Landroid/support/v4/e10;->this:Landroid/support/v4/e10;

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    :goto_6
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    .line 108
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Landroid/support/v4/e10;->this:Landroid/support/v4/e10;

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    :goto_7
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    .line 109
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlAccentColor:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 110
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlPrimaryColor:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    if-eqz v3, :cond_c

    if-eqz p1, :cond_b

    new-array v2, v2, [I

    aput v3, v2, v1

    aput p1, v2, v0

    .line 111
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->extends:[I

    goto :goto_8

    :cond_b
    new-array p1, v0, [I

    aput v3, p1, v1

    .line 112
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->extends:[I

    goto :goto_8

    :cond_c
    if-eqz p1, :cond_d

    new-array v2, v2, [I

    aput v1, v2, v1

    aput p1, v2, v0

    .line 113
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->extends:[I

    .line 114
    :cond_d
    :goto_8
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->instanceof:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    if-nez p1, :cond_e

    .line 115
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 116
    :cond_e
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic case(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic do(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic for(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic if(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic new(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static setDefaultRefreshFooterCreator(Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;)V
    .locals 0
    .param p0    # Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;

    return-void
.end method

.method public static setDefaultRefreshHeaderCreator(Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;)V
    .locals 0
    .param p0    # Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a0:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;

    return-void
.end method

.method public static setDefaultRefreshInitializer(Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;)V
    .locals 0
    .param p0    # Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b0:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;

    return-void
.end method

.method public static synthetic try(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public autoLoadMore()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->case:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    int-to-float v2, v1

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    int-to-float v1, v1

    div-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoLoadMore(IIFZ)Z

    move-result v0

    return v0
.end method

.method public autoLoadMore(IIFZ)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FIZ)V

    .line 4
    sget-object p2, Landroid/support/v4/qm1;->Loading:Landroid/support/v4/qm1;

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Landroid/support/v4/qm1;)V

    if-lez p1, :cond_0

    .line 5
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Landroid/os/Handler;

    int-to-long p3, p1

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public autoLoadMoreAnimationOnly()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->case:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    int-to-float v2, v1

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    int-to-float v1, v1

    div-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoLoadMore(IIFZ)Z

    move-result v0

    return v0
.end method

.method public autoRefresh()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->case:I

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    int-to-float v6, v5

    mul-float v4, v4, v6

    mul-float v4, v4, v3

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :cond_1
    int-to-float v3, v5

    div-float/2addr v4, v3

    invoke-virtual {p0, v0, v2, v4, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoRefresh(IIFZ)Z

    move-result v0

    return v0
.end method

.method public autoRefresh(I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->case:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    int-to-float v3, v2

    mul-float v1, v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v1, v1, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoRefresh(IIFZ)Z

    move-result p1

    return p1
.end method

.method public autoRefresh(IIFZ)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$this;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$this;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FIZ)V

    .line 5
    sget-object p2, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Landroid/support/v4/qm1;)V

    if-lez p1, :cond_0

    .line 6
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Landroid/os/Handler;

    int-to-long p3, p1

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public autoRefreshAnimationOnly()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->case:I

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    int-to-float v5, v4

    mul-float v3, v3, v5

    mul-float v3, v3, v2

    const/4 v2, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :cond_1
    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoRefresh(IIFZ)Z

    move-result v0

    return v0
.end method

.method public break(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->instanceof:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public catch(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z
    .locals 0

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->instanceof:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object p1

    sget-object p2, Landroid/support/v4/y02;->case:Landroid/support/v4/y02;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public class(F)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:Z

    if-nez v1, :cond_0

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    .line 3
    :goto_0
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->else:I

    mul-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "\u4f60\u8fd9\u4e48\u6b7b\u62c9\uff0c\u81e3\u59be\u505a\u4e0d\u5230\u554a\uff01"

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v5, Landroid/support/v4/qm1;->TwoLevel:Landroid/support/v4/qm1;

    const/4 v6, 0x1

    if-ne v3, v5, :cond_2

    cmpl-float v5, v1, v2

    if-lez v5, :cond_2

    .line 7
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v5, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v3, v5, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    .line 8
    :cond_2
    sget-object v5, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-ne v3, v5, :cond_5

    cmpl-float v5, v1, v2

    if-ltz v5, :cond_5

    .line 9
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    int-to-float v5, v3

    cmpg-float v5, v1, v5

    if-gez v5, :cond_3

    .line 10
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v5, v1

    invoke-interface {v3, v5, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    .line 11
    :cond_3
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:F

    sub-float/2addr v5, v7

    int-to-float v3, v3

    mul-float v5, v5, v3

    float-to-double v14, v5

    .line 12
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->else:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    sub-int/2addr v3, v5

    int-to-double v6, v3

    int-to-float v3, v5

    sub-float v3, v1, v3

    .line 13
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->class:F

    mul-float v3, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v4, v3

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v2, v4

    cmpl-double v16, v6, v8

    if-nez v16, :cond_4

    move-wide v6, v12

    :cond_4
    div-double/2addr v2, v6

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v12, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v12

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 15
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    :cond_5
    cmpg-float v4, v1, v2

    if-gez v4, :cond_a

    .line 16
    sget-object v2, Landroid/support/v4/qm1;->Loading:Landroid/support/v4/qm1;

    if-eq v3, v2, :cond_7

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 17
    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->implements:Z

    if-eqz v2, :cond_a

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-nez v2, :cond_a

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 18
    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 19
    :cond_7
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    neg-int v3, v2

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_8

    .line 20
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v3, v1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    .line 21
    :cond_8
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    sub-float/2addr v3, v7

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-double v2, v3

    .line 22
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->else:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    sub-int/2addr v4, v5

    int-to-double v6, v4

    int-to-float v4, v5

    add-float/2addr v4, v1

    .line 23
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->class:F

    mul-float v4, v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    .line 24
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v14, v4

    cmpl-double v16, v6, v8

    if-nez v16, :cond_9

    move-wide v6, v12

    :cond_9
    div-double/2addr v14, v6

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v12, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v12

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 25
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_c

    .line 26
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:F

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-double v2, v2

    .line 27
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->else:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 28
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->class:F

    mul-float v6, v6, v1

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v6, v6

    .line 29
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v14, v6

    cmpl-double v16, v4, v8

    if-nez v16, :cond_b

    move-wide v4, v12

    :cond_b
    div-double/2addr v14, v4

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v12, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v12

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 30
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 31
    :cond_c
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-double v2, v2

    .line 32
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->else:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 33
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->class:F

    mul-float v6, v6, v1

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    neg-float v6, v6

    float-to-double v6, v6

    .line 34
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v14, v6

    cmpl-double v16, v4, v8

    if-nez v16, :cond_d

    move-wide v4, v12

    :cond_d
    div-double/2addr v14, v4

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v12, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v12

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 35
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 36
    :goto_1
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->implements:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-nez v2, :cond_f

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_f

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v2, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-eq v1, v2, :cond_f

    sget-object v2, Landroid/support/v4/qm1;->Loading:Landroid/support/v4/qm1;

    if-eq v1, v2, :cond_f

    sget-object v2, Landroid/support/v4/qm1;->LoadFinish:Landroid/support/v4/qm1;

    if-eq v1, v2, :cond_f

    .line 37
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 38
    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Ljava/lang/Runnable;

    .line 39
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    neg-int v2, v2

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_e
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateDirectLoading(Z)V

    .line 41
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Landroid/os/Handler;

    new-instance v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$case;

    invoke-direct {v2, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$case;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->case:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    return-void
.end method

.method public closeHeaderOrFooter()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Landroid/support/v4/qm1;->Loading:Landroid/support/v4/qm1;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->default:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->case:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->else(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->switch:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->switch:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->switch:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 4
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-lez v0, :cond_7

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    if-eqz v2, :cond_7

    :cond_2
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    .line 5
    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6
    :cond_3
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    if-eqz v2, :cond_6

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_5

    if-lez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->switch:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->switch:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    goto :goto_0

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->switch:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float v0, v0, v2

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->switch:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->switch:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->goto(F)V

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->switch:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 12
    :cond_7
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_1
    return-void
.end method

.method public const(Landroid/support/v4/qm1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    if-eq v0, p1, :cond_3

    .line 2
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    .line 3
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Landroid/support/v4/qm1;

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 5
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 6
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Landroid/support/v4/qm1;Landroid/support/v4/qm1;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Landroid/support/v4/qm1;Landroid/support/v4/qm1;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 9
    invoke-interface {v3, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Landroid/support/v4/qm1;Landroid/support/v4/qm1;)V

    .line 10
    :cond_2
    sget-object v0, Landroid/support/v4/qm1;->LoadFinish:Landroid/support/v4/qm1;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Landroid/support/v4/qm1;

    if-eq p1, v0, :cond_4

    .line 13
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Landroid/support/v4/qm1;

    :cond_4
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v2, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v6, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v8, v5, :cond_3

    if-ne v4, v8, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v9, v13

    .line 5
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    int-to-float v3, v5

    div-float/2addr v9, v3

    div-float v8, v12, v3

    const/4 v3, 0x5

    if-eq v6, v2, :cond_5

    if-ne v6, v3, :cond_6

    .line 6
    :cond_5
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final:Z

    if-eqz v4, :cond_6

    .line 7
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this:F

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch:F

    sub-float v5, v8, v5

    add-float/2addr v4, v5

    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this:F

    .line 8
    :cond_6
    iput v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break:F

    .line 9
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch:F

    .line 10
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_a

    .line 11
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    .line 12
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v6, v5, :cond_9

    .line 13
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    if-ne v2, v3, :cond_9

    .line 14
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break:F

    float-to-int v2, v2

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 16
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break:F

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move v11, v3

    :goto_4
    int-to-float v5, v11

    div-float/2addr v4, v5

    .line 17
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-lez v5, :cond_8

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 18
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5, v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    goto :goto_5

    .line 19
    :cond_8
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-gez v5, :cond_9

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 20
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5, v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    :cond_9
    :goto_5
    return v1

    .line 21
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_37

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    if-eqz v4, :cond_37

    :cond_b
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v12, v4, Landroid/support/v4/qm1;->isOpening:Z

    if-nez v12, :cond_c

    iget-boolean v12, v4, Landroid/support/v4/qm1;->isFinishing:Z

    if-eqz v12, :cond_d

    :cond_c
    iget-boolean v4, v4, Landroid/support/v4/qm1;->isHeader:Z

    if-nez v4, :cond_37

    :cond_d
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v12, v4, Landroid/support/v4/qm1;->isOpening:Z

    if-nez v12, :cond_e

    iget-boolean v12, v4, Landroid/support/v4/qm1;->isFinishing:Z

    if-eqz v12, :cond_f

    :cond_e
    iget-boolean v4, v4, Landroid/support/v4/qm1;->isFooter:Z

    if-eqz v4, :cond_f

    goto/16 :goto_e

    .line 22
    :cond_f
    invoke-virtual {v0, v6}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this(I)Z

    move-result v4

    if-nez v4, :cond_36

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v12, v4, Landroid/support/v4/qm1;->isFinishing:Z

    if-nez v12, :cond_36

    sget-object v12, Landroid/support/v4/qm1;->Loading:Landroid/support/v4/qm1;

    if-ne v4, v12, :cond_10

    iget-boolean v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:Z

    if-nez v13, :cond_36

    :cond_10
    sget-object v13, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-ne v4, v13, :cond_11

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:Z

    if-eqz v4, :cond_11

    goto/16 :goto_d

    :cond_11
    const/16 v4, 0x68

    if-eqz v6, :cond_33

    const/4 v2, 0x0

    if-eq v6, v11, :cond_2f

    const/4 v3, 0x3

    if-eq v6, v5, :cond_12

    if-eq v6, v3, :cond_30

    goto/16 :goto_c

    .line 23
    :cond_12
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->goto:F

    sub-float/2addr v9, v5

    .line 24
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this:F

    sub-float v5, v8, v5

    .line 25
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->throws:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 26
    iget-boolean v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final:Z

    if-nez v6, :cond_1f

    iget-char v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const:C

    if-eq v6, v4, :cond_1f

    iget-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v13, :cond_1f

    const/16 v13, 0x76

    if-eq v6, v13, :cond_14

    .line 27
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->do:I

    int-to-float v14, v14

    cmpl-float v6, v6, v14

    if-ltz v6, :cond_13

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpg-float v6, v6, v14

    if-gez v6, :cond_13

    goto :goto_6

    .line 28
    :cond_13
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->do:I

    int-to-float v12, v12

    cmpl-float v6, v6, v12

    if-ltz v6, :cond_1f

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpl-float v6, v6, v12

    if-lez v6, :cond_1f

    iget-char v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const:C

    if-eq v6, v13, :cond_1f

    .line 29
    iput-char v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const:C

    goto/16 :goto_a

    .line 30
    :cond_14
    :goto_6
    iput-char v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const:C

    cmpl-float v4, v5, v7

    if-lez v4, :cond_17

    .line 31
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-ltz v4, :cond_16

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    if-nez v4, :cond_15

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    if-eqz v4, :cond_17

    :cond_15
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 32
    :cond_16
    iput-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final:Z

    .line 33
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->do:I

    int-to-float v4, v4

    sub-float v4, v8, v4

    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this:F

    goto :goto_7

    :cond_17
    cmpg-float v4, v5, v7

    if-gez v4, :cond_1b

    .line 34
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-gtz v4, :cond_1a

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    if-nez v4, :cond_18

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    if-eqz v4, :cond_1b

    :cond_18
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    if-ne v4, v12, :cond_19

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-nez v4, :cond_1a

    :cond_19
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 35
    :cond_1a
    iput-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final:Z

    .line 36
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->do:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this:F

    .line 37
    :cond_1b
    :goto_7
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final:Z

    if-eqz v4, :cond_1f

    .line 38
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this:F

    sub-float v5, v8, v4

    .line 39
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->super:Z

    if-eqz v4, :cond_1c

    .line 40
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 41
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    :cond_1c
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-gtz v6, :cond_1e

    if-nez v6, :cond_1d

    cmpl-float v6, v5, v7

    if-lez v6, :cond_1d

    goto :goto_8

    :cond_1d
    sget-object v6, Landroid/support/v4/qm1;->PullUpToLoad:Landroid/support/v4/qm1;

    goto :goto_9

    :cond_1e
    :goto_8
    sget-object v6, Landroid/support/v4/qm1;->PullDownToRefresh:Landroid/support/v4/qm1;

    :goto_9
    invoke-interface {v4, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 44
    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1f

    .line 45
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 46
    :cond_1f
    :goto_a
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final:Z

    if-eqz v4, :cond_2e

    float-to-int v4, v5

    .line 47
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->new:I

    add-int/2addr v4, v6

    .line 48
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Landroid/support/v4/qm1;

    iget-boolean v12, v6, Landroid/support/v4/qm1;->isHeader:Z

    if-eqz v12, :cond_20

    if-ltz v4, :cond_21

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->for:I

    if-ltz v12, :cond_21

    :cond_20
    iget-boolean v6, v6, Landroid/support/v4/qm1;->isFooter:Z

    if-eqz v6, :cond_2d

    if-gtz v4, :cond_21

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->for:I

    if-lez v6, :cond_2d

    .line 49
    :cond_21
    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->for:I

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    .line 51
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Landroid/view/MotionEvent;

    if-nez v1, :cond_22

    const/16 v16, 0x0

    .line 52
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->goto:F

    add-float v17, v1, v9

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this:F

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    move/from16 v18, v1

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Landroid/view/MotionEvent;

    .line 53
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_22
    const/16 v16, 0x2

    .line 54
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->goto:F

    add-float v17, v1, v9

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this:F

    int-to-float v6, v4

    add-float v18, v1, v6

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 55
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    iget-boolean v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz v6, :cond_23

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->do:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_23

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-gez v5, :cond_23

    .line 57
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    :cond_23
    if-lez v4, :cond_25

    .line 58
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    if-nez v5, :cond_24

    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    if-eqz v5, :cond_25

    :cond_24
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 59
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch:F

    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this:F

    .line 60
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->new:I

    .line 61
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v5, Landroid/support/v4/qm1;->PullDownToRefresh:Landroid/support/v4/qm1;

    invoke-interface {v4, v5}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_b

    :cond_25
    if-gez v4, :cond_27

    .line 62
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    if-nez v5, :cond_26

    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    if-eqz v5, :cond_27

    :cond_26
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 63
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch:F

    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this:F

    .line 64
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->new:I

    .line 65
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v5, Landroid/support/v4/qm1;->PullUpToLoad:Landroid/support/v4/qm1;

    invoke-interface {v4, v5}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_b

    :cond_27
    move v10, v4

    .line 66
    :goto_b
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Landroid/support/v4/qm1;

    iget-boolean v5, v4, Landroid/support/v4/qm1;->isHeader:Z

    if-eqz v5, :cond_28

    if-ltz v10, :cond_29

    :cond_28
    iget-boolean v4, v4, Landroid/support/v4/qm1;->isFooter:Z

    if-eqz v4, :cond_2b

    if-lez v10, :cond_2b

    .line 67
    :cond_29
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-eqz v1, :cond_2a

    .line 68
    invoke-virtual {v0, v7}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->class(F)V

    :cond_2a
    return v11

    .line 69
    :cond_2b
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Landroid/view/MotionEvent;

    if-eqz v4, :cond_2c

    .line 70
    iput-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Landroid/view/MotionEvent;

    .line 71
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 72
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 73
    :cond_2c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    move v4, v10

    :cond_2d
    int-to-float v1, v4

    .line 74
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->class(F)V

    return v11

    .line 75
    :cond_2e
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz v2, :cond_32

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->do:I

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_32

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-gez v2, :cond_32

    .line 76
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    goto :goto_c

    .line 77
    :cond_2f
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->throws:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 78
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->throws:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->return:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 79
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->throws:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->static:I

    .line 80
    invoke-virtual {v0, v7}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->super(F)Z

    .line 81
    :cond_30
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->throws:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    const/16 v3, 0x6e

    .line 82
    iput-char v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const:C

    .line 83
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Landroid/view/MotionEvent;

    if-eqz v3, :cond_31

    .line 84
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 85
    iput-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T:Landroid/view/MotionEvent;

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 87
    iget v7, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->goto:F

    const/4 v9, 0x0

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 88
    invoke-super {v0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 89
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 90
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final()V

    .line 91
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final:Z

    if-eqz v2, :cond_32

    .line 92
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final:Z

    return v11

    .line 93
    :cond_32
    :goto_c
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 94
    :cond_33
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->static:I

    .line 95
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->throws:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 96
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->switch:Landroid/widget/Scroller;

    invoke-virtual {v5, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 97
    iput v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->goto:F

    .line 98
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this:F

    .line 99
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->for:I

    .line 100
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    iput v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->new:I

    .line 101
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final:Z

    .line 102
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->super:Z

    .line 103
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v6, Landroid/support/v4/qm1;->TwoLevel:Landroid/support/v4/qm1;

    if-ne v5, v6, :cond_34

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    div-int/2addr v6, v2

    int-to-float v2, v6

    cmpg-float v2, v5, v2

    if-gez v2, :cond_34

    .line 104
    iput-char v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const:C

    .line 105
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->super:Z

    return v1

    .line 106
    :cond_34
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v2, :cond_35

    .line 107
    invoke-interface {v2, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->onActionDown(Landroid/view/MotionEvent;)V

    :cond_35
    return v11

    :cond_36
    :goto_d
    return v10

    .line 108
    :cond_37
    :goto_e
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_6

    .line 3
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->interface:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_6

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    add-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:I

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Landroid/graphics/Paint;

    if-eqz v4, :cond_4

    .line 6
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v3

    iget-boolean v3, v3, Landroid/support/v4/y02;->for:Z

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v3

    sget-object v4, Landroid/support/v4/y02;->new:Landroid/support/v4/y02;

    if-ne v3, v4, :cond_3

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    add-int/2addr v1, v3

    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v6, v3

    int-to-float v7, v1

    iget-object v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 12
    :cond_4
    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->private:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v3

    sget-object v4, Landroid/support/v4/y02;->case:Landroid/support/v4/y02;

    if-ne v3, v4, :cond_6

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 15
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_5
    :goto_2
    return v2

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_c

    .line 18
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->interface:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_4

    :cond_7
    if-eqz v0, :cond_c

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    add-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 20
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:I

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Landroid/graphics/Paint;

    if-eqz v2, :cond_a

    .line 21
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v1

    iget-boolean v1, v1, Landroid/support/v4/y02;->for:Z

    if-eqz v1, :cond_8

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_3

    .line 24
    :cond_8
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v1

    sget-object v2, Landroid/support/v4/y02;->new:Landroid/support/v4/y02;

    if-ne v1, v2, :cond_9

    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    add-int/2addr v0, v1

    :cond_9
    :goto_3
    const/4 v2, 0x0

    int-to-float v3, v0

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 27
    :cond_a
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->abstract:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v1

    sget-object v2, Landroid/support/v4/y02;->case:Landroid/support/v4/y02;

    if-ne v1, v2, :cond_c

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_b
    :goto_4
    return v2

    .line 32
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public else(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 5
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    int-to-long v0, p4

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$new;

    invoke-direct {p3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$new;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$try;

    invoke-direct {p3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$try;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 11
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 12
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public final()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->TwoLevel:Landroid/support/v4/qm1;

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->static:I

    const/16 v1, -0x3e8

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 4
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->try:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final:Z

    if-eqz v0, :cond_e

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->finishTwoLevel()Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    .line 7
    :cond_1
    sget-object v1, Landroid/support/v4/qm1;->Loading:Landroid/support/v4/qm1;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 8
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v3, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-ne v0, v3, :cond_4

    .line 10
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    if-le v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_3
    if-gez v0, :cond_e

    .line 12
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 13
    :cond_4
    sget-object v4, Landroid/support/v4/qm1;->PullDownToRefresh:Landroid/support/v4/qm1;

    if-ne v0, v4, :cond_5

    .line 14
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Landroid/support/v4/qm1;->PullDownCanceled:Landroid/support/v4/qm1;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    .line 15
    :cond_5
    sget-object v4, Landroid/support/v4/qm1;->PullUpToLoad:Landroid/support/v4/qm1;

    if-ne v0, v4, :cond_6

    .line 16
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Landroid/support/v4/qm1;->PullUpCanceled:Landroid/support/v4/qm1;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 17
    :cond_6
    sget-object v4, Landroid/support/v4/qm1;->ReleaseToRefresh:Landroid/support/v4/qm1;

    if-ne v0, v4, :cond_7

    .line 18
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 19
    :cond_7
    sget-object v3, Landroid/support/v4/qm1;->ReleaseToLoad:Landroid/support/v4/qm1;

    if-ne v0, v3, :cond_8

    .line 20
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 21
    :cond_8
    sget-object v1, Landroid/support/v4/qm1;->ReleaseToTwoLevel:Landroid/support/v4/qm1;

    if-ne v0, v1, :cond_9

    .line 22
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Landroid/support/v4/qm1;->TwoLevelReleased:Landroid/support/v4/qm1;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 23
    :cond_9
    sget-object v1, Landroid/support/v4/qm1;->RefreshReleased:Landroid/support/v4/qm1;

    if-ne v0, v1, :cond_a

    .line 24
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_e

    .line 25
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 26
    :cond_a
    sget-object v1, Landroid/support/v4/qm1;->LoadReleased:Landroid/support/v4/qm1;

    if-ne v0, v1, :cond_b

    .line 27
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_e

    .line 28
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 29
    :cond_b
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-eqz v0, :cond_e

    .line 30
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 31
    :cond_c
    :goto_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    neg-int v3, v1

    if-ge v0, v3, :cond_d

    .line 32
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_d
    if-lez v0, :cond_e

    .line 33
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_e
    :goto_1
    return-void
.end method

.method public finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishLoadMore(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    .line 5
    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;IZZ)V

    if-lez p1, :cond_0

    .line 6
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-object p0
.end method

.method public finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    .line 4
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishLoadMoreWithNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    const/4 v2, 0x0

    .line 2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishRefresh(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 2

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    .line 7
    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$else;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;ILjava/lang/Boolean;Z)V

    if-lez p1, :cond_0

    .line 8
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-object p0
.end method

.method public finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:J

    sub-long/2addr v1, v3

    long-to-int p1, v1

    const/16 v1, 0x12c

    rsub-int p1, p1, 0x12c

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    const/4 v0, 0x1

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, v0, v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishRefreshWithNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    const/4 v2, 0x0

    .line 2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getRefreshFooter()Lcom/scwang/smartrefresh/layout/api/RefreshFooter;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRefreshHeader()Lcom/scwang/smartrefresh/layout/api/RefreshHeader;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getState()Landroid/support/v4/qm1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    return-object v0
.end method

.method public goto(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v2, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/support/v4/qm1;->TwoLevel:Landroid/support/v4/qm1;

    if-ne v1, v2, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$catch;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$catch;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->Loading:Landroid/support/v4/qm1;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 5
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->implements:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 6
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-eq v0, v1, :cond_4

    .line 7
    :cond_3
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$catch;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    neg-int v1, v1

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$catch;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Ljava/lang/Runnable;

    goto :goto_0

    .line 8
    :cond_4
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->protected:Z

    if-eqz v0, :cond_5

    .line 9
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$catch;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$catch;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Ljava/lang/Runnable;

    :cond_5
    :goto_0
    return-void
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_b

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v1, :cond_1

    .line 5
    sget-object v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a0:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;->createRefreshHeader(Landroid/content/Context;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 8
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 9
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;->createRefreshFooter(Landroid/content/Context;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_2

    .line 11
    :cond_2
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 12
    new-instance v1, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 13
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    goto :goto_2

    .line 14
    :cond_3
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:Z

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 15
    :goto_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-nez v0, :cond_9

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_9

    .line 17
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 18
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_8

    :cond_6
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v4, :cond_7

    .line 19
    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_8

    .line 20
    :cond_7
    new-instance v4, Landroid/support/v4/km1;

    invoke-direct {v4, v3}, Landroid/support/v4/km1;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-nez v0, :cond_a

    const/high16 v0, 0x41a00000    # 20.0f

    .line 22
    invoke-static {v0}, Landroid/support/v4/i02;->new(F)I

    move-result v1

    .line 23
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, -0x9a00

    .line 24
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    .line 25
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 26
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 27
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_content_empty:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 28
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;-><init>(II)V

    invoke-super {p0, v3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v0, Landroid/support/v4/km1;

    invoke-direct {v0, v3}, Landroid/support/v4/km1;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    .line 30
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    :cond_a
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->throw:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->while:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 33
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    invoke-interface {v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setScrollBoundaryDecider(Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;)V

    .line 34
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:Z

    invoke-interface {v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    .line 35
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v3, v4, v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setUpComponent(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;Landroid/view/View;Landroid/view/View;)V

    .line 36
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-eqz v0, :cond_b

    .line 37
    sget-object v0, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    .line 38
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->import:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->native:I

    invoke-interface {v0, v2, v1, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->moveSpinner(III)V

    .line 39
    :cond_b
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->extends:[I

    if-eqz v0, :cond_d

    .line 40
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_c

    .line 41
    invoke-interface {v1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    .line 42
    :cond_c
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_d

    .line 43
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->extends:[I

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    .line 44
    :cond_d
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_e

    .line 45
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 46
    :cond_e
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v0

    iget-boolean v0, v0, Landroid/support/v4/y02;->if:Z

    if-eqz v0, :cond_f

    .line 47
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 48
    :cond_f
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v0

    iget-boolean v0, v0, Landroid/support/v4/y02;->if:Z

    if-eqz v0, :cond_10

    .line 49
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_10
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 4
    sget-object v1, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    .line 5
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Landroid/os/Handler;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    :cond_0
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:Z

    .line 8
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Ljava/lang/Runnable;

    .line 9
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 11
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 12
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    .line 14
    :cond_1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_4

    .line 3
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4
    invoke-static {v9}, Landroid/support/v4/i02;->case(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-lt v6, v7, :cond_0

    if-ne v4, v8, :cond_1

    :cond_0
    move v5, v4

    const/4 v6, 0x2

    goto :goto_2

    .line 5
    :cond_1
    instance-of v7, v9, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v7, :cond_3

    if-ge v6, v8, :cond_3

    if-lez v4, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move v5, v4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ltz v5, :cond_7

    .line 6
    new-instance v4, Landroid/support/v4/km1;

    invoke-super {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/support/v4/km1;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-ne v5, v8, :cond_6

    if-ne v0, v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    if-ne v0, v7, :cond_7

    const/4 v1, -0x1

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, -0x1

    :goto_3
    const/4 v7, -0x1

    :goto_4
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v0, :cond_10

    .line 7
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v4, v1, :cond_d

    if-eq v4, v7, :cond_8

    if-ne v1, v2, :cond_8

    .line 8
    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v6, :cond_8

    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v6, :cond_8

    goto :goto_9

    :cond_8
    if-eq v4, v7, :cond_9

    if-ne v7, v2, :cond_f

    .line 9
    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_f

    .line 10
    :cond_9
    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:Z

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v6, 0x1

    :goto_7
    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 11
    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_c

    check-cast v5, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    goto :goto_8

    :cond_c
    new-instance v6, Lcom/scwang/smartrefresh/layout/impl/RefreshFooterWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smartrefresh/layout/impl/RefreshFooterWrapper;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_8
    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    goto :goto_b

    .line 12
    :cond_d
    :goto_9
    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v6, :cond_e

    check-cast v5, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    goto :goto_a

    :cond_e
    new-instance v6, Lcom/scwang/smartrefresh/layout/impl/RefreshHeaderWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smartrefresh/layout/impl/RefreshHeaderWrapper;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_a
    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    :cond_f
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_10
    return-void

    .line 13
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u6700\u591a\u53ea\u652f\u63013\u4e2a\u5b50View\uff0cMost only support three sub view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method

.method public onLayout(ZIIII)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p3, :cond_13

    .line 5
    invoke-super {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_12

    sget v1, Lcom/scwang/smartrefresh/layout/R$string;->srl_component_falsify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto/16 :goto_c

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->interface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 9
    :goto_1
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 11
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    :goto_2
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, p1

    .line 13
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p2

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-eqz v1, :cond_3

    .line 16
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->continue:Z

    iget-object v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p0, v1, v8}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    add-int/2addr v4, v1

    add-int/2addr v7, v1

    .line 18
    :cond_3
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_8

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->interface:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 21
    :goto_3
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 23
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_6

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_4

    :cond_6
    sget-object v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    :goto_4
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 25
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:I

    add-int/2addr v4, v6

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-nez v1, :cond_7

    .line 28
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v1

    sget-object v8, Landroid/support/v4/y02;->new:Landroid/support/v4/y02;

    if-ne v1, v8, :cond_7

    .line 29
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    sub-int/2addr v4, v1

    sub-int/2addr v7, v1

    .line 30
    :cond_7
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 31
    :cond_8
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_12

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->interface:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 33
    :goto_5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 35
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_a

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_6

    :cond_a
    sget-object v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 36
    :goto_6
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v3

    .line 37
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 38
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:I

    sub-int/2addr v5, v6

    .line 39
    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 40
    invoke-interface {v6}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v6

    sget-object v7, Landroid/support/v4/y02;->new:Landroid/support/v4/y02;

    if-ne v6, v7, :cond_c

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 41
    invoke-virtual {p0, v6}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 42
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v5

    .line 43
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 44
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_b

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    add-int v7, p2, p2

    add-int/2addr v7, v6

    .line 45
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v7

    .line 46
    :cond_c
    sget-object v6, Landroid/support/v4/y02;->goto:Landroid/support/v4/y02;

    if-ne v3, v6, :cond_d

    .line 47
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:I

    sub-int v5, v1, v2

    goto :goto_b

    :cond_d
    if-nez v2, :cond_10

    .line 48
    sget-object v1, Landroid/support/v4/y02;->else:Landroid/support/v4/y02;

    if-eq v3, v1, :cond_10

    sget-object v1, Landroid/support/v4/y02;->case:Landroid/support/v4/y02;

    if-ne v3, v1, :cond_e

    goto :goto_9

    .line 49
    :cond_e
    iget-boolean v1, v3, Landroid/support/v4/y02;->for:Z

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-gez v1, :cond_11

    .line 50
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    neg-int v1, v1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_a

    .line 51
    :cond_10
    :goto_9
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    :goto_a
    sub-int/2addr v5, v1

    .line 52
    :cond_11
    :goto_b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v4

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v5

    .line 54
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_12
    :goto_c
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->interface:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v6, :cond_21

    .line 3
    invoke-super {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1f

    sget v10, Lcom/scwang/smartrefresh/layout/R$string;->srl_component_falsify:I

    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_1

    goto/16 :goto_12

    .line 5
    :cond_1
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v10, :cond_d

    invoke-interface {v10}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v10

    if-ne v10, v9, :cond_d

    .line 6
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v10}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v10

    .line 7
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 8
    instance-of v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2

    move-object v4, v15

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    :goto_2
    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v14

    iget v14, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v12, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    .line 10
    iget v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    .line 11
    iget-object v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    iget v5, v11, Landroid/support/v4/e10;->do:I

    sget-object v13, Landroid/support/v4/e10;->this:Landroid/support/v4/e10;

    iget v13, v13, Landroid/support/v4/e10;->do:I

    if-ge v5, v13, :cond_7

    .line 12
    iget v5, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_4

    .line 13
    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v13

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v13

    .line 14
    sget-object v13, Landroid/support/v4/e10;->else:Landroid/support/v4/e10;

    invoke-virtual {v11, v13}, Landroid/support/v4/e10;->do(Landroid/support/v4/e10;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 15
    iget v11, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v14, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v14

    iget v14, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v14

    iput v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    .line 16
    iput-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    :cond_3
    move v14, v5

    goto :goto_3

    :cond_4
    const/4 v11, -0x2

    if-ne v5, v11, :cond_7

    .line 17
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v5

    sget-object v11, Landroid/support/v4/y02;->goto:Landroid/support/v4/y02;

    if-ne v5, v11, :cond_5

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    iget-boolean v5, v5, Landroid/support/v4/e10;->if:Z

    if-nez v5, :cond_7

    .line 18
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v11

    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v11, -0x80000000

    .line 19
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/view/View;->measure(II)V

    .line 20
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-lez v11, :cond_7

    if-eq v11, v5, :cond_6

    .line 21
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    sget-object v13, Landroid/support/v4/e10;->try:Landroid/support/v4/e10;

    invoke-virtual {v5, v13}, Landroid/support/v4/e10;->do(Landroid/support/v4/e10;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 22
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v5

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v5

    iput v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    .line 23
    iput-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    :cond_6
    const/4 v14, -0x1

    .line 24
    :cond_7
    :goto_3
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v5

    sget-object v11, Landroid/support/v4/y02;->goto:Landroid/support/v4/y02;

    if-ne v5, v11, :cond_8

    .line 25
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    const/4 v5, -0x1

    const/4 v11, 0x0

    goto :goto_6

    .line 26
    :cond_8
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v5

    iget-boolean v5, v5, Landroid/support/v4/y02;->for:Z

    if-eqz v5, :cond_a

    if-nez v3, :cond_a

    .line 27
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    :goto_4
    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    :goto_5
    const/4 v5, -0x1

    :goto_6
    if-eq v14, v5, :cond_b

    .line 28
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v5

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v14, v4

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v10, v12, v4}, Landroid/view/View;->measure(II)V

    .line 29
    :cond_b
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    iget-boolean v5, v4, Landroid/support/v4/e10;->if:Z

    if-nez v5, :cond_c

    .line 30
    invoke-virtual {v4}, Landroid/support/v4/e10;->if()Landroid/support/v4/e10;

    move-result-object v4

    iput-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    .line 31
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:F

    int-to-float v13, v11

    mul-float v12, v12, v13

    float-to-int v12, v12

    invoke-interface {v4, v5, v11, v12}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    :cond_c
    if-eqz v3, :cond_d

    .line 32
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {v0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 33
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    .line 34
    :cond_d
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v4, :cond_18

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v9, :cond_18

    .line 35
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 37
    instance-of v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_e

    move-object v10, v5

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_7

    :cond_e
    sget-object v10, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 38
    :goto_7
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    iget v12, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 39
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    .line 40
    iget-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    iget v14, v13, Landroid/support/v4/e10;->do:I

    sget-object v15, Landroid/support/v4/e10;->this:Landroid/support/v4/e10;

    iget v15, v15, Landroid/support/v4/e10;->do:I

    if-ge v14, v15, :cond_12

    .line 41
    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v14, :cond_f

    .line 42
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v12

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v14

    .line 43
    sget-object v14, Landroid/support/v4/e10;->else:Landroid/support/v4/e10;

    invoke-virtual {v13, v14}, Landroid/support/v4/e10;->do(Landroid/support/v4/e10;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 44
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v13

    iput v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    .line 45
    iput-object v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    goto :goto_8

    :cond_f
    const/4 v5, -0x2

    if-ne v14, v5, :cond_12

    .line 46
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v5

    sget-object v13, Landroid/support/v4/y02;->goto:Landroid/support/v4/y02;

    if-ne v5, v13, :cond_10

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    iget-boolean v5, v5, Landroid/support/v4/e10;->if:Z

    if-nez v5, :cond_12

    .line 47
    :cond_10
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v13

    const/4 v13, 0x0

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v13, -0x80000000

    .line 48
    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v4, v11, v13}, Landroid/view/View;->measure(II)V

    .line 49
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    if-lez v13, :cond_12

    if-eq v13, v5, :cond_11

    .line 50
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    sget-object v12, Landroid/support/v4/e10;->try:Landroid/support/v4/e10;

    invoke-virtual {v5, v12}, Landroid/support/v4/e10;->do(Landroid/support/v4/e10;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 51
    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v5

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v5

    iput v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    .line 52
    iput-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    :cond_11
    const/4 v5, -0x1

    goto :goto_9

    :cond_12
    :goto_8
    move v5, v12

    .line 53
    :goto_9
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v12}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v12

    sget-object v13, Landroid/support/v4/y02;->goto:Landroid/support/v4/y02;

    if-ne v12, v13, :cond_14

    .line 54
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    :cond_13
    const/4 v12, 0x0

    goto :goto_b

    .line 55
    :cond_14
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v12}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v12

    iget-boolean v12, v12, Landroid/support/v4/y02;->for:Z

    if-eqz v12, :cond_13

    if-nez v3, :cond_13

    .line 56
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v5

    if-eqz v5, :cond_15

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    neg-int v5, v5

    goto :goto_a

    :cond_15
    const/4 v5, 0x0

    :goto_a
    const/4 v12, 0x0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_b
    const/4 v13, -0x1

    if-eq v5, v13, :cond_16

    .line 57
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v13

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v10

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v11, v5}, Landroid/view/View;->measure(II)V

    .line 58
    :cond_16
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    iget-boolean v10, v5, Landroid/support/v4/e10;->if:Z

    if-nez v10, :cond_17

    .line 59
    invoke-virtual {v5}, Landroid/support/v4/e10;->if()Landroid/support/v4/e10;

    move-result-object v5

    iput-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    .line 60
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    int-to-float v14, v11

    mul-float v13, v13, v14

    float-to-int v13, v13

    invoke-interface {v5, v10, v11, v13}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    :cond_17
    if-eqz v3, :cond_19

    .line 61
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 62
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    goto :goto_c

    :cond_18
    const/4 v12, 0x0

    .line 63
    :cond_19
    :goto_c
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v4, :cond_20

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v9, :cond_20

    .line 64
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 66
    instance-of v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_1a

    move-object v9, v5

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_d

    :cond_1a
    sget-object v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 67
    :goto_d
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v10, :cond_1b

    iget-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    invoke-virtual {v0, v10}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v10

    if-eqz v10, :cond_1b

    iget-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->continue:Z

    iget-object v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v0, v10, v11}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v10

    if-eqz v10, :cond_1b

    const/4 v11, 0x1

    goto :goto_e

    :cond_1b
    const/4 v11, 0x0

    .line 68
    :goto_e
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v10, :cond_1c

    iget-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {v0, v10}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v10

    if-eqz v10, :cond_1c

    iget-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->strictfp:Z

    iget-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v0, v10, v13}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x1

    goto :goto_f

    :cond_1c
    const/4 v10, 0x0

    .line 69
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    invoke-static {v1, v13, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v13

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v9

    if-eqz v3, :cond_1d

    if-eqz v11, :cond_1d

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    goto :goto_10

    :cond_1d
    const/4 v11, 0x0

    :goto_10
    add-int/2addr v14, v11

    if-eqz v3, :cond_1e

    if-eqz v10, :cond_1e

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    goto :goto_11

    :cond_1e
    const/4 v11, 0x0

    :goto_11
    add-int/2addr v14, v11

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    invoke-static {v2, v14, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 73
    invoke-virtual {v4, v13, v5}, Landroid/view/View;->measure(II)V

    .line 74
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    goto :goto_13

    :cond_1f
    :goto_12
    const/4 v12, 0x0

    :cond_20
    :goto_13
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 75
    :cond_21
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    .line 76
    invoke-static {v8, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    .line 77
    invoke-super {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break:F

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_2

    :cond_0
    neg-float p1, p3

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->super(F)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    mul-int v0, p3, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 3
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    .line 4
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    move v1, p1

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    move v1, p3

    .line 6
    :goto_0
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->class(F)V

    goto :goto_1

    :cond_1
    if-lez p3, :cond_2

    .line 7
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz v0, :cond_2

    sub-int/2addr p1, p3

    .line 8
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    int-to-float p1, p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->class(F)V

    move v1, p3

    .line 10
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:Landroidx/core/view/NestedScrollingChildHelper;

    sub-int/2addr p3, v1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    const/4 p1, 0x1

    .line 11
    aget p2, p4, p1

    add-int/2addr p2, v1

    aput p2, p4, p1

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:Landroidx/core/view/NestedScrollingChildHelper;

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:[I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:[I

    const/4 p4, 0x1

    aget p2, p2, p4

    add-int/2addr p5, p2

    if-gez p5, :cond_1

    .line 3
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    if-eqz p2, :cond_1

    :cond_0
    iget p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;->canRefresh(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_1
    if-lez p5, :cond_7

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    if-eqz p2, :cond_7

    :cond_2
    iget p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    .line 4
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;->canLoadMore(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 5
    :cond_3
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Landroid/support/v4/qm1;

    sget-object v0, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    if-eq p2, v0, :cond_4

    iget-boolean p2, p2, Landroid/support/v4/qm1;->isOpening:Z

    if-eqz p2, :cond_6

    .line 6
    :cond_4
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-lez p5, :cond_5

    sget-object v0, Landroid/support/v4/qm1;->PullUpToLoad:Landroid/support/v4/qm1;

    goto :goto_0

    :cond_5
    sget-object v0, Landroid/support/v4/qm1;->PullDownToRefresh:Landroid/support/v4/qm1;

    :goto_0
    invoke-interface {p2, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-nez p1, :cond_6

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 8
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_6

    .line 9
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 10
    :cond_6
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    sub-int/2addr p1, p5

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->class(F)V

    .line 11
    :cond_7
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz p1, :cond_8

    if-gez p3, :cond_8

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    :cond_8
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:Landroidx/core/view/NestedScrollingChildHelper;

    and-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 3
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:Z

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->this(I)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_1
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:Z

    .line 3
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:I

    .line 4
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->final()V

    .line 5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public resetNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public setDisableContentWhenLoading(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:Z

    return-object p0
.end method

.method public setDisableContentWhenRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:Z

    return-object p0
.end method

.method public setDragRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->class:F

    return-object p0
.end method

.method public setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->implements:Z

    return-object p0
.end method

.method public setEnableClipFooterWhenFixedBehind(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->abstract:Z

    return-object p0
.end method

.method public setEnableClipHeaderWhenFixedBehind(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->private:Z

    return-object p0
.end method

.method public setEnableFooterFollowWhenLoadFinished(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    return-object p0
.end method

.method public setEnableFooterFollowWhenNoMoreData(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    return-object p0
.end method

.method public setEnableFooterTranslationContent(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->strictfp:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:Z

    return-object p0
.end method

.method public setEnableHeaderTranslationContent(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->continue:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:Z

    return-object p0
.end method

.method public setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:Z

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    return-object p0
.end method

.method public setEnableLoadMoreWhenContentNotFull(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:Z

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    :cond_0
    return-object p0
.end method

.method public setEnableNestedScroll(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-object p0
.end method

.method public setEnableOverScrollBounce(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->protected:Z

    return-object p0
.end method

.method public setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    return-object p0
.end method

.method public setEnablePureScrollMode(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->instanceof:Z

    return-object p0
.end method

.method public setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    return-object p0
.end method

.method public setEnableScrollContentWhenLoaded(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->synchronized:Z

    return-object p0
.end method

.method public setEnableScrollContentWhenRefreshed(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:Z

    return-object p0
.end method

.method public setFooterHeight(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/support/v4/i02;->new(F)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    sget-object v1, Landroid/support/v4/e10;->class:Landroid/support/v4/e10;

    invoke-virtual {v0, v1}, Landroid/support/v4/e10;->do(Landroid/support/v4/e10;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    .line 5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    iget-boolean v0, v0, Landroid/support/v4/e10;->if:Z

    if-eqz v0, :cond_4

    .line 6
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object p1

    .line 7
    sget-object v0, Landroid/support/v4/y02;->goto:Landroid/support/v4/y02;

    if-eq p1, v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/y02;->for:Z

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 10
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 12
    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 13
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 14
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:I

    sub-int/2addr v2, v4

    sget-object v4, Landroid/support/v4/y02;->new:Landroid/support/v4/y02;

    if-eq p1, v4, :cond_2

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    :cond_2
    sub-int/2addr v2, v6

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, p1, v4}, Landroid/view/View;->layout(IIII)V

    .line 16
    :cond_3
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    .line 17
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    goto :goto_1

    .line 18
    :cond_4
    sget-object p1, Landroid/support/v4/e10;->catch:Landroid/support/v4/e10;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    :cond_5
    :goto_1
    return-object p0
.end method

.method public setFooterInsetStart(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/i02;->new(F)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:I

    return-object p0
.end method

.method public setFooterMaxDragRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    int-to-float v3, v2

    mul-float v3, v3, p1

    float-to-int p1, v3

    invoke-interface {v0, v1, v2, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    invoke-virtual {p1}, Landroid/support/v4/e10;->for()Landroid/support/v4/e10;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    :goto_0
    return-object p0
.end method

.method public setFooterTriggerRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:F

    return-object p0
.end method

.method public setHeaderHeight(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/support/v4/i02;->new(F)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    sget-object v1, Landroid/support/v4/e10;->class:Landroid/support/v4/e10;

    invoke-virtual {v0, v1}, Landroid/support/v4/e10;->do(Landroid/support/v4/e10;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    .line 5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    iget-boolean v0, v0, Landroid/support/v4/e10;->if:Z

    if-eqz v0, :cond_4

    .line 6
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object p1

    .line 7
    sget-object v0, Landroid/support/v4/y02;->goto:Landroid/support/v4/y02;

    if-eq p1, v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/y02;->for:Z

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 10
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 12
    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 13
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 14
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:I

    add-int/2addr v2, v4

    sget-object v4, Landroid/support/v4/y02;->new:Landroid/support/v4/y02;

    if-ne p1, v4, :cond_2

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    :cond_2
    sub-int/2addr v2, v6

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, p1, v4}, Landroid/view/View;->layout(IIII)V

    .line 16
    :cond_3
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    .line 17
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    goto :goto_1

    .line 18
    :cond_4
    sget-object p1, Landroid/support/v4/e10;->catch:Landroid/support/v4/e10;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    :cond_5
    :goto_1
    return-object p0
.end method

.method public setHeaderInsetStart(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/i02;->new(F)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:I

    return-object p0
.end method

.method public setHeaderMaxDragRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:F

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    int-to-float v3, v2

    mul-float p1, p1, v3

    float-to-int p1, p1

    invoke-interface {v0, v1, v2, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    invoke-virtual {p1}, Landroid/support/v4/e10;->for()Landroid/support/v4/e10;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    :goto_0
    return-object p0
.end method

.method public setHeaderTriggerRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:F

    return-object p0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:Z

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setNoMoreData(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->Loading:Landroid/support/v4/qm1;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMoreWithNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-object p0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-eq v0, p1, :cond_2

    .line 4
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;->setNoMoreData(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:Z

    .line 8
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 9
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object p1

    sget-object v0, Landroid/support/v4/y02;->new:Landroid/support/v4/y02;

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 10
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->catch(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:Z

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Footer:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " NoMoreData is not supported.(\u4e0d\u652f\u6301NoMoreData\uff0c\u8bf7\u4f7f\u7528[ClassicsFooter]\u6216\u8005[\u81ea\u5b9a\u4e49Footer\u5e76\u5b9e\u73b0setNoMoreData\u65b9\u6cd5\u4e14\u8fd4\u56detrue])"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

    .line 2
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    return-object p0
.end method

.method public setOnMultiPurposeListener(Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    return-object p0
.end method

.method public setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;

    return-object p0
.end method

.method public setOnRefreshLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;

    .line 2
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

    .line 3
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    return-object p0
.end method

.method public varargs setPrimaryColors([I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->extends:[I

    return-object p0
.end method

.method public varargs setPrimaryColorsId([I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    aget v3, p1, v1

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setPrimaryColors([I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-object p0
.end method

.method public setReboundDuration(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->case:I

    return-object p0
.end method

.method public setReboundInterpolator(Landroid/view/animation/Interpolator;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0
    .param p1    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->default:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setRefreshContent(Landroid/view/View;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshContent(Landroid/view/View;II)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshContent(Landroid/view/View;II)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;

    invoke-direct {v1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;-><init>(II)V

    invoke-super {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance p2, Landroid/support/v4/km1;

    invoke-direct {p2, p1}, Landroid/support/v4/km1;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    .line 6
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    if-eqz p1, :cond_1

    .line 7
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->throw:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 8
    iget p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->while:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 9
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    invoke-interface {p3, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setScrollBoundaryDecider(Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;)V

    .line 10
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:Z

    invoke-interface {p3, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    .line 11
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p3, v0, p1, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setUpComponent(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;Landroid/view/View;Landroid/view/View;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object p1

    iget-boolean p1, p1, Landroid/support/v4/y02;->if:Z

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object p1

    iget-boolean p1, p1, Landroid/support/v4/y02;->if:Z

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_3
    return-object p0
.end method

.method public setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshFooter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshFooter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    .line 6
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:I

    .line 7
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:Z

    .line 8
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    .line 9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    invoke-virtual {v0}, Landroid/support/v4/e10;->for()Landroid/support/v4/e10;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/support/v4/e10;

    .line 10
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    .line 11
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v0

    iget-boolean v0, v0, Landroid/support/v4/y02;->if:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;

    invoke-direct {v1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;-><init>(II)V

    invoke-super {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;

    invoke-direct {v1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;-><init>(II)V

    invoke-super {p0, v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 14
    :goto_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->extends:[I

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p2, :cond_4

    .line 15
    invoke-interface {p2, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    :cond_4
    return-object p0
.end method

.method public setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshHeader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshHeader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:I

    .line 6
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    .line 7
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    invoke-virtual {v0}, Landroid/support/v4/e10;->for()Landroid/support/v4/e10;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:Landroid/support/v4/e10;

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v0

    iget-boolean v0, v0, Landroid/support/v4/y02;->if:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;

    invoke-direct {v1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;-><init>(II)V

    invoke-super {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;

    invoke-direct {v1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$const;-><init>(II)V

    invoke-super {p0, v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->extends:[I

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p2, :cond_2

    .line 12
    invoke-interface {p2, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    :cond_2
    return-object p0
.end method

.method public setScrollBoundaryDecider(Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setScrollBoundaryDecider(Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;)V

    :cond_0
    return-object p0
.end method

.method public setStateDirectLoading(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->Loading:Landroid/support/v4/qm1;

    if-eq v0, v1, :cond_4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    .line 4
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {v0, p0}, Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;->onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-nez v0, :cond_1

    const/16 v0, 0x7d0

    .line 8
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_2

    .line 10
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {v0, p0, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v1, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    .line 12
    invoke-interface {v0, p0}, Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;->onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onFooterStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)V

    :cond_4
    return-void
.end method

.method public setStateLoading(Z)V
    .locals 6

    .line 1
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$if;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$if;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    .line 2
    sget-object p1, Landroid/support/v4/qm1;->LoadReleased:Landroid/support/v4/qm1;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    neg-int v1, v1

    invoke-interface {p1, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_1

    .line 6
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    int-to-float v4, v2

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v3, v2, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v3, :cond_2

    .line 8
    check-cast v2, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:F

    int-to-float v5, v3

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onFooterReleased(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)V

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    return-void
.end method

.method public setStateRefreshing(Z)V
    .locals 6

    .line 1
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$for;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$for;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    .line 2
    sget-object p1, Landroid/support/v4/qm1;->RefreshReleased:Landroid/support/v4/qm1;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    invoke-interface {p1, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_1

    .line 6
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:F

    int-to-float v4, v2

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v3, v2, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v3, :cond_2

    .line 8
    check-cast v2, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:F

    int-to-float v5, v3

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onHeaderReleased(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)V

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    return-void
.end method

.method public setViceState(Landroid/support/v4/qm1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v1, v0, Landroid/support/v4/qm1;->isDragging:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/qm1;->isHeader:Z

    iget-boolean v1, p1, Landroid/support/v4/qm1;->isHeader:Z

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Landroid/support/v4/qm1;

    if-eq v0, p1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Landroid/support/v4/qm1;

    :cond_1
    return-void
.end method

.method public super(F)Z
    .locals 13

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 1
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->static:I

    int-to-float p1, p1

    .line 2
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleY()F

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    neg-float p1, p1

    .line 6
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->public:I

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    .line 7
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    int-to-float v2, v1

    mul-float v2, v2, p1

    cmpg-float v2, v2, v0

    if-gez v2, :cond_4

    .line 8
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v4, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    const/4 v5, 0x1

    if-eq v2, v4, :cond_3

    sget-object v4, Landroid/support/v4/qm1;->Loading:Landroid/support/v4/qm1;

    if-eq v2, v4, :cond_3

    if-gez v1, :cond_2

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:Z

    if-eqz v4, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-boolean v2, v2, Landroid/support/v4/qm1;->isReleaseToOpening:Z

    if-eqz v2, :cond_4

    return v5

    .line 10
    :cond_3
    :goto_0
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;F)V

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$class;->do()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Ljava/lang/Runnable;

    return v5

    :cond_4
    cmpg-float v2, p1, v0

    if-gez v2, :cond_7

    .line 11
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->protected:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    if-nez v2, :cond_9

    :cond_5
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v4, Landroid/support/v4/qm1;->Loading:Landroid/support/v4/qm1;

    if-ne v2, v4, :cond_6

    if-gez v1, :cond_9

    :cond_6
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->implements:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->package:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->break(Z)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_7
    cmpl-float v0, p1, v0

    if-lez v0, :cond_a

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->protected:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finally:Z

    if-nez v0, :cond_9

    :cond_8
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->transient:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    if-gtz v0, :cond_a

    .line 12
    :cond_9
    iput-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S:Z

    .line 13
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->switch:Landroid/widget/Scroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    neg-float p1, p1

    float-to-int v8, p1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, -0x7fffffff

    const v12, 0x7fffffff

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 14
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->switch:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    return v3
.end method

.method public this(I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_5

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    iget-boolean v2, p1, Landroid/support/v4/qm1;->isFinishing:Z

    if-nez v2, :cond_3

    sget-object v2, Landroid/support/v4/qm1;->TwoLevelReleased:Landroid/support/v4/qm1;

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v2, Landroid/support/v4/qm1;->PullDownCanceled:Landroid/support/v4/qm1;

    if-ne p1, v2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v2, Landroid/support/v4/qm1;->PullDownToRefresh:Landroid/support/v4/qm1;

    invoke-interface {p1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v2, Landroid/support/v4/qm1;->PullUpCanceled:Landroid/support/v4/qm1;

    if-ne p1, v2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v2, Landroid/support/v4/qm1;->PullUpToLoad:Landroid/support/v4/qm1;

    invoke-interface {p1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    .line 9
    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U:Ljava/lang/Runnable;

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method
