.class public Lcom/gaoneng/library/AutoScrollBackLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaoneng/library/AutoScrollBackLayout$for;,
        Lcom/gaoneng/library/AutoScrollBackLayout$case;,
        Lcom/gaoneng/library/AutoScrollBackLayout$new;,
        Lcom/gaoneng/library/AutoScrollBackLayout$if;,
        Lcom/gaoneng/library/AutoScrollBackLayout$try;
    }
.end annotation


# static fields
.field public static final class:Ljava/lang/String; = "AutoScrollBackLayout"

.field private static final const:I = 0x5dc


# instance fields
.field private break:I

.field private case:Landroid/view/animation/Animation;

.field private catch:I

.field public do:Z

.field private else:I

.field private for:Landroid/widget/ImageView;

.field private goto:Lcom/gaoneng/library/AutoScrollBackLayout$new;

.field private if:Landroid/view/View;

.field private new:Z

.field private this:Lcom/gaoneng/library/AutoScrollBackLayout$if;

.field private try:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->do:Z

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v1, v0}, Lcom/gaoneng/library/AutoScrollBackLayout;->final(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->do:Z

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/gaoneng/library/AutoScrollBackLayout;->final(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->do:Z

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/gaoneng/library/AutoScrollBackLayout;->final(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private break(Landroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    instance-of v1, p1, Landroid/widget/AbsListView;

    if-nez v1, :cond_2

    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gaoneng/library/AutoScrollBackLayout;->break(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    return-object v0
.end method

.method private case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->if:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/gaoneng/library/AutoScrollBackLayout$do;

    invoke-direct {v1, p0}, Lcom/gaoneng/library/AutoScrollBackLayout$do;-><init>(Lcom/gaoneng/library/AutoScrollBackLayout;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private catch(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->if:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v2, v0, Landroid/widget/AbsListView;

    if-eqz v2, :cond_2

    .line 3
    check-cast v0, Landroid/widget/AbsListView;

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int v1, v0, p1

    :goto_0
    return v1

    .line 6
    :cond_2
    instance-of v2, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_5

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    .line 9
    instance-of v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_4

    .line 10
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    .line 12
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 13
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    neg-int v0, v0

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    mul-int v1, v1, p1

    add-int/2addr v0, v1

    return v0

    :cond_4
    return p1

    :cond_5
    return v1
.end method

.method private const()V
    .locals 5

    .line 1
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mOnScrollListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    iget-object v1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/gaoneng/library/AutoScrollBackLayout$for;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/gaoneng/library/AutoScrollBackLayout$for;-><init>(Lcom/gaoneng/library/AutoScrollBackLayout;Lcom/gaoneng/library/AutoScrollBackLayout$do;)V

    goto :goto_0

    .line 5
    :cond_0
    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 6
    :goto_0
    new-instance v2, Lcom/gaoneng/library/AutoScrollBackLayout$case;

    invoke-direct {v2, p0, v1}, Lcom/gaoneng/library/AutoScrollBackLayout$case;-><init>(Lcom/gaoneng/library/AutoScrollBackLayout;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 7
    invoke-virtual {v2}, Lcom/gaoneng/library/AutoScrollBackLayout$case;->do()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v2

    .line 8
    iget-boolean v3, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->do:Z

    if-eqz v3, :cond_1

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,proxy="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", proxied interfaces="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->if:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public static synthetic do(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$new;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->goto:Lcom/gaoneng/library/AutoScrollBackLayout$new;

    return-object p0
.end method

.method private else()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    invoke-direct {p0, p0}, Lcom/gaoneng/library/AutoScrollBackLayout;->break(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->if:Landroid/view/View;

    .line 3
    iget-boolean v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->do:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find wrapView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->if:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private final(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/gaoneng/library/R$styleable;->AutoScrollBackLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Lcom/gaoneng/library/R$styleable;->AutoScrollBackLayout_show_scroll:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->new:Z

    .line 4
    sget p2, Lcom/gaoneng/library/R$styleable;->AutoScrollBackLayout_show_animation:I

    sget p3, Lcom/gaoneng/library/R$anim;->fab_scale_up:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->try:Landroid/view/animation/Animation;

    .line 6
    sget p2, Lcom/gaoneng/library/R$styleable;->AutoScrollBackLayout_hide_animation:I

    sget p3, Lcom/gaoneng/library/R$anim;->fab_scale_down:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->case:Landroid/view/animation/Animation;

    .line 8
    sget p2, Lcom/gaoneng/library/R$styleable;->AutoScrollBackLayout_scroll_gravity:I

    const/16 p3, 0x51

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->else:I

    .line 9
    sget p2, Lcom/gaoneng/library/R$styleable;->AutoScrollBackLayout_scroll_distance:I

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->break:I

    .line 10
    sget p2, Lcom/gaoneng/library/R$styleable;->AutoScrollBackLayout_auto_arrow_icon:I

    sget p3, Lcom/gaoneng/library/R$drawable;->go_top:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->catch:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    new-instance p1, Lcom/gaoneng/library/AutoScrollBackLayout$new;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/gaoneng/library/AutoScrollBackLayout$new;-><init>(Lcom/gaoneng/library/AutoScrollBackLayout;Lcom/gaoneng/library/AutoScrollBackLayout$do;)V

    iput-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->goto:Lcom/gaoneng/library/AutoScrollBackLayout$new;

    .line 13
    new-instance p1, Lcom/gaoneng/library/AutoScrollBackLayout$if;

    invoke-direct {p1, p0, p2}, Lcom/gaoneng/library/AutoScrollBackLayout$if;-><init>(Lcom/gaoneng/library/AutoScrollBackLayout;Lcom/gaoneng/library/AutoScrollBackLayout$do;)V

    iput-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->this:Lcom/gaoneng/library/AutoScrollBackLayout$if;

    return-void
.end method

.method public static synthetic for(Lcom/gaoneng/library/AutoScrollBackLayout;)Lcom/gaoneng/library/AutoScrollBackLayout$if;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->this:Lcom/gaoneng/library/AutoScrollBackLayout$if;

    return-object p0
.end method

.method private goto()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->for:Landroid/widget/ImageView;

    .line 2
    iget v1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->catch:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-boolean v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->new:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->for:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6
    iget v1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->else:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Landroid/support/v4/hz;->do(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 8
    iget-object v1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->for:Landroid/widget/ImageView;

    new-instance v2, Lcom/gaoneng/library/AutoScrollBackLayout$try;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/gaoneng/library/AutoScrollBackLayout$try;-><init>(Lcom/gaoneng/library/AutoScrollBackLayout;Lcom/gaoneng/library/AutoScrollBackLayout$do;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->for:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static synthetic if(Lcom/gaoneng/library/AutoScrollBackLayout;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->if:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic new(Lcom/gaoneng/library/AutoScrollBackLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->break:I

    return p0
.end method

.method private throw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->try:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->for:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->case:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public static synthetic try(Lcom/gaoneng/library/AutoScrollBackLayout;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gaoneng/library/AutoScrollBackLayout;->catch(I)I

    move-result p0

    return p0
.end method

.method private while()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->case:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->for:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->try:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public class(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gaoneng/library/AutoScrollBackLayout;->super()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/gaoneng/library/AutoScrollBackLayout;->throw()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->for:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public import(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gaoneng/library/AutoScrollBackLayout;->super()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/gaoneng/library/AutoScrollBackLayout;->while()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->for:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public native(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gaoneng/library/AutoScrollBackLayout;->super()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/gaoneng/library/AutoScrollBackLayout;->import(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gaoneng/library/AutoScrollBackLayout;->class(Z)V

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->this:Lcom/gaoneng/library/AutoScrollBackLayout$if;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->for:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    invoke-direct {p0}, Lcom/gaoneng/library/AutoScrollBackLayout;->else()V

    .line 3
    invoke-direct {p0}, Lcom/gaoneng/library/AutoScrollBackLayout;->goto()V

    return-void
.end method

.method public super()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->for:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public this()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->if:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->for:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/gaoneng/library/AutoScrollBackLayout;->new:Z

    if-eqz v1, :cond_1

    .line 2
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/gaoneng/library/AutoScrollBackLayout;->const()V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/gaoneng/library/AutoScrollBackLayout;->case()V

    :cond_1
    :goto_0
    return-void
.end method
