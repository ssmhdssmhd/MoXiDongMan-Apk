.class public Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$KeyboardVisibilityEventListener;
    }
.end annotation


# static fields
.field public static final do:I = 0xc8

.field public static final for:I = 0x64

.field private static final if:Ljava/lang/String; = "QMUIKeyboardHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/view/View;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method public static for(Landroid/app/Activity;Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$KeyboardVisibilityEventListener;)V
    .locals 3

    const-string v0, "Parameter:activity must not be null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parameter:listener must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/for;->break(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;

    invoke-direct {v1, p0, v0, p1}, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$if;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$KeyboardVisibilityEventListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    new-instance v2, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$for;

    invoke-direct {v2, p0, v0, v1}, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$for;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7
    invoke-virtual {p1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static if(Landroid/app/Activity;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/for;->break(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x64

    .line 3
    invoke-static {p0, v2}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 4
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v1, v0

    if-le v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static new(Landroid/widget/EditText;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-lez p1, :cond_2

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$do;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper$do;-><init>(Landroid/widget/EditText;)V

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void
.end method

.method public static try(Landroid/widget/EditText;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0xc8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/util/QMUIKeyboardHelper;->new(Landroid/widget/EditText;I)V

    return-void
.end method
