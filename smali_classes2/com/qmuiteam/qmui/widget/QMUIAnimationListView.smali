.class public Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$else;,
        Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;,
        Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator;
    }
.end annotation


# static fields
.field private static final import:Ljava/lang/String; = "QMUIAnimationListView"

.field private static final native:J = 0x12cL

.field private static final public:J = 0x0L

.field private static final return:J = 0x3e8L

.field private static final static:F = 0.5f


# instance fields
.field private break:Landroid/widget/ListAdapter;

.field private final case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator;",
            ">;"
        }
    .end annotation
.end field

.field private catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

.field private class:Z

.field private const:I

.field public final do:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator;",
            ">;"
        }
    .end annotation
.end field

.field private final:J

.field public final for:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private goto:J

.field public final if:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final new:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private super:F

.field private this:Landroid/animation/ValueAnimator;

.field private throw:Landroid/view/animation/Interpolator;

.field public final try:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private while:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->do:Landroidx/collection/LongSparseArray;

    .line 4
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->if:Landroidx/collection/LongSparseArray;

    .line 5
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->new:Ljava/util/Set;

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->try:Ljava/util/Set;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->case:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->else:Ljava/util/List;

    const-wide/16 p1, 0x0

    .line 10
    iput-wide p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->goto:J

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->class:Z

    .line 12
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->const:I

    .line 13
    iput-wide p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->final:J

    const/high16 p1, 0x3f000000    # 0.5f

    .line 14
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->super:F

    .line 15
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->throw:Landroid/view/animation/Interpolator;

    .line 16
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->while:Z

    .line 17
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->import()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->do:Landroidx/collection/LongSparseArray;

    .line 20
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->if:Landroidx/collection/LongSparseArray;

    .line 21
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    .line 22
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->new:Ljava/util/Set;

    .line 23
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->try:Ljava/util/Set;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->case:Ljava/util/List;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->else:Ljava/util/List;

    const-wide/16 p1, 0x0

    .line 26
    iput-wide p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->goto:J

    const/4 p3, 0x0

    .line 27
    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->class:Z

    .line 28
    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->const:I

    .line 29
    iput-wide p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->final:J

    const/high16 p1, 0x3f000000    # 0.5f

    .line 30
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->super:F

    .line 31
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->throw:Landroid/view/animation/Interpolator;

    .line 32
    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->while:Z

    .line 33
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->import()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->do:Landroidx/collection/LongSparseArray;

    .line 36
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->if:Landroidx/collection/LongSparseArray;

    .line 37
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    .line 38
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->new:Ljava/util/Set;

    .line 39
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->try:Ljava/util/Set;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->case:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->else:Ljava/util/List;

    const-wide/16 p1, 0x0

    .line 42
    iput-wide p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->goto:J

    const/4 p3, 0x0

    .line 43
    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->class:Z

    .line 44
    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->const:I

    .line 45
    iput-wide p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->final:J

    const/high16 p1, 0x3f000000    # 0.5f

    .line 46
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->super:F

    .line 47
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->throw:Landroid/view/animation/Interpolator;

    .line 48
    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->while:Z

    .line 49
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->import()V

    return-void
.end method

.method private break(Landroid/animation/Animator$AnimatorListener;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->do:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 4
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->do:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 5
    invoke-virtual {p0, v4, v5}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->while(J)I

    move-result v6

    if-gez v6, :cond_0

    .line 6
    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->if:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 7
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 8
    invoke-virtual {p0, v6}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->const(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v6

    .line 9
    iget-object v7, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->if:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v4, v5}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 10
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 12
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 13
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->do:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_2
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->while:Z

    if-eqz v1, :cond_3

    .line 15
    :goto_2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->if:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 16
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->if:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    .line 17
    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 18
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->if:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 19
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 20
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 22
    :cond_4
    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_3
    return-void
.end method

.method public static synthetic case(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->public()V

    return-void
.end method

.method private catch()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->for(Z)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->this:Landroid/animation/ValueAnimator;

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->while:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 7
    :cond_1
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->class:Z

    .line 8
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 10
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->public()V

    return-void
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    return-object p0
.end method

.method public static synthetic for(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->goto:J

    return-wide p1
.end method

.method private goto()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setClickable(Z)V

    .line 3
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;-><init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)V

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->break(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic if(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->this()V

    return-void
.end method

.method private import()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setWillNotDraw(Z)V

    return-void
.end method

.method public static synthetic new(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch()V

    return-void
.end method

.method private public()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->else:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->class:Z

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->else:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator;

    .line 4
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->break:Landroid/widget/ListAdapter;

    invoke-interface {v1, v2}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator;->manipulate(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->else:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->notifyDataSetChanged()V

    .line 7
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$try;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$try;-><init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 9
    :cond_2
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->class:Z

    .line 10
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->static()V

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator;

    .line 12
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->break:Landroid/widget/ListAdapter;

    invoke-interface {v1, v2}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator;->manipulate(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->goto()V

    :goto_2
    return-void
.end method

.method private static()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->do:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->if:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->new:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->try:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->for(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 9
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 10
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    add-int v6, v2, v3

    invoke-virtual {v5, v6}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->getItemId(I)J

    move-result-wide v5

    .line 11
    iget-object v7, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->do:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v5, v6, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 12
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->if:Landroidx/collection/LongSparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v2, :cond_1

    .line 13
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    invoke-virtual {v3, v1}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->getItemId(I)J

    move-result-wide v3

    .line 14
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->new:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->getCount()I

    move-result v1

    add-int/2addr v2, v0

    :goto_2
    if-ge v2, v1, :cond_2

    .line 16
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->getItemId(I)J

    move-result-wide v3

    .line 17
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->try:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private this()V
    .locals 14

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 4
    iget-boolean v3, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->while:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 6
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v5, v4}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_1
    if-ge v4, v1, :cond_8

    .line 7
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const/high16 v8, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {v9, v8}, Landroid/view/View;->setAlpha(F)V

    .line 9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    add-int v11, v2, v4

    .line 10
    iget-object v8, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    invoke-virtual {v8, v11}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->getItemId(I)J

    move-result-wide v12

    .line 11
    iget-object v8, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->do:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v12, v13}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v8

    if-le v8, v3, :cond_2

    .line 12
    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->do:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 13
    iget-object v8, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->do:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v12, v13}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 14
    iget-object v8, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->if:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v12, v13}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 15
    iget-boolean v8, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->while:Z

    if-eqz v8, :cond_1

    .line 16
    iget-object v8, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v12, v13}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_1
    if-eq v6, v10, :cond_3

    .line 17
    invoke-virtual {p0, v9, v6, v10}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->final(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v5

    goto :goto_2

    .line 18
    :cond_2
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->new:Ljava/util/Set;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 19
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    .line 20
    invoke-virtual {p0, v9, v5, v10}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->final(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v5

    :cond_3
    :goto_2
    const/4 v6, -0x1

    goto :goto_3

    .line 21
    :cond_4
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->try:Ljava/util/Set;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 22
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    .line 23
    invoke-virtual {p0, v9, v5, v10}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->final(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v5

    goto :goto_2

    :cond_5
    if-ne v6, v3, :cond_6

    move v6, v10

    move v7, v11

    :cond_6
    move-object v8, p0

    move v12, v6

    move v13, v7

    .line 24
    invoke-virtual/range {v8 .. v13}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->class(Landroid/view/View;IIII)Landroid/animation/Animator;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_7

    .line 25
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 26
    :cond_8
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->while:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 27
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->this:Landroid/animation/ValueAnimator;

    .line 28
    new-instance v2, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$if;

    invoke-direct {v2, p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$if;-><init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->this:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$for;

    invoke-direct {v2, p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$for;-><init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->this:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->getChangeDisappearDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 31
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->this:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 32
    :cond_9
    new-instance v1, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$new;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$new;-><init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private throw(II)J
    .locals 2

    sub-int/2addr p1, p2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->super:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    const-wide/16 v0, 0x3e8

    .line 2
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public static synthetic try(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->class:Z

    return p1
.end method


# virtual methods
.method public class(Landroid/view/View;IIII)Landroid/animation/Animator;
    .locals 6

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x1

    const-wide/16 v3, 0x32

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->else(Landroid/view/View;ZJZ)Landroid/animation/ObjectAnimator;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eq p4, p2, :cond_0

    .line 5
    invoke-virtual {p0, p1, p4, p2}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->final(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->super:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    invoke-virtual {p3, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p3
.end method

.method public const(Landroid/view/View;)Landroid/animation/Animator;
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->else(Landroid/view/View;ZJZ)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public else(Landroid/view/View;ZJZ)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    if-eqz p2, :cond_0

    .line 1
    fill-array-data v0, :array_0

    goto :goto_0

    :cond_0
    fill-array-data v0, :array_1

    :goto_0
    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p5, :cond_1

    .line 3
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$case;

    invoke-direct {p1, p0, p3, p2}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$case;-><init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;Ljava/lang/ref/WeakReference;Z)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final(Landroid/view/View;II)Landroid/animation/Animator;
    .locals 6

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->throw(II)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->super(Landroid/view/View;IIJ)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public getChangeDisappearDuration()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->super:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getOffsetDurationUnit()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->super:F

    return v0
.end method

.method public getRealAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->break:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public native(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ">(",
            "Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->if()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->return(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->final:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->const:I

    int-to-long v4, v4

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-lez v7, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    iput-wide v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->final:J

    .line 6
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->class:Z

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    .line 7
    iput-boolean v6, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->class:Z

    .line 8
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->static()V

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->break:Landroid/widget/ListAdapter;

    invoke-interface {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator;->manipulate(Landroid/widget/ListAdapter;)V

    .line 10
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->goto()V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->break:Landroid/widget/ListAdapter;

    invoke-interface {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator;->manipulate(Landroid/widget/ListAdapter;)V

    .line 12
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->notifyDataSetChanged()V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 13
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->else:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->while:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->this:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->class:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 6
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 7
    invoke-virtual {p0, v2, v3}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->while(J)I

    move-result v5

    .line 8
    iget-wide v6, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->goto:J

    long-to-float v6, v6

    iget v7, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->super:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 10
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->do:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v6

    .line 11
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    if-ge v2, v3, :cond_1

    goto :goto_1

    .line 12
    :cond_0
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->do:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v6

    .line 13
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v0, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 15
    iget-wide v2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->goto:J

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->getChangeDisappearDuration()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v2, v5

    sub-float/2addr v3, v2

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/ListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v4, v2, v3}, Landroid/widget/ListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public return(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ">(",
            "Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->class:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->break:Landroid/widget/ListAdapter;

    invoke-interface {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$Manipulator;->manipulate(Landroid/widget/ListAdapter;)V

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->notifyDataSetChanged()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->else:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->break:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->break:Landroid/widget/ListAdapter;

    invoke-direct {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;-><init>(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAnimationManipulateDurationLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->const:I

    return-void
.end method

.method public setOffsetDurationUnit(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->super:F

    return-void
.end method

.method public setOffsetInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->throw:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setOpenChangeDisappearAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->while:Z

    return-void
.end method

.method public super(Landroid/view/View;IIJ)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    sub-int/2addr p2, p3

    int-to-float p2, p2

    const/4 p3, 0x0

    aput p2, v0, p3

    const/4 p2, 0x1

    const/4 p3, 0x0

    aput p3, v0, p2

    const-string p2, "translationY"

    .line 1
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->throw:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public while(J)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->catch:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->getItemId(I)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
