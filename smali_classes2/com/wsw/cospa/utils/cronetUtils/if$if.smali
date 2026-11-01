.class Lcom/wsw/cospa/utils/cronetUtils/if$if;
.super Lorg/chromium/net/native$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/cronetUtils/if;->case(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic if:Lcom/wsw/cospa/utils/cronetUtils/if;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/cronetUtils/if;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/if$if;->if:Lcom/wsw/cospa/utils/cronetUtils/if;

    invoke-direct {p0, p2}, Lorg/chromium/net/native$do;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public if(Lorg/chromium/net/native;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/if$if;->if:Lcom/wsw/cospa/utils/cronetUtils/if;

    invoke-static {v0}, Lcom/wsw/cospa/utils/cronetUtils/if;->do(Lcom/wsw/cospa/utils/cronetUtils/if;)Lorg/chromium/net/case;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/case;->throw()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rtt info: i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CronetHelper"

    invoke-static {v1, v0}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/if$if;->if:Lcom/wsw/cospa/utils/cronetUtils/if;

    invoke-static {v0, p1}, Lcom/wsw/cospa/utils/cronetUtils/if;->if(Lcom/wsw/cospa/utils/cronetUtils/if;Lorg/chromium/net/native;)V

    return-void
.end method
