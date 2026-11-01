.class Lcom/google/common/io/if$if;
.super Lcom/google/common/io/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/if;->break(Lcom/google/common/io/goto;)Lcom/google/common/io/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/io/goto;

.field public final synthetic if:Lcom/google/common/io/if;


# direct methods
.method public constructor <init>(Lcom/google/common/io/if;Lcom/google/common/io/goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/io/if$if;->if:Lcom/google/common/io/if;

    iput-object p2, p0, Lcom/google/common/io/if$if;->do:Lcom/google/common/io/goto;

    invoke-direct {p0}, Lcom/google/common/io/new;-><init>()V

    return-void
.end method


# virtual methods
.method public const()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/if$if;->if:Lcom/google/common/io/if;

    iget-object v1, p0, Lcom/google/common/io/if$if;->do:Lcom/google/common/io/goto;

    invoke-virtual {v1}, Lcom/google/common/io/goto;->const()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/if;->catch(Ljava/io/Reader;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
