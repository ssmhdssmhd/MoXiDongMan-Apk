.class final Lcom/google/common/reflect/break$else;
.super Lcom/google/common/reflect/break$catch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "else"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/break<",
        "TT;>.catch;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient for:Lcom/google/common/collect/g1;
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

.field private final transient if:Lcom/google/common/reflect/break$catch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/break<",
            "TT;>.catch;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/google/common/reflect/break;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/break;Lcom/google/common/reflect/break$catch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/break<",
            "TT;>.catch;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/reflect/break$else;->this$0:Lcom/google/common/reflect/break;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/break$catch;-><init>(Lcom/google/common/reflect/break;)V

    .line 2
    iput-object p2, p0, Lcom/google/common/reflect/break$else;->if:Lcom/google/common/reflect/break$catch;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break$else;->this$0:Lcom/google/common/reflect/break;

    invoke-virtual {v0}, Lcom/google/common/reflect/break;->getTypes()Lcom/google/common/reflect/break$catch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/break$catch;->interfaces()Lcom/google/common/reflect/break$catch;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public classes()Lcom/google/common/reflect/break$catch;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/break<",
            "TT;>.catch;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "interfaces().classes() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/reflect/break$else;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/reflect/break$else;->delegate()Ljava/util/Set;

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
    iget-object v0, p0, Lcom/google/common/reflect/break$else;->for:Lcom/google/common/collect/g1;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/common/reflect/break$else;->if:Lcom/google/common/reflect/break$catch;

    .line 5
    invoke-static {v0}, Lcom/google/common/collect/t;->import(Ljava/lang/Iterable;)Lcom/google/common/collect/t;

    move-result-object v0

    sget-object v1, Lcom/google/common/reflect/break$break;->INTERFACE_ONLY:Lcom/google/common/reflect/break$break;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/t;->const(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/t;->strictfp()Lcom/google/common/collect/g1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/break$else;->for:Lcom/google/common/collect/g1;

    :cond_0
    return-object v0
.end method

.method public interfaces()Lcom/google/common/reflect/break$catch;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/break<",
            "TT;>.catch;"
        }
    .end annotation

    return-object p0
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

    iget-object v1, p0, Lcom/google/common/reflect/break$else;->this$0:Lcom/google/common/reflect/break;

    .line 2
    invoke-static {v1}, Lcom/google/common/reflect/break;->access$300(Lcom/google/common/reflect/break;)Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/break$this;->for(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/t;->import(Ljava/lang/Iterable;)Lcom/google/common/collect/t;

    move-result-object v0

    new-instance v1, Lcom/google/common/reflect/break$else$do;

    invoke-direct {v1, p0}, Lcom/google/common/reflect/break$else$do;-><init>(Lcom/google/common/reflect/break$else;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/common/collect/t;->const(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/t;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/t;->strictfp()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method
