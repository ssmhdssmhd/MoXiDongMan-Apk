.class Lcom/google/common/collect/LinkedHashMultimap$for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedHashMultimap$for;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public do:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public for:I

.field public if:Lcom/google/common/collect/LinkedHashMultimap$if;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$if<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final synthetic new:Lcom/google/common/collect/LinkedHashMultimap$for;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/LinkedHashMultimap$for;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->new:Lcom/google/common/collect/LinkedHashMultimap$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap$for;->do(Lcom/google/common/collect/LinkedHashMultimap$for;)Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->do:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap$for;->if(Lcom/google/common/collect/LinkedHashMultimap$for;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->for:I

    return-void
.end method

.method private do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->new:Lcom/google/common/collect/LinkedHashMultimap$for;

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap$for;->if(Lcom/google/common/collect/LinkedHashMultimap$for;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->for:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$for$do;->do()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->do:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->new:Lcom/google/common/collect/LinkedHashMultimap$for;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$for$do;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->do:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    check-cast v0, Lcom/google/common/collect/LinkedHashMultimap$if;

    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/s0;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->if:Lcom/google/common/collect/LinkedHashMultimap$if;

    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/LinkedHashMultimap$if;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->do:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object v1

    .line 6
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$for$do;->do()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->if:Lcom/google/common/collect/LinkedHashMultimap$if;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/default;->try(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->new:Lcom/google/common/collect/LinkedHashMultimap$for;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->if:Lcom/google/common/collect/LinkedHashMultimap$if;

    invoke-virtual {v1}, Lcom/google/common/collect/s0;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap$for;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->new:Lcom/google/common/collect/LinkedHashMultimap$for;

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap$for;->if(Lcom/google/common/collect/LinkedHashMultimap$for;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->for:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$for$do;->if:Lcom/google/common/collect/LinkedHashMultimap$if;

    return-void
.end method
