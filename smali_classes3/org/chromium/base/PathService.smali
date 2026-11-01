.class public abstract Lorg/chromium/base/PathService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/lo0;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/PathService$Natives;
    }
.end annotation


# static fields
.field public static final do:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/throw;->if()Lorg/chromium/base/PathService$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/base/PathService$Natives;->override(ILjava/lang/String;)V

    return-void
.end method
