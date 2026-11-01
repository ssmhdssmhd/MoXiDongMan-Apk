.class Lorg/chromium/net/impl/else$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/else$if;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/chromium/net/impl/else$if;


# direct methods
.method public constructor <init>(Lorg/chromium/net/impl/else$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/else$if$do;->do:Lorg/chromium/net/impl/else$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/else$if$do;->do:Lorg/chromium/net/impl/else$if;

    iget-object v0, v0, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v0}, Lorg/chromium/net/impl/else;->class(Lorg/chromium/net/impl/else;)Lorg/chromium/net/public;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/else$if$do;->do:Lorg/chromium/net/impl/else$if;

    iget-object v1, v1, Lorg/chromium/net/impl/else$if;->if:Lorg/chromium/net/impl/else;

    invoke-static {v1}, Lorg/chromium/net/impl/else;->try(Lorg/chromium/net/impl/else;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/public;->if(Landroid/support/v4/yc2;Ljava/nio/ByteBuffer;)V

    return-void
.end method
