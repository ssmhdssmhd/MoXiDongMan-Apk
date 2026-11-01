.class public Lorg/chromium/net/import;
.super Lorg/chromium/net/NetworkChangeNotifierAutoDetect$else;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# instance fields
.field private for:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$else;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/import;->for:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->default(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/chromium/net/import;->for:Z

    return-void
.end method

.method public if(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$else;->if(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V

    .line 2
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->native(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lorg/chromium/net/import;->onApplicationStateChange(I)V

    return-void
.end method

.method public onApplicationStateChange(I)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$else;->for()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$else;->new()V

    :goto_0
    return-void
.end method
