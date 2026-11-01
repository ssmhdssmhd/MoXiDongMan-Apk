.class public Lcom/google/common/reflect/break$catch;
.super Landroid/support/v4/ce0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "catch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/ce0<",
        "Lcom/google/common/reflect/break<",
        "-TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient do:Lcom/google/common/collect/g1;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/reflect/break<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/google/common/reflect/break;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/break;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/reflect/break$catch;->this$0:Lcom/google/common/reflect/break;

    invoke-direct {p0}, Landroid/support/v4/ce0;-><init>()V

    return-void
.end method


# virtual methods
.method public classes()Lcom/google/common/reflect/break$catch;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/break<",
            "TT;>.catch;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/reflect/break$case;

    iget-object v1, p0, Lcom/google/common/reflect/break$catch;->this$0:Lcom/google/common/reflect/break;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/break$case;-><init>(Lcom/google/common/reflect/break;Lcom/google/common/reflect/break$do;)V

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/reflect/break$catch;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/reflect/break$catch;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/reflect/break<",
            "-TT;>;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/common/reflect/break$catch;->do:Lcom/google/common/collect/g1;

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/google/common/reflect/break$this;->do:Lcom/google/common/reflect/break$this;

    iget-object v1, p0, Lcom/google/common/reflect/break$catch;->this$0:Lcom/google/common/reflect/break;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/common/reflect/break$this;->new(Ljava/lang/Object;)Lcom/google/common/collect/v0;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/google/common/collect/t;->import(Ljava/lang/Iterable;)Lcom/google/common/collect/t;

    move-result-object v0

    sget-object v1, Lcom/google/common/reflect/break$break;->IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lcom/google/common/reflect/break$break;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/common/collect/t;->const(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/t;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/common/collect/t;->strictfp()Lcom/google/common/collect/g1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/break$catch;->do:Lcom/google/common/collect/g1;

    :cond_0
    return-object v0
.end method

.method public interfaces()Lcom/google/common/reflect/break$catch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/break<",
            "TT;>.catch;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/reflect/break$else;

    iget-object v1, p0, Lcom/google/common/reflect/break$catch;->this$0:Lcom/google/common/reflect/break;

    invoke-direct {v0, v1, p0}, Lcom/google/common/reflect/break$else;-><init>(Lcom/google/common/reflect/break;Lcom/google/common/reflect/break$catch;)V

    return-object v0
.end method

.method public rawTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/reflect/break$this;->if:Lcom/google/common/reflect/break$this;

    iget-object v1, p0, Lcom/google/common/reflect/break$catch;->this$0:Lcom/google/common/reflect/break;

    .line 2
    invoke-static {v1}, Lcom/google/common/reflect/break;->access$300(Lcom/google/common/reflect/break;)Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/break$this;->for(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/g1;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method
