.class public Lorg/chromium/net/AndroidNetworkLibrary$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/AndroidNetworkLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# static fields
.field private static do:Lorg/chromium/net/AndroidNetworkLibrary$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/net/AndroidNetworkLibrary$do;

    invoke-direct {v0}, Lorg/chromium/net/AndroidNetworkLibrary$do;-><init>()V

    sput-object v0, Lorg/chromium/net/AndroidNetworkLibrary$do;->do:Lorg/chromium/net/AndroidNetworkLibrary$do;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lorg/chromium/net/AndroidNetworkLibrary$do;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/net/AndroidNetworkLibrary$do;->do:Lorg/chromium/net/AndroidNetworkLibrary$do;

    return-object v0
.end method

.method public static new(Lorg/chromium/net/AndroidNetworkLibrary$do;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sput-object p0, Lorg/chromium/net/AndroidNetworkLibrary$do;->do:Lorg/chromium/net/AndroidNetworkLibrary$do;

    return-void
.end method


# virtual methods
.method public for(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/net/AndroidNetworkLibrary$do;->if()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {p1}, Lorg/chromium/base/compat/do;->new(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public if()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-static {}, Landroid/support/v4/e2;->native()Z

    move-result v0

    return v0
.end method
