.class public final Lcom/google/common/collect/p0$do;
.super Lcom/google/common/collect/x0$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/x0$if<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/x0$if;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/x0$if;-><init>(I)V

    return-void
.end method


# virtual methods
.method public break(Ljava/util/Comparator;)Lcom/google/common/collect/p0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation build Landroid/support/v4/o8;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/p0$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/x0$if;->for(Ljava/util/Comparator;)Lcom/google/common/collect/x0$if;

    return-object p0
.end method

.method public bridge synthetic case(Ljava/lang/Iterable;)Lcom/google/common/collect/x0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation build Landroid/support/v4/o8;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/p0$do;->const(Ljava/lang/Iterable;)Lcom/google/common/collect/p0$do;

    move-result-object p1

    return-object p1
.end method

.method public catch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/p0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/p0$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/x0$if;->new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;

    return-object p0
.end method

.method public class(Ljava/util/Map$Entry;)Lcom/google/common/collect/p0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/p0$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/x0$if;->try(Ljava/util/Map$Entry;)Lcom/google/common/collect/x0$if;

    return-object p0
.end method

.method public const(Ljava/lang/Iterable;)Lcom/google/common/collect/p0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation build Landroid/support/v4/o8;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/p0$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/x0$if;->case(Ljava/lang/Iterable;)Lcom/google/common/collect/x0$if;

    return-object p0
.end method

.method public bridge synthetic do()Lcom/google/common/collect/x0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/p0$do;->this()Lcom/google/common/collect/p0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic else(Ljava/util/Map;)Lcom/google/common/collect/x0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/p0$do;->final(Ljava/util/Map;)Lcom/google/common/collect/p0$do;

    move-result-object p1

    return-object p1
.end method

.method public final(Ljava/util/Map;)Lcom/google/common/collect/p0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/p0$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/x0$if;->else(Ljava/util/Map;)Lcom/google/common/collect/x0$if;

    return-object p0
.end method

.method public bridge synthetic for(Ljava/util/Comparator;)Lcom/google/common/collect/x0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation build Landroid/support/v4/o8;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/p0$do;->break(Ljava/util/Comparator;)Lcom/google/common/collect/p0$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/p0$do;->catch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/p0$do;

    move-result-object p1

    return-object p1
.end method

.method public this()Lcom/google/common/collect/p0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/p0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/x0$if;->for:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/p0;->of()Lcom/google/common/collect/p0;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/x0$if;->goto()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/common/collect/x0$if;->new:Z

    .line 5
    new-instance v0, Lcom/google/common/collect/r2;

    iget-object v1, p0, Lcom/google/common/collect/x0$if;->if:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/x0$if;->for:I

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/r2;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public bridge synthetic try(Ljava/util/Map$Entry;)Lcom/google/common/collect/x0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/p0$do;->class(Ljava/util/Map$Entry;)Lcom/google/common/collect/p0$do;

    move-result-object p1

    return-object p1
.end method
