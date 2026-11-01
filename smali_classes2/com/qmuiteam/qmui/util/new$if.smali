.class Lcom/qmuiteam/qmui/util/new$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/util/new;->final(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/util/new;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/util/new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/new$if;->do:Lcom/qmuiteam/qmui/util/new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/util/new$if;->do:Lcom/qmuiteam/qmui/util/new;

    invoke-static {p1}, Lcom/qmuiteam/qmui/util/new;->do(Lcom/qmuiteam/qmui/util/new;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qmuiteam/qmui/util/new$if;->do:Lcom/qmuiteam/qmui/util/new;

    .line 2
    invoke-static {p1}, Lcom/qmuiteam/qmui/util/new;->do(Lcom/qmuiteam/qmui/util/new;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/IWindowInsetLayout;

    invoke-interface {p1, p2}, Lcom/qmuiteam/qmui/widget/IWindowInsetLayout;->applySystemWindowInsets21(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    return-object p2
.end method
