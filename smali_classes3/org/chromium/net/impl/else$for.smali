.class Lorg/chromium/net/impl/else$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/else;->throws()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/chromium/net/impl/else;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/else;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/else$for;->do:Lorg/chromium/net/impl/else;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/else$for;->do:Lorg/chromium/net/impl/else;

    invoke-virtual {v0}, Lorg/chromium/net/impl/else;->native()V

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/else$for;->do:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->catch(Lorg/chromium/net/impl/else;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    iget-object v0, p0, Lorg/chromium/net/impl/else$for;->do:Lorg/chromium/net/impl/else;

    new-instance v1, Lorg/chromium/net/impl/else$for$do;

    invoke-direct {v1, p0}, Lorg/chromium/net/impl/else$for$do;-><init>(Lorg/chromium/net/impl/else$for;)V

    invoke-static {v0, v1}, Lorg/chromium/net/impl/else;->const(Lorg/chromium/net/impl/else;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-void
.end method
