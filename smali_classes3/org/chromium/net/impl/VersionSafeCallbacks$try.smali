.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$try;
.super Lorg/chromium/net/native$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "try"
.end annotation


# instance fields
.field private final if:Lorg/chromium/net/native$do;


# direct methods
.method public constructor <init>(Lorg/chromium/net/native$do;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/chromium/net/native$do;->do()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/net/native$do;-><init>(Ljava/util/concurrent/Executor;)V

    .line 2
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$try;->if:Lorg/chromium/net/native$do;

    return-void
.end method


# virtual methods
.method public do()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$try;->if:Lorg/chromium/net/native$do;

    invoke-virtual {v0}, Lorg/chromium/net/native$do;->do()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public if(Lorg/chromium/net/native;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$try;->if:Lorg/chromium/net/native$do;

    invoke-virtual {v0, p1}, Lorg/chromium/net/native$do;->if(Lorg/chromium/net/native;)V

    return-void
.end method
