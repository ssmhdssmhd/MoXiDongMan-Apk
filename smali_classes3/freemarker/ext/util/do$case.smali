.class Lfreemarker/ext/util/do$case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/util/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "case"
.end annotation


# instance fields
.field private case:I

.field public do:[Lfreemarker/ext/util/do$try;

.field public final synthetic else:Lfreemarker/ext/util/do;

.field public for:Lfreemarker/ext/util/do$try;

.field public if:I

.field public new:Lfreemarker/ext/util/do$try;

.field public try:I


# direct methods
.method public constructor <init>(Lfreemarker/ext/util/do;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lfreemarker/ext/util/do$case;->else:Lfreemarker/ext/util/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lfreemarker/ext/util/do;->access$200(Lfreemarker/ext/util/do;)[Lfreemarker/ext/util/do$try;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/util/do$case;->do:[Lfreemarker/ext/util/do$try;

    .line 3
    array-length v0, v0

    iput v0, p0, Lfreemarker/ext/util/do$case;->if:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lfreemarker/ext/util/do$case;->for:Lfreemarker/ext/util/do$try;

    .line 5
    iput-object v0, p0, Lfreemarker/ext/util/do$case;->new:Lfreemarker/ext/util/do$try;

    .line 6
    invoke-static {p1}, Lfreemarker/ext/util/do;->access$300(Lfreemarker/ext/util/do;)I

    move-result p1

    iput p1, p0, Lfreemarker/ext/util/do$case;->case:I

    .line 7
    iput p2, p0, Lfreemarker/ext/util/do$case;->try:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do$case;->for:Lfreemarker/ext/util/do$try;

    .line 2
    iget v1, p0, Lfreemarker/ext/util/do$case;->if:I

    .line 3
    iget-object v2, p0, Lfreemarker/ext/util/do$case;->do:[Lfreemarker/ext/util/do$try;

    :goto_0
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 4
    aget-object v0, v2, v1

    goto :goto_0

    .line 5
    :cond_0
    iput-object v0, p0, Lfreemarker/ext/util/do$case;->for:Lfreemarker/ext/util/do$try;

    .line 6
    iput v1, p0, Lfreemarker/ext/util/do$case;->if:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do$case;->else:Lfreemarker/ext/util/do;

    invoke-static {v0}, Lfreemarker/ext/util/do;->access$300(Lfreemarker/ext/util/do;)I

    move-result v0

    iget v1, p0, Lfreemarker/ext/util/do$case;->case:I

    if-ne v0, v1, :cond_4

    .line 2
    iget-object v0, p0, Lfreemarker/ext/util/do$case;->for:Lfreemarker/ext/util/do$try;

    .line 3
    iget v1, p0, Lfreemarker/ext/util/do$case;->if:I

    .line 4
    iget-object v2, p0, Lfreemarker/ext/util/do$case;->do:[Lfreemarker/ext/util/do$try;

    :goto_0
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 5
    aget-object v0, v2, v1

    goto :goto_0

    .line 6
    :cond_0
    iput-object v0, p0, Lfreemarker/ext/util/do$case;->for:Lfreemarker/ext/util/do$try;

    .line 7
    iput v1, p0, Lfreemarker/ext/util/do$case;->if:I

    if-eqz v0, :cond_3

    .line 8
    iput-object v0, p0, Lfreemarker/ext/util/do$case;->new:Lfreemarker/ext/util/do$try;

    .line 9
    iget-object v1, v0, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    iput-object v1, p0, Lfreemarker/ext/util/do$case;->for:Lfreemarker/ext/util/do$try;

    .line 10
    iget v1, p0, Lfreemarker/ext/util/do$case;->try:I

    if-nez v1, :cond_1

    iget-object v0, v0, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    :cond_2
    :goto_1
    return-object v0

    .line 11
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 12
    :cond_4
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public remove()V
    .locals 7

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do$case;->new:Lfreemarker/ext/util/do$try;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lfreemarker/ext/util/do$case;->else:Lfreemarker/ext/util/do;

    invoke-static {v0}, Lfreemarker/ext/util/do;->access$300(Lfreemarker/ext/util/do;)I

    move-result v0

    iget v1, p0, Lfreemarker/ext/util/do$case;->case:I

    if-ne v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lfreemarker/ext/util/do$case;->else:Lfreemarker/ext/util/do;

    invoke-static {v0}, Lfreemarker/ext/util/do;->access$200(Lfreemarker/ext/util/do;)[Lfreemarker/ext/util/do$try;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lfreemarker/ext/util/do$case;->new:Lfreemarker/ext/util/do$try;

    iget v1, v1, Lfreemarker/ext/util/do$try;->do:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 5
    aget-object v2, v0, v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 6
    iget-object v5, p0, Lfreemarker/ext/util/do$case;->new:Lfreemarker/ext/util/do$try;

    if-ne v2, v5, :cond_1

    .line 7
    iget-object v5, p0, Lfreemarker/ext/util/do$case;->else:Lfreemarker/ext/util/do;

    invoke-static {v5}, Lfreemarker/ext/util/do;->access$308(Lfreemarker/ext/util/do;)I

    .line 8
    iget v5, p0, Lfreemarker/ext/util/do$case;->case:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lfreemarker/ext/util/do$case;->case:I

    if-nez v4, :cond_0

    .line 9
    iget-object v2, v2, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    aput-object v2, v0, v1

    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, v2, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    iput-object v0, v4, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    .line 11
    :goto_1
    iget-object v0, p0, Lfreemarker/ext/util/do$case;->else:Lfreemarker/ext/util/do;

    invoke-static {v0}, Lfreemarker/ext/util/do;->access$110(Lfreemarker/ext/util/do;)I

    .line 12
    iput-object v3, p0, Lfreemarker/ext/util/do$case;->new:Lfreemarker/ext/util/do$try;

    return-void

    .line 13
    :cond_1
    iget-object v4, v2, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0

    .line 14
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 15
    :cond_3
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 16
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
