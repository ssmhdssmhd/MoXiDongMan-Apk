.class Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$if;->do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$if;->do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setScrimAlpha(I)V

    return-void
.end method
