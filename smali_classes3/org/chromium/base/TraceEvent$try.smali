.class final Lorg/chromium/base/TraceEvent$try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "try"
.end annotation


# static fields
.field private static final do:Lorg/chromium/base/TraceEvent$for;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/CommandLine;->else()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "enable-idle-tracing"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->class(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/chromium/base/TraceEvent$new;

    invoke-direct {v0, v1}, Lorg/chromium/base/TraceEvent$new;-><init>(Lorg/chromium/base/TraceEvent$do;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/chromium/base/TraceEvent$for;

    invoke-direct {v0, v1}, Lorg/chromium/base/TraceEvent$for;-><init>(Lorg/chromium/base/TraceEvent$do;)V

    :goto_0
    sput-object v0, Lorg/chromium/base/TraceEvent$try;->do:Lorg/chromium/base/TraceEvent$for;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lorg/chromium/base/TraceEvent$for;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/base/TraceEvent$try;->do:Lorg/chromium/base/TraceEvent$for;

    return-object v0
.end method
