.class interface abstract Lorg/chromium/base/FieldTrialList$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/FieldTrialList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract createFieldTrial(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract findFullName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVariationParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract logActiveTrials()V
.end method

.method public abstract trialExists(Ljava/lang/String;)Z
.end method
