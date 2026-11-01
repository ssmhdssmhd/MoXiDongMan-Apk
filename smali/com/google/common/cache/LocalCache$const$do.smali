.class Lcom/google/common/cache/LocalCache$const$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/LocalCache$const;->new(Ljava/lang/Object;Lcom/google/common/cache/for;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TV;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/cache/LocalCache$const;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/LocalCache$const;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$const$do;->do:Lcom/google/common/cache/LocalCache$const;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$const$do;->do:Lcom/google/common/cache/LocalCache$const;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache$const;->try(Ljava/lang/Object;)Z

    return-object p1
.end method
