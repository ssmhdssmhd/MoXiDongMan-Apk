.class public Lcom/google/common/collect/i1$for;
.super Lcom/google/common/collect/x0$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
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


# instance fields
.field private transient case:[Ljava/lang/Object;

.field private final else:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private transient try:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/i1$for;-><init>(Ljava/util/Comparator;I)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/x0$if;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/i1$for;->else:Ljava/util/Comparator;

    .line 4
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/i1$for;->try:[Ljava/lang/Object;

    .line 5
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/i1$for;->case:[Ljava/lang/Object;

    return-void
.end method

.method private if(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/i1$for;->try:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 2
    array-length v0, v0

    invoke-static {v0, p1}, Lcom/google/common/collect/r0$if;->case(II)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/i1$for;->try:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/i1$for;->try:[Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/i1$for;->case:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/i1$for;->case:[Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public break(Ljava/util/Comparator;)Lcom/google/common/collect/i1$for;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation build Landroid/support/v4/o8;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/i1$for<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not available on ImmutableSortedMap.Builder"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic case(Ljava/lang/Iterable;)Lcom/google/common/collect/x0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation build Landroid/support/v4/o8;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/i1$for;->const(Ljava/lang/Iterable;)Lcom/google/common/collect/i1$for;

    move-result-object p1

    return-object p1
.end method

.method public catch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$for;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/i1$for<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/x0$if;->for:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/i1$for;->if(I)V

    .line 2
    invoke-static {p1, p2}, Lcom/google/common/collect/default;->do(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/i1$for;->try:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/x0$if;->for:I

    aput-object p1, v0, v1

    .line 4
    iget-object p1, p0, Lcom/google/common/collect/i1$for;->case:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Lcom/google/common/collect/x0$if;->for:I

    return-object p0
.end method

.method public class(Ljava/util/Map$Entry;)Lcom/google/common/collect/i1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/i1$for<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/x0$if;->try(Ljava/util/Map$Entry;)Lcom/google/common/collect/x0$if;

    return-object p0
.end method

.method public const(Ljava/lang/Iterable;)Lcom/google/common/collect/i1$for;
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
            "Lcom/google/common/collect/i1$for<",
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
    invoke-virtual {p0}, Lcom/google/common/collect/i1$for;->this()Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic else(Ljava/util/Map;)Lcom/google/common/collect/x0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/i1$for;->final(Ljava/util/Map;)Lcom/google/common/collect/i1$for;

    move-result-object p1

    return-object p1
.end method

.method public final(Ljava/util/Map;)Lcom/google/common/collect/i1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/i1$for<",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/i1$for;->break(Ljava/util/Comparator;)Lcom/google/common/collect/i1$for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic new(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/i1$for;->catch(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$for;

    move-result-object p1

    return-object p1
.end method

.method public this()Lcom/google/common/collect/i1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/x0$if;->for:I

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 2
    iget-object v2, p0, Lcom/google/common/collect/i1$for;->try:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/i1$for;->else:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 4
    iget v2, p0, Lcom/google/common/collect/x0$if;->for:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    :goto_0
    iget v3, p0, Lcom/google/common/collect/x0$if;->for:I

    if-ge v1, v3, :cond_2

    if-lez v1, :cond_1

    .line 6
    iget-object v3, p0, Lcom/google/common/collect/i1$for;->else:Ljava/util/Comparator;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v0, v4

    aget-object v6, v0, v1

    invoke-interface {v3, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keys required to be distinct but compared as equal: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/common/collect/i1$for;->try:[Ljava/lang/Object;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/google/common/collect/i1$for;->else:Ljava/util/Comparator;

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 9
    iget-object v4, p0, Lcom/google/common/collect/i1$for;->case:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    new-instance v1, Lcom/google/common/collect/i1;

    new-instance v3, Lcom/google/common/collect/x2;

    .line 11
    invoke-static {v0}, Lcom/google/common/collect/v0;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/v0;

    move-result-object v0

    iget-object v4, p0, Lcom/google/common/collect/i1$for;->else:Ljava/util/Comparator;

    invoke-direct {v3, v0, v4}, Lcom/google/common/collect/x2;-><init>(Lcom/google/common/collect/v0;Ljava/util/Comparator;)V

    .line 12
    invoke-static {v2}, Lcom/google/common/collect/v0;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/v0;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/google/common/collect/i1;-><init>(Lcom/google/common/collect/x2;Lcom/google/common/collect/v0;)V

    return-object v1

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/i1$for;->else:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/i1$for;->try:[Ljava/lang/Object;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/common/collect/i1$for;->case:[Ljava/lang/Object;

    aget-object v1, v3, v1

    invoke-static {v0, v2, v1}, Lcom/google/common/collect/i1;->access$000(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/google/common/collect/i1$for;->else:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/i1;->emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic try(Ljava/util/Map$Entry;)Lcom/google/common/collect/x0$if;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/i1$for;->class(Ljava/util/Map$Entry;)Lcom/google/common/collect/i1$for;

    move-result-object p1

    return-object p1
.end method
