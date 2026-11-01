.class interface abstract Lorg/chromium/base/TraceEvent$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract begin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract beginToplevel(Ljava/lang/String;)V
.end method

.method public abstract end(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract endToplevel(Ljava/lang/String;)V
.end method

.method public abstract finishAsync(Ljava/lang/String;J)V
.end method

.method public abstract instant(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerEnabledObserver()V
.end method

.method public abstract setupATraceStartupTrace(Ljava/lang/String;)V
.end method

.method public abstract startATrace(Ljava/lang/String;)V
.end method

.method public abstract startAsync(Ljava/lang/String;J)V
.end method

.method public abstract stopATrace()V
.end method
