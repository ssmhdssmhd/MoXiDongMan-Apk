.class final Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/JavaUrlRequestUtils$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field private final do:Ljava/lang/Runnable;

.field private for:Landroid/support/v4/sm0;

.field private if:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/Thread;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;->do:Ljava/lang/Runnable;

    .line 4
    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;->if:Ljava/lang/Thread;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Thread;Lorg/chromium/net/impl/JavaUrlRequestUtils$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;-><init>(Ljava/lang/Runnable;Ljava/lang/Thread;)V

    return-void
.end method

.method public static synthetic do(Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;)Landroid/support/v4/sm0;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;->for:Landroid/support/v4/sm0;

    return-object p0
.end method

.method public static synthetic if(Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;->if:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;->if:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/sm0;

    invoke-direct {v0}, Landroid/support/v4/sm0;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;->for:Landroid/support/v4/sm0;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequestUtils$if$do;->do:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
