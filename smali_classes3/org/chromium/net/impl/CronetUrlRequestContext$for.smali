.class Lorg/chromium/net/impl/CronetUrlRequestContext$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetUrlRequestContext;->onThroughputObservation(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/chromium/net/impl/VersionSafeCallbacks$new;

.field public final synthetic for:J

.field public final synthetic if:I

.field public final synthetic new:I

.field public final synthetic try:Lorg/chromium/net/impl/CronetUrlRequestContext;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Lorg/chromium/net/impl/VersionSafeCallbacks$new;IJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$for;->try:Lorg/chromium/net/impl/CronetUrlRequestContext;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$for;->do:Lorg/chromium/net/impl/VersionSafeCallbacks$new;

    iput p3, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$for;->if:I

    iput-wide p4, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$for;->for:J

    iput p6, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$for;->new:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$for;->do:Lorg/chromium/net/impl/VersionSafeCallbacks$new;

    iget v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$for;->if:I

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$for;->for:J

    iget v4, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$for;->new:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/net/impl/VersionSafeCallbacks$new;->if(IJI)V

    return-void
.end method
