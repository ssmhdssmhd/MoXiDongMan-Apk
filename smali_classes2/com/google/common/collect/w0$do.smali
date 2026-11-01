.class public final Lcom/google/common/collect/w0$do;
.super Lcom/google/common/collect/b1$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/w0;
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
        "Lcom/google/common/collect/b1$for<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/b1$for;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic break(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/w0$do;->native(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/w0$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic case(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/w0$do;->super(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/w0$do;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic catch(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/w0$do;->public(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/w0$do;

    move-result-object p1

    return-object p1
.end method

.method public class()Lcom/google/common/collect/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/w0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/b1$for;->do()Lcom/google/common/collect/b1;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/w0;

    return-object v0
.end method

.method public const(Ljava/util/Comparator;)Lcom/google/common/collect/w0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/w0$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/b1$for;->new(Ljava/util/Comparator;)Lcom/google/common/collect/b1$for;

    return-object p0
.end method

.method public bridge synthetic do()Lcom/google/common/collect/b1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/w0$do;->class()Lcom/google/common/collect/w0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic else(Ljava/util/Map$Entry;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/w0$do;->throw(Ljava/util/Map$Entry;)Lcom/google/common/collect/w0$do;

    move-result-object p1

    return-object p1
.end method

.method public final(Ljava/util/Comparator;)Lcom/google/common/collect/w0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/w0$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/b1$for;->try(Ljava/util/Comparator;)Lcom/google/common/collect/b1$for;

    return-object p0
.end method

.method public bridge synthetic goto(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/w0$do;->while(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/w0$do;

    move-result-object p1

    return-object p1
.end method

.method public import(Ljava/lang/Iterable;)Lcom/google/common/collect/w0$do;
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
            "Lcom/google/common/collect/w0$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/b1$for;->this(Ljava/lang/Iterable;)Lcom/google/common/collect/b1$for;

    return-object p0
.end method

.method public native(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/w0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lcom/google/common/collect/w0$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/b1$for;->break(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/b1$for;

    return-object p0
.end method

.method public bridge synthetic new(Ljava/util/Comparator;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/w0$do;->const(Ljava/util/Comparator;)Lcom/google/common/collect/w0$do;

    move-result-object p1

    return-object p1
.end method

.method public varargs public(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/w0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lcom/google/common/collect/w0$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/b1$for;->catch(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/b1$for;

    return-object p0
.end method

.method public super(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/w0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/w0$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/b1$for;->case(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b1$for;

    return-object p0
.end method

.method public bridge synthetic this(Ljava/lang/Iterable;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation build Landroid/support/v4/o8;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/w0$do;->import(Ljava/lang/Iterable;)Lcom/google/common/collect/w0$do;

    move-result-object p1

    return-object p1
.end method

.method public throw(Ljava/util/Map$Entry;)Lcom/google/common/collect/w0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/w0$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/b1$for;->else(Ljava/util/Map$Entry;)Lcom/google/common/collect/b1$for;

    return-object p0
.end method

.method public bridge synthetic try(Ljava/util/Comparator;)Lcom/google/common/collect/b1$for;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/w0$do;->final(Ljava/util/Comparator;)Lcom/google/common/collect/w0$do;

    move-result-object p1

    return-object p1
.end method

.method public while(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/w0$do;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/w0$do<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/b1$for;->goto(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/b1$for;

    return-object p0
.end method
