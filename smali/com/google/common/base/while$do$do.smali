.class Lcom/google/common/base/while$do$do;
.super Lcom/google/common/base/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/while$do;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/if<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final for:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/base/while<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final synthetic new:Lcom/google/common/base/while$do;


# direct methods
.method public constructor <init>(Lcom/google/common/base/while$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/base/while$do$do;->new:Lcom/google/common/base/while$do;

    invoke-direct {p0}, Lcom/google/common/base/if;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/base/while$do;->do:Ljava/lang/Iterable;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Lcom/google/common/base/while$do$do;->for:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/base/while$do$do;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/base/while$do$do;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/while;

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/while;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/while;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/base/if;->if()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
