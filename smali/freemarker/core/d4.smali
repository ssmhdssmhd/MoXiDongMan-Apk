.class Lfreemarker/core/d4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lfreemarker/core/b4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfreemarker/core/b4;)V
    .locals 0

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/d4;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lfreemarker/core/b4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lfreemarker/core/d4;->do:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public do()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lfreemarker/core/b4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d4;->do:Ljava/util/Collection;

    return-object v0
.end method
