.class Lcom/google/common/io/if$do;
.super Lcom/google/common/io/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/if;->super(Lcom/google/common/io/else;)Lcom/google/common/io/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/io/else;

.field public final synthetic if:Lcom/google/common/io/if;


# direct methods
.method public constructor <init>(Lcom/google/common/io/if;Lcom/google/common/io/else;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/io/if$do;->if:Lcom/google/common/io/if;

    iput-object p2, p0, Lcom/google/common/io/if$do;->do:Lcom/google/common/io/else;

    invoke-direct {p0}, Lcom/google/common/io/for;-><init>()V

    return-void
.end method


# virtual methods
.method public for()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/if$do;->if:Lcom/google/common/io/if;

    iget-object v1, p0, Lcom/google/common/io/if$do;->do:Lcom/google/common/io/else;

    invoke-virtual {v1}, Lcom/google/common/io/else;->if()Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/if;->throw(Ljava/io/Writer;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
