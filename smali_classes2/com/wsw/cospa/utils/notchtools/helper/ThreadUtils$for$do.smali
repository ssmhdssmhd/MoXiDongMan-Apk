.class Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Object;

.field public final synthetic if:Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for$do;->if:Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for;

    iput-object p2, p0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for$do;->do:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for$do;->if:Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for;

    iget-object v0, v0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for;->if:Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Consumer;

    iget-object v1, p0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for$do;->do:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Consumer;->consume(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
