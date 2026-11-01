.class Lorg/chromium/base/TraceEvent$if$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/TraceEvent$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public do:Ljava/lang/String;

.field public if:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/chromium/base/TraceEvent$if$do;->do:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/chromium/base/TraceEvent$if$do;->if:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/base/TraceEvent$do;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/chromium/base/TraceEvent$if$do;-><init>()V

    return-void
.end method
