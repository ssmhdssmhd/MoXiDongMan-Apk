.class public final synthetic Lorg/chromium/base/native;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lorg/chromium/base/TraceEvent$if;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/TraceEvent$if;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/native;->do:Lorg/chromium/base/TraceEvent$if;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/native;->do:Lorg/chromium/base/TraceEvent$if;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent$if;->do(Lorg/chromium/base/TraceEvent$if;)V

    return-void
.end method
