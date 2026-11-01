.class Lorg/chromium/net/impl/CronetUrlRequestContext$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetUrlRequestContext;->a(Lorg/chromium/net/native;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/chromium/net/impl/VersionSafeCallbacks$try;

.field public final synthetic for:Lorg/chromium/net/impl/CronetUrlRequestContext;

.field public final synthetic if:Lorg/chromium/net/native;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Lorg/chromium/net/impl/VersionSafeCallbacks$try;Lorg/chromium/net/native;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$new;->for:Lorg/chromium/net/impl/CronetUrlRequestContext;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$new;->do:Lorg/chromium/net/impl/VersionSafeCallbacks$try;

    iput-object p3, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$new;->if:Lorg/chromium/net/native;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$new;->do:Lorg/chromium/net/impl/VersionSafeCallbacks$try;

    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$new;->if:Lorg/chromium/net/native;

    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/VersionSafeCallbacks$try;->if(Lorg/chromium/net/native;)V

    return-void
.end method
