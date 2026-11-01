.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;
.super Lorg/chromium/net/return$new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UrlRequestStatusListener"
.end annotation


# instance fields
.field private final do:Lorg/chromium/net/return$new;


# direct methods
.method public constructor <init>(Lorg/chromium/net/return$new;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/return$new;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;->do:Lorg/chromium/net/return$new;

    return-void
.end method


# virtual methods
.method public do(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;->do:Lorg/chromium/net/return$new;

    invoke-virtual {v0, p1}, Lorg/chromium/net/return$new;->do(I)V

    return-void
.end method
