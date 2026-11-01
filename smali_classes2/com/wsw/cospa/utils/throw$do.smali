.class Lcom/wsw/cospa/utils/throw$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/throw;->do(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/view/inputmethod/InputMethodManager;

.field public final synthetic for:Ljava/lang/reflect/Field;

.field public final synthetic if:Ljava/lang/reflect/Field;

.field public final synthetic new:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/throw$do;->do:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/wsw/cospa/utils/throw$do;->if:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/wsw/cospa/utils/throw$do;->for:Ljava/lang/reflect/Field;

    iput-object p4, p0, Lcom/wsw/cospa/utils/throw$do;->new:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    new-instance p2, Lcom/wsw/cospa/utils/throw$if;

    iget-object v0, p0, Lcom/wsw/cospa/utils/throw$do;->do:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/wsw/cospa/utils/throw$do;->if:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/wsw/cospa/utils/throw$do;->for:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/wsw/cospa/utils/throw$do;->new:Ljava/lang/reflect/Method;

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/wsw/cospa/utils/throw$if;-><init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
