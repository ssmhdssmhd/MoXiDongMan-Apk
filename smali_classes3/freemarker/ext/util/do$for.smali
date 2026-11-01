.class Lfreemarker/ext/util/do$for;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/util/do;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/ext/util/do;


# direct methods
.method public constructor <init>(Lfreemarker/ext/util/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/util/do$for;->do:Lfreemarker/ext/util/do;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do$for;->do:Lfreemarker/ext/util/do;

    invoke-virtual {v0}, Lfreemarker/ext/util/do;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lfreemarker/ext/util/do$for;->do:Lfreemarker/ext/util/do;

    invoke-static {v2}, Lfreemarker/ext/util/do;->access$200(Lfreemarker/ext/util/do;)[Lfreemarker/ext/util/do$try;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    .line 6
    array-length v4, v2

    rem-int/2addr v3, v4

    .line 7
    aget-object v2, v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 8
    iget v3, v2, Lfreemarker/ext/util/do$try;->do:I

    if-ne v3, v0, :cond_2

    invoke-virtual {v2, p1}, Lfreemarker/ext/util/do$try;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_2
    iget-object v2, v2, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    goto :goto_1

    :cond_3
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do$for;->do:Lfreemarker/ext/util/do;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lfreemarker/ext/util/do;->access$000(Lfreemarker/ext/util/do;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lfreemarker/ext/util/do$for;->do:Lfreemarker/ext/util/do;

    invoke-static {v2}, Lfreemarker/ext/util/do;->access$200(Lfreemarker/ext/util/do;)[Lfreemarker/ext/util/do$try;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    .line 6
    array-length v4, v2

    rem-int/2addr v3, v4

    .line 7
    aget-object v4, v2, v3

    const/4 v5, 0x0

    move-object v6, v5

    :goto_1
    if-eqz v4, :cond_4

    .line 8
    iget v7, v4, Lfreemarker/ext/util/do$try;->do:I

    if-ne v7, v0, :cond_3

    invoke-virtual {v4, p1}, Lfreemarker/ext/util/do$try;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9
    iget-object p1, p0, Lfreemarker/ext/util/do$for;->do:Lfreemarker/ext/util/do;

    invoke-static {p1}, Lfreemarker/ext/util/do;->access$308(Lfreemarker/ext/util/do;)I

    if-eqz v6, :cond_2

    .line 10
    iget-object p1, v4, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    iput-object p1, v6, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    goto :goto_2

    .line 11
    :cond_2
    iget-object p1, v4, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    aput-object p1, v2, v3

    .line 12
    :goto_2
    iget-object p1, p0, Lfreemarker/ext/util/do$for;->do:Lfreemarker/ext/util/do;

    invoke-static {p1}, Lfreemarker/ext/util/do;->access$110(Lfreemarker/ext/util/do;)I

    .line 13
    iput-object v5, v4, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    .line 14
    :cond_3
    iget-object v6, v4, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    move-object v8, v6

    move-object v6, v4

    move-object v4, v8

    goto :goto_1

    :cond_4
    return v1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do$for;->do:Lfreemarker/ext/util/do;

    invoke-static {v0}, Lfreemarker/ext/util/do;->access$100(Lfreemarker/ext/util/do;)I

    move-result v0

    return v0
.end method
