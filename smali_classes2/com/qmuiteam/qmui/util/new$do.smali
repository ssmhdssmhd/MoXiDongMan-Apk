.class Lcom/qmuiteam/qmui/util/new$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/util/new;-><init>(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/IWindowInsetLayout;)V
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
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/new$do;->do:Lcom/qmuiteam/qmui/util/new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/util/new$do;->do:Lcom/qmuiteam/qmui/util/new;

    invoke-static {p1}, Lcom/qmuiteam/qmui/util/new;->do(Lcom/qmuiteam/qmui/util/new;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/util/new$do;->do:Lcom/qmuiteam/qmui/util/new;

    invoke-static {p1}, Lcom/qmuiteam/qmui/util/new;->do(Lcom/qmuiteam/qmui/util/new;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/IWindowInsetLayout;

    invoke-interface {p1, p2}, Lcom/qmuiteam/qmui/widget/IWindowInsetLayout;->applySystemWindowInsets21(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method
