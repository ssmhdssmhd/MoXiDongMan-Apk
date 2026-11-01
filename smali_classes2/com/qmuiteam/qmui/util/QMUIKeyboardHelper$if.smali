.class final Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper;->for(Landroid/app/Activity;Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$KeyboardVisibilityEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic case:Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$KeyboardVisibilityEventListener;

.field private final do:Landroid/graphics/Rect;

.field private for:Z

.field private final if:I

.field public final synthetic new:Landroid/app/Activity;

.field public final synthetic try:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$KeyboardVisibilityEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->new:Landroid/app/Activity;

    iput-object p2, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->try:Landroid/view/View;

    iput-object p3, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->case:Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$KeyboardVisibilityEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->do:Landroid/graphics/Rect;

    const/16 p2, 0x64

    .line 3
    invoke-static {p1, p2}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->if:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->for:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->try:Landroid/view/View;

    iget-object v1, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->do:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->try:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->do:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->if:I

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-boolean v2, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->for:Z

    if-ne v1, v2, :cond_1

    return-void

    .line 5
    :cond_1
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->for:Z

    .line 6
    iget-object v2, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->case:Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$KeyboardVisibilityEventListener;

    invoke-interface {v2, v1, v0}, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$KeyboardVisibilityEventListener;->onVisibilityChanged(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->try:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;->try:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    :goto_1
    return-void
.end method
