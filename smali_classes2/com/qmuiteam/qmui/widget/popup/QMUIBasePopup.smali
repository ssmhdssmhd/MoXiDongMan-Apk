.class public abstract Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;
    }
.end annotation


# static fields
.field private static final class:Ljava/lang/String; = "QMUIBasePopup"


# instance fields
.field public break:I

.field public case:Landroid/view/WindowManager;

.field public catch:I

.field public do:Landroid/content/Context;

.field private else:Landroid/widget/PopupWindow$OnDismissListener;

.field private for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;

.field private goto:Landroid/view/View;

.field public if:Landroid/widget/PopupWindow;

.field public new:Landroid/view/View;

.field public this:Landroid/graphics/Point;

.field public try:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->try:Landroid/graphics/drawable/Drawable;

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->this:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->break:I

    .line 5
    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->catch:I

    .line 6
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->do:Landroid/content/Context;

    .line 7
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    .line 8
    new-instance v1, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$do;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$do;-><init>(Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    const-string v0, "window"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->case:Landroid/view/WindowManager;

    return-void
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->else:Landroid/widget/PopupWindow$OnDismissListener;

    return-object p0
.end method


# virtual methods
.method public break(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public case()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public catch()V
    .locals 0

    return-void
.end method

.method public abstract class(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public const()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->try:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->case:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->this:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setContentView was not called with a view to display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public else(Landroid/view/View;)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->do:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/ih1;->final(Landroid/content/Context;)I

    move-result p1

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method public final()V
    .locals 0

    return-void
.end method

.method public for()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public goto(Landroid/view/View;)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->do:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/ih1;->super(Landroid/content/Context;)I

    move-result p1

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method public if(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->case()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->new()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 4
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->case:Landroid/view/WindowManager;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "should call after method show() or in onShowEnd()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public import(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->do:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;-><init>(Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;

    .line 2
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->new:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;->addView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$for;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$for;-><init>(Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setContentView was not called with a view to display."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public native()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public new()Landroid/view/View;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x17

    if-nez v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final public(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->return(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final return(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->const()V

    .line 3
    iget v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->catch:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->break:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->native()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->this()V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->catch:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->break:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 9
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->class(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p2

    .line 10
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1, v2, v1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 11
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->goto:Landroid/view/View;

    .line 12
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->final()V

    .line 13
    new-instance p2, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$if;

    invoke-direct {p2, p0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$if;-><init>(Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->else:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public abstract super()V
.end method

.method public this()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->goto(Landroid/view/View;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;

    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->else(Landroid/view/View;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->new:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->new:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->catch:I

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->new:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->break:I

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "measureWindowSize: mWindowWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->catch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ;mWindowHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->break:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public throw(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->try:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public try()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->goto:Landroid/view/View;

    return-object v0
.end method

.method public while(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->do:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->import(Landroid/view/View;)V

    return-void
.end method
