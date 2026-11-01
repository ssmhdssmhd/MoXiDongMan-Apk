.class Lcom/wsw/cospa/utils/cronetUtils/if$do;
.super Landroid/support/v4/e31;
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
    iput-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/if$do;->if:Lcom/wsw/cospa/utils/cronetUtils/if;

    invoke-direct {p0, p2}, Landroid/support/v4/e31;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public if(IJI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rtt info: i = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " l = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " i1 = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CronetHelper"

    invoke-static {p2, p1}, Landroid/support/v4/vv0;->do(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/if$do;->if:Lcom/wsw/cospa/utils/cronetUtils/if;

    invoke-static {p1}, Lcom/wsw/cospa/utils/cronetUtils/if;->do(Lcom/wsw/cospa/utils/cronetUtils/if;)Lorg/chromium/net/case;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/case;->final()I

    move-result p1

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "kbps = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/support/v4/vv0;->do(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/if$do;->if:Lcom/wsw/cospa/utils/cronetUtils/if;

    invoke-static {p1}, Lcom/wsw/cospa/utils/cronetUtils/if;->do(Lcom/wsw/cospa/utils/cronetUtils/if;)Lorg/chromium/net/case;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/case;->super()I

    move-result p1

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "type = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/support/v4/vv0;->do(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
