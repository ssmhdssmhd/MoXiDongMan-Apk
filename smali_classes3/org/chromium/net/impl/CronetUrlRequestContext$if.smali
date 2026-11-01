.class Lorg/chromium/net/impl/CronetUrlRequestContext$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetUrlRequestContext;->onRttObservation(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/chromium/net/impl/VersionSafeCallbacks$for;

.field public final synthetic for:J

.field public final synthetic if:I

.field public final synthetic new:I

.field public final synthetic try:Lorg/chromium/net/impl/CronetUrlRequestContext;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Lorg/chromium/net/impl/VersionSafeCallbacks$for;IJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$if;->try:Lorg/chromium/net/impl/CronetUrlRequestContext;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$if;->do:Lorg/chromium/net/impl/VersionSafeCallbacks$for;

    iput p3, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$if;->if:I

    iput-wide p4, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$if;->for:J

    iput p6, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$if;->new:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$if;->do:Lorg/chromium/net/impl/VersionSafeCallbacks$for;

    iget v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$if;->if:I

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$if;->for:J

    iget v4, p0, Lorg/chromium/net/impl/CronetUrlRequestContext$if;->new:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/net/impl/VersionSafeCallbacks$for;->if(IJI)V

    return-void
.end method
