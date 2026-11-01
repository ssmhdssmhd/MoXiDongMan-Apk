.class Lorg/chromium/base/ApplicationStatus$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/ApplicationStatus;->const(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static final synthetic do:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private do(Landroid/app/Activity;)V
    .locals 0

    .line 1
    sget-boolean p1, Landroid/support/v4/ed;->if:Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x1

    .line 1
    invoke-static {p1, p2}, Lorg/chromium/base/ApplicationStatus;->new(Landroid/app/Activity;I)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/chromium/base/ApplicationStatus;->else(Landroid/app/Activity;Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->new(Landroid/app/Activity;I)V

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/base/ApplicationStatus$if;->do(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->new(Landroid/app/Activity;I)V

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/base/ApplicationStatus$if;->do(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->new(Landroid/app/Activity;I)V

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/base/ApplicationStatus$if;->do(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/base/ApplicationStatus$if;->do(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->new(Landroid/app/Activity;I)V

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/base/ApplicationStatus$if;->do(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->new(Landroid/app/Activity;I)V

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/base/ApplicationStatus$if;->do(Landroid/app/Activity;)V

    return-void
.end method
