.class public Lcom/qmuiteam/qmui/widget/QMUITabSegment;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;,
        Lcom/qmuiteam/qmui/widget/QMUITabSegment$goto;,
        Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;,
        Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;,
        Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;,
        Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;,
        Lcom/qmuiteam/qmui/widget/QMUITabSegment$catch;,
        Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabLayoutOnPageChangeListener;,
        Lcom/qmuiteam/qmui/widget/QMUITabSegment$TypefaceProvider;,
        Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;,
        Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabClickListener;,
        Lcom/qmuiteam/qmui/widget/QMUITabSegment$case;,
        Lcom/qmuiteam/qmui/widget/QMUITabSegment$else;
    }
.end annotation


# static fields
.field private static final abstract:Ljava/lang/String; = "QMUITabSegment"

.field public static final continue:I = 0x0

.field private static final implements:I = -0x1

.field public static final interface:I = 0x1

.field public static final protected:I = 0x2

.field public static final strictfp:I = 0x1

.field public static final transient:I = 0x3

.field public static final volatile:I


# instance fields
.field private break:Z

.field private case:Z

.field private catch:Landroid/graphics/Rect;

.field private class:Landroid/graphics/Paint;

.field private const:I

.field private default:Landroid/database/DataSetObserver;

.field private final do:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private else:I

.field private extends:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final:I

.field private finally:Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;

.field private for:I

.field private goto:Z

.field private if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;

.field private import:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TypefaceProvider;

.field private native:I

.field private new:I

.field private package:Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;

.field private private:Z

.field private public:Landroid/animation/Animator;

.field private return:Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabClickListener;

.field public static:Landroid/view/View$OnClickListener;

.field private super:I

.field private switch:Landroidx/viewpager/widget/ViewPager;

.field private this:Landroid/graphics/drawable/Drawable;

.field private throw:I

.field private throws:Landroidx/viewpager/widget/PagerAdapter;

.field private try:I

.field private while:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 4
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUITabSegmentStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for:I

    .line 8
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->new:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->case:Z

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->goto:Z

    .line 11
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->break:Z

    const/4 v2, 0x0

    .line 12
    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->catch:Landroid/graphics/Rect;

    .line 13
    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->class:Landroid/graphics/Paint;

    .line 14
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throw:I

    .line 15
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->native:I

    .line 16
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$do;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$do;-><init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->static:Landroid/view/View$OnClickListener;

    .line 17
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->private:Z

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->k(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 20
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setClipToPadding(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->case:Z

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;->onTabSelected(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic abstract(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->h(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result p0

    return p0
.end method

.method private b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;->onTabUnselected(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic break(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->l(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public static synthetic case(Lcom/qmuiteam/qmui/widget/QMUITabSegment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for:I

    return p1
.end method

.method public static synthetic catch(Lcom/qmuiteam/qmui/widget/QMUITabSegment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->setViewPagerScrollState(I)V

    return-void
.end method

.method public static synthetic class(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->getTabCount()I

    move-result p0

    return p0
.end method

.method public static synthetic const(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throw:I

    return p0
.end method

.method public static synthetic continue(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->g(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result p0

    return p0
.end method

.method public static synthetic default(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->goto:Z

    return p0
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/animation/Animator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->public:Landroid/animation/Animator;

    return-object p0
.end method

.method public static synthetic else(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->private:Z

    return p1
.end method

.method public static synthetic extends(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->else:I

    return p0
.end method

.method private f(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->throw()I

    move-result p1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->super:I

    :cond_0
    return p1
.end method

.method public static synthetic final(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->getAdapter()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic finally(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->this:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic for(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->native:I

    return p0
.end method

.method private g(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->while()I

    move-result p1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->const:I

    :cond_0
    return p1
.end method

.method private getAdapter()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->do()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v0

    return-object v0
.end method

.method private getTabCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->getAdapter()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/do;->else()I

    move-result v0

    return v0
.end method

.method public static synthetic goto(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->new:I

    return p0
.end method

.method private h(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->public()I

    move-result p1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->final:I

    :cond_0
    return p1
.end method

.method private i(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->throws()I

    move-result p1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->try:I

    :cond_0
    return p1
.end method

.method public static synthetic if(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->public:Landroid/animation/Animator;

    return-object p1
.end method

.method private implements(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Could not instantiate the TypefaceProvider: "

    .line 1
    invoke-static {p2}, Landroid/support/v4/kh1;->case(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 8
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TypefaceProvider;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    .line 10
    :try_start_2
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TypefaceProvider;

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->import:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TypefaceProvider;

    return-void

    :catch_0
    move-exception p1

    .line 12
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating TypefaceProvider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class is not a TypefaceProvider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot access non-public constructor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception p1

    .line 16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception p1

    .line 17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find TypefaceProvider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic import(Lcom/qmuiteam/qmui/widget/QMUITabSegment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->instanceof(I)V

    return-void
.end method

.method private instanceof(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;->onDoubleTap(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic interface(Lcom/qmuiteam/qmui/widget/QMUITabSegment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->b(I)V

    return-void
.end method

.method private k(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_config_color_blue:I

    invoke-static {p1, v0}, Landroid/support/v4/sh1;->if(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->final:I

    .line 2
    sget v0, Lcom/qmuiteam/qmui/R$color;->qmui_config_color_gray_5:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->const:I

    .line 3
    sget-object v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 4
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_has_indicator:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->case:Z

    .line 5
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_indicator_height:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/qmuiteam/qmui/R$dimen;->qmui_tab_segment_indicator_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 7
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->else:I

    .line 8
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_android_textSize:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/qmuiteam/qmui/R$dimen;->qmui_tab_segment_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 10
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->try:I

    .line 11
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_indicator_top:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->goto:Z

    .line 12
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_icon_position:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->super:I

    .line 13
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_mode:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throw:I

    .line 14
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_space:I

    const/16 v0, 0xa

    invoke-static {p1, v0}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->while:I

    .line 15
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITabSegment_qmui_tab_typeface_provider:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    new-instance p2, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;

    invoke-direct {p2, p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;-><init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;

    .line 18
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-direct {p0, p1, p3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->implements(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private l(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->catch:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->do(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v1

    .line 3
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->do(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v2

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->if(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->catch:Landroid/graphics/Rect;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->do(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->catch:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->do(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v1

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->if(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->class:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->class:Landroid/graphics/Paint;

    .line 8
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->class:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->h(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p2, :cond_3

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_3
    return-void
.end method

.method private m(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;F)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->catch()I

    move-result v0

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->catch()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->class()I

    move-result v1

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->class()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->catch()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    mul-float v0, v0, p3

    add-float/2addr v2, v0

    float-to-int v0, v2

    .line 4
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->class()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    mul-float v1, v1, p3

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 5
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->catch:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr v1, v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->catch:Landroid/graphics/Rect;

    goto :goto_0

    .line 7
    :cond_0
    iput v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    .line 8
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->class:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->class:Landroid/graphics/Paint;

    .line 11
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    :cond_1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->h(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->h(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result p2

    .line 13
    invoke-static {p1, p2, p3}, Landroid/support/v4/fh1;->if(IIF)I

    move-result p1

    .line 14
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->class:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public static synthetic native(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->f(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result p0

    return p0
.end method

.method public static synthetic new(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/widget/TextView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->v(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public static synthetic package(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->class:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static synthetic private(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->return:Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabClickListener;

    return-object p0
.end method

.method public static synthetic public(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->t(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static synthetic return(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->while:I

    return p0
.end method

.method private setViewPagerScrollState(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->native:I

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->new:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->public:Landroid/animation/Animator;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->s(IZZ)V

    .line 4
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->new:I

    :cond_0
    return-void
.end method

.method public static synthetic static(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->case:Z

    return p0
.end method

.method public static synthetic strictfp(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->m(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;F)V

    return-void
.end method

.method public static synthetic super(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->i(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result p0

    return p0
.end method

.method public static synthetic switch(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->break:Z

    return p0
.end method

.method private synchronized(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;->onTabReselected(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private t(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    move-object v2, p2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    move-object v3, p2

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    const/4 v4, 0x3

    if-ne p3, v4, :cond_3

    goto :goto_3

    :cond_3
    move-object p2, v0

    .line 1
    :goto_3
    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic this(Lcom/qmuiteam/qmui/widget/QMUITabSegment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->new:I

    return p1
.end method

.method public static synthetic throw(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->switch:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public static synthetic throws(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->catch:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic try(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for:I

    return p0
.end method

.method private v(Landroid/widget/TextView;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->import:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TypefaceProvider;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TypefaceProvider;->isSelectedTabBold()Z

    move-result p2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TypefaceProvider;->isNormalTabBold()Z

    move-result p2

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->import:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TypefaceProvider;

    invoke-interface {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TypefaceProvider;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic volatile(Lcom/qmuiteam/qmui/widget/QMUITabSegment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->a(I)V

    return-void
.end method

.method public static synthetic while(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public A(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->getAdapter()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->volatile(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->n()V

    return-void
.end method

.method public addOnTabSelectedListener(Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;)V
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public d(I)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->getAdapter()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    .line 2
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->static()I

    move-result p1

    return p1
.end method

.method public e(I)Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->getAdapter()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    return-object p1
.end method

.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throw:I

    return v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for:I

    return v0
.end method

.method public j(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->getAdapter()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    .line 2
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->default()V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->getAdapter()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/do;->catch()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->o(Z)V

    return-void
.end method

.method public o(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throws:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->q()V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->q()V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 5
    new-instance v2, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throws:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->protected(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->n()V

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->switch:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_4

    if-lez v0, :cond_4

    .line 8
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->s(IZZ)V

    :cond_4
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throw:I

    if-nez p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->getAdapter()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/do;->this()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result p3

    const/4 p4, 0x0

    if-le p2, p3, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result p1

    invoke-virtual {p0, p1, p4}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    .line 8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getRight()I

    move-result p5

    if-ge p3, p5, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getRight()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1, p4}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v4, v0, v3

    const/high16 v5, 0x40000000    # 2.0f

    .line 6
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v4, p2}, Landroid/view/View;->measure(II)V

    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_0

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->setMeasuredDimension(II)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->setMeasuredDimension(II)V

    return-void
.end method

.method public p(ILcom/qmuiteam/qmui/widget/QMUITabSegment$this;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->getAdapter()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/do;->break(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public protected(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)Lcom/qmuiteam/qmui/widget/QMUITabSegment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->do()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/do;->do(Ljava/lang/Object;)Lcom/qmuiteam/qmui/widget/do;

    return-object p0
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->do()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/do;->for()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for:I

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->public:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->public:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public r(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->s(IZZ)V

    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;)V
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public s(IZZ)V
    .locals 15

    move-object v8, p0

    move/from16 v6, p1

    .line 1
    iget-boolean v0, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->private:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->private:Z

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->getAdapter()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/do;->this()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/do;->else()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/do;->catch()V

    .line 7
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/do;->this()Ljava/util/List;

    move-result-object v2

    .line 8
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v6, :cond_2

    goto/16 :goto_2

    .line 9
    :cond_2
    iget-object v3, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->public:Landroid/animation/Animator;

    if-nez v3, :cond_b

    iget v3, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->native:I

    if-eqz v3, :cond_3

    goto/16 :goto_1

    .line 10
    :cond_3
    iget v3, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for:I

    if-ne v3, v6, :cond_5

    if-eqz p3, :cond_4

    .line 11
    invoke-direct/range {p0 .. p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->synchronized(I)V

    .line 12
    :cond_4
    iput-boolean v4, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->private:Z

    .line 13
    iget-object v0, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    .line 14
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, -0x1

    if-le v3, v5, :cond_6

    .line 15
    iput v7, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for:I

    .line 16
    :cond_6
    iget v9, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for:I

    if-ne v9, v7, :cond_7

    .line 17
    invoke-virtual {v1, v6}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    .line 18
    invoke-direct {p0, v1, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->l(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V

    .line 19
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 20
    invoke-direct {p0, v3, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->v(Landroid/widget/TextView;Z)V

    .line 21
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    invoke-virtual {v2, v1, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->if(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V

    .line 22
    invoke-direct/range {p0 .. p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->a(I)V

    .line 23
    iput v6, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for:I

    .line 24
    iput-boolean v4, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->private:Z

    return-void

    .line 25
    :cond_7
    invoke-virtual {v1, v9}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    .line 26
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    .line 27
    invoke-virtual {v1, v6}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    .line 28
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    if-eqz p2, :cond_a

    .line 29
    invoke-direct {p0, v9}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->b(I)V

    .line 30
    invoke-direct/range {p0 .. p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->a(I)V

    .line 31
    invoke-virtual {v10}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->v(Landroid/widget/TextView;Z)V

    .line 32
    invoke-virtual {v12}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->v(Landroid/widget/TextView;Z)V

    .line 33
    invoke-virtual {v10, v7, v4}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->if(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V

    .line 34
    invoke-virtual {v12, v11, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->if(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V

    .line 35
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v2

    if-le v1, v2, :cond_8

    .line 36
    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v1

    invoke-virtual {p0, v1, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 37
    :cond_8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 38
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 39
    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 40
    :cond_9
    :goto_0
    iput v6, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for:I

    .line 41
    iput-boolean v4, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->private:Z

    .line 42
    invoke-direct {p0, v11, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->l(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V

    return-void

    :cond_a
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 43
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 44
    sget-object v0, Lcom/qmuiteam/qmui/do;->do:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 45
    new-instance v14, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v7

    move-object v3, v11

    move-object v4, v10

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$if;-><init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    new-instance v14, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;

    move-object v0, v14

    move-object v2, v10

    move-object v3, v7

    move-object v4, v12

    move-object v5, v11

    move/from16 v6, p1

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$for;-><init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;II)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xc8

    .line 47
    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 49
    :cond_b
    :goto_1
    iput v6, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->new:I

    .line 50
    iput-boolean v4, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->private:Z

    return-void

    .line 51
    :cond_c
    :goto_2
    iput-boolean v4, v8, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->private:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setDefaultNormalColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->const:I

    return-void
.end method

.method public setDefaultSelectedColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->final:I

    return-void
.end method

.method public setDefaultTabIconPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->super:I

    return-void
.end method

.method public setHasIndicator(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->case:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->case:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->this:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->else:I

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setIndicatorPosition(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->goto:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->goto:Z

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIndicatorWidthAdjustContent(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->break:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->break:Z

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setItemSpaceInScrollMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->while:I

    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throw:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throw:I

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnTabClickListener(Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->return:Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabClickListener;

    return-void
.end method

.method public setTabTextSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->try:I

    return-void
.end method

.method public setTypefaceProvider(Lcom/qmuiteam/qmui/widget/QMUITabSegment$TypefaceProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->import:Lcom/qmuiteam/qmui/widget/QMUITabSegment$TypefaceProvider;

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->w(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public transient()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public u(Landroidx/viewpager/widget/PagerAdapter;ZZ)V
    .locals 2
    .param p1    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throws:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->default:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throws:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    .line 4
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->default:Landroid/database/DataSetObserver;

    if-nez p3, :cond_1

    .line 5
    new-instance p3, Lcom/qmuiteam/qmui/widget/QMUITabSegment$goto;

    invoke-direct {p3, p0, p2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$goto;-><init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Z)V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->default:Landroid/database/DataSetObserver;

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->default:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7
    :cond_2
    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->o(Z)V

    return-void
.end method

.method public w(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->x(Landroidx/viewpager/widget/ViewPager;ZZ)V

    return-void
.end method

.method public x(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 2
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->switch:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->extends:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->package:Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->switch:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->finally:Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->removeOnTabSelectedListener(Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;)V

    .line 8
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->finally:Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;

    :cond_2
    if-eqz p1, :cond_6

    .line 9
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->switch:Landroidx/viewpager/widget/ViewPager;

    .line 10
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->extends:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabLayoutOnPageChangeListener;-><init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->extends:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->extends:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 13
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$catch;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$catch;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->finally:Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;

    .line 14
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->addOnTabSelectedListener(Lcom/qmuiteam/qmui/widget/QMUITabSegment$OnTabSelectedListener;)V

    .line 15
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p0, v0, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->u(Landroidx/viewpager/widget/PagerAdapter;ZZ)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->package:Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;

    if-nez v0, :cond_5

    .line 18
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;

    invoke-direct {v0, p0, p2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;-><init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Z)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->package:Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;

    .line 19
    :cond_5
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->package:Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;->do(Z)V

    .line 20
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->package:Lcom/qmuiteam/qmui/widget/QMUITabSegment$new;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    goto :goto_0

    .line 21
    :cond_6
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->switch:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, v1, p1, p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->u(Landroidx/viewpager/widget/PagerAdapter;ZZ)V

    :goto_0
    return-void
.end method

.method public y(Landroid/content/Context;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->getAdapter()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    .line 2
    invoke-virtual {p2, p1, p3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->implements(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->n()V

    return-void
.end method

.method public z(IF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->public:Landroid/animation/Animator;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->private:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    neg-float p2, p2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    .line 2
    :goto_0
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->getAdapter()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/do;->this()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p1, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    .line 6
    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    .line 7
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    .line 8
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    .line 9
    invoke-direct {p0, v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->h(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->g(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v4

    invoke-static {v2, v4, p2}, Landroid/support/v4/fh1;->if(IIF)I

    move-result v2

    .line 10
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->g(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->h(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v5

    invoke-static {v4, v5, p2}, Landroid/support/v4/fh1;->if(IIF)I

    move-result v4

    .line 11
    invoke-virtual {p1, v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->do(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;I)V

    .line 12
    invoke-virtual {v0, v1, v4}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->do(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;I)V

    .line 13
    invoke-direct {p0, v3, v1, p2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->m(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;F)V

    :cond_3
    :goto_1
    return-void
.end method
