.class interface abstract Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/metrics/NativeUmaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract recordBooleanHistogram(Ljava/lang/String;JZ)J
.end method

.method public abstract recordExponentialHistogram(Ljava/lang/String;JIIII)J
.end method

.method public abstract recordLinearHistogram(Ljava/lang/String;JIIII)J
.end method

.method public abstract recordSparseHistogram(Ljava/lang/String;JI)J
.end method

.method public abstract recordUserAction(Ljava/lang/String;J)V
.end method
