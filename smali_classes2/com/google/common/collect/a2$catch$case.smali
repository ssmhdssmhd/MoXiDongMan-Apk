.class Lcom/google/common/collect/a2$catch$case;
.super Lcom/google/common/collect/a2$class;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/a2$catch;->new(Ljava/lang/Class;)Lcom/google/common/collect/a2$class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/a2$class<",
        "TK0;TV0;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/collect/a2$catch;

.field public final synthetic if:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/a2$catch;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/a2$catch$case;->for:Lcom/google/common/collect/a2$catch;

    iput-object p2, p0, Lcom/google/common/collect/a2$catch$case;->if:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/common/collect/a2$class;-><init>()V

    return-void
.end method


# virtual methods
.method public break()Lcom/google/common/collect/SetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/a2$case;

    iget-object v1, p0, Lcom/google/common/collect/a2$catch$case;->if:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/google/common/collect/a2$case;-><init>(Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/a2$catch$case;->for:Lcom/google/common/collect/a2$catch;

    invoke-virtual {v1}, Lcom/google/common/collect/a2$catch;->for()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/b2;->switch(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic do()Lcom/google/common/collect/Multimap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/a2$catch$case;->break()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method
