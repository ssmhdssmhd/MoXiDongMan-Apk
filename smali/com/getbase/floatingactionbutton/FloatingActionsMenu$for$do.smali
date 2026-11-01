.class Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for$do;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;->for(Landroid/animation/Animator;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/view/View;

.field public final synthetic if:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;


# direct methods
.method public constructor <init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for$do;->if:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for;

    iput-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for$do;->do:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for$do;->do:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$for$do;->do:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
