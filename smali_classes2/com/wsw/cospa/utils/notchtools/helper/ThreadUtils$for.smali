.class Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->else(Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Provider;Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Provider;

.field public final synthetic if:Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Consumer;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Provider;Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for;->do:Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Provider;

    iput-object p2, p0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for;->if:Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for;->do:Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Provider;

    invoke-interface {v0}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Provider;->provide()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for;->if:Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Consumer;

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for$do;

    invoke-direct {v1, p0, v0}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for$do;-><init>(Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->throw(Ljava/lang/Runnable;)Z

    return-void
.end method
