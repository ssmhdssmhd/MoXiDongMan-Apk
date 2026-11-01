.class Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;->new()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Runnable;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$if;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$if;->do:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$if;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;->if(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;Z)Z

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$if;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;->for(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$if;->do:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$if;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;->if(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;Z)Z

    return-void
.end method
