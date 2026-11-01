.class public final Lorg/chromium/net/HttpUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/lo0;
    value = "net"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/HttpUtil$Natives;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/net/break;->if()Lorg/chromium/net/HttpUtil$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/net/HttpUtil$Natives;->isAllowedHeader(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
