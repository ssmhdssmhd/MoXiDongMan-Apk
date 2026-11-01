.class final Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$for;
.super Landroid/support/v4/ah1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper;->for(Landroid/app/Activity;Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$KeyboardVisibilityEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic for:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final synthetic if:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$for;->if:Landroid/view/View;

    iput-object p3, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$for;->for:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0, p1}, Landroid/support/v4/ah1;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$for;->if:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$for;->for:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$for;->if:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$for;->for:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method
