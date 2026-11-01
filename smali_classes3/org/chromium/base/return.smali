.class final Lorg/chromium/base/return;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/TraceEvent$Natives;


# annotations
.annotation build Landroid/support/v4/cx0;
.end annotation

.annotation build Landroid/support/v4/dl;
    value = "crbug.com/993421"
.end annotation


# static fields
.field private static do:Lorg/chromium/base/TraceEvent$Natives;

.field public static final if:Lorg/chromium/base/JniStaticTestMocker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/JniStaticTestMocker<",
            "Lorg/chromium/base/TraceEvent$Natives;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/base/return$do;

    invoke-direct {v0}, Lorg/chromium/base/return$do;-><init>()V

    sput-object v0, Lorg/chromium/base/return;->if:Lorg/chromium/base/JniStaticTestMocker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lorg/chromium/base/TraceEvent$Natives;)Lorg/chromium/base/TraceEvent$Natives;
    .locals 0

    .line 1
    sput-object p0, Lorg/chromium/base/return;->do:Lorg/chromium/base/TraceEvent$Natives;

    return-object p0
.end method

.method public static if()Lorg/chromium/base/TraceEvent$Natives;
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/oe0;->do:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lorg/chromium/base/return;->do:Lorg/chromium/base/TraceEvent$Natives;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-boolean v0, Landroid/support/v4/oe0;->if:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No mock found for the native implementation for org.chromium.base.TraceEvent.Natives. The current configuration requires all native implementations to have a mock instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lorg/chromium/base/NativeLibraryLoadedStatus;->do(Z)V

    .line 6
    new-instance v0, Lorg/chromium/base/return;

    invoke-direct {v0}, Lorg/chromium/base/return;-><init>()V

    return-object v0
.end method


# virtual methods
.method public begin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/support/v4/oe0;->protected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public beginToplevel(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/oe0;->transient(Ljava/lang/String;)V

    return-void
.end method

.method public end(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/support/v4/oe0;->implements(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endToplevel(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/oe0;->instanceof(Ljava/lang/String;)V

    return-void
.end method

.method public finishAsync(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/support/v4/oe0;->synchronized(Ljava/lang/String;J)V

    return-void
.end method

.method public instant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/support/v4/oe0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerEnabledObserver()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/support/v4/oe0;->b()V

    return-void
.end method

.method public setupATraceStartupTrace(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/oe0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public startATrace(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/oe0;->d(Ljava/lang/String;)V

    return-void
.end method

.method public startAsync(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/support/v4/oe0;->e(Ljava/lang/String;J)V

    return-void
.end method

.method public stopATrace()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/support/v4/oe0;->f()V

    return-void
.end method
