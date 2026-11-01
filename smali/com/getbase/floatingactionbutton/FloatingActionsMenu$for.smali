.class Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public final synthetic case:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

.field private do:Landroid/animation/ObjectAnimator;

.field private for:Landroid/animation/ObjectAnimator;

.field private if:Landroid/animation/ObjectAnimator;

.field private new:Landroid/animation/ObjectAnimator;

.field private try:Z


# direct methods
.method public constructor <init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->case:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->do:Landroid/animation/ObjectAnimator;

    .line 4
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->if:Landroid/animation/ObjectAnimator;

    .line 5
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->for:Landroid/animation/ObjectAnimator;

    .line 6
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->new:Landroid/animation/ObjectAnimator;

    .line 7
    iget-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->do:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->catch()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->if:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->for()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    iget-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->for:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->new()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->new:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->new()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->new:Landroid/animation/ObjectAnimator;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 12
    iget-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->new:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 13
    iget-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->if:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 14
    iget-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->if:Landroid/animation/ObjectAnimator;

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 15
    invoke-static {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->try(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->for:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 17
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->do:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->for:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 19
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->do:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic do(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->for:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private for(Landroid/animation/Animator;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for$do;

    invoke-direct {v0, p0, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for$do;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic if(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->do:Landroid/animation/ObjectAnimator;

    return-object p0
.end method


# virtual methods
.method public new(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->new:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->for:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->if:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->do:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 5
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->try:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->do:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->for(Landroid/animation/Animator;Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->for:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->for(Landroid/animation/Animator;Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->case:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->new:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 9
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->case:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->break(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->for:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 10
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->case:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->this(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->if:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 11
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->case:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-static {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->this(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->do:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->try:Z

    :cond_0
    return-void
.end method
