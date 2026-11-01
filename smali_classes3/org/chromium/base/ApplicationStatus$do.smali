.class Lorg/chromium/base/ApplicationStatus$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$WindowFocusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/ApplicationStatus;->const(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->if()Landroid/app/Activity;

    move-result-object p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lorg/chromium/base/ApplicationStatus;->class(Landroid/app/Activity;)I

    move-result p2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    .line 3
    invoke-static {p1}, Lorg/chromium/base/ApplicationStatus;->for(Landroid/app/Activity;)Landroid/app/Activity;

    :cond_1
    :goto_0
    return-void
.end method
