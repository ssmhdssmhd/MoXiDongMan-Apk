.class public Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$new;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;
    }
.end annotation


# static fields
.field private static final abstract:F = 135.0f

.field private static continue:Landroid/view/animation/Interpolator; = null

.field public static final default:I = 0x3

.field public static final extends:I = 0x0

.field public static final finally:I = 0x1

.field private static final package:I = 0x12c

.field private static final private:F = 0.0f

.field public static final static:I = 0x0

.field private static strictfp:Landroid/view/animation/Interpolator; = null

.field public static final switch:I = 0x1

.field public static final throws:I = 0x2

.field private static volatile:Landroid/view/animation/Interpolator;


# instance fields
.field private break:Z

.field private case:I

.field private catch:Landroid/animation/AnimatorSet;

.field private class:Landroid/animation/AnimatorSet;

.field private const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

.field private do:I

.field private else:I

.field private final:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$new;

.field private for:I

.field private goto:I

.field private if:I

.field private import:I

.field private native:I

.field private new:I

.field private public:Landroid/support/v4/b82;

.field private return:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

.field private super:I

.field private this:I

.field private throw:I

.field private try:Z

.field private while:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->continue:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->strictfp:Landroid/view/animation/Interpolator;

    .line 3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->volatile:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->catch:Landroid/animation/AnimatorSet;

    .line 4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->class:Landroid/animation/AnimatorSet;

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->static(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p3

    iput-object p3, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->catch:Landroid/animation/AnimatorSet;

    .line 8
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p3

    iput-object p3, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->class:Landroid/animation/AnimatorSet;

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->static(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic break(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->class:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static synthetic case(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->for:I

    return p0
.end method

.method public static synthetic catch()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->continue:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private const(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0xc

    .line 1
    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public static synthetic do(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->do:I

    return p0
.end method

.method public static synthetic else(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->try:Z

    return p0
.end method

.method public static synthetic for()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->volatile:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static synthetic goto(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Lcom/getbase/floatingactionbutton/FloatingActionsMenu$new;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu$new;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->final:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$new;

    return-object p1
.end method

.method public static synthetic if(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->if:I

    return p0
.end method

.method private import()V
    .locals 7

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->while:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native:I

    if-ge v1, v2, :cond_2

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 4
    invoke-virtual {v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    if-eq v2, v4, :cond_1

    if-eqz v3, :cond_1

    sget v3, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    .line 6
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->while:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 9
    invoke-virtual {v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic new()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->strictfp:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private public()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->case:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private return(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private static(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_actions_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->else:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_labels_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->goto:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->this:I

    .line 4
    new-instance v0, Landroid/support/v4/b82;

    invoke-direct {v0, p0}, Landroid/support/v4/b82;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->public:Landroid/support/v4/b82;

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 6
    sget-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonPlusIconColor:I

    const v2, 0x106000b

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->return(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->do:I

    .line 8
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonColorNormal:I

    const v2, 0x1060013

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->return(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->if:I

    .line 9
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonColorPressed:I

    const v2, 0x1060012

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->return(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->for:I

    .line 10
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonSize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->new:I

    .line 11
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonStrokeVisible:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->try:Z

    .line 12
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_expandDirection:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->case:I

    .line 13
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_labelStyle:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->while:I

    .line 14
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_labelsPosition:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->import:I

    .line 15
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->while:I

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->public()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Action labels in horizontal expand orientation is not supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->while(Landroid/content/Context;)V

    return-void
.end method

.method private super(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    .line 3
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->public:Landroid/support/v4/b82;

    invoke-virtual {v1, v0}, Landroid/support/v4/b82;->new(Z)V

    .line 4
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->class:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x12c

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->class:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 6
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->catch:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 7
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->return:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuCollapsed()V

    :cond_1
    return-void
.end method

.method public static synthetic this(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->catch:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static synthetic try(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->case:I

    return p0
.end method

.method private while(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$do;

    invoke-direct {v0, p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$do;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    .line 2
    sget p1, Lcom/getbase/floatingactionbutton/R$id;->fab_expand_menu_button:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setId(I)V

    .line 3
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->new:I

    invoke-virtual {p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setSize(I)V

    .line 4
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$if;

    invoke-direct {v0, p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$if;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native:I

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    return p1
.end method

.method public class(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native:I

    .line 3
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->while:I

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->import()V

    :cond_0
    return-void
.end method

.method public default()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->final()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native()V

    :goto_0
    return-void
.end method

.method public final()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->super(Z)V

    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public native()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    .line 3
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->public:Landroid/support/v4/b82;

    invoke-virtual {v1, v0}, Landroid/support/v4/b82;->new(Z)V

    .line 4
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->class:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->catch:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 6
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->return:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuExpanded()V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native:I

    .line 4
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->while:I

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->import()V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->case:I

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v1, :cond_a

    if-eq v1, v6, :cond_a

    if-eq v1, v7, :cond_0

    const/4 v8, 0x3

    if-eq v1, v8, :cond_0

    goto/16 :goto_16

    :cond_0
    if-ne v1, v7, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    sub-int v8, p4, p2

    .line 2
    iget-object v9, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    sub-int v9, p5, p3

    .line 3
    iget v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->throw:I

    sub-int/2addr v9, v10

    iget-object v11, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    add-int/2addr v9, v10

    .line 4
    iget-object v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v12}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual {v10, v8, v9, v11, v12}, Landroid/widget/ImageButton;->layout(IIII)V

    if-eqz v1, :cond_3

    .line 5
    iget v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->else:I

    sub-int v10, v8, v10

    goto :goto_2

    :cond_3
    iget-object v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    .line 6
    invoke-virtual {v10}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v8

    iget v11, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->else:I

    add-int/2addr v10, v11

    .line 7
    :goto_2
    iget v11, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native:I

    sub-int/2addr v11, v6

    :goto_3
    if-ltz v11, :cond_1d

    .line 8
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 9
    iget-object v13, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    if-eq v12, v13, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v2, :cond_4

    goto :goto_6

    :cond_4
    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v10, v13

    .line 11
    :cond_5
    iget-object v13, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v13}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/2addr v13, v7

    add-int/2addr v13, v9

    .line 12
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v10

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v12, v10, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    sub-int v13, v8, v10

    int-to-float v13, v13

    .line 13
    iget-boolean v14, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    if-eqz v14, :cond_6

    const/4 v14, 0x0

    goto :goto_4

    :cond_6
    move v14, v13

    :goto_4
    invoke-virtual {v12, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 14
    iget-boolean v14, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    if-eqz v14, :cond_7

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v12, v14}, Landroid/view/View;->setAlpha(F)V

    .line 15
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;

    .line 16
    invoke-static {v14}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->do(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    new-array v3, v7, [F

    aput v4, v3, v5

    aput v13, v3, v6

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 17
    invoke-static {v14}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->if(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v15, v7, [F

    aput v13, v15, v5

    aput v4, v15, v6

    invoke-virtual {v3, v15}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 18
    invoke-virtual {v14, v12}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->new(Landroid/view/View;)V

    if-eqz v1, :cond_8

    .line 19
    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->else:I

    sub-int/2addr v10, v3

    goto :goto_6

    .line 20
    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v10, v3

    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->else:I

    add-int/2addr v10, v3

    :cond_9
    :goto_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_a
    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :goto_7
    if-eqz p1, :cond_c

    .line 21
    iget-object v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->public:Landroid/support/v4/b82;

    invoke-virtual {v3}, Landroid/support/v4/b82;->if()V

    :cond_c
    if-eqz v1, :cond_d

    sub-int v3, p5, p3

    .line 22
    iget-object v8, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v3, v8

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    .line 23
    :goto_8
    iget v8, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->import:I

    if-nez v8, :cond_e

    sub-int v8, p4, p2

    iget v9, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->super:I

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    goto :goto_9

    :cond_e
    iget v8, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->super:I

    div-int/2addr v8, v7

    .line 24
    :goto_9
    iget-object v9, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v7

    sub-int v9, v8, v9

    .line 25
    iget-object v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v12}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v3

    invoke-virtual {v10, v9, v3, v11, v12}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 26
    iget v9, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->super:I

    div-int/2addr v9, v7

    iget v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->goto:I

    add-int/2addr v9, v10

    .line 27
    iget v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->import:I

    if-nez v10, :cond_f

    sub-int v9, v8, v9

    goto :goto_a

    :cond_f
    add-int/2addr v9, v8

    :goto_a
    if-eqz v1, :cond_10

    .line 28
    iget v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->else:I

    sub-int v10, v3, v10

    goto :goto_b

    :cond_10
    iget-object v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    .line 29
    invoke-virtual {v10}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v3

    iget v11, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->else:I

    add-int/2addr v10, v11

    .line 30
    :goto_b
    iget v11, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native:I

    sub-int/2addr v11, v6

    :goto_c
    if-ltz v11, :cond_1d

    .line 31
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 32
    iget-object v13, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    if-eq v12, v13, :cond_1c

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v2, :cond_11

    goto/16 :goto_14

    .line 33
    :cond_11
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int/2addr v13, v7

    sub-int v13, v8, v13

    if-eqz v1, :cond_12

    .line 34
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v10, v14

    .line 35
    :cond_12
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v10

    invoke-virtual {v12, v13, v10, v14, v15}, Landroid/view/View;->layout(IIII)V

    sub-int v14, v3, v10

    int-to-float v14, v14

    .line 36
    iget-boolean v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    if-eqz v15, :cond_13

    const/4 v15, 0x0

    goto :goto_d

    :cond_13
    move v15, v14

    :goto_d
    invoke-virtual {v12, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 37
    iget-boolean v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    if-eqz v15, :cond_14

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_14
    const/4 v15, 0x0

    :goto_e
    invoke-virtual {v12, v15}, Landroid/view/View;->setAlpha(F)V

    .line 38
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;

    .line 39
    invoke-static {v15}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->do(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move/from16 p1, v3

    new-array v3, v7, [F

    aput v4, v3, v5

    aput v14, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 40
    invoke-static {v15}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->if(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v7, [F

    aput v14, v3, v5

    aput v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 41
    invoke-virtual {v15, v12}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->new(Landroid/view/View;)V

    .line 42
    sget v2, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v12, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1a

    .line 43
    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->import:I

    if-nez v3, :cond_15

    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v9, v3

    goto :goto_f

    .line 45
    :cond_15
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v9

    .line 46
    :goto_f
    iget v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->import:I

    if-nez v15, :cond_16

    move v6, v3

    goto :goto_10

    :cond_16
    move v6, v9

    :goto_10
    if-nez v15, :cond_17

    move v3, v9

    .line 47
    :cond_17
    iget v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->this:I

    sub-int v15, v10, v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v4, v15, v16

    invoke-virtual {v2, v6, v15, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 49
    new-instance v4, Landroid/graphics/Rect;

    .line 50
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->else:I

    div-int/2addr v15, v7

    sub-int v15, v10, v15

    .line 51
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v13, v13, v16

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 52
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v10

    iget v5, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->else:I

    div-int/2addr v5, v7

    add-int/2addr v13, v5

    invoke-direct {v4, v6, v15, v3, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    iget-object v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->public:Landroid/support/v4/b82;

    new-instance v5, Landroid/view/TouchDelegate;

    invoke-direct {v5, v4, v12}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/support/v4/b82;->do(Landroid/view/TouchDelegate;)V

    .line 54
    iget-boolean v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_11

    :cond_18
    move v3, v14

    :goto_11
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 55
    iget-boolean v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    if-eqz v3, :cond_19

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_12

    :cond_19
    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;

    .line 57
    invoke-static {v3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->do(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v7, [F

    const/4 v6, 0x0

    const/4 v13, 0x0

    aput v6, v5, v13

    const/4 v15, 0x1

    aput v14, v5, v15

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 58
    invoke-static {v3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->if(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v7, [F

    aput v14, v5, v13

    aput v6, v5, v15

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 59
    invoke-virtual {v3, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->new(Landroid/view/View;)V

    goto :goto_13

    :cond_1a
    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_13
    if-eqz v1, :cond_1b

    .line 60
    iget v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->else:I

    sub-int/2addr v10, v2

    goto :goto_15

    .line 61
    :cond_1b
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v10, v2

    iget v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->else:I

    add-int/2addr v10, v2

    goto :goto_15

    :cond_1c
    :goto_14
    move/from16 p1, v3

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_15
    add-int/lit8 v11, v11, -0x1

    move/from16 v3, p1

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_c

    :cond_1d
    :goto_16
    return-void
.end method

.method public onMeasure(II)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->super:I

    .line 3
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->throw:I

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge p2, v3, :cond_4

    .line 5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    iget v7, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->case:I

    if-eqz v7, :cond_2

    if-eq v7, v6, :cond_2

    if-eq v7, v5, :cond_1

    if-eq v7, v4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 9
    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->throw:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->throw:I

    goto :goto_1

    .line 10
    :cond_2
    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->super:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->super:I

    .line 11
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 12
    :goto_1
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->public()Z

    move-result v4

    if-nez v4, :cond_3

    .line 13
    sget v4, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 15
    :cond_4
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->public()Z

    move-result p2

    if-nez p2, :cond_6

    .line 16
    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->super:I

    if-lez v0, :cond_5

    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->goto:I

    add-int/2addr p1, v0

    :cond_5
    add-int v2, p2, p1

    goto :goto_3

    .line 17
    :cond_6
    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->throw:I

    .line 18
    :goto_3
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->case:I

    if-eqz p1, :cond_8

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_7

    goto :goto_4

    .line 19
    :cond_7
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->else:I

    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native:I

    sub-int/2addr p2, v6

    mul-int p1, p1, p2

    add-int/2addr v2, p1

    .line 20
    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const(I)I

    move-result v2

    goto :goto_4

    .line 21
    :cond_8
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->else:I

    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native:I

    sub-int/2addr p2, v6

    mul-int p1, p1, p2

    add-int/2addr v1, p1

    .line 22
    invoke-direct {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const(I)I

    move-result v1

    .line 23
    :goto_4
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    .line 3
    iget-boolean v0, p1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->do:Z

    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    .line 4
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->public:Landroid/support/v4/b82;

    invoke-virtual {v1, v0}, Landroid/support/v4/b82;->new(Z)V

    .line 5
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->final:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$new;

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x43070000    # 135.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$new;->setRotation(F)V

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    invoke-direct {v1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    iput-boolean v0, v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->do:Z

    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->const:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->return:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    return-void
.end method

.method public switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break:Z

    return v0
.end method

.method public throw()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->super(Z)V

    return-void
.end method

.method public throws(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    sget v0, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    .line 4
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->native:I

    return-void
.end method
