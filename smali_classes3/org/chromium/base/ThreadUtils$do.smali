.class public Lorg/chromium/base/ThreadUtils$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# static fields
.field public static final synthetic for:Z


# instance fields
.field private final do:J

.field private if:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/chromium/base/ThreadUtils$do;->do:J

    return-void
.end method


# virtual methods
.method public do()V
    .locals 0

    return-void
.end method

.method public for()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/base/ThreadUtils$do;->if()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/base/ThreadUtils$do;->if:Z

    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/base/ThreadUtils$do;->do()V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/base/ThreadUtils$do;->if:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation is not allowed after destroy()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
