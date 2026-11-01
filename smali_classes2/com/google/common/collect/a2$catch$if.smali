.class Lcom/google/common/collect/a2$catch$if;
.super Lcom/google/common/collect/a2$break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/a2$catch;->this()Lcom/google/common/collect/a2$break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/a2$break<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/a2$catch;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/a2$catch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/a2$catch$if;->if:Lcom/google/common/collect/a2$catch;

    invoke-direct {p0}, Lcom/google/common/collect/a2$break;-><init>()V

    return-void
.end method


# virtual methods
.method public break()Lcom/google/common/collect/ListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/a2$catch$if;->if:Lcom/google/common/collect/a2$catch;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/a2$catch;->for()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/a2$this;->instance()Lcom/google/common/base/Supplier;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/b2;->return(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic do()Lcom/google/common/collect/Multimap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/a2$catch$if;->break()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method
